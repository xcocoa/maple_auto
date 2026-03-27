# -*- coding: utf-8 -*-
"""
战斗控制模块 (Android 版)
处理攻击、躲避等战斗相关操作
支持：技能优先级、冷却跟踪、dodge 整合

从 PC 版 modules/combat.py 迁移
变更：ADB 替换为 platform_bridge
"""

import time
import random
import logging
from typing import Dict, Any, Optional, Tuple, List
from dataclasses import dataclass

import platform_bridge
from modules.minimap import MapObject
from modules.movement import MovementController

logger = logging.getLogger(__name__)


@dataclass
class SkillSlot:
    """技能槽 - 带冷却跟踪"""
    index: int
    pos: Tuple[int, int]
    cooldown: float = 0.5
    is_aoe: bool = False
    priority: int = 0
    last_use_time: float = 0.0

    def is_ready(self) -> bool:
        return time.time() - self.last_use_time >= self.cooldown

    def use(self) -> None:
        self.last_use_time = time.time()


@dataclass
class CombatConfig:
    """战斗配置"""
    attack_interval: float = 0.3
    move_interval: float = 0.1
    jump_cooldown: float = 0.6
    dodge_threshold: float = 0.3
    dodge_enemy_count: int = 5
    dodge_cooldown: float = 1.5


class CombatController:
    """战斗控制器 - 带技能优先级和冷却管理"""

    def __init__(self, config: Dict[str, Any], skill_positions: list):
        self.config = CombatConfig(
            attack_interval=config.get('attack_interval', 0.3),
            move_interval=config.get('move_interval', 0.1),
            jump_cooldown=config.get('jump_cooldown', 0.6),
            dodge_threshold=config.get('dodge_threshold', 0.3),
        )

        # 共享移动控制器
        self._movement = MovementController(
            joystick_pos=config.get('joystick', [200, 550]),
            jump_pos=config.get('jump_pos', [1200, 630]),
            move_interval=self.config.move_interval
        )

        # 初始化技能槽
        self.skill_slots: List[SkillSlot] = []
        skill_configs = config.get('skill_configs', [])
        for i, pos in enumerate(skill_positions):
            slot_cfg = skill_configs[i] if i < len(skill_configs) else {}
            self.skill_slots.append(SkillSlot(
                index=i,
                pos=tuple(pos),
                cooldown=slot_cfg.get('cooldown', 0.5),
                is_aoe=slot_cfg.get('is_aoe', i >= 3),
                priority=slot_cfg.get('priority', i),
            ))

        # 状态跟踪
        self.last_attack_time = 0.0
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
        if now - self.last_attack_time < self.config.attack_interval:
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
        platform_bridge.tap(skill.pos[0], skill.pos[1])
        skill.use()
        self.last_attack_time = time.time()

    def move(self, direction: int, duration: int = 100) -> bool:
        """移动（委托给共享控制器）"""
        return self._movement.move(direction, duration)

    def jump(self) -> bool:
        """跳跃（带冷却）"""
        now = time.time()
        if now - self.last_jump_time < self.config.jump_cooldown:
            return False
        self.last_jump_time = now
        return self._movement.jump()

    def dodge(self, direction: Optional[int] = None,
              monster_count: int = 0) -> bool:
        """
        躲避动作
        direction: 躲避方向，None 则随机
        monster_count: 怪物数量（用于判断是否需要dodge）
        """
        now = time.time()
        if now - self.last_dodge_time < self.config.dodge_cooldown:
            return False

        if monster_count < self.config.dodge_enemy_count:
            return False

        if direction is None:
            direction = random.choice([-1, 1])

        # 反向移动 + 跳跃
        self.move(-direction, duration=80)
        time.sleep(0.05)
        self.jump()

        self.last_dodge_time = now
        logger.debug(f"Dodge triggered, direction={direction}, monsters={monster_count}")
        return True

    def navigate_to(self, player: MapObject, target: MapObject,
                    is_npc: bool = False) -> bool:
        """
        寻路到目标位置
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

    def get_direction_to_target(self, player: MapObject, target: MapObject) -> int:
        """获取到目标的方向"""
        dx = target.x - player.x
        if abs(dx) > 15:
            return 1 if dx > 0 else -1
        return 0

    def get_ready_skill_count(self) -> int:
        """获取当前可用技能数量"""
        return sum(1 for s in self.skill_slots if s.is_ready())
