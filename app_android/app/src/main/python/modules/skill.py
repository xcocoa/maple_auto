# -*- coding: utf-8 -*-
"""
技能检测模块 (Android 版)
检测已解锁的技能按钮状态

从 PC 版 modules/skill.py 迁移
变更：移除 ADB 依赖（本模块仅做图像检测，不需要平台调用）
"""

import cv2
import random
import numpy as np
from typing import List, Dict, Any, Optional, Tuple
from dataclasses import dataclass


@dataclass
class Skill:
    """技能信息"""
    index: int
    pos: Tuple[int, int]
    name: str
    unlocked: bool = False
    confidence: float = 0.0


class SkillDetector:
    """技能检测器 - 通过饱和度检测技能按钮是否解锁"""

    def __init__(self, config: Dict[str, Any]):
        self.config = config
        self.skill_positions = config.get('positions', [])
        self.jump_pos = config.get('jump', [1200, 630])
        self.button_radius = config.get('button_radius', 50)
        self.color_threshold = config.get('color_threshold', 0.15)
        self.available_skills: List[Skill] = []

    def detect_skills(self, screenshot: np.ndarray) -> List[Skill]:
        """检测所有技能按钮状态"""
        if screenshot is None:
            return self.available_skills

        self.available_skills = []

        for i, pos in enumerate(self.skill_positions):
            skill = self._detect_single_skill(screenshot, i, pos)
            self.available_skills.append(skill)

        # 添加跳跃按钮（始终可用）
        self.available_skills.append(Skill(
            index=len(self.skill_positions),
            pos=tuple(self.jump_pos),
            name="jump",
            unlocked=True,
            confidence=1.0
        ))

        return self.available_skills

    def _detect_single_skill(
        self,
        screenshot: np.ndarray,
        index: int,
        pos: Tuple[int, int]
    ) -> Skill:
        """检测单个技能按钮（通过饱和度判断是否解锁）"""
        x, y = pos
        r = self.button_radius

        # 裁剪按钮区域
        x1, y1 = max(0, x - r), max(0, y - r)
        x2, y2 = min(screenshot.shape[1], x + r), min(screenshot.shape[0], y + r)

        button = screenshot[y1:y2, x1:x2]
        if button is None or button.size == 0:
            return Skill(index=index, pos=pos, name=f"skill_{index}", unlocked=False)

        # 转换为 HSV
        hsv = cv2.cvtColor(button, cv2.COLOR_BGR2HSV)

        # 检测饱和度（已解锁技能有颜色，灰色/暗色表示未解锁）
        lower_color = np.array([0, 50, 50])
        upper_color = np.array([180, 255, 255])
        mask = cv2.inRange(hsv, lower_color, upper_color)

        # 计算彩色像素比例
        color_pixels = np.count_nonzero(mask)
        total_pixels = mask.size
        ratio = color_pixels / total_pixels

        unlocked = ratio > self.color_threshold

        return Skill(
            index=index,
            pos=pos,
            name=f"skill_{index}",
            unlocked=unlocked,
            confidence=ratio / self.color_threshold if unlocked else ratio
        )

    def get_attack_skill(self) -> Optional[Tuple[int, int]]:
        """获取一个可用的攻击技能位置"""
        available = [s for s in self.available_skills if s.unlocked and s.name != "jump"]
        if available:
            skill = random.choice(available)
            return skill.pos
        return None

    def get_all_available_skills(self) -> List[Skill]:
        """获取所有可用技能"""
        return [s for s in self.available_skills if s.unlocked and s.name != "jump"]

    def is_skill_ready(self, index: int) -> bool:
        """检查指定技能是否可用"""
        if 0 <= index < len(self.available_skills):
            return self.available_skills[index].unlocked
        return False
