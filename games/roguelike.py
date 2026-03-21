# -*- coding: utf-8 -*-
"""
冒险岛肉鸽小游戏 - 游戏逻辑层
整合所有模块，实现完整的状态机控制
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
    IDLE = auto()      # 空闲状态
    SEARCH = auto()    # 搜索怪物
    FIGHT = auto()     # 战斗中
    FIND_NPC = auto()  # 寻找 NPC
    INTERACT_NPC = auto()  # 与 NPC 交互
    FIND_PORTAL = auto()  # 寻找传送门
    ENTER_PORTAL = auto()  # 进入传送门
    ERROR = auto()     # 错误状态


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
        self.state_start_time = 0.0
        self.available_skills: List[Skill] = []

        # 统计信息
        self.stats = {
            'monsters_defeated': 0,
            'npcs_interacted': 0,
            'stages_cleared': 0
        }

        self.logger.info("肉鸽游戏初始化完成")

    def start(self):
        """启动游戏循环"""
        self.logger.info("启动游戏循环...")
        self.current_state = GameState.SEARCH

        while True:
            try:
                self._game_loop()
            except KeyboardInterrupt:
                self.logger.info("用户中断，退出游戏")
                break
            except Exception as e:
                self.logger.error(f"游戏循环错误：{e}")
                self.current_state = GameState.ERROR
                time.sleep(2)

    def _game_loop(self):
        """游戏主循环"""
        # 获取截图
        screenshot = self.adb.screenshot()
        if screenshot is None:
            self.logger.warning("截图失败，重试")
            time.sleep(0.5)
            return

        # 根据状态执行不同逻辑
        if self.current_state == GameState.SEARCH:
            self._handle_search(screenshot)
        elif self.current_state == GameState.FIGHT:
            self._handle_fight(screenshot)
        elif self.current_state == GameState.FIND_NPC:
            self._handle_find_npc(screenshot)
        elif self.current_state == GameState.INTERACT_NPC:
            self._handle_interact_npc(screenshot)
        elif self.current_state == GameState.FIND_PORTAL:
            self._handle_find_portal(screenshot)
        elif self.current_state == GameState.ENTER_PORTAL:
            self._handle_enter_portal(screenshot)
        elif self.current_state == GameState.ERROR:
            self._handle_error(screenshot)

        # 状态超时检查
        self._check_state_timeout()

        # 短暂延迟
        time.sleep(0.1)

    def _handle_search(self, screenshot: np.ndarray):
        """处理搜索状态"""
        # 检测怪物
        monsters = self.minimap.find_monsters(screenshot)

        if monsters:
            self.logger.info(f"发现 {len(monsters)} 个怪物")
            self.current_state = GameState.FIGHT
            self.state_start_time = time.time()
        else:
            # 没有怪物，寻找 NPC
            npc = self.minimap.find_npc(screenshot)
            if npc:
                self.logger.info("发现 NPC，前往交互")
                self.current_state = GameState.FIND_NPC
                self.state_start_time = time.time()
            else:
                # 探索模式
                self.navigator.explore()

    def _handle_fight(self, screenshot: np.ndarray):
        """处理战斗状态"""
        # 检测玩家位置
        player = self.minimap.find_player(screenshot)
        if player is None:
            self.logger.warning("未检测到玩家位置")
            return

        # 检测怪物
        monsters = self.minimap.find_monsters(screenshot)

        if not monsters:
            self.logger.info("怪物已消灭，寻找 NPC")
            self.current_state = GameState.FIND_NPC
            self.state_start_time = time.time()
            return

        # 选择最近的怪物
        target = monsters[0]

        # 检测技能
        self.available_skills = self.skill_detector.detect_skills(screenshot)

        # 寻路到怪物位置
        arrived = self.combat.navigate_to(player, target, is_npc=False)

        # 到达攻击范围后使用技能
        attack_range = self.config.get('game.attack_range', 100)
        if arrived or self.minimap.get_distance(player, target) < attack_range:
            self._use_random_skill()

        # 检查是否卡住
        if self.navigator.check_stuck(player):
            self.navigator.handle_stuck()

    def _handle_find_npc(self, screenshot: np.ndarray):
        """处理寻找 NPC 状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        npc = self.minimap.find_npc(screenshot)
        if npc:
            self.logger.info("发现 NPC，前往交互")
            self.current_state = GameState.INTERACT_NPC
            self.state_start_time = time.time()
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
            self.current_state = GameState.SEARCH
            return

        # 寻路到 NPC
        arrived = self.combat.navigate_to(player, npc, is_npc=True)

        # 到达后交互（点击）
        if arrived:
            # 先跳跃确保靠近
            self.combat.jump()
            time.sleep(0.3)
            # 点击 NPC 位置
            self.adb.tap(npc.x, npc.y)
            time.sleep(0.5)
            self.stats['npcs_interacted'] += 1
            self.logger.info(f"已与 {self.stats['npcs_interacted']} 个 NPC 交互")

            # 交互后寻找传送门
            self.current_state = GameState.FIND_PORTAL

    def _handle_next_stage(self, screenshot: np.ndarray):
        """处理下一关卡状态"""
        # 已废弃，状态机已更新
        self.current_state = GameState.SEARCH

    def _handle_find_portal(self, screenshot: np.ndarray):
        """处理寻找传送门状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        portal = self.minimap.find_portal(screenshot)
        if portal:
            self.logger.info(f"发现传送门，位置：({portal.x}, {portal.y})")
            self.current_state = GameState.ENTER_PORTAL
            self.state_start_time = time.time()
            return

        # 未找到传送门，可能 NPC 交互未完成
        self.logger.warning("未找到传送门，返回搜索")
        self.current_state = GameState.SEARCH

    def _handle_enter_portal(self, screenshot: np.ndarray):
        """处理进入传送门状态"""
        player = self.minimap.find_player(screenshot)
        if player is None:
            return

        portal = self.minimap.find_portal(screenshot)
        if portal is None:
            self.logger.warning("传送门消失，返回搜索")
            self.current_state = GameState.SEARCH
            return

        # 寻路到传送门位置
        portal_arrive_threshold = self.config.get('game.portal_arrive_threshold', 30.0)
        dx = portal.x - player.x
        dy = portal.y - player.y

        # 判断是否到达传送门
        if abs(dx) < portal_arrive_threshold and abs(dy) < portal_arrive_threshold:
            self.logger.info("已到达传送门，按下方向键上进入下一关")
            # 点击方向键上（需要配置方向键位置）
            self._press_up_key()
            time.sleep(0.5)
            self.stats['stages_cleared'] += 1
            self.logger.info(f"已通关 {self.stats['stages_cleared']} 层")
            # 进入后返回搜索
            self.current_state = GameState.SEARCH
        else:
            # 移动到传送门
            self.combat.navigate_to(player, portal, is_npc=True)

    def _handle_error(self, screenshot: np.ndarray):
        """处理错误状态"""
        self.logger.warning("错误状态，尝试恢复")
        time.sleep(2)
        self.current_state = GameState.SEARCH

    def _use_random_skill(self):
        """使用随机可用技能"""
        available = [s for s in self.available_skills if s.unlocked and s.name != "跳跃"]
        if available:
            skill = random.choice(available)
            self.adb.tap(skill.pos[0], skill.pos[1])
            self.stats['monsters_defeated'] += 1

    def _press_up_key(self):
        """按下方向键上（进入传送门）"""
        # 获取方向键位置配置
        up_key = self.config.get('game.up_key_position', [540, 400])
        self.adb.tap(up_key[0], up_key[1])

    def _check_state_timeout(self):
        """检查状态超时"""
        now = time.time()
        timeout = self.config.get('game.idle_timeout', 5.0)

        if now - self.state_start_time > timeout:
            self.logger.warning(f"状态 {self.current_state} 超时，重置")

            if self.current_state == GameState.FIGHT:
                # 战斗超时，可能怪物已死
                self.current_state = GameState.FIND_NPC
            elif self.current_state == GameState.FIND_NPC:
                # 寻找 NPC 超时，返回搜索
                self.current_state = GameState.SEARCH
            elif self.current_state == GameState.FIND_PORTAL:
                # 寻找传送门超时，返回搜索
                self.current_state = GameState.SEARCH
            elif self.current_state == GameState.ENTER_PORTAL:
                # 进入传送门超时，可能已進入
                self.logger.info("进入传送门超时，假设已进入下一关")
                self.stats['stages_cleared'] += 1
                self.current_state = GameState.SEARCH

            self.state_start_time = now

    def get_stats(self) -> Dict[str, int]:
        """获取统计信息"""
        return self.stats.copy()
