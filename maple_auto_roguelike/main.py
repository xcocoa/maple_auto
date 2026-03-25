# -*- coding: utf-8 -*-
"""
冒险岛肉鸽自动化 - 主脚本
基于 autopilot API 的完整状态机实现
"""

import time
import random
import os
import sys

# 添加当前目录到 sys.path 以支持 modules/ 导入
script_dir = os.path.dirname(os.path.abspath(__file__))
if script_dir not in sys.path:
    sys.path.insert(0, script_dir)

from autopilot import (
    click, long_press, swipe, screenshot, find_color, get_pixel,
    log, toast, sleep, get_config, set_config,
    screen_width, screen_height, random_offset,
    find_node, click_node, press_back, press_home
)

import modules.minimap_lite as minimap
from modules.minimap_lite import MapObject
from modules.combat_lite import CombatController
from modules.nav_lite import Navigator


# ============================================================
# 状态定义
# ============================================================

class GameState:
    IDLE = "IDLE"
    SEARCH = "SEARCH"
    FIGHT = "FIGHT"
    FIND_NPC = "FIND_NPC"
    INTERACT_NPC = "INTERACT_NPC"
    FIND_PORTAL = "FIND_PORTAL"
    ENTER_PORTAL = "ENTER_PORTAL"
    DEAD = "DEAD"
    STUCK_RECOVERY = "STUCK_RECOVERY"
    ERROR = "ERROR"


class TimeoutLevel:
    INFO = "INFO"
    WARNING = "WARNING"
    CRITICAL = "CRITICAL"


# 每个状态的超时配置: (config_key, default_seconds, level)
STATE_TIMEOUT_CONFIG = {
    GameState.FIGHT: ("max_combat_duration", 30.0, TimeoutLevel.WARNING),
    GameState.FIND_NPC: ("npc_find_timeout", 10.0, TimeoutLevel.WARNING),
    GameState.INTERACT_NPC: ("idle_timeout", 8.0, TimeoutLevel.WARNING),
    GameState.FIND_PORTAL: ("portal_timeout", 15.0, TimeoutLevel.WARNING),
    GameState.ENTER_PORTAL: ("portal_timeout", 15.0, TimeoutLevel.WARNING),
    GameState.DEAD: ("idle_timeout", 10.0, TimeoutLevel.CRITICAL),
    GameState.STUCK_RECOVERY: ("idle_timeout", 10.0, TimeoutLevel.WARNING),
    GameState.ERROR: ("idle_timeout", 5.0, TimeoutLevel.CRITICAL),
}


# ============================================================
# 主游戏类
# ============================================================

class RoguelikeGame:
    """肉鸽小游戏主逻辑 - autopilot 版本"""

    def __init__(self):
        # 初始化模块
        self.combat = CombatController()
        self.navigator = Navigator()

        # 游戏状态
        self.current_state = GameState.IDLE
        self.previous_state = GameState.IDLE
        self.state_start_time = time.time()

        # 卡住恢复
        self._stuck_recovery_attempts = 0
        self._max_stuck_recovery = 3

        # 玩家死亡检测
        self._player_not_found_count = 0
        self._player_not_found_threshold = int(get_config("player_not_found_threshold", 10))

        # 调试模式
        self.debug = bool(get_config("debug_mode", False))

        # 统计信息
        self.stats = {
            "monsters_defeated": 0,
            "npcs_interacted": 0,
            "stages_cleared": 0,
            "deaths": 0,
            "stuck_recoveries": 0,
        }

        log("肉鸽游戏初始化完成")

    def _change_state(self, new_state, reason=""):
        """状态转换"""
        old_state = self.current_state
        if old_state == new_state:
            return

        self.previous_state = old_state
        self.current_state = new_state
        self.state_start_time = time.time()

        msg = f"状态: {old_state} → {new_state}"
        if reason:
            msg += f" ({reason})"
        log(msg)

    def start(self):
        """启动游戏循环"""
        log("启动肉鸽自动化...")
        toast("肉鸽自动化已启动")
        self._change_state(GameState.SEARCH, "游戏开始")

        while True:
            try:
                self._game_loop()
            except KeyboardInterrupt:
                log("用户中断")
                break
            except Exception as e:
                log(f"游戏循环错误: {e}")
                self._change_state(GameState.ERROR, str(e))
                sleep(2)

        self._print_stats()

    def _game_loop(self):
        """单次游戏循环"""
        frame_start = time.time()

        # 状态处理
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

        handler = handlers.get(self.current_state)
        if handler:
            handler()

        # 超时检查
        self._check_state_timeout()

        # 帧率控制
        elapsed = time.time() - frame_start
        if elapsed < 0.1:
            sleep(0.1 - elapsed)

        if self.debug:
            fps = 1.0 / max(time.time() - frame_start, 0.001)
            if random.random() < 0.1:  # 10% 采样率输出
                log(f"[DEBUG] FPS={fps:.1f} state={self.current_state}")

    # ============================================================
    # 状态处理器
    # ============================================================

    def _handle_search(self):
        """搜索怪物"""
        monsters = minimap.find_monsters()
        if monsters:
            log(f"发现 {len(monsters)} 个怪物")
            self._change_state(GameState.FIGHT, f"检测到{len(monsters)}个怪物")
            return

        npc = minimap.find_npc()
        if npc:
            self._change_state(GameState.FIND_NPC, "检测到NPC")
            return

        # 探索模式
        self.navigator.explore()

    def _handle_fight(self):
        """战斗"""
        player = minimap.find_player()
        if player is None:
            self._player_not_found_count += 1
            if self._player_not_found_count >= self._player_not_found_threshold:
                self._change_state(GameState.DEAD, "连续未检测到玩家")
                self.stats["deaths"] += 1
            return
        self._player_not_found_count = 0

        monsters = minimap.find_monsters()
        if not monsters:
            self._change_state(GameState.FIND_NPC, "怪物已消灭")
            return

        monster_count = len(monsters)
        target = monsters[0]

        # 尝试 dodge
        direction = self.combat.get_direction_to_target(player, target)
        self.combat.dodge(direction=direction, monster_count=monster_count)

        # 寻路到怪物
        arrived = self.combat.navigate_to(player, target, is_npc=False)

        # 攻击
        attack_range = int(get_config("attack_range", 100))
        if arrived or minimap.get_distance(player, target) < attack_range:
            if self.combat.attack(monster_count=monster_count):
                self.stats["monsters_defeated"] += 1

        # 卡住检测
        if self.navigator.check_stuck(player):
            self._stuck_recovery_attempts += 1
            if self._stuck_recovery_attempts >= self._max_stuck_recovery:
                self._change_state(GameState.STUCK_RECOVERY,
                                   f"连续卡住{self._stuck_recovery_attempts}次")
            else:
                self.navigator.handle_stuck()

    def _handle_find_npc(self):
        """寻找 NPC"""
        player = minimap.find_player()
        if player is None:
            self._player_not_found_count += 1
            if self._player_not_found_count >= self._player_not_found_threshold:
                self._change_state(GameState.DEAD, "连续未检测到玩家")
                self.stats["deaths"] += 1
            return
        self._player_not_found_count = 0

        npc = minimap.find_npc()
        if npc:
            self._change_state(GameState.INTERACT_NPC, "发现NPC")
            return

        self.navigator.explore()

    def _handle_interact_npc(self):
        """与 NPC 交互"""
        player = minimap.find_player()
        if player is None:
            return

        npc = minimap.find_npc()
        if npc is None:
            log("NPC 消失，返回搜索")
            self._change_state(GameState.SEARCH, "NPC消失")
            return

        arrived = self.combat.navigate_to(player, npc, is_npc=True)

        if arrived:
            self.combat.jump()
            sleep(0.3)
            click(npc.x, npc.y)
            sleep(0.5)
            self.stats["npcs_interacted"] += 1
            log(f"已与 {self.stats['npcs_interacted']} 个 NPC 交互")
            self._change_state(GameState.FIND_PORTAL, "NPC交互完成")

    def _handle_find_portal(self):
        """寻找传送门"""
        player = minimap.find_player()
        if player is None:
            return

        portal = minimap.find_portal()
        if portal:
            log(f"发现传送门 ({portal.x}, {portal.y})")
            self._change_state(GameState.ENTER_PORTAL, "检测到传送门")
            return

        self.navigator.explore()

    def _handle_enter_portal(self):
        """进入传送门"""
        player = minimap.find_player()
        if player is None:
            return

        portal = minimap.find_portal()
        if portal is None:
            log("传送门消失，返回搜索")
            self._change_state(GameState.SEARCH, "传送门消失")
            return

        portal_threshold = float(get_config("portal_arrive_threshold", 30.0))
        dx = portal.x - player.x
        dy = portal.y - player.y

        if abs(dx) < portal_threshold and abs(dy) < portal_threshold:
            log("到达传送门，进入下一关")
            up_x = int(get_config("up_key_x", 540))
            up_y = int(get_config("up_key_y", 400))
            click(up_x, up_y)
            sleep(0.5)

            # 验证：检查传送门是否消失
            sleep(1.0)
            verify_portal = minimap.find_portal()
            verify_monsters = minimap.find_monsters()
            if verify_portal is None or verify_monsters:
                self.stats["stages_cleared"] += 1
                log(f"确认进入下一关，已通关 {self.stats['stages_cleared']} 层")
            else:
                log("传送门仍在，重试进入")

            self._change_state(GameState.SEARCH, "进入下一关")
        else:
            self.combat.navigate_to(player, portal, is_npc=True)

    def _handle_dead(self):
        """玩家死亡"""
        log("检测到玩家可能死亡，尝试复活...")
        w = screen_width()
        h = screen_height()
        click(w // 2, h // 2)
        sleep(1.0)

        player = minimap.find_player()
        if player is not None:
            log("玩家已复活")
            self._player_not_found_count = 0
            self._change_state(GameState.SEARCH, "复活成功")

    def _handle_stuck_recovery(self):
        """卡住恢复"""
        log(f"卡住恢复中 (尝试 {self._stuck_recovery_attempts})")
        self.stats["stuck_recoveries"] += 1

        player_before = minimap.find_player()

        # 激进恢复
        direction = random.choice([-1, 1])
        self.navigator.move(direction, duration=300)
        sleep(0.2)
        self.navigator.jump()
        sleep(0.3)
        self.navigator.move(-direction, duration=200)
        sleep(0.2)

        player_after = minimap.find_player()
        if player_before and player_after:
            dist = abs(player_after.x - player_before.x) + abs(player_after.y - player_before.y)
            if dist > 10:
                log(f"卡住恢复成功，移动距离: {dist}")
                self._stuck_recovery_attempts = 0
                self._change_state(self.previous_state, "卡住恢复成功")
                return

        if self._stuck_recovery_attempts >= self._max_stuck_recovery * 2:
            self._stuck_recovery_attempts = 0
            self._change_state(GameState.SEARCH, "卡住恢复失败，强制重置")

    def _handle_error(self):
        """错误恢复"""
        log("错误状态，尝试恢复")
        sleep(2)
        self._change_state(GameState.SEARCH, "错误恢复")

    # ============================================================
    # 超时检查
    # ============================================================

    def _check_state_timeout(self):
        """分类超时检查"""
        elapsed = time.time() - self.state_start_time
        timeout_cfg = STATE_TIMEOUT_CONFIG.get(self.current_state)
        if timeout_cfg is None:
            return

        config_key, default_timeout, level = timeout_cfg
        timeout = float(get_config(config_key, default_timeout))

        if elapsed <= timeout:
            return

        log(f"状态 {self.current_state} 超时 ({elapsed:.1f}s > {timeout:.1f}s)")

        if level == TimeoutLevel.CRITICAL:
            self._change_state(GameState.SEARCH, "严重超时强制重置")
        elif level == TimeoutLevel.WARNING:
            transitions = {
                GameState.FIGHT: (GameState.FIND_NPC, "战斗超时"),
                GameState.FIND_NPC: (GameState.SEARCH, "寻找NPC超时"),
                GameState.INTERACT_NPC: (GameState.FIND_PORTAL, "NPC交互超时"),
                GameState.FIND_PORTAL: (GameState.SEARCH, "寻找传送门超时"),
                GameState.ENTER_PORTAL: (GameState.SEARCH, "进入传送门超时"),
                GameState.STUCK_RECOVERY: (GameState.SEARCH, "卡住恢复超时"),
            }
            target = transitions.get(self.current_state, (GameState.SEARCH, "超时"))
            if self.current_state == GameState.STUCK_RECOVERY:
                self._stuck_recovery_attempts = 0
            self._change_state(target[0], target[1])

    # ============================================================
    # 统计输出
    # ============================================================

    def _print_stats(self):
        """输出统计信息"""
        log("=" * 40)
        log("肉鸽自动化统计:")
        log(f"  消灭怪物: {self.stats['monsters_defeated']}")
        log(f"  交互NPC: {self.stats['npcs_interacted']}")
        log(f"  通关层数: {self.stats['stages_cleared']}")
        log(f"  死亡次数: {self.stats['deaths']}")
        log(f"  卡住恢复: {self.stats['stuck_recoveries']}")
        log("=" * 40)
        toast(f"通关 {self.stats['stages_cleared']} 层")


# ============================================================
# 入口
# ============================================================

def main():
    log("冒险岛肉鸽自动化 v1.0.0")
    log(f"屏幕尺寸: {screen_width()}x{screen_height()}")

    game = RoguelikeGame()
    game.start()


if __name__ == "__main__":
    main()
