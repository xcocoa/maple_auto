# -*- coding: utf-8 -*-
"""
小地图检测模块
检测玩家、怪物、NPC 位置
支持：自适应HSV阈值、改进形态学处理、置信度过滤
"""

import cv2
import time
import numpy as np
import logging
from collections import deque
from typing import Optional, List, Tuple, Dict, Any
from dataclasses import dataclass

from core.adb import ADB

logger = logging.getLogger('AutoRogue')


@dataclass
class MapObject:
    """地图对象基类"""
    x: int
    y: int
    area: float
    confidence: float = 1.0


class AdaptiveColorRange:
    """自适应颜色范围 - 根据历史检测结果自动微调阈值"""

    def __init__(self, lower: np.ndarray, upper: np.ndarray,
                 history_size: int = 30, adapt_delta: int = 5):
        self.base_lower = lower.copy()
        self.base_upper = upper.copy()
        self.current_lower = lower.copy()
        self.current_upper = upper.copy()

        self._history: deque = deque(maxlen=history_size)
        self._adapt_delta = adapt_delta
        self._last_calibration = 0.0
        self._calibration_interval = 300.0  # 5分钟重新校准

    def record(self, detected_hsv_values: List[np.ndarray]) -> None:
        """记录检测到的HSV值用于自适应调整"""
        for val in detected_hsv_values:
            self._history.append(val)

    def calibrate(self) -> None:
        """基于历史检测结果校准颜色范围"""
        now = time.time()
        if now - self._last_calibration < self._calibration_interval:
            return
        self._last_calibration = now

        if len(self._history) < 10:
            return

        # 计算检测到的HSV值的均值和标准差
        hsv_arr = np.array(list(self._history))
        mean_hsv = np.mean(hsv_arr, axis=0)
        std_hsv = np.std(hsv_arr, axis=0)

        # 在基础范围基础上微调（不超过 adapt_delta）
        delta = np.clip(std_hsv, 0, self._adapt_delta).astype(np.int32)
        self.current_lower = np.maximum(
            self.base_lower - delta, np.array([0, 0, 0])
        ).astype(np.uint8)
        self.current_upper = np.minimum(
            self.base_upper + delta, np.array([180, 255, 255])
        ).astype(np.uint8)

    def reset(self) -> None:
        """重置为基础范围"""
        self.current_lower = self.base_lower.copy()
        self.current_upper = self.base_upper.copy()
        self._history.clear()

    @property
    def lower(self) -> np.ndarray:
        return self.current_lower

    @property
    def upper(self) -> np.ndarray:
        return self.current_upper


class MinimapDetector:
    """小地图检测器 - 带自适应颜色和置信度过滤"""

    # 置信度阈值
    MIN_CONFIDENCE = 0.6

    def __init__(self, config: Dict[str, Any]):
        self.config = config
        self.x1 = config.get('x1', 900)
        self.y1 = config.get('y1', 20)
        self.x2 = config.get('x2', 1260)
        self.y2 = config.get('y2', 180)
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1

        # 改进的形态学核
        self._kernel_small = np.ones((3, 3), np.uint8)
        self._kernel_medium = np.ones((5, 5), np.uint8)

        # 颜色配置
        self.colors = config.get('colors', {})
        self._init_color_ranges()

    def _init_color_ranges(self):
        """初始化自适应颜色范围"""
        # 玩家（黄色）
        player_cfg = self.colors.get('player', {})
        self.player_color = AdaptiveColorRange(
            np.array(player_cfg.get('lower', [20, 150, 150])),
            np.array(player_cfg.get('upper', [35, 255, 255]))
        )

        # 怪物（红色）- 双范围
        monster_cfg = self.colors.get('monster', {})
        self.monster_color1 = AdaptiveColorRange(
            np.array(monster_cfg.get('lower1', [0, 150, 150])),
            np.array(monster_cfg.get('upper1', [15, 255, 255]))
        )
        self.monster_color2 = AdaptiveColorRange(
            np.array(monster_cfg.get('lower2', [160, 150, 150])),
            np.array(monster_cfg.get('upper2', [180, 255, 255]))
        )

        # NPC（绿色）
        npc_cfg = self.colors.get('npc', {})
        self.npc_color = AdaptiveColorRange(
            np.array(npc_cfg.get('lower', [50, 150, 150])),
            np.array(npc_cfg.get('upper', [70, 255, 255]))
        )

        # 传送门（蓝色圆圈）
        portal_cfg = self.colors.get('portal', {})
        self.portal_color = AdaptiveColorRange(
            np.array(portal_cfg.get('lower', [100, 150, 150])),
            np.array(portal_cfg.get('upper', [130, 255, 255]))
        )

        # 面积阈值
        thresholds = self.config.get('thresholds', {})
        self.player_min_area = thresholds.get('player_min', 20)
        self.player_max_area = thresholds.get('player_max', 500)
        self.monster_min_area = thresholds.get('monster_min', 15)
        self.monster_max_area = thresholds.get('monster_max', 1000)
        self.npc_min_area = thresholds.get('npc_min', 15)
        self.npc_max_area = thresholds.get('npc_max', 500)
        self.portal_min_area = thresholds.get('portal_min', 20)
        self.portal_max_area = thresholds.get('portal_max', 800)

    def _extract_minimap(self, screenshot: np.ndarray) -> Optional[np.ndarray]:
        """提取小地图区域"""
        if screenshot is None:
            return None
        h, w = screenshot.shape[:2]
        # 边界检查
        x1 = max(0, min(self.x1, w - 1))
        y1 = max(0, min(self.y1, h - 1))
        x2 = max(x1 + 1, min(self.x2, w))
        y2 = max(y1 + 1, min(self.y2, h))
        return screenshot[y1:y2, x1:x2]

    def _morphology_pipeline(self, mask: np.ndarray) -> np.ndarray:
        """改进的形态学处理管道：闭运算 → 开运算 → 高斯模糊"""
        # 闭运算（填充小孔洞）
        closed = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, self._kernel_small, iterations=1)
        # 开运算（去除小噪点）
        opened = cv2.morphologyEx(closed, cv2.MORPH_OPEN, self._kernel_small, iterations=1)
        # 高斯模糊平滑边缘
        blurred = cv2.GaussianBlur(opened, (5, 5), 0)
        # 重新二值化
        _, result = cv2.threshold(blurred, 127, 255, cv2.THRESH_BINARY)
        return result

    def _compute_confidence(self, area: float, min_area: float, max_area: float) -> float:
        """计算检测置信度（基于面积分布）"""
        if area <= min_area or area >= max_area:
            return 0.0
        # 面积中值处置信度最高
        mid_area = (min_area + max_area) / 2.0
        range_half = (max_area - min_area) / 2.0
        # 高斯分布形状的置信度
        dist = abs(area - mid_area) / range_half
        return max(0.0, 1.0 - dist * dist)

    def _process_color(
        self,
        hsv: np.ndarray,
        color_range: AdaptiveColorRange,
        min_area: float,
        max_area: float
    ) -> List[MapObject]:
        """通用颜色检测处理（带自适应和置信度）"""
        mask = cv2.inRange(hsv, color_range.lower, color_range.upper)
        processed = self._morphology_pipeline(mask)

        contours, _ = cv2.findContours(processed, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        results = []
        detected_hsv_values = []

        for contour in contours:
            area = cv2.contourArea(contour)
            if min_area < area < max_area:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y

                    confidence = self._compute_confidence(area, min_area, max_area)
                    if confidence >= self.MIN_CONFIDENCE:
                        results.append(MapObject(
                            x=screen_x, y=screen_y,
                            area=area, confidence=confidence
                        ))
                        # 记录检测到的 HSV 中心值用于自适应
                        if 0 <= local_y < hsv.shape[0] and 0 <= local_x < hsv.shape[1]:
                            detected_hsv_values.append(hsv[local_y, local_x].astype(np.float32))

        # 更新自适应颜色范围
        if detected_hsv_values:
            color_range.record(detected_hsv_values)
            color_range.calibrate()

        return results

    def find_player(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找玩家位置"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.player_color,
            self.player_min_area, self.player_max_area
        )
        if not results:
            return None
        # 返回置信度最高的
        return max(results, key=lambda r: r.confidence)

    def find_monsters(self, screenshot: np.ndarray) -> List[MapObject]:
        """查找怪物位置"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return []

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 红色双范围合并
        mask1 = cv2.inRange(hsv, self.monster_color1.lower, self.monster_color1.upper)
        mask2 = cv2.inRange(hsv, self.monster_color2.lower, self.monster_color2.upper)
        mask = cv2.bitwise_or(mask1, mask2)

        # 改进的形态学处理
        processed = self._morphology_pipeline(mask)

        contours, _ = cv2.findContours(processed, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        monsters = []
        detected_hsv_values = []

        for contour in contours:
            area = cv2.contourArea(contour)
            if self.monster_min_area < area < self.monster_max_area:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y

                    confidence = self._compute_confidence(
                        area, self.monster_min_area, self.monster_max_area
                    )
                    if confidence >= self.MIN_CONFIDENCE:
                        monsters.append(MapObject(
                            x=screen_x, y=screen_y,
                            area=area, confidence=confidence
                        ))
                        if 0 <= local_y < hsv.shape[0] and 0 <= local_x < hsv.shape[1]:
                            detected_hsv_values.append(hsv[local_y, local_x].astype(np.float32))

        # 更新自适应
        if detected_hsv_values:
            self.monster_color1.record(detected_hsv_values)
            self.monster_color1.calibrate()

        # 按综合排序：距离近 + 置信度高
        center_x = self.x1 + self.map_w // 2
        center_y = self.y1 + self.map_h // 2
        max_dist = self.map_w + self.map_h
        monsters.sort(key=lambda m: (
            (abs(m.x - center_x) + abs(m.y - center_y)) / max_dist * 0.6
            + (1.0 - m.confidence) * 0.4
        ))

        return monsters

    def find_npc(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找 NPC 位置"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.npc_color,
            self.npc_min_area, self.npc_max_area
        )
        if not results:
            return None
        return max(results, key=lambda r: r.confidence)

    def find_portal(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找传送门位置（蓝色圆圈）"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.portal_color,
            self.portal_min_area, self.portal_max_area
        )
        if not results:
            return None
        return max(results, key=lambda r: r.confidence)

    def get_direction(self, from_pos: MapObject, to_pos: MapObject) -> Tuple[int, int]:
        """计算从 from_pos 到 to_pos 的方向"""
        dx = to_pos.x - from_pos.x
        dy = to_pos.y - from_pos.y

        dir_x = 1 if dx > 15 else (-1 if dx < -15 else 0)
        dir_y = 1 if dy > 15 else (-1 if dy < -15 else 0)

        return (dir_x, dir_y)

    def get_distance(self, pos1: MapObject, pos2: MapObject) -> float:
        """计算两个位置的距离"""
        return abs(pos1.x - pos2.x) + abs(pos1.y - pos2.y)
