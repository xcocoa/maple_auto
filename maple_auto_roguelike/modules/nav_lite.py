# -*- coding: utf-8 -*-
"""
寻路导航模块（Lite 版）
使用 autopilot API 替代 ADB 操作
支持：分类卡住检测、多样化恢复策略、恢复验证
"""

import time
import random
from typing import Dict, Optional
from collections import deque

from autopilot import click, swipe, get_config, log, sleep


class StuckLevel:
    """卡住严重程度"""
    SHORT = 'short'    # 短期卡住 (0.2s)
    MEDIUM = 'medium'  # 中期卡住 (2s)
    LONG = 'long'      # 长期卡住 (10s)


class Navigator:
    """导航器 - 带分类卡住检测和恢复验证"""

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

        # 导航参数
        self.move_interval = get_config("move_interval", 0.1)
        self.explore_duration = get_config("explore_duration", 2.0)

        # 分类卡住检测阈值
        self.short_stuck_threshold = get_config("short_stuck_threshold", 0.2)
        self.medium_stuck_threshold = get_config("medium_stuck_threshold", 2.0)
        self.long_stuck_threshold = get_config("long_stuck_threshold", 10.0)
        self.position_change_min = get_config("position_change_min", 5)

        # 状态跟踪
        self.last_move_time = 0.0
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
        """跳跃"""
        click(self.jump_pos[0], self.jump_pos[1])
        return True

    def explore(self) -> None:
        """探索模式：随机移动"""
        direction = random.choice([-1, 1])
        self.move(direction)

        # 偶尔跳跃
        if random.random() < 0.3:
            self.jump()

    def check_stuck(self, current_pos) -> bool:
        """
        检查是否卡住（记录位置历史）
        current_pos: 需要有 .x, .y 属性
        """
        now = time.time()
        self._position_history.append((now, current_pos.x, current_pos.y))

        # 检查是否有显著移动
        if len(self._position_history) >= 2:
            _, prev_x, prev_y = self._position_history[-2]
            dist = abs(current_pos.x - prev_x) + abs(current_pos.y - prev_y)
            if dist >= self.position_change_min:
                self._last_significant_move_time = now
                self._stuck_start_time = None
                self._recovery_attempts = {k: 0 for k in self._recovery_attempts}
                return False

        # 记录卡住开始时间
        if self._stuck_start_time is None:
            self._stuck_start_time = now

        # 判断是否超过短期卡住阈值
        stuck_duration = now - self._stuck_start_time
        return stuck_duration >= self.short_stuck_threshold

    def get_stuck_level(self) -> Optional[str]:
        """获取当前卡住等级"""
        if self._stuck_start_time is None:
            return None

        duration = time.time() - self._stuck_start_time

        if duration >= self.long_stuck_threshold:
            return StuckLevel.LONG
        elif duration >= self.medium_stuck_threshold:
            return StuckLevel.MEDIUM
        elif duration >= self.short_stuck_threshold:
            return StuckLevel.SHORT
        return None

    def handle_stuck(self) -> bool:
        """处理卡住状态（分类恢复策略）"""
        level = self.get_stuck_level()
        if level is None:
            return True

        self._recovery_attempts[level] = self._recovery_attempts.get(level, 0) + 1
        log(f"卡住恢复 [{level}] 尝试 #{self._recovery_attempts[level]}")

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
        jx, jy = self.joystick_pos
        offset = 30
        if direction == 1:
            swipe(jx, jy, jx + offset, jy, 50)
        else:
            swipe(jx, jy, jx - offset, jy, 50)
        return True

    def _recover_medium(self) -> bool:
        """中期卡住恢复：大范围跳跃 (±200px)"""
        direction = random.choice([-1, 1])
        self.move(direction, duration=200)
        sleep(0.1)
        self.jump()
        sleep(0.2)
        # 反向移动尝试突破
        self.move(-direction, duration=150)
        return True

    def _recover_long(self) -> bool:
        """长期卡住恢复：激进策略（多次跳跃 + 大范围移动）"""
        log("长期卡住，执行激进恢复策略")

        for _ in range(3):
            direction = random.choice([-1, 1])
            self.move(direction, duration=300)
            sleep(0.15)
            self.jump()
            sleep(0.25)

        # 重置卡住计时器
        self._stuck_start_time = None
        return True

    def navigate_to(self, player, target, threshold: float = 20.0) -> bool:
        """
        导航到目标位置
        player/target: 需要有 .x, .y 属性
        threshold: 到达判定距离
        返回：是否到达
        """
        dx = target.x - player.x
        dy = target.y - player.y

        if abs(dx) < threshold and abs(dy) < threshold:
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
