# -*- coding: utf-8 -*-
"""
寻路导航模块
处理移动、探索等导航相关操作
支持：分类卡住检测、多样化恢复策略、恢复验证
"""

import time
import random
import logging
from typing import Dict, Any, Optional, Tuple, List
from collections import deque
from dataclasses import dataclass

from core.adb import ADB
from modules.minimap import MapObject
from modules.movement import MovementController

logger = logging.getLogger('AutoRogue')


class StuckLevel:
    """卡住严重程度"""
    SHORT = 'short'    # 短期卡住 (0.2s)
    MEDIUM = 'medium'  # 中期卡住 (2s)
    LONG = 'long'      # 长期卡住 (10s)


@dataclass
class NavigationConfig:
    """导航配置"""
    move_interval: float = 0.1
    explore_duration: float = 2.0
    # 分类卡住检测阈值
    short_stuck_threshold: float = 0.2    # 0.2s 内位置未变
    medium_stuck_threshold: float = 2.0   # 2s 内位置未变
    long_stuck_threshold: float = 10.0    # 10s 内位置未变
    # 位置变化最小阈值
    position_change_min: int = 5


class Navigator:
    """导航器 - 带分类卡住检测和恢复验证"""

    def __init__(self, adb: ADB, config: Dict[str, Any]):
        self.adb = adb
        self.config = NavigationConfig(
            move_interval=config.get('move_interval', 0.1),
            explore_duration=config.get('explore_duration', 2.0),
        )

        # 共享移动控制器
        self._movement = MovementController(
            adb=adb,
            joystick_pos=config.get('joystick', [200, 550]),
            jump_pos=config.get('jump', [1200, 630]),
            move_interval=self.config.move_interval
        )

        # 位置历史记录（用于分类卡住检测）
        self._position_history: deque = deque(maxlen=100)
        self._stuck_start_time: Optional[float] = None
        self._last_significant_move_time: float = time.time()

        # 恢复尝试记录
        self._recovery_attempts: Dict[str, int] = {
            StuckLevel.SHORT: 0,
            StuckLevel.MEDIUM: 0,
            StuckLevel.LONG: 0,
        }

    def move(self, direction: int, duration: int = 100) -> bool:
        """移动（委托给共享控制器）"""
        return self._movement.move(direction, duration)

    def jump(self) -> bool:
        """跳跃"""
        return self._movement.jump()

    def explore(self) -> None:
        """探索模式：随机移动"""
        direction = random.choice([-1, 1])
        self.move(direction)

        # 偶尔跳跃
        if random.random() < 0.3:
            self.jump()

    def check_stuck(self, current_pos: MapObject) -> bool:
        """检查是否卡住（记录位置历史）"""
        now = time.time()
        self._position_history.append((now, current_pos.x, current_pos.y))

        # 检查是否有显著移动
        if len(self._position_history) >= 2:
            _, prev_x, prev_y = self._position_history[-2]
            dist = abs(current_pos.x - prev_x) + abs(current_pos.y - prev_y)
            if dist >= self.config.position_change_min:
                self._last_significant_move_time = now
                self._stuck_start_time = None
                self._recovery_attempts = {k: 0 for k in self._recovery_attempts}
                return False

        # 记录卡住开始时间
        if self._stuck_start_time is None:
            self._stuck_start_time = now

        # 判断是否超过短期卡住阈值
        stuck_duration = now - self._stuck_start_time
        return stuck_duration >= self.config.short_stuck_threshold

    def get_stuck_level(self) -> Optional[str]:
        """获取当前卡住等级"""
        if self._stuck_start_time is None:
            return None

        duration = time.time() - self._stuck_start_time

        if duration >= self.config.long_stuck_threshold:
            return StuckLevel.LONG
        elif duration >= self.config.medium_stuck_threshold:
            return StuckLevel.MEDIUM
        elif duration >= self.config.short_stuck_threshold:
            return StuckLevel.SHORT
        return None

    def handle_stuck(self) -> bool:
        """处理卡住状态（分类恢复策略）"""
        level = self.get_stuck_level()
        if level is None:
            return True

        self._recovery_attempts[level] = self._recovery_attempts.get(level, 0) + 1
        logger.info(f"卡住恢复 [{level}] 尝试 #{self._recovery_attempts[level]}")

        if level == StuckLevel.SHORT:
            return self._recover_short()
        elif level == StuckLevel.MEDIUM:
            return self._recover_medium()
        elif level == StuckLevel.LONG:
            return self._recover_long()
        return False

    def _recover_short(self) -> bool:
        """短期卡住恢复：小范围随机移动 (±30px)"""
        direction = random.choice([-1, 1])
        # 使用较小的滑动距离
        jx, jy = self._movement.joystick_pos
        offset = 30
        if direction == 1:
            self.adb.swipe(jx, jy, jx + offset, jy, 50)
        else:
            self.adb.swipe(jx, jy, jx - offset, jy, 50)
        return True

    def _recover_medium(self) -> bool:
        """中期卡住恢复：大范围跳跃 (±200px)"""
        direction = random.choice([-1, 1])
        # 大范围移动 + 跳跃
        self.move(direction, duration=200)
        time.sleep(0.1)
        self.jump()
        time.sleep(0.2)
        # 反向移动尝试突破
        self.move(-direction, duration=150)
        return True

    def _recover_long(self) -> bool:
        """长期卡住恢复：激进策略（多次跳跃 + 大范围移动）"""
        logger.warning("长期卡住，执行激进恢复策略")

        # 多次随机方向跳跃
        for _ in range(3):
            direction = random.choice([-1, 1])
            self.move(direction, duration=300)
            time.sleep(0.15)
            self.jump()
            time.sleep(0.25)

        # 重置卡住计时器
        self._stuck_start_time = None
        return True

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

        if abs(dx) < arrive_threshold and abs(dy) < arrive_threshold:
            return True

        if abs(dx) > abs(dy) * 1.5:
            direction = 1 if dx > 0 else -1
            self.move(direction)
        else:
            if dy < -30:  # 目标在上方
                self.jump()
            direction = 1 if dx > 0 else -1
            self.move(direction)

        return False
