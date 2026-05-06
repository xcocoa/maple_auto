# engine/scene_matcher.py
# -*- coding: utf-8 -*-
"""
场景匹配器
基于模板匹配识别当前屏幕场景，支持多模板、阈值配置。
"""

import os
import cv2
import logging
import numpy as np
from typing import Dict, Optional, Tuple

from engine.flow_schema import Scene

logger = logging.getLogger('Engine.SceneMatcher')


class SceneMatcher:
    """场景匹配器 — 识别当前屏幕属于哪个场景"""

    def __init__(self, scenes: Dict[str, Scene], base_dir: str = "."):
        self._scenes = scenes
        self._base_dir = base_dir
        self._template_cache: Dict[str, Optional[np.ndarray]] = {}

    def _load_template(self, template_path: str) -> Optional[np.ndarray]:
        if template_path in self._template_cache:
            return self._template_cache[template_path]
        full_path = os.path.join(self._base_dir, template_path)
        if not os.path.exists(full_path):
            logger.warning(f"模板文件不存在: {full_path}")
            self._template_cache[template_path] = None
            return None
        img = cv2.imread(full_path)
        self._template_cache[template_path] = img
        return img

    def _match_template(self, screenshot: np.ndarray, template: np.ndarray) -> float:
        th, tw = template.shape[:2]
        sh, sw = screenshot.shape[:2]
        if tw > sw or th > sh:
            return 0.0
        # Uniform templates have zero spatial variance → TM_CCOEFF_NORMED yields 0/0 (→ 1.0 in OpenCV)
        if template.std(axis=(0, 1)).max() < 1e-6:
            return 0.0
        result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
        _, max_val, _, _ = cv2.minMaxLoc(result)
        return float(max_val)

    def match_scene(self, screenshot: np.ndarray, scene_name: str) -> float:
        """检查截图是否匹配指定场景，返回最高置信度"""
        scene = self._scenes.get(scene_name)
        if scene is None:
            return 0.0
        best_confidence = 0.0
        for template_path in scene.templates:
            template = self._load_template(template_path)
            if template is None:
                continue
            confidence = self._match_template(screenshot, template)
            if confidence > best_confidence:
                best_confidence = confidence
        return best_confidence

    def match(self, screenshot: np.ndarray) -> Optional[Tuple[str, float]]:
        """在所有场景中寻找最佳匹配"""
        best_scene = None
        best_confidence = 0.0
        for scene_name, scene in self._scenes.items():
            confidence = self.match_scene(screenshot, scene_name)
            if confidence >= scene.threshold and confidence > best_confidence:
                best_scene = scene_name
                best_confidence = confidence
        if best_scene is not None:
            return (best_scene, best_confidence)
        return None
