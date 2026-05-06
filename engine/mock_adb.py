# engine/mock_adb.py
# -*- coding: utf-8 -*-
"""
模拟设备
用截图序列模拟真实设备，支持离线测试 Player 逻辑。
"""

import os
import cv2
import logging
import numpy as np
from typing import List, Optional, Tuple

logger = logging.getLogger('Engine.MockADB')


class MockADB:
    """模拟 ADB 设备，按顺序返回截图"""

    def __init__(self, screenshot_dir: str):
        self._screenshots = self._load_screenshots(screenshot_dir)
        self._index = 0
        self.tap_log: List[Tuple[int, int]] = []
        self.swipe_log: List[Tuple[int, int, int, int]] = []

    def _load_screenshots(self, directory: str) -> List[np.ndarray]:
        images = []
        if not os.path.isdir(directory):
            logger.warning(f"截图目录不存在: {directory}")
            return images
        files = sorted([
            f for f in os.listdir(directory)
            if f.lower().endswith(('.png', '.jpg', '.jpeg'))
        ])
        for filename in files:
            path = os.path.join(directory, filename)
            img = cv2.imread(path)
            if img is not None:
                images.append(img)
        logger.info(f"MockADB: 已加载 {len(images)} 张截图")
        return images

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        if not self._screenshots:
            return None
        if force_refresh and self._index < len(self._screenshots) - 1:
            self._index += 1
        return self._screenshots[self._index]

    def tap(self, x: int, y: int) -> None:
        self.tap_log.append((x, y))
        if self._index < len(self._screenshots) - 1:
            self._index += 1

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        self.swipe_log.append((x1, y1, x2, y2))

    def long_press(self, x: int, y: int, duration: int = 500) -> None:
        self.tap_log.append((x, y))
        if self._index < len(self._screenshots) - 1:
            self._index += 1

    def invalidate_cache(self) -> None:
        pass

    def reset(self) -> None:
        self._index = 0
        self.tap_log.clear()
        self.swipe_log.clear()

    @property
    def current_index(self) -> int:
        return self._index

    @property
    def total_screenshots(self) -> int:
        return len(self._screenshots)
