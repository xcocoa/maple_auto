# -*- coding: utf-8 -*-
"""
小地图检测模块
检测玩家、怪物、NPC 位置
"""

import cv2
import numpy as np
from typing import Optional, List, Tuple, Dict, Any
from dataclasses import dataclass

from core.adb import ADB


@dataclass
class MapObject:
    """地图对象基类"""
    x: int
    y: int
    area: float
    confidence: float = 1.0


class MinimapDetector:
    """小地图检测器"""

    def __init__(self, config: Dict[str, Any]):
        self.config = config
        self.x1 = config.get('x1', 900)
        self.y1 = config.get('y1', 20)
        self.x2 = config.get('x2', 1260)
        self.y2 = config.get('y2', 180)
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1
        self.kernel = np.ones((3, 3), np.uint8)

        # 颜色配置
        self.colors = config.get('colors', {})
        self._init_color_ranges()

    def _init_color_ranges(self):
        """初始化颜色范围"""
        # 玩家（黄色）
        player_cfg = self.colors.get('player', {})
        self.player_lower = np.array(player_cfg.get('lower', [20, 150, 150]))
        self.player_upper = np.array(player_cfg.get('upper', [35, 255, 255]))

        # 怪物（红色）
        monster_cfg = self.colors.get('monster', {})
        self.monster_lower1 = np.array(monster_cfg.get('lower1', [0, 150, 150]))
        self.monster_upper1 = np.array(monster_cfg.get('upper1', [15, 255, 255]))
        self.monster_lower2 = np.array(monster_cfg.get('lower2', [160, 150, 150]))
        self.monster_upper2 = np.array(monster_cfg.get('upper2', [180, 255, 255]))

        # NPC（绿色）
        npc_cfg = self.colors.get('npc', {})
        self.npc_lower = np.array(npc_cfg.get('lower', [50, 150, 150]))
        self.npc_upper = np.array(npc_cfg.get('upper', [70, 255, 255]))

        # 传送门（蓝色圆圈）
        portal_cfg = self.colors.get('portal', {})
        self.portal_lower = np.array(portal_cfg.get('lower', [100, 150, 150]))
        self.portal_upper = np.array(portal_cfg.get('upper', [130, 255, 255]))

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
        return screenshot[self.y1:self.y2, self.x1:self.x2]

    def _process_color(
        self,
        hsv: np.ndarray,
        lower: np.ndarray,
        upper: np.ndarray,
        min_area: float,
        max_area: float
    ) -> List[MapObject]:
        """通用颜色检测处理"""
        mask = cv2.inRange(hsv, lower, upper)
        dilated = cv2.dilate(mask, self.kernel, iterations=2)
        eroded = cv2.erode(dilated, self.kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        results = []

        for contour in contours:
            area = cv2.contourArea(contour)
            if min_area < area < max_area:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y
                    results.append(MapObject(x=screen_x, y=screen_y, area=area))

        return results

    def find_player(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找玩家位置"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.player_lower, self.player_upper,
            self.player_min_area, self.player_max_area
        )
        return results[0] if results else None

    def find_monsters(self, screenshot: np.ndarray) -> List[MapObject]:
        """查找怪物位置"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return []

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 红色有两个范围
        mask1 = cv2.inRange(hsv, self.monster_lower1, self.monster_upper1)
        mask2 = cv2.inRange(hsv, self.monster_lower2, self.monster_upper2)
        mask = cv2.bitwise_or(mask1, mask2)

        # 形态学处理
        dilated = cv2.dilate(mask, self.kernel, iterations=2)
        eroded = cv2.erode(dilated, self.kernel, iterations=1)

        contours, _ = cv2.findContours(eroded, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        monsters = []

        for contour in contours:
            area = cv2.contourArea(contour)
            if self.monster_min_area < area < self.monster_max_area:
                M = cv2.moments(contour)
                if M['m00'] > 0:
                    local_x = int(M['m10'] / M['m00'])
                    local_y = int(M['m01'] / M['m00'])
                    screen_x = self.x1 + local_x
                    screen_y = self.y1 + local_y
                    monsters.append(MapObject(x=screen_x, y=screen_y, area=area))

        # 按距离排序（优先近的）
        center_x = self.x1 + self.map_w // 2
        center_y = self.y1 + self.map_h // 2
        monsters.sort(key=lambda m: abs(m.x - center_x) + abs(m.y - center_y))

        return monsters

    def find_npc(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找 NPC 位置"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.npc_lower, self.npc_upper,
            self.npc_min_area, self.npc_max_area
        )
        return results[0] if results else None

    def find_portal(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找传送门位置（蓝色圆圈）"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.portal_lower, self.portal_upper,
            self.portal_min_area, self.portal_max_area
        )
        return results[0] if results else None

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
