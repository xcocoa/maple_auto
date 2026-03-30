# -*- coding: utf-8 -*-
"""
UI 状态检测模块 (Android 版)
检测游戏界面状态，支持状态机决策

功能：
- 主菜单检测
- 技能选择界面检测
- 商店界面检测
- 游戏结束检测
- 对话框检测
- 血条/蓝条检测

使用场景：
- 引导状态机正确切换
- 自动化游戏流程
"""

import cv2
import numpy as np
import logging
from typing import Dict, Any, Optional, List, Tuple
from dataclasses import dataclass
from enum import Enum

from modules.template_matcher import TemplateMatcher, MatchResult

logger = logging.getLogger(__name__)


class UIState(Enum):
    """UI 状态枚举"""
    UNKNOWN = "unknown"
    MAIN_MENU = "main_menu"           # 主菜单
    IN_GAME = "in_game"               # 游戏中
    IN_GAME_COMBAT = "in_game_combat" # 游戏战斗中
    SKILL_SELECT = "skill_select"     # 技能选择
    ROUTE_SELECT = "route_select"     # 路线选择
    GAME_COMPLETE = "game_complete"   # 游戏完成/结算
    SHOP = "shop"                     # 商店
    DIALOG = "dialog"                 # 对话框
    GAME_OVER = "game_over"           # 游戏结束
    LOADING = "loading"               # 加载中


@dataclass
class UIDetectionResult:
    """UI 检测结果"""
    state: UIState
    confidence: float
    details: Dict[str, Any] = None

    def __post_init__(self):
        if self.details is None:
            self.details = {}


class UIDetector:
    """UI 状态检测器"""

    def __init__(self, config: Dict[str, Any] = None):
        """
        初始化 UI 检测器

        Args:
            config: 配置字典，包含：
                - template_threshold: 模板匹配阈值
                - color_threshold: 颜色匹配阈值
                - ui_regions: UI 区域定义
                - templates: 模板路径字典
        """
        self.config = config or {}
        self.template_threshold = self.config.get('template_threshold', 0.8)
        self.color_threshold = self.config.get('color_threshold', 0.7)

        # UI 区域定义（基于 1280x720，由 Config 缩放）
        self.regions = self.config.get('ui_regions', {
            'skill_select': [400, 200, 880, 520],
            'shop': [200, 150, 1080, 570],
            'hp_bar': [50, 50, 200, 70],
            'mp_bar': [50, 75, 200, 95],
            'dialog': [300, 400, 980, 600],
            'message': [400, 100, 880, 200],
        })

        # 模板路径
        self.template_paths = self.config.get('templates', {})

        # 模板匹配器
        self.matcher = TemplateMatcher({'default_threshold': self.template_threshold})

        # 预加载模板（可选，提高性能）
        self._loaded_templates: Dict[str, np.ndarray] = {}
        self._load_templates()

        # 检测历史（用于平滑状态）
        self._state_history: List[UIState] = []
        self._history_size = 5

        logger.info(f"UIDetector initialized, threshold={self.template_threshold}, templates={len(self.template_paths)}")

    def _load_templates(self):
        """预加载模板图像"""
        import os
        for name, path in self.template_paths.items():
            if os.path.exists(path):
                self._loaded_templates[name] = cv2.imread(path)
                logger.debug(f"Loaded template: {name} from {path}")
            else:
                logger.warning(f"Template not found: {path}")

    def _add_to_history(self, state: UIState):
        """添加状态到历史"""
        self._state_history.append(state)
        if len(self._state_history) > self._history_size:
            self._state_history.pop(0)

    def _get_smoothed_state(self, current: UIState) -> UIState:
        """平滑状态（连续多次相同才确认）"""
        if len(self._state_history) < 2:
            return current

        # 如果最近 3 次都相同，确认状态
        recent = self._state_history[-3:]
        if len(recent) == 3 and all(s == current for s in recent):
            return current

        # 否则返回上一次确认的状态
        return self._state_history[-1] if self._state_history else current

    def detect_state(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str] = None
    ) -> UIDetectionResult:
        """
        检测当前 UI 状态

        Args:
            screenshot: 屏幕截图 (BGR)
            template_paths: 模板路径字典（可选，默认使用配置中的路径）

        Returns:
            UIDetectionResult: 检测结果
        """
        if screenshot is None:
            return UIDetectionResult(UIState.UNKNOWN, 0.0)

        # 使用传入的模板路径或默认配置
        paths = template_paths or self.template_paths

        # 按优先级检测各个状态（高优先级状态优先检测）
        # 注意：skill_select 在 main_menu 之前检测，避免误匹配
        detection_methods = [
            (UIState.GAME_COMPLETE, self._detect_game_complete),
            (UIState.ROUTE_SELECT, self._detect_route_select),
            (UIState.SKILL_SELECT, self._detect_skill_selection),
            (UIState.IN_GAME_COMBAT, self._detect_in_game_combat),
            (UIState.DIALOG, self._detect_dialog),
            (UIState.SHOP, self._detect_shop),
            (UIState.MAIN_MENU, self._detect_main_menu),
            (UIState.IN_GAME, self._detect_in_game),
            (UIState.GAME_OVER, self._detect_game_over),
        ]

        for state, method in detection_methods:
            try:
                result = method(screenshot, paths)
                if result is not None and result.confidence >= self.template_threshold:
                    self._add_to_history(state)
                    return result
            except Exception as e:
                logger.debug(f"Detection method for {state.value} failed: {e}")

        self._add_to_history(UIState.UNKNOWN)
        return UIDetectionResult(UIState.UNKNOWN, 0.0)

    def _detect_main_menu(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测主菜单"""
        # 方法1：模板匹配（优先）
        template = self._loaded_templates.get('main_menu')
        if template is not None:
            match = self.matcher.match(screenshot, template, self.template_threshold)
            if match:
                return UIDetectionResult(UIState.MAIN_MENU, match.confidence)

        # 方法2：模板文件路径匹配
        if template_paths and 'main_menu' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['main_menu'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.MAIN_MENU, match.confidence)

        # 方法3：颜色特征检测（深色背景 + 特定 UI 元素）
        h, w = screenshot.shape[:2]
        # 主菜单通常有明显的标题区域
        top_region = screenshot[100:min(250, h), 400:min(880, w)]
        if top_region.size > 0:
            mean_brightness = np.mean(top_region)

            # 检测是否有"开始游戏"按钮区域（通常是明亮的按钮）
            button_region = screenshot[max(400, h//2):min(500, h*2//3), 500:min(780, w)]
            if button_region.size > 0:
                button_brightness = np.mean(button_region)

                if mean_brightness < 100 and button_brightness > 150:
                    return UIDetectionResult(UIState.MAIN_MENU, 0.6)

        return None

    def _detect_skill_selection(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测技能选择界面"""
        # 方法1：预加载模板匹配（使用更高阈值 0.9 区分相似界面）
        template = self._loaded_templates.get('skill_select')
        if template is not None:
            match = self.matcher.match(screenshot, template, 0.9)
            if match:
                return UIDetectionResult(UIState.SKILL_SELECT, match.confidence)

        # 方法2：模板文件路径匹配
        if template_paths and 'skill_select' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['skill_select'], 0.9
            )
            if match:
                return UIDetectionResult(UIState.SKILL_SELECT, match.confidence)

        # 方法3：技能卡片检测（技能选择界面特有）
        template_card = self._loaded_templates.get('skill_card_1')
        if template_card is not None:
            match = self.matcher.match(screenshot, template_card, self.template_threshold)
            if match:
                return UIDetectionResult(UIState.SKILL_SELECT, match.confidence)

        # 方法4：特征检测
        h, w = screenshot.shape[:2]
        # 技能选择界面通常有 2-4 个技能卡片
        region = self.regions.get('skill_select', [400, 200, 880, 520])
        # 安全裁剪
        y1, y2 = max(0, region[1]), min(h, region[3])
        x1, x2 = max(0, region[0]), min(w, region[2])
        skill_region = screenshot[y1:y2, x1:x2]

        if skill_region.size == 0:
            return None

        # 检测卡片边缘（技能卡通常有明显的边框）
        gray = cv2.cvtColor(skill_region, cv2.COLOR_BGR2GRAY)
        edges = cv2.Canny(gray, 50, 150)

        # 统计垂直边缘数量
        vertical_edges = np.sum(edges, axis=0)
        edge_peaks = np.sum(vertical_edges > np.mean(vertical_edges) * 2)

        # 技能选择界面有多个明显的垂直边缘（卡片分隔）
        if edge_peaks > 10:
            return UIDetectionResult(UIState.SKILL_SELECT, 0.7)

        return None

    def _detect_shop(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测商店界面"""
        if template_paths and 'shop' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['shop'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.SHOP, match.confidence)

        # 商店通常有商品网格
        region = self.regions.get('shop', [200, 150, 1080, 570])
        shop_region = screenshot[region[1]:region[3], region[0]:region[2]]

        if shop_region.size == 0:
            return None

        # 检测网格特征
        gray = cv2.cvtColor(shop_region, cv2.COLOR_BGR2GRAY)
        edges = cv2.Canny(gray, 30, 100)

        # 统计水平和垂直边缘
        horizontal_edges = np.sum(edges, axis=1)
        vertical_edges = np.sum(edges, axis=0)

        h_peaks = np.sum(horizontal_edges > np.mean(horizontal_edges) * 1.5)
        v_peaks = np.sum(vertical_edges > np.mean(vertical_edges) * 1.5)

        # 商店网格有规则的边缘分布
        if h_peaks > 5 and v_peaks > 5:
            return UIDetectionResult(UIState.SHOP, 0.6)

        return None

    def _detect_dialog(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测对话框"""
        region = self.regions.get('dialog', [300, 400, 980, 600])
        dialog_region = screenshot[region[1]:region[3], region[0]:region[2]]

        if dialog_region.size == 0:
            return None

        # 对话框通常有明显的边框
        gray = cv2.cvtColor(dialog_region, cv2.COLOR_BGR2GRAY)
        edges = cv2.Canny(gray, 100, 200)

        # 检测边框
        top_edge = np.sum(edges[0:5, :])
        bottom_edge = np.sum(edges[-5:, :])
        left_edge = np.sum(edges[:, 0:5])
        right_edge = np.sum(edges[:, -5:])

        border_strength = (top_edge + bottom_edge + left_edge + right_edge) / edges.size

        if border_strength > 0.1:
            return UIDetectionResult(UIState.DIALOG, 0.7)

        return None

    def _detect_game_over(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测游戏结束界面"""
        if template_paths and 'game_over' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['game_over'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.GAME_OVER, match.confidence)

        # 游戏结束通常有明显的提示文字区域
        center_region = screenshot[250:450, 400:880]
        mean_brightness = np.mean(center_region)

        # 游戏结束界面通常较暗，中间有明亮文字
        if mean_brightness < 80:
            # 检测是否有高亮区域（文字）
            _, binary = cv2.threshold(
                cv2.cvtColor(center_region, cv2.COLOR_BGR2GRAY),
                200, 255, cv2.THRESH_BINARY
            )
            bright_ratio = np.sum(binary > 0) / binary.size

            if 0.05 < bright_ratio < 0.3:
                return UIDetectionResult(UIState.GAME_OVER, 0.6)

        return None

    def _detect_in_game(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测是否在游戏中"""
        h, w = screenshot.shape[:2]
        # 检测是否有小地图区域（游戏中特征）
        minimap_region = screenshot[0:min(180, h//4), max(960, w*3//4):w]

        if minimap_region.size == 0:
            return None

        # 小地图区域应该有色彩变化（不是纯黑或纯白）
        std_dev = np.std(minimap_region)
        if std_dev > 30:
            return UIDetectionResult(UIState.IN_GAME, 0.7)

        return None

    def _detect_in_game_combat(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测是否在游戏战斗中（有技能按钮）"""
        h, w = screenshot.shape[:2]

        # 检测技能按钮区域（底部）
        template = self._loaded_templates.get('skill_buttons')
        if template is not None:
            match = self.matcher.match(screenshot, template, self.template_threshold)
            if match:
                return UIDetectionResult(UIState.IN_GAME_COMBAT, match.confidence)

        # 颜色特征检测：底部有亮色技能按钮
        bottom_region = screenshot[max(h*3//4, h-120):h, 0:w]
        if bottom_region.size > 0:
            brightness = np.mean(bottom_region)
            if brightness > 100:  # 技能按钮区域通常较亮
                # 同时检测小地图确认是游戏中
                minimap_region = screenshot[0:min(120, h//4), max(w*3//4, w-214):w]
                if minimap_region.size > 0 and np.std(minimap_region) > 30:
                    return UIDetectionResult(UIState.IN_GAME_COMBAT, 0.6)

        return None

    def _detect_game_complete(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测游戏完成/结算界面"""
        # 优先使用模板匹配
        template = self._loaded_templates.get('game_complete')
        if template is not None:
            match = self.matcher.match(screenshot, template, self.template_threshold)
            if match:
                return UIDetectionResult(UIState.GAME_COMPLETE, match.confidence)

        if template_paths and 'game_complete' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['game_complete'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.GAME_COMPLETE, match.confidence)

        # 颜色特征：完成界面通常是高亮度白色背景
        h, w = screenshot.shape[:2]
        bottom_region = screenshot[max(h*3//4, h-80):h, 0:w]
        if bottom_region.size > 0:
            brightness = np.mean(bottom_region)
            if brightness > 180:  # 底部区域非常亮（白色确认按钮）
                # 检测顶部是否也亮（结算界面特征）
                top_region = screenshot[0:min(h//4, 120), 0:w]
                if top_region.size > 0 and np.mean(top_region) > 150:
                    return UIDetectionResult(UIState.GAME_COMPLETE, 0.5)

        return None

    def _detect_route_select(
        self,
        screenshot: np.ndarray,
        template_paths: Dict[str, str]
    ) -> Optional[UIDetectionResult]:
        """检测路线选择界面"""
        # 优先使用模板匹配
        template = self._loaded_templates.get('route_select')
        if template is not None:
            match = self.matcher.match(screenshot, template, self.template_threshold)
            if match:
                return UIDetectionResult(UIState.ROUTE_SELECT, match.confidence)

        if template_paths and 'route_select' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['route_select'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.ROUTE_SELECT, match.confidence)

        # 特征检测：路线选择有多个路线图标
        h, w = screenshot.shape[:2]
        center_region = screenshot[h//3:h*2//3, w//4:w*3//4]
        if center_region.size > 0:
            gray = cv2.cvtColor(center_region, cv2.COLOR_BGR2GRAY)
            edges = cv2.Canny(gray, 50, 150)

            # 检测多个圆形/方形路线图标
            edge_density = np.sum(edges > 0) / edges.size
            if 0.02 < edge_density < 0.08:
                return UIDetectionResult(UIState.ROUTE_SELECT, 0.5)

        return None

    # ============================================================================
    # 血条/蓝条检测
    # ============================================================================

    def detect_hp_bar(
        self,
        screenshot: np.ndarray,
        bar_color_lower: Tuple[int, int, int] = (0, 100, 100),
        bar_color_upper: Tuple[int, int, int] = (10, 255, 255)
    ) -> Optional[float]:
        """
        检测血条百分比

        Args:
            screenshot: 屏幕截图
            bar_color_lower: 血条颜色下界 (HSV)
            bar_color_upper: 血条颜色上界 (HSV)

        Returns:
            float: 血量百分比 (0.0-1.0)，检测失败返回 None
        """
        region = self.regions.get('hp_bar', [50, 50, 200, 70])
        bar_region = screenshot[region[1]:region[3], region[0]:region[2]]

        if bar_region.size == 0:
            return None

        try:
            hsv = cv2.cvtColor(bar_region, cv2.COLOR_BGR2HSV)
            mask = cv2.inRange(hsv, np.array(bar_color_lower), np.array(bar_color_upper))

            filled = np.sum(mask > 0)
            total = mask.size

            return filled / total if total > 0 else None

        except Exception as e:
            logger.debug(f"HP bar detection failed: {e}")
            return None

    def detect_mp_bar(
        self,
        screenshot: np.ndarray,
        bar_color_lower: Tuple[int, int, int] = (100, 100, 100),
        bar_color_upper: Tuple[int, int, int] = (130, 255, 255)
    ) -> Optional[float]:
        """
        检测蓝条百分比

        Args:
            screenshot: 屏幕截图
            bar_color_lower: 蓝条颜色下界 (HSV)
            bar_color_upper: 蓝条颜色上界 (HSV)

        Returns:
            float: 蓝量百分比 (0.0-1.0)，检测失败返回 None
        """
        region = self.regions.get('mp_bar', [50, 75, 200, 95])
        bar_region = screenshot[region[1]:region[3], region[0]:region[2]]

        if bar_region.size == 0:
            return None

        try:
            hsv = cv2.cvtColor(bar_region, cv2.COLOR_BGR2HSV)
            mask = cv2.inRange(hsv, np.array(bar_color_lower), np.array(bar_color_upper))

            filled = np.sum(mask > 0)
            total = mask.size

            return filled / total if total > 0 else None

        except Exception as e:
            logger.debug(f"MP bar detection failed: {e}")
            return None

    # ============================================================================
    # 按钮检测
    # ============================================================================

    def find_button(
        self,
        screenshot: np.ndarray,
        button_name: str,
        template_paths: Dict[str, str]
    ) -> Optional[MatchResult]:
        """
        查找按钮位置

        Args:
            screenshot: 屏幕截图
            button_name: 按钮名称
            template_paths: 模板路径字典

        Returns:
            MatchResult: 按钮位置，未找到返回 None
        """
        key = f'button_{button_name}'
        if key not in template_paths:
            logger.debug(f"No template for button: {button_name}")
            return None

        return self.matcher.match_template_file(
            screenshot, template_paths[key], self.template_threshold
        )

    def is_button_visible(
        self,
        screenshot: np.ndarray,
        button_name: str,
        template_paths: Dict[str, str]
    ) -> bool:
        """检查按钮是否可见"""
        return self.find_button(screenshot, button_name, template_paths) is not None


# ============================================================================
# 便捷函数
# ============================================================================

_default_detector: Optional[UIDetector] = None


def get_detector(config: Dict[str, Any] = None) -> UIDetector:
    """获取全局 UI 检测器实例"""
    global _default_detector
    if _default_detector is None:
        _default_detector = UIDetector(config)
    return _default_detector


def detect_ui_state(
    screenshot: np.ndarray,
    template_paths: Dict[str, str] = None
) -> UIDetectionResult:
    """便捷函数：检测 UI 状态"""
    return get_detector().detect_state(screenshot, template_paths)