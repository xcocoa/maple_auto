# -*- coding: utf-8 -*-
"""
移动控制共享模块 (Android 版)
提供 combat.py 和 navigation.py 共用的移动、跳跃操作

从 PC 版 modules/movement.py 迁移
变更：ADB 替换为 platform_bridge

注：坐标由 Config 在引擎启动时统一缩放，
    此模块接收的坐标已经是缩放后的实际屏幕坐标。
"""

import time
import logging
from typing import List

import platform_bridge

logger = logging.getLogger(__name__)


class MovementController:
    """基础移动控制器"""

    def __init__(self, joystick_pos: List[int], jump_pos: List[int],
                 move_interval: float = 0.1, joystick_offset: int = 100):
        self.joystick_pos = joystick_pos
        self.jump_pos = jump_pos
        self.move_interval = move_interval
        self.joystick_offset = joystick_offset

        self.last_move_time = 0.0
        self.current_direction = 0

    def move(self, direction: int, duration: int = 100) -> bool:
        """
        移动
        direction: -1 左，0 停止，1 右
        duration: 滑动持续时间（毫秒）
        """
        now = time.time()
        if now - self.last_move_time < self.move_interval:
            return False

        if direction == 0:
            return True

        jx, jy = self.joystick_pos
        offset = self.joystick_offset

        if direction == 1:  # 右
            platform_bridge.swipe(jx, jy, jx + offset, jy, duration)
        elif direction == -1:  # 左
            platform_bridge.swipe(jx, jy, jx - offset, jy, duration)

        self.last_move_time = now
        self.current_direction = direction
        return True

    def jump(self) -> bool:
        """跳跃"""
        platform_bridge.tap(self.jump_pos[0], self.jump_pos[1])
        return True
