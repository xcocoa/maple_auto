# -*- coding: utf-8 -*-
"""
冒险岛金字塔副本 - 游戏逻辑层
13 状态机：EXPLORE/HUNT/FIGHT/CLEAR_CHECK/FIND_NPC/INTERACT_NPC/FIND_EXIT/ENTER_EXIT
          + DEAD/DISCONNECT/STUCK_RECOVERY/ERROR/IDLE
复用：minimap, combat, navigation, skill 模块
新增：explore_planner（系统性探索）、清怪UI检测
"""

import time
import random
import os
import cv2
import numpy as np
from enum import Enum, auto
from typing import Optional, Dict, Any, List

from core.adb import ADB
from core.config import Config
from core.logger import Logger
from modules.minimap import MinimapDetector, MapObject
from modules.combat import CombatController
from modules.navigation import Navigator
from modules.skill import SkillDetector, Skill
from modules.explore_planner import ExplorePlanner


class ScaledADB:
    """ADB 代理：截图缩放到基准分辨率，触摸坐标反向缩放到设备分辨率"""

    def __init__(self, adb: ADB, base_w: int = 1280, base_h: int = 720):
        self._adb = adb
        self._base_w = base_w
        self._base_h = base_h
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._calibrated = False

    def calibrate(self, device_w: int, device_h: int):
        """根据实际设备分辨率计算缩放比"""
        self._scale_x = device_w / self._base_w
        self._scale_y = device_h / self._base_h
        self._calibrated = True

    def tap(self, x: int, y: int) -> None:
        self._adb.tap(int(x * self._scale_x), int(y * self._scale_y))

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        self._adb.swipe(
            int(x1 * self._scale_x), int(y1 * self._scale_y),
            int(x2 * self._scale_x), int(y2 * self._scale_y),
            duration
        )

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        self._adb.long_press(int(x * self._scale_x), int(y * self._scale_y), duration)

    # 透传不需要缩放的方法
    def __getattr__(self, name):
        return getattr(self._adb, name)


class PyramidState(Enum):
    """金字塔副本状态"""
    # 核心流程
    IDLE = auto()
    EXPLORE = auto()         # 系统性探索房间
    HUNT = auto()            # 追击目标怪物
    FIGHT = auto()           # 近距离战斗
    CLEAR_CHECK = auto()     # 检测清怪完成

    # NPC 交互
    FIND_NPC = auto()
    INTERACT_NPC = auto()

    # 出口
    FIND_EXIT = auto()
    ENTER_EXIT = auto()

    # 异常处理
    DEAD = auto()
    DISCONNECT = auto()
    STUCK_RECOVERY = auto()
    ERROR = auto()


class TimeoutLevel(Enum):
    """超时严重级别"""
    INFO = auto()
    WARNING = auto()
    CRITICAL = auto()


# 状态超时配置：(config_key, default_seconds, level)
STATE_TIMEOUT_CONFIG = {
    PyramidState.EXPLORE: ('pyramid.timeouts.explore', 60.0, TimeoutLevel.WARNING),
    PyramidState.HUNT: ('pyramid.timeouts.hunt', 15.0, TimeoutLevel.WARNING),
    PyramidState.FIGHT: ('pyramid.timeouts.fight', 20.0, TimeoutLevel.WARNING),
    PyramidState.CLEAR_CHECK: ('pyramid.timeouts.clear_check', 10.0, TimeoutLevel.WARNING),
    PyramidState.FIND_NPC: ('pyramid.timeouts.find_npc', 15.0, TimeoutLevel.WARNING),
    PyramidState.INTERACT_NPC: ('pyramid.timeouts.interact_npc', 10.0, TimeoutLevel.WARNING),
    PyramidState.FIND_EXIT: ('pyramid.timeouts.find_exit', 20.0, TimeoutLevel.WARNING),
    PyramidState.ENTER_EXIT: ('pyramid.timeouts.enter_exit', 15.0, TimeoutLevel.WARNING),
    PyramidState.DEAD: ('game.idle_timeout', 10.0, TimeoutLevel.CRITICAL),
    PyramidState.DISCONNECT: ('game.idle_timeout', 30.0, TimeoutLevel.CRITICAL),
    PyramidState.STUCK_RECOVERY: ('game.idle_timeout', 10.0, TimeoutLevel.WARNING),
    PyramidState.ERROR: ('game.idle_timeout', 5.0, TimeoutLevel.CRITICAL),
}


class PyramidGame:
    """金字塔副本主逻辑"""

    def __init__(self, config_path: str = "config/pyramid.yaml"):
        self.logger = Logger(name="PyramidGame")

        # 加载配置
        self.config = Config(config_path)

        # 初始化 ADB（包装缩放代理）
        device_id = self.config.get('device.id', 'emulator-5560')
        adb_path = self.config.get('device.adb_path', 'adb')
        self._raw_adb = ADB(device_id, adb_path)
        self._base_w = self.config.get('device.base_width', 1280)
        self._base_h = self.config.get('device.base_height', 720)
        self.adb = ScaledADB(self._raw_adb, self._base_w, self._base_h)

        # 初始化核心模块（复用）
        self.minimap = MinimapDetector(self.config.get('minimap', {}))
        self.combat = CombatController(
            self.adb,
            self.config.get('combat', {}),
            self.config.get('combat.skill_positions', [])
        )
        self.navigator = Navigator(
            self.adb,
            self.config.get('navigation', {})
        )
        self.skill_detector = SkillDetector(self.config.get('skill', {}))

        # 金字塔专用：探索规划器
        self.explore_planner = ExplorePlanner(
            config=self.config.get('pyramid.explore', {}),
            minimap_config=self.config.get('minimap', {})
        )

        # 金字塔专用：清怪提示模板
        self._clear_template = None
        self._load_clear_template()

        # 状态机
        self.current_state = PyramidState.IDLE
        self.previous_state = PyramidState.IDLE
        self.state_start_time = time.time()
        self.available_skills: List[Skill] = []

        # 清怪确认帧计数
        self._clear_confirm_frames = 0

        # NPC 交互计数（当前房间）
        self._npcs_interacted = 0

        # 卡住恢复
        self._stuck_recovery_attempts = 0
        self._max_stuck_recovery = 3

        # 截图失败计数
        self._screenshot_fail_count = 0
        self._max_screenshot_fails = 5

        # 玩家未检测到计数
        self._player_not_found_count = 0
        self._player_not_found_threshold = 10

        # 统计信息
        self.stats = {
            'monsters_defeated': 0,
            'npcs_interacted': 0,
            'rooms_cleared': 0,
            'deaths': 0,
            'disconnects': 0,
            'stuck_recoveries': 0,
        }

        self.logger.info("金字塔副本初始化完成")

    def _load_clear_template(self):
        """加载清怪完成UI模板图"""
        template_path = self.config.get('pyramid.clear_template', 'templates/pyramid_clear.png')
        if os.path.exists(template_path):
            self._clear_template = cv2.imread(template_path)
            if self._clear_template is not None:
                self.logger.info(f"已加载清怪提示模板: {template_path}")
            else:
                self.logger.warning(f"无法读取模板图: {template_path}")
        else:
            self.logger.warning(f"模板文件不存在: {template_path}，将仅依赖帧检测")

    # ==================== 状态管理 ====================

    def _change_state(self, new_state: PyramidState, reason: str = "") -> None:
        """状态转换"""
        old_state = self.current_state
        if old_state == new_state:
            return

        self.previous_state = old_state
        self.current_state = new_state
        self.state_start_time = time.time()
        self.adb.invalidate_cache()

        log_msg = f"状态转换: {old_state.name} → {new_state.name}"
        if reason:
            log_msg += f" ({reason})"
        self.logger.info(log_msg)

    # ==================== 主循环 ====================

    def start(self):
        """启动金字塔副本自动化"""
        self.logger.info("启动金字塔副本...")
        self._change_state(PyramidState.EXPLORE, "副本开始")

        while True:
            try:
                self._game_loop()
            except KeyboardInterrupt:
                self.logger.info("用户中断，退出")
                break
            except Exception as e:
                self.logger.error(f"游戏循环错误：{e}")
                self._change_state(PyramidState.ERROR, str(e))
                time.sleep(2)

    def _game_loop(self):
        """主循环"""
        frame_start = time.time()

        # 健康检查
        if not self.adb.health_check():
            if self.current_state != PyramidState.DISCONNECT:
                self._change_state(PyramidState.DISCONNECT, "设备连接丢失")
            self._handle_disconnect()
            return

        # 截图
        raw_screenshot = self._raw_adb.screenshot()
        if raw_screenshot is None:
            self._screenshot_fail_count += 1
            if self._screenshot_fail_count >= self._max_screenshot_fails:
                self._change_state(PyramidState.DISCONNECT, "截图持续失败")
            time.sleep(0.5)
            return
        self._screenshot_fail_count = 0

        # 分辨率缩放：将设备原始分辨率缩放到基准分辨率
        h, w = raw_screenshot.shape[:2]
        if w != self._base_w or h != self._base_h:
            if not self.adb._calibrated:
                self.adb.calibrate(w, h)
                self.logger.info(f"设备分辨率: {w}x{h} → 缩放到 {self._base_w}x{self._base_h}")
            screenshot = cv2.resize(raw_screenshot, (self._base_w, self._base_h))
        else:
            screenshot = raw_screenshot

        # 状态分发
        handler = {
            PyramidState.IDLE: self._handle_idle,
            PyramidState.EXPLORE: self._handle_explore,
            PyramidState.HUNT: self._handle_hunt,
            PyramidState.FIGHT: self._handle_fight,
            PyramidState.CLEAR_CHECK: self._handle_clear_check,
            PyramidState.FIND_NPC: self._handle_find_npc,
            PyramidState.INTERACT_NPC: self._handle_interact_npc,
            PyramidState.FIND_EXIT: self._handle_find_exit,
            PyramidState.ENTER_EXIT: self._handle_enter_exit,
            PyramidState.DEAD: self._handle_dead,
            PyramidState.STUCK_RECOVERY: self._handle_stuck_recovery,
            PyramidState.ERROR: self._handle_error,
        }.get(self.current_state)

        if handler:
            handler(screenshot)

        # 全局检测：任何状态下都检查"通关!!!!"大字
        # （通关提示可能在战斗/探索中突然出现）
        if self.current_state in (
            PyramidState.EXPLORE, PyramidState.HUNT, PyramidState.FIGHT,
            PyramidState.FIND_NPC, PyramidState.FIND_EXIT,
        ):
            if self._detect_clear_prompt(screenshot):
                self.logger.info("全局检测到通关!!!!")
                self._clear_confirm_frames = 0
                self._change_state(PyramidState.FIND_NPC, "通关（全局检测）")

        # 超时检查
        self._check_state_timeout()

        # 性能记录
        self.logger.perf.record_frame(time.time() - frame_start)
        self.logger.perf.maybe_report()

        # 帧率控制
        time.sleep(0.1)

    # ==================== 核心状态处理 ====================

    def _handle_idle(self, screenshot: np.ndarray):
        """IDLE: 副本完成，等待退出"""
        self.logger.info("副本已完成，进入空闲状态")
        time.sleep(1.0)

    def _handle_explore(self, screenshot: np.ndarray):
        """EXPLORE: 系统性探索房间，寻找怪物"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return self._check_player_lost()

        # 标记当前位置为已探索
        self.explore_planner.mark_visited(player)

        # 优先：发现怪物则转 HUNT
        monsters = self.minimap.find_monsters(screenshot)
        if monsters:
            self.logger.info(f"发现 {len(monsters)} 个怪物")
            self._change_state(PyramidState.HUNT, f"检测到{len(monsters)}个怪物")
            return

        # 获取下一个探索航点
        waypoint = self.explore_planner.get_next_waypoint(player)
        if waypoint:
            self.navigator.navigate_to(player, waypoint)

            # 卡住检测
            if self.navigator.check_stuck(player):
                self._stuck_recovery_attempts += 1
                if self._stuck_recovery_attempts >= self._max_stuck_recovery:
                    self._change_state(PyramidState.STUCK_RECOVERY, "探索中卡住")
                else:
                    self.navigator.handle_stuck()
        else:
            # 所有区域已扫描，检查清怪是否完成
            self.logger.info(f"探索完成 ({self.explore_planner.get_progress()})，检查清怪状态")
            self._change_state(PyramidState.CLEAR_CHECK, "探索完成")

    def _handle_hunt(self, screenshot: np.ndarray):
        """HUNT: 追击目标怪物（导航接近）"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return self._check_player_lost()

        monsters = self.minimap.find_monsters(screenshot)
        if not monsters:
            self._change_state(PyramidState.EXPLORE, "追击目标消失")
            return

        target = monsters[0]
        distance = self.minimap.get_distance(player, target)

        # 进入攻击范围 → 切换到 FIGHT
        attack_range = self.config.get('pyramid.attack_range', 80)
        if distance < attack_range:
            self._change_state(PyramidState.FIGHT, "进入攻击范围")
            return

        # 导航接近
        self.combat.navigate_to(player, target, is_npc=False)

        # 卡住检测
        if self.navigator.check_stuck(player):
            self._stuck_recovery_attempts += 1
            if self._stuck_recovery_attempts >= self._max_stuck_recovery:
                self._change_state(PyramidState.STUCK_RECOVERY, "追击中卡住")
            else:
                self.navigator.handle_stuck()

    def _handle_fight(self, screenshot: np.ndarray):
        """FIGHT: 近距离战斗（释放技能）"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return self._check_player_lost()

        monsters = self.minimap.find_monsters(screenshot)
        if not monsters:
            self.stats['monsters_defeated'] += 1
            self._change_state(PyramidState.EXPLORE, "当前怪物已消灭")
            return

        target = monsters[0]
        monster_count = len(monsters)
        distance = self.minimap.get_distance(player, target)

        # 怪物脱离攻击范围 → 回到 HUNT 追击
        chase_range = self.config.get('pyramid.chase_range', 120)
        if distance > chase_range:
            self._change_state(PyramidState.HUNT, "怪物脱离攻击范围")
            return

        # 技能检测
        self.available_skills = self.skill_detector.detect_skills(screenshot)

        # dodge（阈值降低到3，适配金字塔怪物少但强的特点）
        dodge_count = self.config.get('pyramid.dodge_enemy_count', 3)
        direction = self.combat.get_direction_to_target(player, target)
        self.combat.dodge(direction=direction, monster_count=monster_count)

        # 微调位置
        if distance > 30:
            self.combat.navigate_to(player, target, is_npc=False)

        # 攻击
        attack_range = self.config.get('pyramid.attack_range', 80)
        if distance < attack_range:
            self.combat.attack(monster_count=monster_count)

    def _handle_clear_check(self, screenshot: np.ndarray):
        """CLEAR_CHECK: 检测清怪是否完成（金字塔独有）"""
        # 方法1：UI 模板匹配检测
        if self._detect_clear_prompt(screenshot):
            self.logger.info("UI确认：怪物已全部清除")
            self._clear_confirm_frames = 0
            self._change_state(PyramidState.FIND_NPC, "清怪完成（UI确认）")
            return

        # 方法2：小地图连续 N 帧无怪物
        monsters = self.minimap.find_monsters(screenshot)
        if monsters:
            self._clear_confirm_frames = 0
            self._change_state(PyramidState.EXPLORE, "仍有存活怪物")
            return

        self._clear_confirm_frames += 1
        threshold = self.config.get('pyramid.clear_confirm_frames', 15)

        if self._clear_confirm_frames >= threshold:
            self.logger.info(f"连续{self._clear_confirm_frames}帧无怪物，判定清怪完成")
            self._clear_confirm_frames = 0
            self._change_state(PyramidState.FIND_NPC, "清怪完成（帧确认）")
            return

        # 等待中小范围移动（扩大检测范围）
        self.navigator.explore()

    def _detect_clear_prompt(self, screenshot: np.ndarray) -> bool:
        """检测屏幕中央的"通关!!!!"金黄色大字

        检测策略：
        - 优先使用模板匹配（阈值0.6，误报率极低）
        - 仅当模板文件不存在时，回退到颜色检测（阈值更高：0.08）
        """
        region_cfg = self.config.get('pyramid.clear_prompt_region', {})
        x1 = region_cfg.get('x1', 400)
        y1 = region_cfg.get('y1', 250)
        x2 = region_cfg.get('x2', 880)
        y2 = region_cfg.get('y2', 470)

        # 裁剪检测区域
        h, w = screenshot.shape[:2]
        x1 = max(0, min(x1, w))
        x2 = max(0, min(x2, w))
        y1 = max(0, min(y1, h))
        y2 = max(0, min(y2, h))

        if x2 <= x1 or y2 <= y1:
            return False

        region = screenshot[y1:y2, x1:x2]

        # 主方法：模板匹配（优先）
        if self._clear_template is not None:
            try:
                result = cv2.matchTemplate(region, self._clear_template, cv2.TM_CCOEFF_NORMED)
                score = float(np.max(result))
                threshold = self.config.get('pyramid.clear_match_threshold', 0.6)
                if score > threshold:
                    self.logger.info(f"检测到通关提示（模板匹配 score={score:.4f}）")
                    return True
            except cv2.error:
                pass
            # 模板存在但未匹配，直接返回 False（不再回退颜色检测）
            return False

        # 回退方法：颜色检测（仅当模板文件不存在时使用）
        # 注意：阈值设为0.08以减少误报（游戏中金色UI元素常见）
        color_cfg = self.config.get('pyramid.clear_text_color', {})
        lower = np.array(color_cfg.get('lower', [18, 60, 200]))
        upper = np.array(color_cfg.get('upper', [32, 255, 255]))
        min_ratio = self.config.get('pyramid.clear_text_min_ratio', 0.08)

        hsv = cv2.cvtColor(region, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, lower, upper)
        ratio = np.count_nonzero(mask) / max(mask.size, 1)

        if ratio > min_ratio:
            self.logger.info(f"检测到通关文字颜色（回退检测, 金黄比例={ratio:.4f}）")
            return True

        return False

    # ==================== NPC 交互 ====================

    def _handle_find_npc(self, screenshot: np.ndarray):
        """FIND_NPC: 寻找下一个NPC"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return self._check_player_lost()

        npc = self.minimap.find_npc(screenshot)
        if npc:
            self._change_state(PyramidState.INTERACT_NPC, "发现NPC")
            return

        # NPC 不在可见范围，探索
        self.navigator.explore()

    def _handle_interact_npc(self, screenshot: np.ndarray):
        """INTERACT_NPC: 接近并交互NPC"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return

        npc = self.minimap.find_npc(screenshot)
        if not npc:
            self.logger.warning("NPC消失")
            # NPC 消失：可能已交互完，也可能检测丢失
            if self._npcs_interacted > 0:
                self._change_state(PyramidState.FIND_EXIT, "NPC消失，尝试找出口")
            else:
                self._change_state(PyramidState.FIND_NPC, "NPC消失，重新寻找")
            return

        # 导航到 NPC
        arrived = self.combat.navigate_to(player, npc, is_npc=True)

        if arrived:
            # 交互
            self.combat.jump()
            time.sleep(0.3)
            self.adb.tap(npc.x, npc.y)
            time.sleep(0.5)

            # 跳过对话
            dialog_clicks = self.config.get('pyramid.npc_dialog_clicks', 5)
            dialog_interval = self.config.get('pyramid.npc_dialog_interval', 0.3)
            screen_cx = self.config.get('game.screen_center_x', 640)
            screen_cy = self.config.get('game.screen_center_y', 360)

            for _ in range(dialog_clicks):
                self.adb.tap(screen_cx, screen_cy)
                time.sleep(dialog_interval)

            self._npcs_interacted += 1
            self.stats['npcs_interacted'] += 1
            self.logger.info(f"已交互 {self._npcs_interacted} 个NPC")

            # 检查是否还有 NPC
            time.sleep(0.5)
            verify = self.adb.screenshot(force_refresh=True)
            if verify is not None:
                next_npc = self.minimap.find_npc(verify)
                if next_npc:
                    self._change_state(PyramidState.FIND_NPC,
                                       f"前往下一个NPC (已交互{self._npcs_interacted}个)")
                    return

            # 没有更多 NPC
            self._change_state(PyramidState.FIND_EXIT, "所有NPC交互完成")

    # ==================== 出口 ====================

    def _handle_find_exit(self, screenshot: np.ndarray):
        """FIND_EXIT: 寻找出口/传送门"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return

        portal = self.minimap.find_portal(screenshot)
        if portal:
            self._change_state(PyramidState.ENTER_EXIT, "发现出口")
            return

        self.navigator.explore()

    def _handle_enter_exit(self, screenshot: np.ndarray):
        """ENTER_EXIT: 进入出口"""
        player = self.minimap.find_player(screenshot)
        if not player:
            return

        portal = self.minimap.find_portal(screenshot)
        if not portal:
            self._change_state(PyramidState.FIND_EXIT, "出口消失")
            return

        threshold = self.config.get('pyramid.portal_arrive_threshold', 30)
        distance = self.minimap.get_distance(player, portal)

        if distance < threshold:
            # 到达出口，按上键进入
            self._press_up_key()
            time.sleep(0.5)

            # 验证场景变化
            verify = self.adb.screenshot(force_refresh=True)
            if verify is not None:
                old_portal = self.minimap.find_portal(verify)
                if old_portal is None:
                    self._on_room_cleared()
                else:
                    self.logger.warning("进入出口未成功，重试")
            else:
                # 截图失败，保守处理
                self._on_room_cleared()
        else:
            self.combat.navigate_to(player, portal, is_npc=True)

    def _on_room_cleared(self):
        """房间通关处理"""
        self.stats['rooms_cleared'] += 1
        self.logger.info(f"房间通关！已完成 {self.stats['rooms_cleared']} 个房间")

        # 检查是否副本结束
        max_rooms = self.config.get('pyramid.max_rooms', 5)
        if self.stats['rooms_cleared'] >= max_rooms:
            self.logger.info("金字塔副本全部完成！")
            self._change_state(PyramidState.IDLE, "副本完成")
            return

        # 重置本房间状态，进入下一房间
        self.explore_planner.reset()
        self._npcs_interacted = 0
        self._clear_confirm_frames = 0
        self._stuck_recovery_attempts = 0
        self._change_state(PyramidState.EXPLORE, f"进入第{self.stats['rooms_cleared'] + 1}个房间")

    # ==================== 异常处理 ====================

    def _check_player_lost(self):
        """检查玩家是否丢失（可能死亡）"""
        self._player_not_found_count += 1
        if self._player_not_found_count >= self._player_not_found_threshold:
            self._change_state(PyramidState.DEAD, "连续未检测到玩家")
            self.stats['deaths'] += 1

    def _handle_dead(self, screenshot: np.ndarray):
        """DEAD: 等待复活"""
        self.logger.warning("检测到玩家死亡，尝试复活...")
        screen_cx = self.config.get('game.screen_center_x', 640)
        screen_cy = self.config.get('game.screen_center_y', 360)
        self.adb.tap(screen_cx, screen_cy)
        time.sleep(1.0)

        verify = self.adb.screenshot(force_refresh=True)
        if verify is not None:
            player = self.minimap.find_player(verify)
            if player is not None:
                self.logger.info("玩家已复活")
                self._player_not_found_count = 0
                self._change_state(PyramidState.EXPLORE, "复活成功")

    def _handle_disconnect(self, screenshot: np.ndarray = None):
        """DISCONNECT: 设备断连"""
        self.logger.warning("设备断开，尝试重连...")
        self.stats['disconnects'] += 1

        if self.adb._try_reconnect():
            self._change_state(PyramidState.EXPLORE, "设备重连成功")
        else:
            self.logger.error("重连失败，等待后重试")
            time.sleep(5.0)

    def _handle_stuck_recovery(self, screenshot: np.ndarray):
        """STUCK_RECOVERY: 卡住恢复"""
        self.logger.warning(f"卡住恢复 (尝试 {self._stuck_recovery_attempts}/{self._max_stuck_recovery})")
        self.stats['stuck_recoveries'] += 1

        player_before = self.minimap.find_player(screenshot)

        # 激进恢复：大范围随机跳跃
        direction = random.choice([-1, 1])
        self.navigator.move(direction, duration=300)
        time.sleep(0.2)
        self.navigator.jump()
        time.sleep(0.3)
        self.navigator.move(-direction, duration=200)
        time.sleep(0.2)

        # 验证
        verify = self.adb.screenshot(force_refresh=True)
        if verify is not None:
            player_after = self.minimap.find_player(verify)
            if player_before and player_after:
                dist = abs(player_after.x - player_before.x) + abs(player_after.y - player_before.y)
                if dist > 10:
                    self.logger.info(f"卡住恢复成功，移动距离: {dist}")
                    self._stuck_recovery_attempts = 0
                    self._change_state(self.previous_state, "卡住恢复成功")
                    return

        if self._stuck_recovery_attempts >= self._max_stuck_recovery * 2:
            self._stuck_recovery_attempts = 0
            self._change_state(PyramidState.EXPLORE, "卡住恢复失败，强制重置")

    def _handle_error(self, screenshot: np.ndarray):
        """ERROR: 错误恢复"""
        self.logger.warning("错误状态，尝试恢复")
        time.sleep(2)
        self._change_state(PyramidState.EXPLORE, "错误恢复")

    # ==================== 工具方法 ====================

    def _press_up_key(self):
        """按上键（进入传送门/出口）"""
        up_key = self.config.get('game.up_key_position', [540, 400])
        self.adb.tap(up_key[0], up_key[1])

    def _check_state_timeout(self):
        """状态超时检查"""
        elapsed = time.time() - self.state_start_time
        timeout_cfg = STATE_TIMEOUT_CONFIG.get(self.current_state)
        if timeout_cfg is None:
            return

        config_key, default_timeout, level = timeout_cfg
        timeout = self.config.get(config_key, default_timeout)

        if elapsed <= timeout:
            return

        self.logger.warning(
            f"状态 {self.current_state.name} 超时 ({elapsed:.1f}s > {timeout:.1f}s), 级别: {level.name}"
        )

        if level == TimeoutLevel.CRITICAL:
            if not self.adb.is_device_connected():
                self._change_state(PyramidState.DISCONNECT, "超时+连接丢失")
            else:
                self._change_state(PyramidState.EXPLORE, "严重超时强制重置")
        elif level == TimeoutLevel.WARNING:
            self._handle_warning_timeout()

    def _handle_warning_timeout(self):
        """WARNING 级别超时处理"""
        state = self.current_state

        if state == PyramidState.EXPLORE:
            self._change_state(PyramidState.CLEAR_CHECK, "探索超时，检查清怪状态")
        elif state == PyramidState.HUNT:
            self._change_state(PyramidState.EXPLORE, "追击超时")
        elif state == PyramidState.FIGHT:
            self._change_state(PyramidState.EXPLORE, "战斗超时")
        elif state == PyramidState.CLEAR_CHECK:
            self._clear_confirm_frames = 0
            self._change_state(PyramidState.FIND_NPC, "清怪检测超时，直接找NPC")
        elif state == PyramidState.FIND_NPC:
            self._change_state(PyramidState.FIND_EXIT, "找NPC超时，直接找出口")
        elif state == PyramidState.INTERACT_NPC:
            self._change_state(PyramidState.FIND_NPC, "NPC交互超时")
        elif state == PyramidState.FIND_EXIT:
            self._change_state(PyramidState.EXPLORE, "找出口超时，重新探索")
        elif state == PyramidState.ENTER_EXIT:
            self._change_state(PyramidState.FIND_EXIT, "进入出口超时")
        elif state == PyramidState.STUCK_RECOVERY:
            self._stuck_recovery_attempts = 0
            self._change_state(PyramidState.EXPLORE, "卡住恢复超时")

    def get_stats(self) -> Dict[str, Any]:
        """获取统计信息"""
        return {
            **self.stats,
            'current_state': self.current_state.name,
            'explore_progress': self.explore_planner.get_progress(),
            'npcs_this_room': self._npcs_interacted,
        }
