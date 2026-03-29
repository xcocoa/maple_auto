# -*- coding: utf-8 -*-
"""
模板匹配模块 (Android 版)
使用 OpenCV 实现高效的 UI 元素检测

功能：
- 单模板匹配（查找单个目标）
- 多模板匹配（查找所有匹配位置）
- 多尺度匹配（适配不同分辨率）
- 模板缓存管理

使用场景：
- 检测按钮位置（开始、确认、取消）
- 检测技能图标
- 检测游戏 UI 元素（商店、传送门等）
"""

import cv2
import numpy as np
import logging
import os
from typing import List, Optional, Dict, Any, Tuple
from dataclasses import dataclass

logger = logging.getLogger(__name__)


@dataclass
class MatchResult:
    """匹配结果"""
    x: int              # 中心 X 坐标
    y: int              # 中心 Y 坐标
    width: int          # 模板宽度
    height: int         # 模板高度
    confidence: float   # 置信度 (0.0-1.0)

    @property
    def top_left(self) -> Tuple[int, int]:
        """返回左上角坐标"""
        return (self.x - self.width // 2, self.y - self.height // 2)

    @property
    def bottom_right(self) -> Tuple[int, int]:
        """返回右下角坐标"""
        return (self.x + self.width // 2, self.y + self.height // 2)


class TemplateMatcher:
    """模板匹配器 - 支持多尺度和缓存"""

    def __init__(self, config: Dict[str, Any] = None):
        """
        初始化模板匹配器

        Args:
            config: 配置字典，包含：
                - default_threshold: 默认匹配阈值 (0.0-1.0)
                - scales: 多尺度匹配的缩放比例列表
                - cache_size: 模板缓存大小
        """
        self.config = config or {}
        self.default_threshold = self.config.get('default_threshold', 0.8)
        self.scales = self.config.get('scales', [0.8, 0.9, 1.0, 1.1, 1.2])
        self.cache_size = self.config.get('cache_size', 50)

        # 模板缓存
        self._template_cache: Dict[str, np.ndarray] = {}

        logger.info(f"TemplateMatcher initialized, threshold={self.default_threshold}")

    def load_template(self, template_path: str) -> Optional[np.ndarray]:
        """
        加载模板图片（带缓存）

        Args:
            template_path: 模板图片路径

        Returns:
            numpy.ndarray: BGR 格式的图片，失败返回 None
        """
        # 检查缓存
        if template_path in self._template_cache:
            return self._template_cache[template_path]

        # 加载图片
        if not os.path.exists(template_path):
            logger.warning(f"Template not found: {template_path}")
            return None

        template = cv2.imread(template_path, cv2.IMREAD_COLOR)
        if template is None:
            logger.error(f"Failed to load template: {template_path}")
            return None

        # 缓存管理
        if len(self._template_cache) >= self.cache_size:
            # 移除最早的缓存
            oldest_key = next(iter(self._template_cache))
            del self._template_cache[oldest_key]

        self._template_cache[template_path] = template
        logger.debug(f"Loaded template: {template_path}, shape={template.shape}")
        return template

    def load_template_from_array(self, template: np.ndarray, key: str) -> None:
        """
        从 numpy 数组加载模板

        Args:
            template: BGR 格式的图片数组
            key: 缓存键名
        """
        if len(self._template_cache) >= self.cache_size:
            oldest_key = next(iter(self._template_cache))
            del self._template_cache[oldest_key]

        self._template_cache[key] = template.copy()

    def match(
        self,
        screenshot: np.ndarray,
        template: np.ndarray,
        threshold: float = None
    ) -> Optional[MatchResult]:
        """
        单模板匹配 - 查找最佳匹配位置

        Args:
            screenshot: 屏幕截图 (BGR)
            template: 模板图片 (BGR)
            threshold: 匹配阈值，None 使用默认值

        Returns:
            MatchResult: 匹配结果，未找到返回 None
        """
        if threshold is None:
            threshold = self.default_threshold

        if screenshot is None or template is None:
            return None

        # 模板不能大于截图
        if template.shape[0] > screenshot.shape[0] or template.shape[1] > screenshot.shape[1]:
            logger.debug("Template larger than screenshot, skipping")
            return None

        try:
            # 执行模板匹配
            result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
            min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(result)

            if max_val >= threshold:
                h, w = template.shape[:2]
                return MatchResult(
                    x=max_loc[0] + w // 2,
                    y=max_loc[1] + h // 2,
                    width=w,
                    height=h,
                    confidence=float(max_val)
                )

            logger.debug(f"Best match confidence {max_val:.3f} below threshold {threshold}")
            return None

        except Exception as e:
            logger.error(f"Template matching failed: {e}")
            return None

    def match_all(
        self,
        screenshot: np.ndarray,
        template: np.ndarray,
        threshold: float = None,
        min_distance: int = 10
    ) -> List[MatchResult]:
        """
        多模板匹配 - 查找所有匹配位置

        Args:
            screenshot: 屏幕截图 (BGR)
            template: 模板图片 (BGR)
            threshold: 匹配阈值
            min_distance: 相邻匹配的最小距离（避免重复检测）

        Returns:
            List[MatchResult]: 所有匹配结果列表
        """
        if threshold is None:
            threshold = self.default_threshold

        if screenshot is None or template is None:
            return []

        if template.shape[0] > screenshot.shape[0] or template.shape[1] > screenshot.shape[1]:
            return []

        try:
            result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
            h, w = template.shape[:2]

            # 查找所有超过阈值的位置
            locations = np.where(result >= threshold)

            matches = []
            for pt in zip(*locations[::-1]):  # (x, y)
                confidence = result[pt[1], pt[0]]

                # 非极大值抑制（简化版）
                is_duplicate = False
                for existing in matches:
                    dist = abs(pt[0] + w // 2 - existing.x) + abs(pt[1] + h // 2 - existing.y)
                    if dist < min_distance:
                        is_duplicate = True
                        break

                if not is_duplicate:
                    matches.append(MatchResult(
                        x=pt[0] + w // 2,
                        y=pt[1] + h // 2,
                        width=w,
                        height=h,
                        confidence=float(confidence)
                    ))

            # 按置信度排序
            matches.sort(key=lambda m: m.confidence, reverse=True)
            logger.debug(f"Found {len(matches)} matches above threshold {threshold}")
            return matches

        except Exception as e:
            logger.error(f"Multi-template matching failed: {e}")
            return []

    def match_multiscale(
        self,
        screenshot: np.ndarray,
        template: np.ndarray,
        threshold: float = None,
        scales: List[float] = None
    ) -> Optional[MatchResult]:
        """
        多尺度模板匹配 - 适配不同分辨率

        Args:
            screenshot: 屏幕截图 (BGR)
            template: 模板图片 (BGR)
            threshold: 匹配阈值
            scales: 缩放比例列表，None 使用默认值

        Returns:
            MatchResult: 最佳匹配结果
        """
        if threshold is None:
            threshold = self.default_threshold
        if scales is None:
            scales = self.scales

        best_match = None

        for scale in scales:
            # 缩放模板
            if scale != 1.0:
                new_width = int(template.shape[1] * scale)
                new_height = int(template.shape[0] * scale)
                if new_width < 10 or new_height < 10:
                    continue
                if new_width > screenshot.shape[1] or new_height > screenshot.shape[0]:
                    continue

                scaled_template = cv2.resize(template, (new_width, new_height))
            else:
                scaled_template = template

            match = self.match(screenshot, scaled_template, threshold)
            if match is not None:
                if best_match is None or match.confidence > best_match.confidence:
                    best_match = match
                    logger.debug(f"Match at scale {scale:.2f}, confidence={match.confidence:.3f}")

        return best_match

    def match_template_file(
        self,
        screenshot: np.ndarray,
        template_path: str,
        threshold: float = None,
        multiscale: bool = False
    ) -> Optional[MatchResult]:
        """
        使用模板文件进行匹配

        Args:
            screenshot: 屏幕截图 (BGR)
            template_path: 模板文件路径
            threshold: 匹配阈值
            multiscale: 是否使用多尺度匹配

        Returns:
            MatchResult: 匹配结果
        """
        template = self.load_template(template_path)
        if template is None:
            return None

        if multiscale:
            return self.match_multiscale(screenshot, template, threshold)
        return self.match(screenshot, template, threshold)

    def find_best_match(
        self,
        screenshot: np.ndarray,
        template_paths: List[str],
        threshold: float = None
    ) -> Tuple[Optional[MatchResult], Optional[str]]:
        """
        从多个模板中找到最佳匹配

        Args:
            screenshot: 屏幕截图 (BGR)
            template_paths: 模板文件路径列表
            threshold: 匹配阈值

        Returns:
            Tuple[MatchResult, str]: (匹配结果, 模板路径)，未找到返回 (None, None)
        """
        best_match = None
        best_path = None

        for path in template_paths:
            match = self.match_template_file(screenshot, path, threshold)
            if match is not None:
                if best_match is None or match.confidence > best_match.confidence:
                    best_match = match
                    best_path = path

        return best_match, best_path

    def clear_cache(self):
        """清空模板缓存"""
        self._template_cache.clear()
        logger.debug("Template cache cleared")


# ============================================================================
# 便捷函数
# ============================================================================

_default_matcher: Optional[TemplateMatcher] = None


def get_matcher(config: Dict[str, Any] = None) -> TemplateMatcher:
    """获取全局模板匹配器实例"""
    global _default_matcher
    if _default_matcher is None:
        _default_matcher = TemplateMatcher(config)
    return _default_matcher


def match_template(
    screenshot: np.ndarray,
    template: np.ndarray,
    threshold: float = 0.8
) -> Optional[MatchResult]:
    """便捷函数：单模板匹配"""
    return get_matcher().match(screenshot, template, threshold)


def match_template_file(
    screenshot: np.ndarray,
    template_path: str,
    threshold: float = 0.8
) -> Optional[MatchResult]:
    """便捷函数：使用模板文件匹配"""
    return get_matcher().match_template_file(screenshot, template_path, threshold)