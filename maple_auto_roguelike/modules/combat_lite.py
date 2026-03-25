# -*- coding: utf-8 -*-
"""
战斗控制模块（Lite 版）
使用 autopilot API 替代 ADB 操作
支持：技能优先级、冷却跟踪、dodge 整合
"""

import time
import random
from typing import Optional, Tuple, List
from dataclasses import dataclass

from autopilot import click, swipe, get_config, log, sleep


@dataclass
class SkillSlot:
    """技能槽 - 带冷却跟踪"""
    index: int
    pos: Tuple[int, int]
    cooldown: float = 0.5       # 技能冷却时间（秒）
    is_aoe: bool = False        # 是否群体技能
    priority: int = 0           # 技能优先级（越高越优先）
    last_use_time: float = 0.0  # 上次使用时间

    def is_ready(self) -> bool:
        return time.time() - self.last_use_time >= self.cooldown

    def use(self) -> None:
        self.last_use_time = time.time()


class CombatController:
    """战斗控制器 - 带技能优先级和冷却管理"""

    def __init__(self):
        # 从 config 读取位置参数
        self.joystick_pos = (
            get_config("joystick_x", 200),
            get_config("joystick_y", 550),
        )
        self.jump_pos = (
            get_config("jump_x", 1200),
            get_config("jump_y", 630),
        )
        self.joystick_offset = get_config("joystick_offset", 100)

        # 战斗参数
        self.attack_interval = get_config("attack_interval", 0.3)
        self.move_interval = get_config("move_interval", 0.1)
        self.jump_cooldown = get_config("jump_cooldown", 0.6)
        self.dodge_threshold = get_config("dodge_threshold", 0.3)
        self.dodge_enemy_count = get_config("dodge_enemy_count", 5)
        self.dodge_cooldown = get_config("dodge_cooldown", 1.5)

        # 默认技能位置
        default_skill_positions = [
            [950, 550], [1050, 550], [1150, 550],
            [950, 650], [1050, 650], [1150, 650],
        ]
        skill_positions = []
        for i in range(6):
            sx = get_config(f"skill_{i+1}_x", default_skill_positions[i][0])
            sy = get_config(f"skill_{i+1}_y", default_skill_positions[i][1])
            skill_positions.append((sx, sy))

        # 技能配置
        skill_cooldowns = get_config("skill_cooldowns", [])
        skill_aoe_flags = get_config("skill_aoe_flags", [])
        skill_priorities = get_config("skill_priorities", [])

        # 初始化技能槽
        self.skill_slots: List[SkillSlot] = []
        for i, pos in enumerate(skill_positions):
            self.skill_slots.append(SkillSlot(
                index=i,
                pos=tuple(pos),
                cooldown=skill_cooldowns[i] if i < len(skill_cooldowns) else 0.5,
                is_aoe=skill_aoe_flags[i] if i < len(skill_aoe_flags) else (i >= 3),
                priority=skill_priorities[i] if i < len(skill_priorities) else i,
            ))

        # 状态跟踪
        self.last_attack_time = 0.0
        self.last_move_time = 0.0
        self.last_jump_time = 0.0
        self.last_dodge_time = 0.0

    def attack(self, skill_index: Optional[int] = None,
               monster_count: int = 1) -> bool:
        """
        执行攻击（智能技能选择）
        skill_index: 指定技能索引，None 则自动选择
        monster_count: 当前怪物数量，用于选择 AOE 技能
        """
        now = time.time()
        if now - self.last_attack_time < self.attack_interval:
            return False

        if skill_index is not None:
            slot = self._get_skill_slot(skill_index)
            if slot and slot.is_ready():
                self._execute_skill(slot)
                return True
            return False

        # 智能选择技能
        skill = self._select_best_skill(monster_count)
        if skill:
            self._execute_skill(skill)
            return True

        return False

    def _select_best_skill(self, monster_count: int) -> Optional[SkillSlot]:
        """根据场景智能选择最佳技能"""
        ready_skills = [s for s in self.skill_slots if s.is_ready()]
        if not ready_skills:
            return None

        # 怪物数量 > 3：优先群体技能
        if monster_count > 3:
            aoe_skills = [s for s in ready_skills if s.is_aoe]
            if aoe_skills:
                return max(aoe_skills, key=lambda s: s.priority)

        # 默认：按优先级选择最高的
        return max(ready_skills, key=lambda s: s.priority)

    def _get_skill_slot(self, index: int) -> Optional[SkillSlot]:
        """获取技能槽"""
        if 0 <= index < len(self.skill_slots):
            return self.skill_slots[index]
        return None

    def _execute_skill(self, skill: SkillSlot) -> None:
        """执行技能"""
        click(skill.pos[0], skill.pos[1])
        skill.use()
        self.last_attack_time = time.time()

    def move(self, direction: int, duration: int = 100) -> bool:
        """
        移动（摇杆滑动）
        direction: -1 左，0 停止，1 右
        """
        now = time.time()
        if now - self.last_move_time < self.move_interval:
            return False

        if direction == 0:
            return True

        jx, jy = self.joystick_pos
        offset = self.joystick_offset

        if direction == 1:  # 右
            swipe(jx, jy, jx + offset, jy, duration)
        elif direction == -1:  # 左
            swipe(jx, jy, jx - offset, jy, duration)

        self.last_move_time = now
        return True

    def jump(self) -> bool:
        """跳跃（带冷却）"""
        now = time.time()
        if now - self.last_jump_time < self.jump_cooldown:
            return False
        self.last_jump_time = now
        click(self.jump_pos[0], self.jump_pos[1])
        return True

    def dodge(self, direction: Optional[int] = None,
              monster_count: int = 0) -> bool:
        """
        躲避动作
        direction: 躲避方向，None 则随机
        monster_count: 怪物数量（用于判断是否需要dodge）
        """
        now = time.time()
        if now - self.last_dodge_time < self.dodge_cooldown:
            return False

        if monster_count < self.dodge_enemy_count:
            return False

        if direction is None:
            direction = random.choice([-1, 1])

        # 反向移动 + 跳跃
        self.move(-direction, duration=80)
        sleep(0.05)
        self.jump()

        self.last_dodge_time = now
        log(f"Dodge triggered, direction={direction}, monsters={monster_count}")
        return True

    def navigate_to(self, player, target, is_npc: bool = False) -> bool:
        """
        寻路到目标位置
        player/target: 需要有 .x, .y 属性
        返回：是否到达
        """
        dx = target.x - player.x
        dy = target.y - player.y

        threshold = 25 if is_npc else 15

        if abs(dx) < threshold and abs(dy) < threshold:
            return True

        if abs(dx) > abs(dy) * 1.5:
            direction = 1 if dx > 0 else -1
            self.move(direction)
        else:
            if dy < -20:  # 目标在上方
                if self.jump():
                    self.move(1 if dx > 0 else -1)
            else:
                direction = 1 if dx > 0 else -1
                self.move(direction)

        return False

    def get_direction_to_target(self, player, target) -> int:
        """获取到目标的方向"""
        dx = target.x - player.x
        if abs(dx) > 15:
            return 1 if dx > 0 else -1
        return 0

    def get_ready_skill_count(self) -> int:
        """获取当前可用技能数量"""
        return sum(1 for s in self.skill_slots if s.is_ready())
