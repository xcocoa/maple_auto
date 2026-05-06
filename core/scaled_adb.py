# core/scaled_adb.py
# -*- coding: utf-8 -*-
"""
分辨率适配层
处理全面屏比例差异：截图时居中裁剪到 16:9 再缩放到基准分辨率，
触摸坐标反向映射回设备物理坐标。
"""

import cv2
import numpy as np
from typing import Optional


class ScaledADB:
    """ADB 代理：截图缩放到基准分辨率，触摸坐标反向缩放到设备分辨率"""

    def __init__(self, adb, base_w: int = 1280, base_h: int = 720):
        self._adb = adb
        self._base_w = base_w
        self._base_h = base_h
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._calibrated = False
        self._crop_x = 0
        self._crop_y = 0
        self._crop_w = 0
        self._crop_h = 0

    def calibrate(self, device_w: int, device_h: int):
        """根据实际设备分辨率计算缩放比，处理全面屏比例差异"""
        base_ratio = self._base_w / self._base_h
        device_ratio = device_w / device_h

        if abs(device_ratio - base_ratio) < 0.05:
            self._crop_x = 0
            self._crop_y = 0
            self._crop_w = device_w
            self._crop_h = device_h
        elif device_ratio > base_ratio:
            target_w = int(device_h * base_ratio)
            self._crop_x = (device_w - target_w) // 2
            self._crop_y = 0
            self._crop_w = target_w
            self._crop_h = device_h
        else:
            target_h = int(device_w / base_ratio)
            self._crop_x = 0
            self._crop_y = (device_h - target_h) // 2
            self._crop_w = device_w
            self._crop_h = target_h

        self._scale_x = self._crop_w / self._base_w
        self._scale_y = self._crop_h / self._base_h
        self._calibrated = True

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并缩放到基准分辨率"""
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None

        h, w = raw.shape[:2]

        if not self._calibrated:
            self.calibrate(w, h)

        if self._crop_x > 0 or self._crop_y > 0:
            x1 = self._crop_x
            y1 = self._crop_y
            x2 = x1 + self._crop_w
            y2 = y1 + self._crop_h
            raw = raw[y1:y2, x1:x2]

        if raw.shape[1] != self._base_w or raw.shape[0] != self._base_h:
            raw = cv2.resize(raw, (self._base_w, self._base_h))

        return raw

    def tap(self, x: int, y: int) -> None:
        """点击：基准坐标 -> 设备坐标"""
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        self._adb.tap(device_x, device_y)

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        self._adb.swipe(
            int(x1 * self._scale_x) + self._crop_x,
            int(y1 * self._scale_y) + self._crop_y,
            int(x2 * self._scale_x) + self._crop_x,
            int(y2 * self._scale_y) + self._crop_y,
            duration
        )

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        self._adb.long_press(device_x, device_y, duration)

    def invalidate_cache(self) -> None:
        if hasattr(self._adb, 'invalidate_cache'):
            self._adb.invalidate_cache()

    def __getattr__(self, name):
        return getattr(self._adb, name)
