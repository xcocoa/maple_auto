# -*- coding: utf-8 -*-
"""
冒险岛肉鸽小游戏 - 游戏逻辑层
整合所有模块，实现完整的状态机控制
支持：死亡恢复、断线重连、分类卡住处理、状态验证
"""

import time
import random
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


class GameState(Enum):
    """游戏状态"""
    IDLE = auto()            # 空闲状态
    SEARCH = auto()          # 搜索怪物
    FIGHT = auto()           # 战斗中
    FIND_NPC = auto()        # 寻找 NPC
    INTERACT_NPC = auto()    # 与 NPC 交互
    FIND_PORTAL = auto()     # 寻找传送门
    ENTER_PORTAL = auto()    # 进入传送门
    DEAD = auto()            # 玩家死亡
    DISCONNECT = auto()      # 设备断开连接
    STUCK_RECOVERY = auto()  # 卡住恢复
    ERROR = auto()           # 错误状态


class TimeoutLevel(Enum):
    """超时严重级别"""
    INFO = auto()       # 仅记录日志
    WARNING = auto()    # 重试当前操作
    CRITICAL = auto()   # 强制重连


# 每个状态的超时配置：(config_key, default_seconds, level)
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


class RoguelikeGame:
    """肉鸽小游戏主逻辑"""

    def __init__(self, config_path: str = "config/roguelike.yaml"):
        # 初始化日志
        self.logger = Logger(name="RoguelikeGame")

        # 加载配置
        self.config = Config(config_path)

        # 初始化 ADB
        device_id = self.config.get('device.id', 'emulator-5560')
        adb_path = self.config.get('device.adb_path', 'adb')
        self.adb = ADB(device_id, adb_path)

        # 初始化模块
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

        # 游戏状态
        self.current_state = GameState.IDLE
        self.previous_state = GameState.IDLE
        self.state_start_time = time.time()
        self.available_skills: List[Skill] = []

        # 卡住恢复计数
        self._stuck_recovery_attempts = 0
        self._max_stuck_recovery = 3

        # 连续截图失败计数
        self._screenshot_fail_count = 0
        self._max_screenshot_fails = 5

        # 玩家死亡检测：连续未检测到玩家的次数
        self._player_not_found_count = 0
        self._player_not_found_threshold = 10

        # 统计信息
        self.stats = {
            'monsters_defeated': 0,
            'npcs_interacted': 0,
            'stages_cleared': 0,
            'deaths': 0,
            'disconnects': 0,
            'stuck_recoveries': 0
        }

        self.logger.info("肉鸽游戏初始化完成")

    def _change_state(self, new_state: GameState, reason: str = "") -> None:
        """状态转换（带日志、缓存清除、验证）"""
        old_state = self.current_state
        if old_state == new_state:
            return

        self.previous_state = old_state
        self.current_state = new_state
        self.state_start_time = time.time()

        # 状态转换时清除截图缓存
        self.adb.invalidate_cache()

        log_msg = f"状态转换: {old_state.name} → {new_state.name}"
        if reason:
            log_msg += f" ({reason})"
        self.logger.info(log_msg)

    def start(self):
        """启动游戏循环"""
        self.logger.info("启动游戏循环...")
        self._change_state(GameState.SEARCH, "游戏开始")

        while True:
            try:
                self._game_loop()
            except KeyboardInterrupt:
                self.logger.info("用户中断，退出游戏")
                break
            except Exception as e:
                self.logger.error(f"游戏循环错误：{e}")
                self._change_state(GameState.ERROR, str(e))
                time.sleep(2)

    def _game_loop(self):
        """游戏主循环"""
        frame_start = time.time()

        # 健康检查
        if not self.adb.health_check():
            if self.current_state != GameState.DISCONNECT:
                self._change_state(GameState.DISCONNECT, "设备连接丢失")
            self._handle_disconnect()
            return

        # 获取截图
        t0 = time.time()
        screenshot = self.adb.screenshot()
        self.logger.perf.record_adb(time.time() - t0)

        if screenshot is None:
            self._screenshot_fail_count += 1
            if self._screenshot_fail_count >= self._max_screenshot_fails:
                self.logger.warning(f"连续 {self._screenshot_fail_count} 次截图失败")
                self._change_state(GameState.DISCONNECT, "截图持续失败")
            else:
                self.logger.warning("截图失败，重试")
            time.sleep(0.5)
            return

        self._screenshot_fail_count = 0

        # 根据状态执行不同逻辑
        handler = {
            GameState.SEARCH: self._handle_search,
            GameState.FIGHT: self._handle_fight,
            GameState.FIND_NPC: self._handle_find_npc,
            GameState.INTERACT_NPC: self._handle_interact_npc,
            GameState.FIND_PORTAL: self._handle_find_portal,
            GameState.ENTER_PORTAL: self._handle_enter_portal,
            GameState.DEAD: self._handle_dead,
            GameState.STUCK_RECOVERY: self._handle_stuck_recovery,
            GameState.ERROR: self._handle_error,
        }.get(self.current_state)

        if handler:
            handler(screenshot)

        # 状态超时检查
        self._check_state_timeout()

        # 性能记录
        self.logger.perf.record_frame(time.time() - frame_start)
        self.logger.perf.maybe_report()

        # 短暂延迟
        time.sleep(0.1)

    def _handle_search(self, screenshot: np.ndarray):
        """处理搜索状态"""
        monsters = self.minimap.find_monsters(screenshot)

        if monsters:
            self.logger.info(f"发现 {len(monsters)} 个怪物")
            self._change_state(GameState.FIGHT, f"检测到{len(monsters)}个怪物")
        else:
            npc = self.minimap.find_npc(screenshot)
            if npc:
                self._change_state(GameState.FIND_NPC, "检测到NPC")
            else:
                # 探索模式
                self.navigator.explore()

    def _handle_fight(self, screenshot: np.ndarray):
        """处理战斗状态（使用智能技能选择和dodge）"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            self._player_not_found_count += 1
            if self._player_not_found_count >= self._player_not_found_threshold:
                self._change_state(GameState.DEAD, "连续未检测到玩家")
                self.stats['deaths'] += 1
            return
        self._player_not_found_count = 0

        t0 = time.time()
        monsters = self.minimap.find_monsters(screenshot)
        self.logger.perf.record_detection(time.time() - t0)

        if not monsters:
            self._change_state(GameState.FIND_NPC, "怪物已消灭")
            return

        monster_count = len(monsters)
        target = monsters[0]

        # 检测技能
        self.available_skills = self.skill_detector.detect_skills(screenshot)

        # 尝试 dodge（怪物数量过多时触发）
        direction = self.combat.get_direction_to_target(player, target)
        self.combat.dodge(direction=direction, monster_count=monster_count)

        # 寻路到怪物位置
        arrived = self.combat.navigate_to(player, target, is_npc=False)

        # 到达攻击范围后使用智能技能选择
        attack_range = self.config.get('game.attack_range', 100)
        if arrived or self.minimap.get_distance(player, target) < attack_range:
            if self.combat.attack(monster_count=monster_count):
                self.stats['monsters_defeated'] += 1

        # 检查是否卡住
        if self.navigator.check_stuck(player):
            self._stuck_recovery_attempts += 1
            if self._stuck_recovery_attempts >= self._max_stuck_recovery:
                self._change_state(GameState.STUCK_RECOVERY, f"连续卡住{self._stuck_recovery_attempts}次")
            else:
                self.navigator.handle_stuck()

    def _handle_find_npc(self, screenshot: np.ndarray):
        """处理寻找 NPC 状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            self._player_not_found_count += 1
            if self._player_not_found_count >= self._player_not_found_threshold:
                self._change_state(GameState.DEAD, "连续未检测到玩家")
                self.stats['deaths'] += 1
            return
        self._player_not_found_count = 0

        npc = self.minimap.find_npc(screenshot)
        if npc:
            self._change_state(GameState.INTERACT_NPC, "发现NPC")
            return

        # 继续搜索
        self.navigator.explore()

    def _handle_interact_npc(self, screenshot: np.ndarray):
        """处理与 NPC 交互状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        npc = self.minimap.find_npc(screenshot)
        if npc is None:
            self.logger.warning("NPC 消失，返回搜索")
            self._change_state(GameState.SEARCH, "NPC消失")
            return

        # 寻路到 NPC
        arrived = self.combat.navigate_to(player, npc, is_npc=True)

        # 到达后交互
        if arrived:
            self.combat.jump()
            time.sleep(0.3)
            self.adb.tap(npc.x, npc.y)
            time.sleep(0.5)
            self.stats['npcs_interacted'] += 1
            self.logger.info(f"已与 {self.stats['npcs_interacted']} 个 NPC 交互")
            self._change_state(GameState.FIND_PORTAL, "NPC交互完成")

    def _handle_find_portal(self, screenshot: np.ndarray):
        """处理寻找传送门状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        portal = self.minimap.find_portal(screenshot)
        if portal:
            self.logger.info(f"发现传送门，位置：({portal.x}, {portal.y})")
            self._change_state(GameState.ENTER_PORTAL, "检测到传送门")
            return

        # 未找到传送门，继续探索
        self.navigator.explore()

    def _handle_enter_portal(self, screenshot: np.ndarray):
        """处理进入传送门状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        portal = self.minimap.find_portal(screenshot)
        if portal is None:
            self.logger.warning("传送门消失，返回搜索")
            self._change_state(GameState.SEARCH, "传送门消失")
            return

        portal_arrive_threshold = self.config.get('game.portal_arrive_threshold', 30.0)
        dx = portal.x - player.x
        dy = portal.y - player.y

        if abs(dx) < portal_arrive_threshold and abs(dy) < portal_arrive_threshold:
            self.logger.info("已到达传送门，按下方向键上进入下一关")
            self._press_up_key()
            time.sleep(0.5)

            # 验证是否真正进入下一阶段（通过截图检查场景变化）
            verify_screenshot = self.adb.screenshot(force_refresh=True)
            if verify_screenshot is not None:
                monsters = self.minimap.find_monsters(verify_screenshot)
                old_portal = self.minimap.find_portal(verify_screenshot)
                # 场景变化判定：旧传送门消失 或 出现新怪物
                if old_portal is None or monsters:
                    self.stats['stages_cleared'] += 1
                    self.logger.info(f"确认进入下一关，已通关 {self.stats['stages_cleared']} 层")
                else:
                    self.logger.warning("进入传送门未成功，重试")
            else:
                # 截图失败时保守处理，假设成功
                self.stats['stages_cleared'] += 1
                self.logger.info(f"已通关 {self.stats['stages_cleared']} 层（未验证）")

            self._change_state(GameState.SEARCH, "进入下一关")
        else:
            self.combat.navigate_to(player, portal, is_npc=True)

    def _handle_dead(self, screenshot: np.ndarray):
        """处理玩家死亡状态 - 等待复活"""
        self.logger.warning("检测到玩家可能死亡，等待复活...")
        # 尝试点击屏幕中央（通常复活按钮位置）
        screen_center_x = self.config.get('game.screen_center_x', 640)
        screen_center_y = self.config.get('game.screen_center_y', 360)
        self.adb.tap(screen_center_x, screen_center_y)
        time.sleep(1.0)

        # 检查玩家是否复活
        verify = self.adb.screenshot(force_refresh=True)
        if verify is not None:
            player = self.minimap.find_player(verify)
            if player is not None:
                self.logger.info("玩家已复活")
                self._player_not_found_count = 0
                self._change_state(GameState.SEARCH, "复活成功")

    def _handle_disconnect(self):
        """处理设备断开连接"""
        self.logger.warning("设备断开，尝试重连...")
        self.stats['disconnects'] += 1

        if self.adb._try_reconnect():
            self._change_state(GameState.SEARCH, "设备重连成功")
        else:
            self.logger.error("重连失败，等待后重试")
            time.sleep(5.0)

    def _handle_stuck_recovery(self, screenshot: np.ndarray):
        """处理持续卡住状态"""
        self.logger.warning(f"卡住恢复中 (尝试 {self._stuck_recovery_attempts}/{self._max_stuck_recovery})")
        self.stats['stuck_recoveries'] += 1

        player_before = self.minimap.find_player(screenshot)

        # 激进恢复策略：大范围跳跃 + 随机移动
        direction = random.choice([-1, 1])
        self.navigator.move(direction, duration=300)
        time.sleep(0.2)
        self.navigator.jump()
        time.sleep(0.3)
        self.navigator.move(-direction, duration=200)
        time.sleep(0.2)

        # 验证恢复是否成功
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

        self.logger.warning("卡住恢复未成功")
        if self._stuck_recovery_attempts >= self._max_stuck_recovery * 2:
            self.logger.error("卡住恢复多次失败，重置到搜索状态")
            self._stuck_recovery_attempts = 0
            self._change_state(GameState.SEARCH, "卡住恢复失败，强制重置")

    def _handle_error(self, screenshot: np.ndarray):
        """处理错误状态"""
        self.logger.warning("错误状态，尝试恢复")
        time.sleep(2)
        self._change_state(GameState.SEARCH, "错误恢复")


    def _press_up_key(self):
        """按下方向键上（进入传送门）"""
        up_key = self.config.get('game.up_key_position', [540, 400])
        self.adb.tap(up_key[0], up_key[1])

    def _check_state_timeout(self):
        """分类超时检查"""
        now = time.time()
        elapsed = now - self.state_start_time

        timeout_cfg = STATE_TIMEOUT_CONFIG.get(self.current_state)
        if timeout_cfg is None:
            return

        config_key, default_timeout, level = timeout_cfg
        timeout = self.config.get(config_key, default_timeout)

        if elapsed <= timeout:
            return

        self.logger.warning(f"状态 {self.current_state.name} 超时 ({elapsed:.1f}s > {timeout:.1f}s), 级别: {level.name}")

        if level == TimeoutLevel.CRITICAL:
            # 严重超时 - 检查连接并强制恢复
            if not self.adb.is_device_connected():
                self._change_state(GameState.DISCONNECT, "超时+连接丢失")
            else:
                self._change_state(GameState.SEARCH, "严重超时强制重置")
        elif level == TimeoutLevel.WARNING:
            # 警告超时 - 根据状态进行合理转换
            if self.current_state == GameState.FIGHT:
                self._change_state(GameState.FIND_NPC, "战斗超时")
            elif self.current_state == GameState.FIND_NPC:
                self._change_state(GameState.SEARCH, "寻找NPC超时")
            elif self.current_state == GameState.INTERACT_NPC:
                self._change_state(GameState.FIND_PORTAL, "NPC交互超时")
            elif self.current_state == GameState.FIND_PORTAL:
                self._change_state(GameState.SEARCH, "寻找传送门超时")
            elif self.current_state == GameState.ENTER_PORTAL:
                # 不再盲目递增 stages_cleared
                self.logger.warning("进入传送门超时，返回搜索（未确认通关）")
                self._change_state(GameState.SEARCH, "进入传送门超时")
            elif self.current_state == GameState.STUCK_RECOVERY:
                self._stuck_recovery_attempts = 0
                self._change_state(GameState.SEARCH, "卡住恢复超时")
        else:
            # INFO 级别 - 仅记录
            self.logger.info(f"状态 {self.current_state.name} 运行 {elapsed:.1f}s")

    def get_stats(self) -> Dict[str, int]:
        """获取统计信息"""
        return self.stats.copy()
