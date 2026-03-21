# -*- coding: utf-8 -*-
"""
战斗控制模块
处理攻击、躲避等战斗相关操作
"""

import time
import random
from typing import Dict, Any, Optional, Tuple
from dataclasses import dataclass

from core.adb import ADB
from modules.minimap import MapObject


@dataclass
class CombatConfig:
    """战斗配置"""
    attack_interval: float = 0.3
    move_interval: float = 0.1
    jump_cooldown: float = 0.6
    dodge_threshold: float = 0.3  # 血量低于 30% 开始躲避


class CombatController:
    """战斗控制器"""

    def __init__(self, adb: ADB, config: Dict[str, Any], skill_positions: list):
        self.adb = adb
        self.config = CombatConfig(
            attack_interval=config.get('attack_interval', 0.3),
            move_interval=config.get('move_interval', 0.1),
            jump_cooldown=config.get('jump_cooldown', 0.6),
            dodge_threshold=config.get('dodge_threshold', 0.3)
        )

        self.skill_positions = skill_positions
        self.jump_pos = config.get('jump_pos', [1200, 630])
        self.joystick_pos = config.get('joystick', [200, 550])

        # 状态跟踪
        self.last_attack_time = 0.0
        self.last_move_time = 0.0
        self.last_jump_time = 0.0
        self.last_dodge_time = 0.0
        self.current_direction = 0

    def attack(self, skill_index: Optional[int] = None) -> bool:
        """
        执行攻击
        skill_index: 技能索引，None 则随机选择
        """
        now = time.time()
        if now - self.last_attack_time < self.config.attack_interval:
            return False

        if skill_index is not None and skill_index < len(self.skill_positions):
            pos = self.skill_positions[skill_index]
        else:
            # 随机选择一个技能
            pos = random.choice(self.skill_positions)

        self.adb.tap(pos[0], pos[1])
        self.last_attack_time = now
        return True

    def move(self, direction: int, duration: int = 100) -> bool:
        """
        移动
        direction: -1 左，0 停止，1 右
        """
        now = time.time()
        if now - self.last_move_time < self.config.move_interval:
            return False

        if direction == 0:
            return True

        jx, jy = self.joystick_pos
        offset = 100

        if direction == 1:  # 右
            self.adb.swipe(jx, jy, jx + offset, jy, duration)
        elif direction == -1:  # 左
            self.adb.swipe(jx, jy, jx - offset, jy, duration)

        self.last_move_time = now
        self.current_direction = direction
        return True

    def jump(self) -> bool:
        """跳跃"""
        now = time.time()
        if now - self.last_jump_time < self.config.jump_cooldown:
            return False

        self.adb.tap(self.jump_pos[0], self.jump_pos[1])
        self.last_jump_time = now
        return True

    def dodge(self, direction: Optional[int] = None) -> bool:
        """
        躲避动作
        direction: 躲避方向，None 则随机
        """
        now = time.time()
        if now - self.last_dodge_time < 1.5:
            return False

        if direction is None:
            direction = random.choice([-1, 1])

        # 反向移动 + 跳跃
        self.move(-direction, duration=80)
        time.sleep(0.05)
        self.jump()

        self.last_dodge_time = now
        return True

    def navigate_to(
        self,
        player: MapObject,
        target: MapObject,
        is_npc: bool = False
    ) -> bool:
        """
        寻路到目标位置
        返回：是否到达
        """
        dx = target.x - player.x
        dy = target.y - player.y

        # 到达阈值
        threshold = 25 if is_npc else 15

        if abs(dx) < threshold and abs(dy) < threshold:
            return True

        # 确定移动方向
        if abs(dx) > abs(dy) * 1.5:
            # 水平移动为主
            direction = 1 if dx > 0 else -1
            self.move(direction)
        else:
            # 垂直方向 - 需要跳跃
            if dy < -20:  # 目标在上方
                if self.jump():
                    self.move(1 if dx > 0 else -1)
            else:
                direction = 1 if dx > 0 else -1
                self.move(direction)

        return False

    def get_direction_to_target(
        self,
        player: MapObject,
        target: MapObject
    ) -> int:
        """获取到目标的方向"""
        dx = target.x - player.x
        if abs(dx) > 15:
            return 1 if dx > 0 else -1
        return 0
