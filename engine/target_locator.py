# engine/target_locator.py
# -*- coding: utf-8 -*-
"""
目标定位器
在截图中定位点击目标：优先模板匹配，备用固定坐标。
"""

import os
import cv2
import logging
import numpy as np
from dataclasses import dataclass
from typing import Dict, Optional

from engine.flow_schema import Target

logger = logging.getLogger('Engine.TargetLocator')


@dataclass
class LocateResult:
    """定位结果"""
    x: int
    y: int
    confidence: float
    found_by: str  # "template" | "fallback" | "fixed"


class TargetLocator:
    """目标定位器 — 在截图中找到点击位置"""

    def __init__(self, base_dir: str = "."):
        self._base_dir = base_dir
        self._template_cache: Dict[str, Optional[np.ndarray]] = {}

    def _load_template(self, template_path: str) -> Optional[np.ndarray]:
        if template_path in self._template_cache:
            return self._template_cache[template_path]
        full_path = os.path.join(self._base_dir, template_path)
        if not os.path.exists(full_path):
            self._template_cache[template_path] = None
            return None
        img = cv2.imread(full_path)
        self._template_cache[template_path] = img
        return img

    def locate(self, screenshot: np.ndarray, target: Target) -> Optional[LocateResult]:
        """定位目标：先尝试模板匹配，失败则用 fallback 坐标"""
        if target.template:
            template = self._load_template(target.template)
            if template is not None:
                th, tw = template.shape[:2]
                sh, sw = screenshot.shape[:2]
                if tw <= sw and th <= sh:
                    result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
                    _, max_val, _, max_loc = cv2.minMaxLoc(result)
                    if max_val >= target.threshold:
                        cx = max_loc[0] + tw // 2
                        cy = max_loc[1] + th // 2
                        return LocateResult(x=cx, y=cy, confidence=float(max_val), found_by="template")

        if target.fallback_pos:
            return LocateResult(x=target.fallback_pos[0], y=target.fallback_pos[1], confidence=0.0, found_by="fallback")

        return None

    def locate_fixed(self, x: int, y: int) -> LocateResult:
        """使用固定坐标定位"""
        return LocateResult(x=x, y=y, confidence=1.0, found_by="fixed")
