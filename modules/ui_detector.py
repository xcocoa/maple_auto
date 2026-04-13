# -*- coding: utf-8 -*-
"""
UI 元素检测模块
基于模板匹配检测按钮、图标、对话框等 UI 元素
支持：多尺度匹配、红点检测、对话框检测、置信度排序
"""

import os
import cv2
import logging
import numpy as np
from typing import Optional, List, Dict, Any, Tuple
from dataclasses import dataclass

logger = logging.getLogger('AutoDaily')


@dataclass
class UIElement:
    """UI 元素检测结果"""
    name: str                    # 元素名称
    x: int                       # 中心 x 坐标
    y: int                       # 中心 y 坐标
    width: int                   # 宽度
    height: int                  # 高度
    confidence: float            # 匹配置信度
    template_name: str = ""      # 匹配的模板名称

    @property
    def center(self) -> Tuple[int, int]:
        return (self.x, self.y)

    @property
    def region(self) -> Tuple[int, int, int, int]:
        """返回 (x1, y1, x2, y2) 区域"""
        half_w = self.width // 2
        half_h = self.height // 2
        return (self.x - half_w, self.y - half_h,
                self.x + half_w, self.y + half_h)


class UIDetector:
    """UI 元素检测器 - 基于模板匹配"""

    def __init__(self, config: Dict[str, Any]):
        self.config = config
        self.templates_dir = config.get('templates_dir', 'templates/daily')
        self.default_threshold = config.get('match_threshold', 0.8)
        self.multi_scale = config.get('multi_scale', False)
        self.scales = config.get('scales', [0.9, 1.0, 1.1])

        # 通用模板配置
        self.common_templates = config.get('common_templates', {})
        self.fallback_positions = config.get('fallback_positions', {})

        # 红点检测配置
        red_dot_cfg = config.get('red_dot', {})
        self._red_dot_lower = np.array(red_dot_cfg.get('color_lower', [0, 150, 150]))
        self._red_dot_upper = np.array(red_dot_cfg.get('color_upper', [10, 255, 255]))
        self._red_dot_min_area = red_dot_cfg.get('min_area', 30)

        # 对话框检测配置
        dialog_cfg = config.get('dialog', {})
        self._dialog_overlay_lower = np.array(dialog_cfg.get('overlay_color_lower', [0, 0, 0]))
        self._dialog_overlay_upper = np.array(dialog_cfg.get('overlay_color_upper', [180, 50, 80]))
        self._dialog_overlay_min_ratio = dialog_cfg.get('overlay_min_ratio', 0.15)

        # 模板缓存 {文件名: cv2图像}
        self._template_cache: Dict[str, np.ndarray] = {}

        # 预加载通用模板
        self._preload_common_templates()

    def _preload_common_templates(self):
        """预加载通用 UI 模板"""
        for name, filename in self.common_templates.items():
            self._load_template(filename)

    def _load_template(self, filename: str) -> Optional[np.ndarray]:
        """加载模板图片（带缓存）"""
        if filename in self._template_cache:
            return self._template_cache[filename]

        filepath = os.path.join(self.templates_dir, filename)
        if not os.path.exists(filepath):
            logger.warning(f"模板文件不存在: {filepath}")
            return None

        template = cv2.imread(filepath)
        if template is None:
            logger.warning(f"无法读取模板: {filepath}")
            return None

        self._template_cache[filename] = template
        logger.debug(f"已加载模板: {filename} ({template.shape[1]}x{template.shape[0]})")
        return template

    def find_element(
        self,
        screenshot: np.ndarray,
        template_name: str,
        threshold: Optional[float] = None,
        region: Optional[Tuple[int, int, int, int]] = None
    ) -> Optional[UIElement]:
        """
        在截图中查找指定 UI 元素

        Args:
            screenshot: 截图
            template_name: 模板文件名
            threshold: 匹配阈值（None 使用默认值）
            region: 搜索区域 (x1, y1, x2, y2)，None 搜索全图

        Returns:
            匹配到的 UIElement，未找到返回 None
        """
        if screenshot is None:
            return None

        template = self._load_template(template_name)
        if template is None:
            return None

        if threshold is None:
            threshold = self.default_threshold

        # 裁剪搜索区域
        search_img = screenshot
        offset_x, offset_y = 0, 0
        if region is not None:
            x1, y1, x2, y2 = region
            h, w = screenshot.shape[:2]
            x1 = max(0, min(x1, w))
            y1 = max(0, min(y1, h))
            x2 = max(x1 + 1, min(x2, w))
            y2 = max(y1 + 1, min(y2, h))
            search_img = screenshot[y1:y2, x1:x2]
            offset_x, offset_y = x1, y1

        # 执行匹配
        if self.multi_scale:
            result = self._match_multi_scale(search_img, template, threshold)
        else:
            result = self._match_single(search_img, template, threshold)

        if result is None:
            return None

        # 转换为全图坐标
        cx, cy, confidence, tw, th = result
        return UIElement(
            name=template_name.replace('.png', ''),
            x=cx + offset_x,
            y=cy + offset_y,
            width=tw,
            height=th,
            confidence=confidence,
            template_name=template_name
        )

    def find_all_elements(
        self,
        screenshot: np.ndarray,
        template_name: str,
        threshold: Optional[float] = None,
        region: Optional[Tuple[int, int, int, int]] = None,
        max_count: int = 10
    ) -> List[UIElement]:
        """
        查找所有匹配的 UI 元素

        Args:
            screenshot: 截图
            template_name: 模板文件名
            threshold: 匹配阈值
            region: 搜索区域
            max_count: 最大返回数量

        Returns:
            匹配到的 UIElement 列表
        """
        if screenshot is None:
            return []

        template = self._load_template(template_name)
        if template is None:
            return []

        if threshold is None:
            threshold = self.default_threshold

        # 裁剪搜索区域
        search_img = screenshot
        offset_x, offset_y = 0, 0
        if region is not None:
            x1, y1, x2, y2 = region
            h, w = screenshot.shape[:2]
            x1 = max(0, min(x1, w))
            y1 = max(0, min(y1, h))
            x2 = max(x1 + 1, min(x2, w))
            y2 = max(y1 + 1, min(y2, h))
            search_img = screenshot[y1:y2, x1:x2]
            offset_x, offset_y = x1, y1

        th, tw = template.shape[:2]

        # 检查模板是否比搜索区域大
        sh, sw = search_img.shape[:2]
        if tw > sw or th > sh:
            return []

        result = cv2.matchTemplate(search_img, template, cv2.TM_CCOEFF_NORMED)

        # 查找所有超过阈值的位置
        locations = np.where(result >= threshold)
        elements = []

        for pt_y, pt_x in zip(*locations):
            cx = pt_x + tw // 2 + offset_x
            cy = pt_y + th // 2 + offset_y
            confidence = float(result[pt_y, pt_x])

            elements.append(UIElement(
                name=template_name.replace('.png', ''),
                x=cx, y=cy,
                width=tw, height=th,
                confidence=confidence,
                template_name=template_name
            ))

        # 非极大值抑制（去除重叠检测）
        elements = self._nms(elements, overlap_threshold=0.5)

        # 按置信度排序
        elements.sort(key=lambda e: e.confidence, reverse=True)
        return elements[:max_count]

    def _match_single(
        self,
        search_img: np.ndarray,
        template: np.ndarray,
        threshold: float
    ) -> Optional[Tuple[int, int, float, int, int]]:
        """单尺度模板匹配"""
        th, tw = template.shape[:2]
        sh, sw = search_img.shape[:2]

        if tw > sw or th > sh:
            return None

        result = cv2.matchTemplate(search_img, template, cv2.TM_CCOEFF_NORMED)
        _, max_val, _, max_loc = cv2.minMaxLoc(result)

        if max_val >= threshold:
            cx = max_loc[0] + tw // 2
            cy = max_loc[1] + th // 2
            return (cx, cy, float(max_val), tw, th)

        return None

    def _match_multi_scale(
        self,
        search_img: np.ndarray,
        template: np.ndarray,
        threshold: float
    ) -> Optional[Tuple[int, int, float, int, int]]:
        """多尺度模板匹配（适应不同分辨率）"""
        best_result = None
        best_score = threshold

        for scale in self.scales:
            # 缩放模板
            scaled_w = int(template.shape[1] * scale)
            scaled_h = int(template.shape[0] * scale)
            if scaled_w <= 0 or scaled_h <= 0:
                continue

            scaled_template = cv2.resize(template, (scaled_w, scaled_h))

            sh, sw = search_img.shape[:2]
            if scaled_w > sw or scaled_h > sh:
                continue

            result = cv2.matchTemplate(search_img, scaled_template, cv2.TM_CCOEFF_NORMED)
            _, max_val, _, max_loc = cv2.minMaxLoc(result)

            if max_val > best_score:
                best_score = max_val
                cx = max_loc[0] + scaled_w // 2
                cy = max_loc[1] + scaled_h // 2
                best_result = (cx, cy, float(max_val), scaled_w, scaled_h)

        return best_result

    def _nms(self, elements: List[UIElement], overlap_threshold: float = 0.5) -> List[UIElement]:
        """非极大值抑制 - 去除重叠检测"""
        if len(elements) <= 1:
            return elements

        # 按置信度排序
        elements.sort(key=lambda e: e.confidence, reverse=True)
        keep = []

        for elem in elements:
            is_overlap = False
            for kept in keep:
                # 计算中心距离
                dist = abs(elem.x - kept.x) + abs(elem.y - kept.y)
                min_dim = min(elem.width, elem.height, kept.width, kept.height)
                if dist < min_dim * overlap_threshold:
                    is_overlap = True
                    break
            if not is_overlap:
                keep.append(elem)

        return keep

    def find_button(
        self,
        screenshot: np.ndarray,
        button_name: str,
        threshold: Optional[float] = None
    ) -> Optional[UIElement]:
        """
        查找可点击按钮（先模板匹配，失败则使用备用坐标）

        Args:
            screenshot: 截图
            button_name: 按钮名称（对应 common_templates 中的 key）
            threshold: 匹配阈值

        Returns:
            UIElement 或 None
        """
        # 尝试模板匹配
        template_file = self.common_templates.get(button_name)
        if template_file:
            result = self.find_element(screenshot, template_file, threshold)
            if result is not None:
                result.name = button_name
                return result

        # 使用备用坐标
        fallback = self.fallback_positions.get(button_name)
        if fallback:
            logger.debug(f"使用备用坐标: {button_name} -> {fallback}")
            return UIElement(
                name=button_name,
                x=fallback[0], y=fallback[1],
                width=50, height=50,
                confidence=0.5,
                template_name="fallback"
            )

        return None

    def is_dialog_open(self, screenshot: np.ndarray) -> bool:
        """
        检测是否有对话框弹出
        通过检测半透明黑色遮罩层判断
        """
        if screenshot is None:
            return False

        hsv = cv2.cvtColor(screenshot, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, self._dialog_overlay_lower, self._dialog_overlay_upper)
        ratio = np.count_nonzero(mask) / max(mask.size, 1)

        return ratio > self._dialog_overlay_min_ratio

    def detect_red_dot(
        self,
        screenshot: np.ndarray,
        region: Optional[Tuple[int, int, int, int]] = None
    ) -> bool:
        """
        检测红点提示（未领取奖励等）

        Args:
            screenshot: 截图
            region: 检测区域 (x1, y1, x2, y2)

        Returns:
            是否检测到红点
        """
        if screenshot is None:
            return False

        # 裁剪区域
        img = screenshot
        if region is not None:
            x1, y1, x2, y2 = region
            h, w = screenshot.shape[:2]
            x1 = max(0, min(x1, w))
            y1 = max(0, min(y1, h))
            x2 = max(x1 + 1, min(x2, w))
            y2 = max(y1 + 1, min(y2, h))
            img = screenshot[y1:y2, x1:x2]

        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, self._red_dot_lower, self._red_dot_upper)

        # 查找轮廓
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        for contour in contours:
            area = cv2.contourArea(contour)
            if area >= self._red_dot_min_area:
                return True

        return False

    def wait_for_element(
        self,
        adb,
        template_name: str,
        timeout: float = 10.0,
        interval: float = 0.5,
        threshold: Optional[float] = None
    ) -> Optional[UIElement]:
        """
        等待 UI 元素出现

        Args:
            adb: ADB 实例（用于截图）
            template_name: 模板文件名
            timeout: 超时时间（秒）
            interval: 检查间隔（秒）
            threshold: 匹配阈值

        Returns:
            找到的 UIElement，超时返回 None
        """
        import time
        start = time.time()

        while time.time() - start < timeout:
            screenshot = adb.screenshot(force_refresh=True)
            if screenshot is not None:
                result = self.find_element(screenshot, template_name, threshold)
                if result is not None:
                    return result
            time.sleep(interval)

        logger.warning(f"等待 UI 元素超时: {template_name} ({timeout}s)")
        return None

    def tap_element(self, adb, element: UIElement, delay: float = 0.3):
        """
        点击 UI 元素

        Args:
            adb: ADB 实例
            element: 要点击的 UI 元素
            delay: 点击后延迟（秒）
        """
        import time
        adb.tap(element.x, element.y)
        logger.debug(f"点击 UI 元素: {element.name} ({element.x}, {element.y})")
        time.sleep(delay)

    def close_dialog(self, adb, screenshot: np.ndarray) -> bool:
        """
        尝试关闭当前对话框

        Returns:
            是否成功关闭
        """
        # 尝试找关闭按钮
        close_btn = self.find_button(screenshot, 'close_btn')
        if close_btn:
            self.tap_element(adb, close_btn)
            return True

        # 尝试点击空白区域关闭
        import time
        adb.tap(100, 100)
        time.sleep(0.3)
        return False

    def clear_cache(self):
        """清除模板缓存"""
        self._template_cache.clear()
        logger.info("UI 模板缓存已清除")
