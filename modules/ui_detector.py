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

try:
    from paddleocr import PaddleOCR
except ImportError:
    PaddleOCR = None

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

    # 游戏 UI 命名区域（基准分辨率 1280x720）
    # 格式: {区域名: (x1, y1, x2, y2)}
    OCR_NAMED_REGIONS = {
        'center':       (200, 150, 1080, 570),   # 中心弹窗区域（~0.6-1s）
        'right_half':   (640, 0, 1280, 720),     # 右半部分（~2s）
        'bottom':       (0, 550, 1280, 720),     # 底部按钮栏（~1.4s）
    }

    # 默认区域搜索顺序（无匹配提示时使用）
    OCR_DEFAULT_ORDER = ['center', 'right_half']

    # 文本 → 优先搜索区域映射
    # 根据文本内容动态调整搜索顺序，让最可能命中的区域排在最前面
    # 关键词支持子串匹配：只要 target_text 包含关键词就命中
    TEXT_REGION_HINTS = {
        # 弹窗中心按钮（确认/入场/强化/使用等）→ 优先搜索中心区域
        '入场':     ['center'],
        '确定':     ['center'],
        '确认':     ['center'],
        '强化':     ['center'],
        '使用':     ['center'],
        # 边缘按钮（关闭/离开/领取等）→ 优先搜索右半部分
        '关闭':     ['right_half'],
        '离开':     ['right_half', 'center'],
        '领取':     ['right_half', 'bottom'],
        '全部领取': ['right_half', 'bottom'],
    }

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

    # 类级别 OCR 单例，所有 UIDetector 实例共享同一个 PaddleOCR
    _shared_ocr = None
    _shared_ocr_initialized = False

    # OCR 结果缓存：帧级别缓存，存储同一帧内所有已扫描区域的 OCR 结果
    _ocr_frame_hash = None          # 当前帧的截图哈希
    _ocr_frame_results = {}         # {区域key: (ocr_result, offset_x, offset_y)}

    @property
    def ocr(self):
        if not UIDetector._shared_ocr_initialized:
            if PaddleOCR is None:
                logger.error("未安装 paddleocr，无法使用文本识别功能。请运行 pip install paddleocr paddlepaddle")
                return None
            logger.info("初始化 PaddleOCR（全局单例，mobile 轻量模型）...")
            try:
                UIDetector._shared_ocr = PaddleOCR(
                    text_detection_model_name='PP-OCRv5_mobile_det',
                    text_recognition_model_name='PP-OCRv5_mobile_rec',
                    use_doc_orientation_classify=False,
                    use_doc_unwarping=False,
                    use_textline_orientation=False,
                    text_det_box_thresh=0.7,  # 提高检测阈值，减少无效文本区域加速识别
                )
            except Exception as e:
                logger.warning(f"PaddleOCR mobile 模型初始化失败，尝试默认模型: {e}")
                try:
                    UIDetector._shared_ocr = PaddleOCR(
                        use_doc_orientation_classify=False,
                        use_doc_unwarping=False,
                        use_textline_orientation=False,
                    )
                except Exception as e2:
                    logger.error(f"PaddleOCR 初始化失败: {e2}")
                    UIDetector._shared_ocr = None
            UIDetector._shared_ocr_initialized = True
        return UIDetector._shared_ocr

    @staticmethod
    def _compute_frame_hash(image: np.ndarray) -> int:
        """计算截图的帧哈希（用于判断是否为同一帧）"""
        small = cv2.resize(image, (32, 32))
        return hash(small.tobytes())

    def _ensure_frame_cache(self, screenshot: np.ndarray):
        """确保帧缓存有效，如果截图变了则清空缓存"""
        frame_hash = self._compute_frame_hash(screenshot)
        if frame_hash != UIDetector._ocr_frame_hash:
            UIDetector._ocr_frame_hash = frame_hash
            UIDetector._ocr_frame_results = {}

    def _ocr_region_cached(self, screenshot: np.ndarray, region_key: str,
                           x1: int, y1: int, x2: int, y2: int):
        """
        对指定区域执行 OCR（带帧级缓存）
        
        同一帧内，相同区域只执行一次 OCR
        
        Returns:
            (ocr_result, offset_x, offset_y) 或 (None, 0, 0)
        """
        self._ensure_frame_cache(screenshot)
        
        if region_key in UIDetector._ocr_frame_results:
            logger.debug(f"OCR 帧缓存命中: {region_key}")
            return UIDetector._ocr_frame_results[region_key]
        
        h, w = screenshot.shape[:2]
        x1 = max(0, min(x1, w))
        y1 = max(0, min(y1, h))
        x2 = max(x1 + 1, min(x2, w))
        y2 = max(y1 + 1, min(y2, h))
        
        roi = screenshot[y1:y2, x1:x2]
        result = self.ocr.ocr(roi)
        
        ocr_result = result[0] if result and result[0] else None
        entry = (ocr_result, x1, y1)
        UIDetector._ocr_frame_results[region_key] = entry
        return entry

    def _ocr_with_cache(self, image: np.ndarray):
        """
        带缓存的 OCR 调用（兼容旧接口）
        对同一张图片只执行一次 OCR
        """
        small = cv2.resize(image, (32, 32))
        img_hash = hash(small.tobytes())
        
        # 检查帧缓存中是否有全图结果
        if img_hash == UIDetector._ocr_frame_hash and 'full' in UIDetector._ocr_frame_results:
            ocr_result, _, _ = UIDetector._ocr_frame_results['full']
            return [ocr_result] if ocr_result else None
        
        result = self.ocr.ocr(image)
        # 存入帧缓存
        UIDetector._ocr_frame_hash = img_hash
        UIDetector._ocr_frame_results = {
            'full': (result[0] if result and result[0] else None, 0, 0)
        }
        return result

    @classmethod
    def invalidate_ocr_cache(cls):
        """手动清除 OCR 结果缓存（截图变化时自动失效，通常无需手动调用）"""
        cls._ocr_frame_hash = None
        cls._ocr_frame_results = {}

    def ocr_full_scan(self, screenshot: np.ndarray) -> List[Dict]:
        """
        一次全图 OCR 扫描，返回所有检测到的文本及其位置
        
        供状态机引擎使用：一次扫描结果可同时用于全局处理器检查和状态匹配，
        避免每个 handler/state 单独调用 OCR 造成的重复开销。
        
        Returns:
            [{'text': str, 'x': int, 'y': int, 'w': int, 'h': int, 'confidence': float}, ...]
        """
        if screenshot is None or self.ocr is None:
            return []
        
        self._ensure_frame_cache(screenshot)
        
        # 如果帧缓存中已有全图结果，直接解析返回
        if 'full' in UIDetector._ocr_frame_results:
            ocr_result, ox, oy = UIDetector._ocr_frame_results['full']
            if ocr_result is not None:
                return self._parse_all_texts(ocr_result, ox, oy)
            return []
        
        # 执行全图 OCR
        ocr_result, ox, oy = self._ocr_region_cached(
            screenshot, 'full', 0, 0, screenshot.shape[1], screenshot.shape[0]
        )
        if ocr_result is not None:
            return self._parse_all_texts(ocr_result, ox, oy)
        return []

    def _parse_all_texts(self, ocr_result, offset_x: int = 0, offset_y: int = 0) -> List[Dict]:
        """解析 OCR 结果为统一的文本列表格式"""
        texts = []
        
        # 新版 PaddleOCR >= 3.5.0
        if hasattr(ocr_result, 'keys') and 'rec_texts' in ocr_result:
            for i, detected_text in enumerate(ocr_result['rec_texts']):
                poly = ocr_result['dt_polys'][i]
                xs = poly[:, 0]
                ys = poly[:, 1]
                x_min, x_max = float(xs.min()), float(xs.max())
                y_min, y_max = float(ys.min()), float(ys.max())
                texts.append({
                    'text': detected_text,
                    'x': int((x_min + x_max) / 2) + offset_x,
                    'y': int((y_min + y_max) / 2) + offset_y,
                    'w': int(x_max - x_min),
                    'h': int(y_max - y_min),
                    'confidence': float(ocr_result['rec_scores'][i]),
                })
        else:
            # 旧版 PaddleOCR
            for line in ocr_result:
                box = line[0]
                detected_text = line[1][0]
                confidence = line[1][1]
                xs = [pt[0] for pt in box]
                ys = [pt[1] for pt in box]
                x_min, x_max = min(xs), max(xs)
                y_min, y_max = min(ys), max(ys)
                texts.append({
                    'text': detected_text,
                    'x': int((x_min + x_max) / 2) + offset_x,
                    'y': int((y_min + y_max) / 2) + offset_y,
                    'w': int(x_max - x_min),
                    'h': int(y_max - y_min),
                    'confidence': confidence,
                })
        
        return texts

    def match_text_in_scan(self, scan_results: List[Dict], text: str,
                           exact_match: bool = False) -> Optional[UIElement]:
        """
        在已有的全图扫描结果中查找指定文本
        
        零耗时操作：不需要再次调用 OCR，直接在内存中搜索
        
        Args:
            scan_results: ocr_full_scan() 的返回结果
            text: 要查找的文本
            exact_match: 是否精确匹配
            
        Returns:
            匹配到的 UIElement，未找到返回 None
        """
        for item in scan_results:
            detected = item['text']
            match = (text == detected) if exact_match else (text in detected)
            if match:
                return UIElement(
                    name=f"text:{text}",
                    x=item['x'], y=item['y'],
                    width=item['w'], height=item['h'],
                    confidence=item['confidence'],
                    template_name="ocr"
                )
        return None

    def _preload_common_templates(self):
        """预加载通用 UI 模板"""
        for name, filename in self.common_templates.items():
            self._load_template(filename)

    def _load_template(self, filename: str) -> Optional[np.ndarray]:
        """加载模板图片（带缓存）
        
        查找顺序：
        1. templates_dir 下查找
        2. 项目根目录下查找（支持完整相对路径）
        """
        if filename in self._template_cache:
            return self._template_cache[filename]

        filepath = os.path.join(self.templates_dir, filename)
        if not os.path.exists(filepath):
            # 尝试从项目根目录查找
            if os.path.exists(filename):
                filepath = filename
            else:
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

    def _parse_ocr_result(self, ocr_result, text: str, exact_match: bool,
                           offset_x: int = 0, offset_y: int = 0) -> Optional[UIElement]:
        """
        解析 OCR 结果，查找匹配的文本
        
        兼容 PaddleOCR 新旧版本的返回格式
        """
        # 新版 PaddleOCR >= 3.5.0 返回 OCRResult 字典对象
        if hasattr(ocr_result, 'keys') and 'rec_texts' in ocr_result:
            texts = ocr_result['rec_texts']
            scores = ocr_result['rec_scores']
            polys = ocr_result['dt_polys']

            for i, detected_text in enumerate(texts):
                match = (text == detected_text) if exact_match else (text in detected_text)
                if match:
                    poly = polys[i]  # shape (4, 2) ndarray
                    xs = poly[:, 0]
                    ys = poly[:, 1]
                    x_min, x_max = float(xs.min()), float(xs.max())
                    y_min, y_max = float(ys.min()), float(ys.max())

                    cx = int((x_min + x_max) / 2) + offset_x
                    cy = int((y_min + y_max) / 2) + offset_y
                    tw = int(x_max - x_min)
                    th = int(y_max - y_min)

                    return UIElement(
                        name=f"text:{text}",
                        x=cx, y=cy,
                        width=tw, height=th,
                        confidence=float(scores[i]),
                        template_name="ocr"
                    )
        else:
            # 旧版 PaddleOCR < 3.5.0 返回 [[box, (text, score)], ...]
            for line in ocr_result:
                box = line[0]
                detected_text = line[1][0]
                confidence = line[1][1]

                match = (text == detected_text) if exact_match else (text in detected_text)
                if match:
                    xs = [pt[0] for pt in box]
                    ys = [pt[1] for pt in box]
                    x_min, x_max = min(xs), max(xs)
                    y_min, y_max = min(ys), max(ys)

                    cx = int((x_min + x_max) / 2) + offset_x
                    cy = int((y_min + y_max) / 2) + offset_y
                    tw = int(x_max - x_min)
                    th = int(y_max - y_min)

                    return UIElement(
                        name=f"text:{text}",
                        x=cx, y=cy,
                        width=tw, height=th,
                        confidence=confidence,
                        template_name="ocr"
                    )
        return None

    def _ocr_scan_region(self, screenshot: np.ndarray, region: Tuple[int, int, int, int],
                         text: str, exact_match: bool) -> Optional[UIElement]:
        """
        对指定区域执行 OCR 并查找文本
        
        Args:
            screenshot: 完整截图
            region: 搜索区域 (x1, y1, x2, y2)
            text: 要查找的文本
            exact_match: 是否精确匹配
            
        Returns:
            匹配到的 UIElement（坐标已转换为全图坐标），未找到返回 None
        """
        x1, y1, x2, y2 = region
        h, w = screenshot.shape[:2]
        x1 = max(0, min(x1, w))
        y1 = max(0, min(y1, h))
        x2 = max(x1 + 1, min(x2, w))
        y2 = max(y1 + 1, min(y2, h))
        
        roi = screenshot[y1:y2, x1:x2]
        result = self.ocr.ocr(roi)
        if not result or not result[0]:
            return None
        
        return self._parse_ocr_result(result[0], text, exact_match, offset_x=x1, offset_y=y1)

    def find_text(
        self,
        screenshot: np.ndarray,
        text: str,
        region: Optional[Tuple[int, int, int, int]] = None,
        exact_match: bool = False
    ) -> Optional[UIElement]:
        """
        使用 OCR 在截图中查找指定文本
        
        采用渐进式搜索策略 + 帧级缓存优化速度：
        1. 如果指定了 region，直接对该区域做 OCR
        2. 如果未指定 region（全图搜索）：
           a. 先检查帧缓存中已有的 OCR 结果
           b. 按优先区域渐进式扫描，每个区域结果都缓存
           c. 所有优先区域都没找到，回退全图 OCR
        
        同一帧内多次查找不同文本，只需做一次 OCR（~1-2s），后续 0s

        Args:
            screenshot: 截图
            text: 要查找的文本
            region: 搜索区域 (x1, y1, x2, y2)，None 使用渐进式搜索
            exact_match: 是否精确匹配文本

        Returns:
            匹配到的 UIElement，未找到返回 None
        """
        if screenshot is None or self.ocr is None:
            return None

        # 如果指定了搜索区域，直接对该区域做 OCR（带缓存）
        if region is not None:
            x1, y1, x2, y2 = region
            h, w = screenshot.shape[:2]
            x1 = max(0, min(x1, w))
            y1 = max(0, min(y1, h))
            x2 = max(x1 + 1, min(x2, w))
            y2 = max(y1 + 1, min(y2, h))
            search_img = screenshot[y1:y2, x1:x2]

            result = self._ocr_with_cache(search_img)
            if not result or not result[0]:
                return None
            return self._parse_ocr_result(result[0], text, exact_match, offset_x=x1, offset_y=y1)

        # === 文本感知的渐进式搜索 + 帧级缓存 ===
        self._ensure_frame_cache(screenshot)
        
        # 第一步：检查帧缓存中已有的 OCR 结果（同帧内之前的查找已缓存）
        for region_key, (ocr_result, ox, oy) in UIDetector._ocr_frame_results.items():
            if ocr_result is not None:
                element = self._parse_ocr_result(ocr_result, text, exact_match, offset_x=ox, offset_y=oy)
                if element:
                    logger.debug(f"OCR 帧缓存命中 '{text}' (区域: {region_key})")
                    return element

        # 第二步：根据文本内容决定区域搜索顺序
        search_order = self._get_region_order(text)
        
        for region_name in search_order:
            if region_name in UIDetector._ocr_frame_results:
                continue  # 已在第一步检查过
            
            region_bounds = self.OCR_NAMED_REGIONS.get(region_name)
            if region_bounds is None:
                continue
            
            rx1, ry1, rx2, ry2 = region_bounds
            ocr_result, ox, oy = self._ocr_region_cached(screenshot, region_name, rx1, ry1, rx2, ry2)
            if ocr_result is not None:
                element = self._parse_ocr_result(ocr_result, text, exact_match, offset_x=ox, offset_y=oy)
                if element:
                    logger.debug(f"OCR 在区域 '{region_name}' 中找到 '{text}'")
                    return element

        # 第三步：所有优先区域都没找到，回退全图 OCR
        if 'full' not in UIDetector._ocr_frame_results:
            logger.debug(f"OCR 优先区域未找到 '{text}'，回退全图搜索")
            ocr_result, ox, oy = self._ocr_region_cached(
                screenshot, 'full', 0, 0, screenshot.shape[1], screenshot.shape[0]
            )
            if ocr_result is not None:
                element = self._parse_ocr_result(ocr_result, text, exact_match, offset_x=ox, offset_y=oy)
                if element:
                    return element

        return None

    def find_texts(
        self,
        screenshot: np.ndarray,
        texts: List[str],
        region: Optional[Tuple[int, int, int, int]] = None,
        exact_match: bool = False
    ) -> Dict[str, Optional['UIElement']]:
        """
        使用 OCR 在截图中同时查找多个文本
        
        复用帧级缓存，一次 OCR 扫描即可查找所有文本，
        比多次调用 find_text 更高效。

        Args:
            screenshot: 截图
            texts: 要查找的文本列表
            region: 搜索区域 (x1, y1, x2, y2)，None 使用渐进式搜索
            exact_match: 是否精确匹配文本

        Returns:
            {文本: UIElement 或 None} 字典
        """
        results = {t: None for t in texts}
        
        if screenshot is None or self.ocr is None or not texts:
            return results
        
        # 逐个调用 find_text（帧级缓存保证同帧内只做一次 OCR）
        for text in texts:
            element = self.find_text(screenshot, text, region=region, exact_match=exact_match)
            results[text] = element
        
        return results

    def _get_region_order(self, text: str) -> List[str]:
        """
        根据文本内容决定区域搜索顺序
        
        通过 TEXT_REGION_HINTS 映射表匹配文本关键词，
        返回最可能命中的区域排在前面的搜索顺序。
        未匹配到则使用默认顺序。
        """
        # 精确匹配优先，再子串匹配
        if text in self.TEXT_REGION_HINTS:
            hint_regions = self.TEXT_REGION_HINTS[text]
        else:
            # 子串匹配：检查 text 是否包含某个关键词
            hint_regions = None
            for keyword, regions in self.TEXT_REGION_HINTS.items():
                if keyword in text:
                    hint_regions = regions
                    break
        
        if hint_regions:
            # 提示区域排在前面，其余默认区域补充在后面（去重）
            order = list(hint_regions)
            for name in self.OCR_DEFAULT_ORDER:
                if name not in order:
                    order.append(name)
            return order
        
        return list(self.OCR_DEFAULT_ORDER)

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
