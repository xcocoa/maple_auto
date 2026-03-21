# -*- coding: utf-8 -*-
"""
寻路导航模块
处理移动、探索等导航相关操作
"""

import time
import random
from typing import Dict, Any, Optional, Tuple, List
from dataclasses import dataclass

from core.adb import ADB
from modules.minimap import MapObject


@dataclass
class NavigationConfig:
    """导航配置"""
    move_interval: float = 0.1
    explore_duration: float = 2.0
    stuck_threshold: int = 5  # 连续 5 次位置未变认为卡住


class Navigator:
    """导航器"""

    def __init__(self, adb: ADB, config: Dict[str, Any]):
        self.adb = adb
        self.config = NavigationConfig(
            move_interval=config.get('move_interval', 0.1),
            explore_duration=config.get('explore_duration', 2.0),
            stuck_threshold=config.get('stuck_threshold', 5)
        )

        self.joystick_pos = config.get('joystick', [200, 550])
        self.jump_pos = config.get('jump', [1200, 630])

        # 状态跟踪
        self.last_move_time = 0.0
        self.last_player_pos: Optional[MapObject] = None
        self.stuck_count = 0

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
        return True

    def jump(self) -> bool:
        """跳跃"""
        self.adb.tap(self.jump_pos[0], self.jump_pos[1])
        return True

    def explore(self) -> None:
        """探索模式：随机移动"""
        direction = random.choice([-1, 1])
        self.move(direction)

        # 偶尔跳跃
        if random.random() < 0.3:
            self.jump()

    def check_stuck(self, current_pos: MapObject) -> bool:
        """检查是否卡住"""
        if self.last_player_pos is None:
            self.last_player_pos = current_pos
            return False

        # 检查位置是否变化
        if (abs(current_pos.x - self.last_player_pos.x) < 5 and
            abs(current_pos.y - self.last_player_pos.y) < 5):
            self.stuck_count += 1
            if self.stuck_count >= self.config.stuck_threshold:
                self.stuck_count = 0
                return True
        else:
            self.stuck_count = 0

        self.last_player_pos = current_pos
        return False

    def handle_stuck(self) -> None:
        """处理卡住状态"""
        # 随机方向移动 + 跳跃
        direction = random.choice([-1, 1])
        self.move(direction)
        time.sleep(0.1)
        self.jump()
        time.sleep(0.1)
        self.move(-direction)

    def navigate_to(
        self,
        player: MapObject,
        target: MapObject,
        arrive_threshold: float = 20.0
    ) -> bool:
        """
        导航到目标位置
        返回：是否到达
        """
        dx = target.x - player.x
        dy = target.y - player.y

        # 检查是否到达
        if abs(dx) < arrive_threshold and abs(dy) < arrive_threshold:
            return True

        # 确定移动方向
        if abs(dx) > abs(dy) * 1.5:
            # 水平移动
            direction = 1 if dx > 0 else -1
            self.move(direction)
        else:
            # 垂直方向 - 跳跃
            if dy < -30:  # 目标在上方
                self.jump()
            direction = 1 if dx > 0 else -1
            self.move(direction)

        return False
