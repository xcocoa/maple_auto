# -*- coding: utf-8 -*-
"""
系统性探索规划器
用于金字塔等大房间副本，将房间划分为网格区域进行系统性扫描
"""

import time
import logging
from typing import Dict, Any, Optional, Tuple, List
from dataclasses import dataclass

from modules.minimap import MapObject

logger = logging.getLogger('AutoPyramid')


@dataclass
class GridCell:
    """网格单元"""
    row: int
    col: int
    center_x: float        # 在小地图上的中心坐标
    center_y: float
    last_visit: float = 0  # 上次访问时间戳（0=未访问）


class ExplorePlanner:
    """系统性房间探索规划器

    将小地图区域划分为网格，按蛇形路径扫描，
    确保大房间中的每个角落都被探索到。
    """

    def __init__(self, config: Dict[str, Any], minimap_config: Dict[str, Any]):
        # 网格参数
        self._grid_cols = config.get('grid_cols', 4)
        self._grid_rows = config.get('grid_rows', 3)
        self._visit_expire = config.get('visit_expire', 30.0)

        # 小地图区域（用于计算网格坐标）
        self._map_x1 = minimap_config.get('x1', 900)
        self._map_y1 = minimap_config.get('y1', 20)
        self._map_x2 = minimap_config.get('x2', 1260)
        self._map_y2 = minimap_config.get('y2', 180)

        # 小地图尺寸
        self._map_w = self._map_x2 - self._map_x1
        self._map_h = self._map_y2 - self._map_y1

        # 每个网格单元的尺寸（小地图像素）
        self._cell_w = self._map_w / self._grid_cols
        self._cell_h = self._map_h / self._grid_rows

        # 网格状态
        self._grid: List[List[GridCell]] = []
        self._build_grid()

        # 蛇形扫描序列
        self._scan_order: List[Tuple[int, int]] = []
        self._build_scan_order()
        self._scan_index = 0

    def _build_grid(self):
        """构建网格"""
        self._grid = []
        for r in range(self._grid_rows):
            row = []
            for c in range(self._grid_cols):
                cx = self._cell_w * (c + 0.5)
                cy = self._cell_h * (r + 0.5)
                row.append(GridCell(row=r, col=c, center_x=cx, center_y=cy))
            self._grid.append(row)

    def _build_scan_order(self):
        """构建蛇形扫描顺序（从底部开始，左右交替）"""
        self._scan_order = []
        for r in range(self._grid_rows - 1, -1, -1):
            if (self._grid_rows - 1 - r) % 2 == 0:
                # 从左到右
                for c in range(self._grid_cols):
                    self._scan_order.append((r, c))
            else:
                # 从右到左
                for c in range(self._grid_cols - 1, -1, -1):
                    self._scan_order.append((r, c))

    def _pos_to_cell(self, pos: MapObject) -> Tuple[int, int]:
        """将小地图坐标转为网格坐标"""
        # pos.x, pos.y 是相对于小地图区域的局部坐标
        col = int(pos.x / self._cell_w)
        row = int(pos.y / self._cell_h)
        col = max(0, min(col, self._grid_cols - 1))
        row = max(0, min(row, self._grid_rows - 1))
        return row, col

    def mark_visited(self, player_pos: MapObject):
        """标记玩家当前所在区域为已访问"""
        row, col = self._pos_to_cell(player_pos)
        self._grid[row][col].last_visit = time.time()

    def get_next_waypoint(self, player_pos: MapObject) -> Optional[MapObject]:
        """获取下一个探索航点

        优先级：
        1. 蛇形扫描序列中的下一个未访问/过期区域
        2. 如果所有区域都已访问且未过期，返回 None
        """
        self.mark_visited(player_pos)
        now = time.time()

        # 从当前扫描位置开始查找未访问区域
        checked = 0
        total = len(self._scan_order)

        while checked < total:
            idx = (self._scan_index + checked) % total
            r, c = self._scan_order[idx]
            cell = self._grid[r][c]

            # 未访问或已过期
            if cell.last_visit == 0 or (now - cell.last_visit) > self._visit_expire:
                self._scan_index = (idx + 1) % total
                return MapObject(x=cell.center_x, y=cell.center_y, area=0, confidence=1.0)

            checked += 1

        # 所有区域已访问
        return None

    def get_nearest_unvisited(self, player_pos: MapObject) -> Optional[MapObject]:
        """获取最近的未访问/过期区域（备选策略）"""
        now = time.time()
        best = None
        best_dist = float('inf')

        for row in self._grid:
            for cell in row:
                if cell.last_visit == 0 or (now - cell.last_visit) > self._visit_expire:
                    dx = cell.center_x - player_pos.x
                    dy = cell.center_y - player_pos.y
                    dist = abs(dx) + abs(dy)
                    if dist < best_dist:
                        best_dist = dist
                        best = cell

        if best:
            return MapObject(x=best.center_x, y=best.center_y, area=0, confidence=1.0)
        return None

    def get_unvisited_count(self) -> int:
        """获取未访问/过期区域数量"""
        now = time.time()
        count = 0
        for row in self._grid:
            for cell in row:
                if cell.last_visit == 0 or (now - cell.last_visit) > self._visit_expire:
                    count += 1
        return count

    def get_visited_count(self) -> int:
        """获取已访问（未过期）区域数量"""
        total = self._grid_cols * self._grid_rows
        return total - self.get_unvisited_count()

    def is_fully_explored(self) -> bool:
        """是否所有区域都已被探索（未过期）"""
        return self.get_unvisited_count() == 0

    def reset(self):
        """重置所有探索记录（进入新房间时调用）"""
        for row in self._grid:
            for cell in row:
                cell.last_visit = 0
        self._scan_index = 0
        logger.info("探索记录已重置")

    def get_progress(self) -> str:
        """获取探索进度字符串"""
        total = self._grid_cols * self._grid_rows
        visited = self.get_visited_count()
        return f"{visited}/{total}"
