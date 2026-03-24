# -*- coding: utf-8 -*-
"""
移动控制共享模块
提供 combat.py 和 navigation.py 共用的移动、跳跃操作
"""

import time
import logging
from typing import List, Tuple

from core.adb import ADB

logger = logging.getLogger('AutoRogue')


class MovementController:
    """基础移动控制器 - combat 和 navigation 的共享基类"""

    def __init__(self, adb: ADB, joystick_pos: List[int], jump_pos: List[int],
                 move_interval: float = 0.1, joystick_offset: int = 100):
        self.adb = adb
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
        """
        now = time.time()
        if now - self.last_move_time < self.move_interval:
            return False

        if direction == 0:
            return True

        jx, jy = self.joystick_pos
        offset = self.joystick_offset

        if direction == 1:  # 右
            self.adb.swipe(jx, jy, jx + offset, jy, duration)
        elif direction == -1:  # 左
            self.adb.swipe(jx, jy, jx - offset, jy, duration)

        self.last_move_time = now
        self.current_direction = direction
        return True

    def jump(self) -> bool:
        """跳跃"""
        self.adb.tap(self.jump_pos[0], self.jump_pos[1])
        return True
