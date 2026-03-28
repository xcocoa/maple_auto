"""
游戏引擎 - Android 版 (Phase 2 完整版)

从 PC 版 games/roguelike.py 迁移的完整 11 状态机。
通过 platform_bridge 调用 Kotlin 服务完成截图和手势操作。

状态机：
  IDLE -> SEARCH -> FIGHT -> FIND_NPC -> INTERACT_NPC -> FIND_PORTAL -> ENTER_PORTAL
  异常状态: DEAD, DISCONNECT, STUCK_RECOVERY, ERROR
"""

import logging
import time
import random
import threading
from enum import Enum, auto
from typing import Optional, Dict, List
from collections import deque

import platform_bridge
from config import Config
from modules.minimap import MinimapDetector, MapObject
from modules.combat import CombatController
from modules.navigation import Navigator
from modules.skill import SkillDetector, Skill

logger = logging.getLogger(__name__)


# ============================================================================
# 状态和超时定义
# ============================================================================

class GameState(Enum):
    """游戏状态枚举"""
    IDLE = "idle"
    SEARCH = "search"
    FIGHT = "fight"
    FIND_NPC = "find_npc"
    INTERACT_NPC = "interact_npc"
    FIND_PORTAL = "find_portal"
    ENTER_PORTAL = "enter_portal"
    DEAD = "dead"
    DISCONNECT = "disconnect"
    STUCK_RECOVERY = "stuck_recovery"
    ERROR = "error"


class TimeoutLevel(Enum):
    INFO = auto()
    WARNING = auto()
    CRITICAL = auto()


# 状态超时配置: (config_key, default_seconds, level)
STATE_TIMEOUT_CONFIG = {
    GameState.FIGHT: ('game.max_combat_duration', 30.0, TimeoutLevel.WARNING),
    GameState.FIND_NPC: ('game.npc_find_timeout', 10.0, TimeoutLevel.WARNING),
    GameState.INTERACT_NPC: ('game.idle_timeout', 8.0, TimeoutLevel.WARNING),
    GameState.FIND_PORTAL: ('game.portal_timeout', 15.0, TimeoutLevel.WARNING),
    GameState.ENTER_PORTAL: ('game.portal_timeout', 15.0, TimeoutLevel.WARNING),
    GameState.DEAD: ('game.idle_timeout', 10.0, TimeoutLevel.CRITICAL),
    GameState.DISCONNECT: ('game.idle_timeout', 30.0, TimeoutLevel.CRITICAL),
    GameState.STUCK_RECOVERY: ('game.idle_timeout', 10.0, TimeoutLevel.WARNING),
    GameState.ERROR: ('game.idle_timeout', 5.0, TimeoutLevel.CRITICAL),
}


# ============================================================================
# 性能监控
# ============================================================================

class PerformanceMonitor:
    """性能监控器"""

    def __init__(self, sample_window: int = 100):
        self._frame_times: deque = deque(maxlen=sample_window)
        self._screenshot_times: deque = deque(maxlen=sample_window)
        self._detection_times: deque = deque(maxlen=sample_window)
        self._report_interval = 10.0
        self._last_report = 0.0

    def record_frame(self, duration: float):
        self._frame_times.append(duration)

    def record_screenshot(self, duration: float):
        self._screenshot_times.append(duration)

    def record_detection(self, duration: float):
        self._detection_times.append(duration)

    def maybe_report(self):
        now = time.time()
        if now - self._last_report < self._report_interval:
            return
        self._last_report = now
        s = self.get_summary()
        logger.info(
            f"Perf: fps={s['fps']:.1f}, "
            f"frame={s['avg_frame_ms']:.1f}ms, "
            f"screenshot={s['avg_screenshot_ms']:.1f}ms, "
            f"detection={s['avg_detection_ms']:.1f}ms"
        )

    def get_summary(self) -> dict:
        def avg_ms(d):
            return (sum(d) / len(d) * 1000) if d else 0.0
        avg_frame = avg_ms(self._frame_times)
        fps = (1000.0 / avg_frame) if avg_frame > 0 else 0.0
        return {
            'avg_frame_ms': avg_frame,
            'fps': fps,
            'avg_screenshot_ms': avg_ms(self._screenshot_times),
            'avg_detection_ms': avg_ms(self._detection_times),
        }


# ============================================================================
# 游戏引擎
# ============================================================================

class GameEngine:
    """
    肉鸽自动化游戏引擎

    完整的 11 状态机，从 PC 版 roguelike.py 迁移。
    """

    def __init__(self):
        # 配置
        self._config = Config()

        # 模块
        self._minimap = MinimapDetector(self._config.get_section('minimap'))
        self._combat = CombatController(
            config=self._config.get_section('combat'),
            skill_positions=self._config.get('combat.skill_positions', [])
        )
        self._navigator = Navigator(self._config.get_section('navigation'))
        self._skill_detector = SkillDetector(self._config.get_section('skill'))

        # 性能
        self._perf = PerformanceMonitor()

        # 状态
        self._state = GameState.IDLE
        self._previous_state = GameState.IDLE
        self._state_start_time = time.time()
        self._available_skills: List[Skill] = []

        # 运行控制
        self._running = False
        self._paused = False
        self._thread: Optional[threading.Thread] = None
        self._loop_interval = 0.1  # 100ms

        # 计数器
        self._stuck_recovery_attempts = 0
        self._max_stuck_recovery = 3
        self._screenshot_fail_count = 0
        self._max_screenshot_fails = 5
        self._player_not_found_count = 0
        self._player_not_found_threshold = 10

        # 统计
        self._start_time = 0.0
        self._frame_count = 0
        self.stats = {
            'monsters_defeated': 0,
            'npcs_interacted': 0,
            'stages_cleared': 0,
            'deaths': 0,
            'stuck_recoveries': 0,
        }

        # 回调（由 Kotlin GameEngineManager 设置）
        self.on_state_changed = None
        self.on_error = None
        self.on_stats_updated = None

    @property
    def state(self) -> GameState:
        return self._state

    @property
    def is_running(self) -> bool:
        return self._running

    @property
    def is_paused(self) -> bool:
        return self._paused

    def _init_screen_scaling(self):
        """初始化屏幕分辨率缩放，并重新初始化所有模块"""
        width = platform_bridge.get_screen_width()
        height = platform_bridge.get_screen_height()

        if width > 0 and height > 0:
            self._config.init_screen_size(width, height)
            # 重新创建模块以使用缩放后的配置
            self._minimap = MinimapDetector(self._config.get_section('minimap'))
            self._combat = CombatController(
                config=self._config.get_section('combat'),
                skill_positions=self._config.get('combat.skill_positions', [])
            )
            self._navigator = Navigator(self._config.get_section('navigation'))
            self._skill_detector = SkillDetector(self._config.get_section('skill'))
            logger.info(f"Modules reinitialized for {width}x{height}")
        else:
            logger.warning("Could not get screen size, using base 1280x720 coordinates")

    # ==== 生命周期 ====

    def start(self):
        """启动游戏引擎"""
        if self._running:
            logger.warning("Engine already running")
            return

        logger.info("Starting game engine...")

        if not platform_bridge.initialize():
            logger.error("Failed to initialize platform bridge")
            if self.on_error:
                self.on_error("Platform bridge initialization failed")
            return

        # 初始化屏幕分辨率缩放
        self._init_screen_scaling()

        self._running = True
        self._paused = False
        self._start_time = time.time()
        self._frame_count = 0

        self._thread = threading.Thread(target=self._main_loop, daemon=True)
        self._thread.start()

        self._change_state(GameState.SEARCH, "Engine started")
        logger.info("Game engine started")

    def stop(self):
        """停止游戏引擎"""
        logger.info("Stopping game engine...")
        self._running = False
        self._paused = False

        if self._thread is not None:
            self._thread.join(timeout=3.0)
            self._thread = None

        self._change_state(GameState.IDLE, "Engine stopped")
        logger.info("Game engine stopped")

    def pause(self):
        self._paused = True
        logger.info("Game engine paused")

    def resume(self):
        self._paused = False
        logger.info("Game engine resumed")

    def get_stats(self) -> dict:
        """获取运行统计"""
        elapsed = time.time() - self._start_time if self._start_time else 0
        fps = self._frame_count / elapsed if elapsed > 0 else 0
        return {
            'state': self._state.value,
            'running': self._running,
            'paused': self._paused,
            'frame_count': self._frame_count,
            'elapsed': round(elapsed, 1),
            'fps': round(fps, 1),
            'stats': dict(self.stats),
            'perf': self._perf.get_summary(),
            'screen': {
                'width': self._config.screen_width,
                'height': self._config.screen_height,
                'scale': self._config.scale_factor,
            },
        }

    # ==== 状态管理 ====

    def _change_state(self, new_state: GameState, reason: str = ""):
        """切换状态"""
        old_state = self._state
        self._previous_state = old_state
        self._state = new_state
        self._state_start_time = time.time()

        if old_state != new_state:
            logger.info(f"State: {old_state.value} -> {new_state.value} ({reason})")
            if self.on_state_changed:
                self.on_state_changed(new_state.value)

    def _check_state_timeout(self):
        """检查当前状态是否超时"""
        timeout_cfg = STATE_TIMEOUT_CONFIG.get(self._state)
        if timeout_cfg is None:
            return

        config_key, default_timeout, level = timeout_cfg
        timeout = self._config.get(config_key, default_timeout)

        elapsed = time.time() - self._state_start_time
        if elapsed < timeout:
            return

        logger.warning(
            f"State {self._state.value} timed out after {elapsed:.1f}s "
            f"(limit: {timeout}s, level: {level.name})"
        )

        if level == TimeoutLevel.WARNING:
            # 回退到搜索状态
            self._change_state(GameState.SEARCH, "State timeout")
        elif level == TimeoutLevel.CRITICAL:
            self._change_state(GameState.ERROR, "Critical timeout")

    # ==== 主循环 ====

    def _main_loop(self):
        """主循环 - 每帧截图 + 状态分发"""
        logger.info("Main loop started")

        # 状态处理器映射
        handlers = {
            GameState.SEARCH: self._handle_search,
            GameState.FIGHT: self._handle_fight,
            GameState.FIND_NPC: self._handle_find_npc,
            GameState.INTERACT_NPC: self._handle_interact_npc,
            GameState.FIND_PORTAL: self._handle_find_portal,
            GameState.ENTER_PORTAL: self._handle_enter_portal,
            GameState.DEAD: self._handle_dead,
            GameState.STUCK_RECOVERY: self._handle_stuck_recovery,
            GameState.ERROR: self._handle_error,
        }

        while self._running:
            try:
                if self._paused:
                    time.sleep(0.2)
                    continue

                frame_start = time.time()
                self._frame_count += 1

                # 截图
                t0 = time.time()
                screenshot = platform_bridge.screenshot()
                self._perf.record_screenshot(time.time() - t0)

                # 截图失败处理
                if screenshot is None:
                    self._screenshot_fail_count += 1
                    if self._screenshot_fail_count >= self._max_screenshot_fails:
                        self._change_state(GameState.ERROR, "Screenshot failed repeatedly")
                    time.sleep(0.5)
                    continue
                self._screenshot_fail_count = 0

                # 分发到状态处理器
                handler = handlers.get(self._state)
                if handler:
                    handler(screenshot)

                # 超时检查
                self._check_state_timeout()

                # 性能记录
                frame_elapsed = time.time() - frame_start
                self._perf.record_frame(frame_elapsed)
                self._perf.maybe_report()

                # 帧率控制
                sleep_time = max(0, self._loop_interval - frame_elapsed)
                if sleep_time > 0:
                    time.sleep(sleep_time)

                # 每 60 帧回调统计
                if self._frame_count % 60 == 0 and self.on_stats_updated:
                    self.on_stats_updated(self.get_stats())

            except Exception as e:
                logger.error(f"Main loop error: {e}", exc_info=True)
                self._change_state(GameState.ERROR, str(e))
                if self.on_error:
                    self.on_error(str(e))
                time.sleep(1.0)

        logger.info("Main loop ended")

    # ==== 状态处理器 ====

    def _handle_search(self, screenshot):
        """搜索状态：寻找怪物/NPC"""
        t0 = time.time()
        monsters = self._minimap.find_monsters(screenshot)
        self._perf.record_detection(time.time() - t0)

        if monsters:
            logger.info(f"Found {len(monsters)} monsters")
            self._change_state(GameState.FIGHT, f"Detected {len(monsters)} monsters")
        else:
            npc = self._minimap.find_npc(screenshot)
            if npc:
                logger.info(f"Found NPC at ({npc.x}, {npc.y})")
                self._change_state(GameState.FIND_NPC, "Detected NPC")
            else:
                # 探索模式 - 添加调试日志
                logger.debug(f"SEARCH: No monsters or NPC found, exploring... (screenshot shape={screenshot.shape if screenshot is not None else 'None'})")
                self._navigator.explore()

    def _handle_fight(self, screenshot):
        """战斗状态：攻击怪物"""
        # 查找玩家
        player = self._minimap.find_player(screenshot)
        if player is None:
            self._player_not_found_count += 1
            if self._player_not_found_count >= self._player_not_found_threshold:
                self._change_state(GameState.DEAD, "Player not found")
                self.stats['deaths'] += 1
            return
        self._player_not_found_count = 0

        # 查找怪物
        t0 = time.time()
        monsters = self._minimap.find_monsters(screenshot)
        self._perf.record_detection(time.time() - t0)

        if not monsters:
            self._change_state(GameState.FIND_NPC, "Monsters cleared")
            return

        monster_count = len(monsters)
        target = monsters[0]

        # 检测技能
        self._available_skills = self._skill_detector.detect_skills(screenshot)

        # 闪避判断
        direction = self._combat.get_direction_to_target(player, target)
        self._combat.dodge(direction=direction, monster_count=monster_count)

        # 导航到怪物
        arrived = self._combat.navigate_to(player, target, is_npc=False)

        # 攻击
        attack_range = self._config.get('game.attack_range', 100)
        if arrived or self._minimap.get_distance(player, target) < attack_range:
            if self._combat.attack(monster_count=monster_count):
                self.stats['monsters_defeated'] += 1

        # 卡住检测
        if self._navigator.check_stuck(player):
            self._stuck_recovery_attempts += 1
            if self._stuck_recovery_attempts >= self._max_stuck_recovery:
                self._change_state(
                    GameState.STUCK_RECOVERY,
                    f"Stuck {self._stuck_recovery_attempts} times"
                )
            else:
                self._navigator.handle_stuck()

    def _handle_find_npc(self, screenshot):
        """寻找NPC"""
        player = self._minimap.find_player(screenshot)
        if player is None:
            self._player_not_found_count += 1
            if self._player_not_found_count >= self._player_not_found_threshold:
                self._change_state(GameState.DEAD, "Player not found")
                self.stats['deaths'] += 1
            return
        self._player_not_found_count = 0

        npc = self._minimap.find_npc(screenshot)
        if npc:
            self._change_state(GameState.INTERACT_NPC, "Found NPC")
            return

        # 继续搜索
        self._navigator.explore()

    def _handle_interact_npc(self, screenshot):
        """与NPC交互"""
        player = self._minimap.find_player(screenshot)
        if player is None:
            return

        npc = self._minimap.find_npc(screenshot)
        if npc is None:
            self._change_state(GameState.SEARCH, "NPC disappeared")
            return

        # 导航到 NPC
        arrived = self._combat.navigate_to(player, npc, is_npc=True)

        # 到达后交互
        if arrived:
            self._combat.jump()
            time.sleep(0.3)
            platform_bridge.tap(npc.x, npc.y)
            time.sleep(0.5)
            self.stats['npcs_interacted'] += 1
            self._change_state(GameState.FIND_PORTAL, "NPC interaction done")

    def _handle_find_portal(self, screenshot):
        """寻找传送门"""
        player = self._minimap.find_player(screenshot)
        if player is None:
            return

        portal = self._minimap.find_portal(screenshot)
        if portal:
            self._change_state(GameState.ENTER_PORTAL, "Found portal")
            return

        self._navigator.explore()

    def _handle_enter_portal(self, screenshot):
        """进入传送门"""
        player = self._minimap.find_player(screenshot)
        if player is None:
            return

        portal = self._minimap.find_portal(screenshot)
        if portal is None:
            self._change_state(GameState.SEARCH, "Portal disappeared")
            return

        portal_threshold = self._config.get('game.portal_arrive_threshold', 30.0)
        dx = portal.x - player.x
        dy = portal.y - player.y

        if abs(dx) < portal_threshold and abs(dy) < portal_threshold:
            # 到达传送门，按上键进入
            up_pos = self._config.get('game.up_key_pos', [540, 400])
            platform_bridge.tap(up_pos[0], up_pos[1])
            time.sleep(0.5)

            # 验证是否进入
            verify = platform_bridge.screenshot()
            if verify is not None:
                monsters = self._minimap.find_monsters(verify)
                old_portal = self._minimap.find_portal(verify)
                if old_portal is None or monsters:
                    self.stats['stages_cleared'] += 1
                else:
                    logger.warning("Portal entry failed, retrying")
            else:
                self.stats['stages_cleared'] += 1

            self._change_state(GameState.SEARCH, "Entered next stage")
        else:
            self._combat.navigate_to(player, portal, is_npc=True)

    def _handle_dead(self, screenshot):
        """死亡处理：点击屏幕中心复活"""
        cx = self._config.get('game.screen_center_x', 640)
        cy = self._config.get('game.screen_center_y', 360)
        platform_bridge.tap(cx, cy)
        time.sleep(1.0)

        verify = platform_bridge.screenshot()
        if verify is not None:
            player = self._minimap.find_player(verify)
            if player is not None:
                self._player_not_found_count = 0
                self._change_state(GameState.SEARCH, "Revived")

    def _handle_stuck_recovery(self, screenshot):
        """卡住恢复：激进移动尝试脱困"""
        self.stats['stuck_recoveries'] += 1

        player_before = self._minimap.find_player(screenshot)

        # 大范围跳跃 + 随机移动
        direction = random.choice([-1, 1])
        self._navigator.move(direction, duration=300)
        time.sleep(0.2)
        self._navigator.jump()
        time.sleep(0.3)
        self._navigator.move(-direction, duration=200)
        time.sleep(0.2)

        # 验证恢复
        verify = platform_bridge.screenshot()
        if verify is not None:
            player_after = self._minimap.find_player(verify)
            if player_before and player_after:
                dist = abs(player_after.x - player_before.x) + abs(player_after.y - player_before.y)
                if dist > 10:
                    self._stuck_recovery_attempts = 0
                    self._change_state(self._previous_state, "Stuck recovery success")
                    return

        # 恢复失败
        if self._stuck_recovery_attempts >= self._max_stuck_recovery * 2:
            self._stuck_recovery_attempts = 0
            self._change_state(GameState.SEARCH, "Stuck recovery failed, reset")

    def _handle_error(self, screenshot):
        """错误处理：尝试恢复到搜索状态"""
        player = self._minimap.find_player(screenshot)
        if player is not None:
            self._change_state(GameState.SEARCH, "Recovered from error")
        else:
            time.sleep(1.0)


# ============================================================================
# 全局引擎实例（供 Kotlin 调用）
# ============================================================================

_engine: Optional[GameEngine] = None


def get_engine() -> GameEngine:
    """获取全局引擎实例"""
    global _engine
    if _engine is None:
        _engine = GameEngine()
    return _engine


def start_engine():
    """启动引擎（Kotlin 调用入口）"""
    # 初始化日志记录，确保输出到 Android logcat
    logging.basicConfig(
        level=logging.DEBUG,
        format='%(levelname)s [%(name)s] %(message)s'
    )
    logger.info("=== Game Engine Starting ===")
    get_engine().start()


def stop_engine():
    """停止引擎"""
    get_engine().stop()


def pause_engine():
    """暂停引擎"""
    get_engine().pause()


def resume_engine():
    """恢复引擎"""
    get_engine().resume()


def get_engine_stats() -> dict:
    """获取引擎统计"""
    return get_engine().get_stats()


def test_gesture():
    """测试手势注入（Kotlin 调用入口）"""
    import logging
    logging.basicConfig(level=logging.DEBUG)
    log = logging.getLogger("test_gesture")

    log.info("=== Gesture Test Start ===")
    results = {}

    try:
        platform_bridge.initialize()

        # 1. 测试 tap：点击屏幕中心
        log.info("Test 1: tap(600, 400)")
        r = platform_bridge.tap(600, 400)
        results['tap'] = r
        log.info(f"  tap result: {r}")
        time.sleep(0.5)

        # 2. 测试 swipe：从左向右滑动
        log.info("Test 2: swipe(200, 600, 800, 600)")
        r = platform_bridge.swipe(200, 600, 800, 600, 400)
        results['swipe'] = r
        log.info(f"  swipe result: {r}")
        time.sleep(0.5)

        # 3. 测试 long_press：长按 1 秒
        log.info("Test 3: long_press(600, 400, 1000)")
        r = platform_bridge.long_press(600, 400, 1000)
        results['long_press'] = r
        log.info(f"  long_press result: {r}")
        time.sleep(1.5)

        # 4. 测试 press_back
        log.info("Test 4: press_back()")
        r = platform_bridge.press_back()
        results['press_back'] = r
        log.info(f"  press_back result: {r}")

    except Exception as e:
        log.error(f"Gesture test error: {e}", exc_info=True)
        results['error'] = str(e)

    log.info(f"=== Gesture Test Results: {results} ===")
    return results


def test_screenshot():
    """测试截图功能（Kotlin 调用入口）"""
    import logging
    logging.basicConfig(level=logging.DEBUG)
    log = logging.getLogger("test_screenshot")
    log.info("=== Screenshot Test Start ===")
    results = {}
    try:
        platform_bridge.initialize()
        
        # 获取屏幕宽高
        log.info("Getting screen dimensions...")
        width = platform_bridge.get_screen_width()
        height = platform_bridge.get_screen_height()
        results['screen_width'] = width
        results['screen_height'] = height
        log.info(f"Screen size: {width}x{height}")
        
        if width == 0 or height == 0:
            results['error'] = "Screen dimensions are 0 - capture service not initialized"
            log.error(results['error'])
            return results
        
        # 截取屏幕
        log.info("Taking screenshot...")
        img = platform_bridge.screenshot()
        if img is None:
            results['error'] = "screenshot() returned None"
            log.error(results['error'])
            return results
        
        results['screenshot_shape'] = img.shape
        results['screenshot_dtype'] = str(img.dtype)
        log.info(f"Screenshot captured: shape={img.shape}, dtype={img.dtype}")
        
        # 验证图像数据
        if img.shape[0] == height and img.shape[1] == width and img.shape[2] == 3:
            results['validation'] = 'PASS'
            log.info("Image validation PASSED")
        else:
            results['validation'] = 'FAIL'
            results['validation_error'] = f"Expected ({height}, {width}, 3), got {img.shape}"
            log.error(f"Image validation FAILED: {results['validation_error']}")
        
        # 获取性能统计
        perf_stats = platform_bridge.get_perf_stats()
        results['perf_stats'] = perf_stats
        log.info(f"Performance stats: {perf_stats}")
        
    except Exception as e:
        log.error(f"Screenshot test error: {e}", exc_info=True)
        results['error'] = str(e)
    
    log.info(f"=== Screenshot Test Results: {results} ===")
    return results
