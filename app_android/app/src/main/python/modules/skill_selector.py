# -*- coding: utf-8 -*-
"""
技能选择模块 (Android 版)
肉鸽游戏核心功能 - 技能选择决策

功能：
- 检测可选技能选项
- 基于优先级规则选择最优技能
- 支持自定义优先级配置
- 记录选择历史用于学习

使用场景：
- 战斗结束后的技能选择
- 商店物品选择
- 路线选择
"""

import cv2
import numpy as np
import logging
import json
from typing import Dict, Any, Optional, List, Tuple
from dataclasses import dataclass, field
from enum import Enum
from collections import defaultdict

from modules.template_matcher import TemplateMatcher, MatchResult
from modules.ui_detector import UIDetector, UIState

logger = logging.getLogger(__name__)


class SkillType(Enum):
    """技能类型"""
    ATTACK = "attack"       # 攻击类
    DEFENSE = "defense"     # 防御类
    HEAL = "heal"           # 治疗类
    UTILITY = "utility"     # 辅助类
    PASSIVE = "passive"     # 被动类
    UNKNOWN = "unknown"     # 未知


@dataclass
class SkillOption:
    """技能选项"""
    index: int                          # 选项索引 (0, 1, 2, ...)
    position: Tuple[int, int]           # 中心位置 (x, y)
    skill_type: SkillType = SkillType.UNKNOWN
    skill_name: str = ""                # 技能名称（如果识别到）
    priority: int = 0                   # 优先级分数
    confidence: float = 0.0             # 检测置信度
    details: Dict[str, Any] = field(default_factory=dict)


@dataclass
class SelectionResult:
    """选择结果"""
    selected: SkillOption               # 选中的技能
    all_options: List[SkillOption]      # 所有选项
    reason: str                         # 选择理由


class SkillSelector:
    """技能选择器 - 基于优先级规则"""

    # 默认技能优先级配置
    DEFAULT_PRIORITIES = {
        # 攻击类 - 高优先级
        'attack_boost': 100,
        'damage_increase': 95,
        'critical_boost': 90,
        'attack_speed': 85,

        # 治疗类 - 中高优先级
        'heal': 80,
        'lifesteal': 75,
        'regeneration': 70,

        # 防御类 - 中优先级
        'defense_boost': 65,
        'damage_reduction': 60,
        'shield': 55,

        # 辅助类 - 低优先级
        'speed_boost': 50,
        'cooldown_reduction': 45,
        'mana_regen': 40,

        # 通用
        'unknown': 30,
    }

    def __init__(self, config: Dict[str, Any] = None):
        """
        初始化技能选择器

        Args:
            config: 配置字典，包含：
                - priorities: 技能优先级配置
                - selection_region: 选择区域 [x1, y1, x2, y2]
                - max_options: 最大选项数量
        """
        self.config = config or {}

        # 优先级配置
        self.priorities = self.config.get('priorities', self.DEFAULT_PRIORITIES.copy())

        # 选择区域
        self.selection_region = self.config.get('selection_region', [400, 200, 880, 520])

        # 最大选项数
        self.max_options = self.config.get('max_options', 4)

        # 模板匹配器
        self.matcher = TemplateMatcher()

        # UI 检测器
        self.ui_detector = UIDetector()

        # 选择历史
        self._selection_history: List[SelectionResult] = []
        self._history_file = '/sdcard/skill_history.json'

        logger.info(f"SkillSelector initialized, region={self.selection_region}")

    def analyze_options(
        self,
        screenshot: np.ndarray,
        skill_templates: Dict[str, str] = None
    ) -> List[SkillOption]:
        """
        分析屏幕上的技能选项

        Args:
            screenshot: 屏幕截图 (BGR)
            skill_templates: 技能模板路径字典 {'skill_name': '/path/to/template.png'}

        Returns:
            List[SkillOption]: 检测到的技能选项列表
        """
        if screenshot is None:
            return []

        options = []
        region = self.selection_region

        # 检查是否在技能选择界面
        ui_result = self.ui_detector.detect_state(screenshot)
        if ui_result.state != UIState.SKILL_SELECT:
            logger.debug(f"Not in skill selection UI, state={ui_result.state}")
            # 仍然尝试检测，可能检测器不准确

        # 方法1：模板匹配已知技能
        if skill_templates:
            options = self._detect_by_templates(screenshot, skill_templates)

        # 方法2：基于区域的默认检测
        if not options:
            options = self._detect_by_region(screenshot)

        return options

    def _detect_by_templates(
        self,
        screenshot: np.ndarray,
        skill_templates: Dict[str, str]
    ) -> List[SkillOption]:
        """通过模板匹配检测技能"""
        options = []

        for skill_name, template_path in skill_templates.items():
            match = self.matcher.match_template_file(
                screenshot, template_path, threshold=0.75
            )

            if match:
                skill_type = self._get_skill_type(skill_name)
                priority = self.priorities.get(skill_name, self.priorities.get('unknown', 30))

                option = SkillOption(
                    index=len(options),
                    position=(match.x, match.y),
                    skill_type=skill_type,
                    skill_name=skill_name,
                    priority=priority,
                    confidence=match.confidence
                )
                options.append(option)
                logger.debug(f"Detected skill: {skill_name} at ({match.x}, {match.y}), priority={priority}")

        return options

    def _detect_by_region(
        self,
        screenshot: np.ndarray
    ) -> List[SkillOption]:
        """基于区域分割检测技能选项"""
        options = []
        region = self.selection_region

        x1, y1, x2, y2 = region
        region_width = x2 - x1
        region_height = y2 - y1

        # 假设技能卡均匀分布
        card_width = region_width // self.max_options
        card_gap = card_width // 10  # 10% 间隙

        for i in range(self.max_options):
            card_x = x1 + i * card_width + card_width // 2
            card_y = y1 + region_height // 2

            # 提取卡片区域
            card_region = screenshot[
                y1:y2,
                x1 + i * card_width:x1 + (i + 1) * card_width - card_gap
            ]

            if card_region.size == 0:
                continue

            # 分析卡片特征
            skill_type = self._analyze_card_type(card_region)
            priority = self._estimate_priority(skill_type)

            option = SkillOption(
                index=i,
                position=(card_x, card_y),
                skill_type=skill_type,
                priority=priority,
                confidence=0.5  # 默认置信度
            )
            options.append(option)

        logger.debug(f"Detected {len(options)} skill options by region")
        return options

    def _analyze_card_type(self, card_image: np.ndarray) -> SkillType:
        """分析卡片类型（基于颜色特征）"""
        if card_image.size == 0:
            return SkillType.UNKNOWN

        # 转换到 HSV
        try:
            hsv = cv2.cvtColor(card_image, cv2.COLOR_BGR2HSV)
        except:
            return SkillType.UNKNOWN

        # 计算主要颜色
        h_mean = np.mean(hsv[:, :, 0])
        s_mean = np.mean(hsv[:, :, 1])
        v_mean = np.mean(hsv[:, :, 2])

        # 基于色调判断类型
        # 红色 (0-15, 160-180): 攻击
        # 绿色 (50-70): 治疗
        # 蓝色 (100-130): 防御
        # 黄色 (20-35): 辅助

        if h_mean < 15 or h_mean > 160:
            return SkillType.ATTACK
        elif 20 < h_mean < 35:
            return SkillType.UTILITY
        elif 50 < h_mean < 70:
            return SkillType.HEAL
        elif 100 < h_mean < 130:
            return SkillType.DEFENSE

        return SkillType.UNKNOWN

    def _get_skill_type(self, skill_name: str) -> SkillType:
        """根据技能名称推断类型"""
        name_lower = skill_name.lower()

        if any(x in name_lower for x in ['attack', 'damage', 'critical', 'power']):
            return SkillType.ATTACK
        elif any(x in name_lower for x in ['heal', 'life', 'regen', 'recovery']):
            return SkillType.HEAL
        elif any(x in name_lower for x in ['defense', 'shield', 'protect', 'armor']):
            return SkillType.DEFENSE
        elif any(x in name_lower for x in ['speed', 'cooldown', 'mana', 'utility']):
            return SkillType.UTILITY
        elif any(x in name_lower for x in ['passive', 'aura']):
            return SkillType.PASSIVE

        return SkillType.UNKNOWN

    def _estimate_priority(self, skill_type: SkillType) -> int:
        """根据技能类型估算优先级"""
        type_priorities = {
            SkillType.ATTACK: 80,
            SkillType.HEAL: 70,
            SkillType.DEFENSE: 60,
            SkillType.UTILITY: 50,
            SkillType.PASSIVE: 40,
            SkillType.UNKNOWN: 30,
        }
        return type_priorities.get(skill_type, 30)

    def select_best(
        self,
        screenshot: np.ndarray,
        skill_templates: Dict[str, str] = None,
        override_priority: Dict[str, int] = None
    ) -> Optional[SelectionResult]:
        """
        选择最佳技能

        Args:
            screenshot: 屏幕截图
            skill_templates: 技能模板路径
            override_priority: 覆盖优先级配置

        Returns:
            SelectionResult: 选择结果，失败返回 None
        """
        # 合并优先级配置
        if override_priority:
            priorities = {**self.priorities, **override_priority}
        else:
            priorities = self.priorities

        # 分析选项
        options = self.analyze_options(screenshot, skill_templates)

        if not options:
            logger.warning("No skill options detected")
            return None

        # 更新优先级
        for opt in options:
            if opt.skill_name and opt.skill_name in priorities:
                opt.priority = priorities[opt.skill_name]

        # 排序
        options.sort(key=lambda o: o.priority, reverse=True)

        selected = options[0]
        reason = f"priority={selected.priority}, type={selected.skill_type.value}"

        result = SelectionResult(
            selected=selected,
            all_options=options,
            reason=reason
        )

        # 记录历史
        self._selection_history.append(result)

        logger.info(f"Selected skill: index={selected.index}, pos=({selected.x}, {selected.y}), {reason}")

        return result

    def click_selected(self, screenshot: np.ndarray, result: SelectionResult) -> bool:
        """
        点击选中的技能

        Args:
            screenshot: 屏幕截图（用于验证）
            result: 选择结果

        Returns:
            bool: 点击成功返回 True
        """
        import platform_bridge

        pos = result.selected.position
        logger.info(f"Clicking skill at ({pos[0]}, {pos[1]})")

        return platform_bridge.tap(pos[0], pos[1])

    # ============================================================================
    # 历史和学习
    # ============================================================================

    def save_history(self) -> bool:
        """保存选择历史到文件"""
        try:
            data = []
            for result in self._selection_history[-100:]:  # 只保存最近 100 条
                data.append({
                    'selected_name': result.selected.skill_name,
                    'selected_type': result.selected.skill_type.value,
                    'all_names': [o.skill_name for o in result.all_options],
                    'reason': result.reason
                })

            with open(self._history_file, 'w') as f:
                json.dump(data, f, indent=2)

            logger.debug(f"Saved {len(data)} selection records")
            return True

        except Exception as e:
            logger.error(f"Failed to save history: {e}")
            return False

    def load_history(self) -> List[Dict]:
        """加载选择历史"""
        try:
            with open(self._history_file, 'r') as f:
                return json.load(f)
        except:
            return []

    def get_stats(self) -> Dict[str, Any]:
        """获取选择统计"""
        if not self._selection_history:
            return {}

        type_counts = defaultdict(int)
        name_counts = defaultdict(int)

        for result in self._selection_history:
            type_counts[result.selected.skill_type.value] += 1
            if result.selected.skill_name:
                name_counts[result.selected.skill_name] += 1

        return {
            'total_selections': len(self._selection_history),
            'by_type': dict(type_counts),
            'by_name': dict(name_counts)
        }


# ============================================================================
# 路线选择器（类似技能选择）
# ============================================================================

class RouteSelector:
    """路线选择器 - 用于肉鸽路线决策"""

    # 路线优先级
    ROUTE_PRIORITIES = {
        'boss': 100,         # Boss 房间
        'elite': 80,         # 精英怪
        'shop': 70,          # 商店
        'treasure': 60,      # 宝箱
        'event': 50,         # 事件
        'rest': 40,          # 休息
        'normal': 30,        # 普通战斗
        'unknown': 20,
    }

    def __init__(self, config: Dict[str, Any] = None):
        self.config = config or {}
        self.priorities = self.config.get('route_priorities', self.ROUTE_PRIORITIES)
        self.matcher = TemplateMatcher()

    def detect_routes(
        self,
        screenshot: np.ndarray,
        route_templates: Dict[str, str] = None
    ) -> List[Dict[str, Any]]:
        """
        检测可用路线

        Args:
            screenshot: 屏幕截图
            route_templates: 路线模板 {'boss': '/path/to/boss.png', ...}

        Returns:
            List[Dict]: 路线列表 [{'type': 'boss', 'position': (x, y), 'priority': 100}, ...]
        """
        routes = []

        if route_templates is None:
            # 默认：假设有 2-3 条路线，分布在屏幕上
            routes = self._detect_default_routes(screenshot)
        else:
            # 模板匹配
            for route_type, template_path in route_templates.items():
                match = self.matcher.match_template_file(screenshot, template_path, 0.75)
                if match:
                    routes.append({
                        'type': route_type,
                        'position': (match.x, match.y),
                        'priority': self.priorities.get(route_type, 20),
                        'confidence': match.confidence
                    })

        # 按优先级排序
        routes.sort(key=lambda r: r['priority'], reverse=True)
        return routes

    def _detect_default_routes(self, screenshot: np.ndarray) -> List[Dict]:
        """默认路线检测（基于区域）"""
        h, w = screenshot.shape[:2]

        # 假设路线选择在屏幕上半部分
        routes = []
        num_routes = 3
        spacing = w // (num_routes + 1)

        for i in range(num_routes):
            x = spacing * (i + 1)
            y = h // 3

            # 提取区域分析类型
            region = screenshot[y-50:y+50, x-50:x+50]
            route_type = self._analyze_route_type(region)

            routes.append({
                'type': route_type,
                'position': (x, y),
                'priority': self.priorities.get(route_type, 20),
                'confidence': 0.5
            })

        return routes

    def _analyze_route_type(self, region: np.ndarray) -> str:
        """分析路线类型"""
        if region.size == 0:
            return 'unknown'

        # 基于颜色特征判断
        try:
            hsv = cv2.cvtColor(region, cv2.COLOR_BGR2HSV)
            h_mean = np.mean(hsv[:, :, 0])

            # 红色：Boss/精英
            if h_mean < 15 or h_mean > 160:
                return 'elite'
            # 金黄色：宝箱/商店
            elif 20 < h_mean < 35:
                return 'treasure'
            # 绿色：休息
            elif 50 < h_mean < 70:
                return 'rest'
            # 蓝色：事件
            elif 100 < h_mean < 130:
                return 'event'

        except:
            pass

        return 'normal'

    def select_best_route(
        self,
        screenshot: np.ndarray,
        route_templates: Dict[str, str] = None
    ) -> Optional[Dict]:
        """选择最佳路线"""
        routes = self.detect_routes(screenshot, route_templates)

        if not routes:
            return None

        return routes[0]


# ============================================================================
# 便捷函数
# ============================================================================

_default_selector: Optional[SkillSelector] = None


def get_selector(config: Dict[str, Any] = None) -> SkillSelector:
    """获取全局技能选择器实例"""
    global _default_selector
    if _default_selector is None:
        _default_selector = SkillSelector(config)
    return _default_selector


def select_skill(
    screenshot: np.ndarray,
    skill_templates: Dict[str, str] = None
) -> Optional[SelectionResult]:
    """便捷函数：选择最佳技能"""
    return get_selector().select_best(screenshot, skill_templates)