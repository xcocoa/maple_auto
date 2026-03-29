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
    SKILL_SELECT = "skill_select"     # 技能选择
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
        """
        self.config = config or {}
        self.template_threshold = self.config.get('template_threshold', 0.8)
        self.color_threshold = self.config.get('color_threshold', 0.7)

        # UI 区域定义（基于 1280x720，由 Config 缩放）
        self.regions = self.config.get('ui_regions', {
            'skill_select': [400, 200, 880, 520],      # 技能选择区域
            'shop': [200, 150, 1080, 570],             # 商店区域
            'hp_bar': [50, 50, 200, 70],               # 血条区域
            'mp_bar': [50, 75, 200, 95],               # 蓝条区域
            'dialog': [300, 400, 980, 600],            # 对话框区域
            'message': [400, 100, 880, 200],           # 消息区域
        })

        # 模板匹配器
        self.matcher = TemplateMatcher({'default_threshold': self.template_threshold})

        # 检测历史（用于平滑状态）
        self._state_history: List[UIState] = []
        self._history_size = 5

        logger.info(f"UIDetector initialized, threshold={self.template_threshold}")

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
            template_paths: 模板路径字典，如 {'main_menu': '/path/to/template.png'}

        Returns:
            UIDetectionResult: 检测结果
        """
        if screenshot is None:
            return UIDetectionResult(UIState.UNKNOWN, 0.0)

        # 按优先级检测各个状态
        detection_methods = [
            (UIState.GAME_OVER, self._detect_game_over),
            (UIState.SKILL_SELECT, self._detect_skill_selection),
            (UIState.SHOP, self._detect_shop),
            (UIState.DIALOG, self._detect_dialog),
            (UIState.MAIN_MENU, self._detect_main_menu),
            (UIState.IN_GAME, self._detect_in_game),
        ]

        for state, method in detection_methods:
            try:
                result = method(screenshot, template_paths)
                if result is not None:
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
        # 方法1：模板匹配
        if template_paths and 'main_menu' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['main_menu'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.MAIN_MENU, match.confidence)

        # 方法2：颜色特征检测（深色背景 + 特定 UI 元素）
        # 主菜单通常有明显的标题区域
        top_region = screenshot[100:250, 400:880]
        mean_brightness = np.mean(top_region)

        # 检测是否有"开始游戏"按钮区域（通常是明亮的按钮）
        button_region = screenshot[400:500, 500:780]
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
        # 方法1：模板匹配
        if template_paths and 'skill_select' in template_paths:
            match = self.matcher.match_template_file(
                screenshot, template_paths['skill_select'], self.template_threshold
            )
            if match:
                return UIDetectionResult(UIState.SKILL_SELECT, match.confidence)

        # 方法2：特征检测
        # 技能选择界面通常有 2-4 个技能卡片
        region = self.regions.get('skill_select', [400, 200, 880, 520])
        skill_region = screenshot[region[1]:region[3], region[0]:region[2]]

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
        # 检测是否有小地图区域（游戏中特征）
        minimap_region = screenshot[0:180, 960:1280]

        if minimap_region.size == 0:
            return None

        # 小地图区域应该有色彩变化（不是纯黑或纯白）
        std_dev = np.std(minimap_region)
        if std_dev > 30:
            return UIDetectionResult(UIState.IN_GAME, 0.7)

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