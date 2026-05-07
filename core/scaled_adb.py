# core/scaled_adb.py
# -*- coding: utf-8 -*-
"""
分辨率适配层
全屏缩放模式：不裁剪，直接将完整截图缩放到基准宽度，高度按比例自适应。
保证所有 UI 元素可见，不会因为全面屏比例差异丢失边缘内容。
触摸坐标线性映射回设备物理坐标。
"""

import cv2
import numpy as np
from typing import Optional


class ScaledADB:
    """ADB 代理：全屏缩放（不裁剪），保证所有UI元素可见"""

    def __init__(self, adb, base_w: int = 1280, base_h: int = 0):
        """
        Args:
            adb: ADB 实例
            base_w: 基准宽度（固定）
            base_h: 基准高度（0=按设备比例自适应）
        """
        self._adb = adb
        self._base_w = base_w
        self._base_h = base_h  # 0 表示自适应
        self._actual_base_h = 0  # 实际使用的高度
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._device_w = 0
        self._device_h = 0
        self._calibrated = False

    def calibrate(self, device_w: int, device_h: int):
        """根据设备分辨率计算缩放比（纯缩放，不裁剪）"""
        self._device_w = device_w
        self._device_h = device_h

        if self._base_h > 0:
            # 固定基准高度
            self._actual_base_h = self._base_h
        else:
            # 按比例自适应高度
            self._actual_base_h = int(self._base_w * device_h / device_w)

        # 纯线性缩放
        self._scale_x = device_w / self._base_w
        self._scale_y = device_h / self._actual_base_h
        self._calibrated = True

    @property
    def base_size(self):
        """返回实际使用的基准尺寸 (w, h)"""
        return (self._base_w, self._actual_base_h)

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并缩放到基准分辨率（全屏，不裁剪）"""
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None

        h, w = raw.shape[:2]

        if not self._calibrated:
            self.calibrate(w, h)

        # 直接缩放到基准尺寸（不裁剪）
        if w != self._base_w or h != self._actual_base_h:
            raw = cv2.resize(raw, (self._base_w, self._actual_base_h))

        return raw

    def tap(self, x: int, y: int) -> None:
        """点击：基准坐标 -> 设备坐标（纯线性映射）"""
        device_x = int(x * self._scale_x)
        device_y = int(y * self._scale_y)
        self._adb.tap(device_x, device_y)

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        self._adb.swipe(
            int(x1 * self._scale_x),
            int(y1 * self._scale_y),
            int(x2 * self._scale_x),
            int(y2 * self._scale_y),
            duration
        )

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        device_x = int(x * self._scale_x)
        device_y = int(y * self._scale_y)
        self._adb.long_press(device_x, device_y, duration)

    def invalidate_cache(self) -> None:
        if hasattr(self._adb, 'invalidate_cache'):
            self._adb.invalidate_cache()

    def __getattr__(self, name):
        return getattr(self._adb, name)
