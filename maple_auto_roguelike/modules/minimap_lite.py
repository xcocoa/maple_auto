# -*- coding: utf-8 -*-
"""
小地图检测模块 (Lite)
使用 autopilot API 代替 OpenCV 进行颜色检测
检测玩家、怪物、NPC、传送门位置
"""

import math
from dataclasses import dataclass
from typing import Optional, List, Tuple

from autopilot import find_color, get_config, log


@dataclass
class MapObject:
    """地图对象"""
    x: int
    y: int
    area: float
    confidence: float = 1.0


# --- 颜色常量 (0xAARRGGBB 格式) ---
# 玩家 (黄色): HSV H=20-35, S=150-255, V=150-255 → bright yellow
COLOR_PLAYER_YELLOW = 0xFFFFFF00
# 怪物 (红色): HSV H=0-15 or 160-180, high S/V → bright red
COLOR_MONSTER_RED = 0xFFFF0000
# NPC (绿色): HSV H=50-70, high S/V → bright green
COLOR_NPC_GREEN = 0xFF00FF00
# 传送门 (蓝色): HSV H=100-130, high S/V → bright blue
COLOR_PORTAL_BLUE = 0xFF0000FF

# 颜色匹配容差
THRESHOLD_PLAYER = 40
THRESHOLD_MONSTER = 40
THRESHOLD_NPC = 40
THRESHOLD_PORTAL = 40

# 聚类距离阈值 (像素)
CLUSTER_DISTANCE = 15

# 网格划分用于多点扫描
GRID_COLS = 4
GRID_ROWS = 3


def _get_minimap_region() -> Tuple[int, int, int, int]:
    """从配置读取小地图区域坐标"""
    x1 = get_config("minimap_x1", 900)
    y1 = get_config("minimap_y1", 20)
    x2 = get_config("minimap_x2", 1260)
    y2 = get_config("minimap_y2", 180)
    return (x1, y1, x2, y2)


def _find_single_color(
    color: int,
    left: int, top: int, right: int, bottom: int,
    threshold: int
) -> Optional[Tuple[int, int]]:
    """在指定区域查找单个颜色点，返回 (x, y) 或 None"""
    result = find_color(color, left=left, top=top, right=right, bottom=bottom, threshold=threshold)
    return result


def _find_multiple_colors_grid(
    color: int,
    left: int, top: int, right: int, bottom: int,
    threshold: int
) -> List[Tuple[int, int]]:
    """
    使用网格划分策略在小地图区域内查找多个同色点。
    将区域划分为 GRID_COLS x GRID_ROWS 的子区域，
    在每个子区域中搜索，然后聚类合并相近点。
    """
    width = right - left
    height = bottom - top
    if width <= 0 or height <= 0:
        return []

    cell_w = width / GRID_COLS
    cell_h = height / GRID_ROWS

    raw_points = []
    for row in range(GRID_ROWS):
        for col in range(GRID_COLS):
            sub_left = left + int(col * cell_w)
            sub_top = top + int(row * cell_h)
            sub_right = left + int((col + 1) * cell_w)
            sub_bottom = top + int((row + 1) * cell_h)

            result = find_color(
                color,
                left=sub_left, top=sub_top,
                right=sub_right, bottom=sub_bottom,
                threshold=threshold
            )
            if result is not None:
                raw_points.append(result)

    # 聚类：将距离在 CLUSTER_DISTANCE 内的点合并
    return _cluster_points(raw_points)


def _cluster_points(points: List[Tuple[int, int]]) -> List[Tuple[int, int]]:
    """
    将相近的点聚类合并。
    使用简单的贪心聚类：遍历所有点，如果和已有簇中心距离
    小于 CLUSTER_DISTANCE，则归入该簇，否则新建簇。
    返回每个簇的中心点。
    """
    if not points:
        return []

    clusters: List[List[Tuple[int, int]]] = []

    for px, py in points:
        merged = False
        for cluster in clusters:
            cx = sum(p[0] for p in cluster) // len(cluster)
            cy = sum(p[1] for p in cluster) // len(cluster)
            if abs(px - cx) + abs(py - cy) <= CLUSTER_DISTANCE:
                cluster.append((px, py))
                merged = True
                break
        if not merged:
            clusters.append([(px, py)])

    # 返回每个簇的中心
    centers = []
    for cluster in clusters:
        cx = sum(p[0] for p in cluster) // len(cluster)
        cy = sum(p[1] for p in cluster) // len(cluster)
        centers.append((cx, cy))

    return centers


def find_player() -> Optional[MapObject]:
    """
    查找玩家位置（黄色点）
    返回 MapObject 或 None
    """
    x1, y1, x2, y2 = _get_minimap_region()

    result = _find_single_color(
        COLOR_PLAYER_YELLOW,
        left=x1, top=y1, right=x2, bottom=y2,
        threshold=THRESHOLD_PLAYER
    )
    if result is None:
        return None

    px, py = result
    return MapObject(x=px, y=py, area=1.0, confidence=1.0)


def find_monsters() -> List[MapObject]:
    """
    查找怪物位置（红色点）
    使用网格扫描 + 聚类策略查找多个怪物
    返回按距离小地图中心排序的 MapObject 列表
    """
    x1, y1, x2, y2 = _get_minimap_region()

    points = _find_multiple_colors_grid(
        COLOR_MONSTER_RED,
        left=x1, top=y1, right=x2, bottom=y2,
        threshold=THRESHOLD_MONSTER
    )

    if not points:
        return []

    # 转换为 MapObject
    monsters = [
        MapObject(x=px, y=py, area=1.0, confidence=1.0)
        for px, py in points
    ]

    # 按距离小地图中心排序
    center_x = (x1 + x2) // 2
    center_y = (y1 + y2) // 2
    monsters.sort(key=lambda m: abs(m.x - center_x) + abs(m.y - center_y))

    return monsters


def find_npc() -> Optional[MapObject]:
    """
    查找 NPC 位置（绿色点）
    返回 MapObject 或 None
    """
    x1, y1, x2, y2 = _get_minimap_region()

    result = _find_single_color(
        COLOR_NPC_GREEN,
        left=x1, top=y1, right=x2, bottom=y2,
        threshold=THRESHOLD_NPC
    )
    if result is None:
        return None

    px, py = result
    return MapObject(x=px, y=py, area=1.0, confidence=1.0)


def find_portal() -> Optional[MapObject]:
    """
    查找传送门位置（蓝色圆圈）
    返回 MapObject 或 None
    """
    x1, y1, x2, y2 = _get_minimap_region()

    result = _find_single_color(
        COLOR_PORTAL_BLUE,
        left=x1, top=y1, right=x2, bottom=y2,
        threshold=THRESHOLD_PORTAL
    )
    if result is None:
        return None

    px, py = result
    return MapObject(x=px, y=py, area=1.0, confidence=1.0)


def get_direction(from_pos: MapObject, to_pos: MapObject) -> Tuple[int, int]:
    """
    计算从 from_pos 到 to_pos 的方向
    返回 (dir_x, dir_y)，每个分量为 -1, 0, 1
    死区阈值为 15 像素
    """
    dx = to_pos.x - from_pos.x
    dy = to_pos.y - from_pos.y

    dir_x = 1 if dx > 15 else (-1 if dx < -15 else 0)
    dir_y = 1 if dy > 15 else (-1 if dy < -15 else 0)

    return (dir_x, dir_y)


def get_distance(pos1: MapObject, pos2: MapObject) -> float:
    """
    计算两个位置的曼哈顿距离
    """
    return abs(pos1.x - pos2.x) + abs(pos1.y - pos2.y)
