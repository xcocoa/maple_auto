# -*- coding: utf-8 -*-
"""
小地图检测模块 (Android 版)
检测玩家、怪物、NPC、传送门位置
支持：自适应HSV阈值、形态学处理、置信度过滤

从 PC 版 modules/minimap.py 迁移

注：坐标和面积阈值由 Config 在引擎启动时根据实际屏幕分辨率缩放，
    此模块接收的 config 字典中已是缩放后的实际屏幕坐标。
"""

import cv2
import time
import numpy as np
import logging
from collections import deque
from typing import Optional, List, Tuple, Dict, Any
from dataclasses import dataclass

logger = logging.getLogger(__name__)


@dataclass
class MapObject:
    """地图对象"""
    x: int              # 屏幕 X 坐标
    y: int              # 屏幕 Y 坐标
    area: float         # 轮廓面积（像素）
    confidence: float = 1.0  # 检测置信度 (0.0-1.0)


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
        """
        初始化小地图检测器

        Args:
            config: 配置字典，包含以下字段：
                - x1, y1, x2, y2: 小地图区域坐标
                - colors: 颜色配置（player/monster/npc/portal）
                - thresholds: 面积阈值
        """
        self.config = config

        # 小地图区域坐标（默认适配 1280x720）
        self.x1 = config.get('x1', 900)
        self.y1 = config.get('y1', 20)
        self.x2 = config.get('x2', 1260)
        self.y2 = config.get('y2', 180)
        self.map_w = self.x2 - self.x1
        self.map_h = self.y2 - self.y1

        # 形态学核
        self._kernel_small = np.ones((3, 3), np.uint8)
        self._kernel_medium = np.ones((5, 5), np.uint8)

        # 颜色配置
        self.colors = config.get('colors', {})
        self._init_color_ranges()

        # 调试：扫描整个截图找到最可能的 UI 区域
        self._scan_done = False
        self._scan_count = 0

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

        # 传送门（蓝色）
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

        # 调试：扫描整个截图的亮度分布（只在前 10 帧）
        if self._scan_count < 10:
            self._scan_count += 1
            if self._scan_count == 1:
                # 将截图分成网格，检查每个区域的亮度
                grid_size = 4
                cell_w = w // grid_size
                cell_h = h // grid_size
                logger.warning("DEBUG: Scanning screenshot brightness...")
                for row in range(grid_size):
                    for col in range(grid_size):
                        x1, y1 = col * cell_w, row * cell_h
                        x2, y2 = x1 + cell_w, y1 + cell_h
                        region = screenshot[y1:y2, x1:x2]
                        mean = np.mean(region)
                        std = np.std(region)
                        logger.warning(f"  Grid[{row},{col}]: ({x1},{y1})-({x2},{y2}), mean={mean:.1f}, std={std:.1f}")

                # 尝试找到小地图：寻找高 std 的区域（色彩变化大）
                logger.warning("DEBUG: Looking for minimap region...")
                # 检查顶部区域（小地图通常在顶部）
                for x_start in range(0, w, 100):
                    for width in [150, 200, 250, 300]:
                        if x_start + width > w:
                            continue
                        region = screenshot[0:150, x_start:x_start+width]
                        mean = np.mean(region)
                        std = np.std(region)
                        # 小地图通常有中等亮度和高色彩变化
                        if 80 < mean < 200 and std > 50:
                            logger.warning(f"  Potential minimap: ({x_start},0)-({x_start+width},150), mean={mean:.1f}, std={std:.1f}")

        # 边界检查
        x1 = max(0, min(self.x1, w - 1))
        y1 = max(0, min(self.y1, h - 1))
        x2 = max(x1 + 1, min(self.x2, w))
        y2 = max(y1 + 1, min(self.y2, h))
        logger.debug(f"_extract_minimap: screenshot={w}x{h}, region=({self.x1},{self.y1})-({self.x2},{self.y2}) -> ({x1},{y1})-({x2},{y2})")

        minimap = screenshot[y1:y2, x1:x2]

        # 调试：输出小地图区域的像素统计
        if minimap.size > 0:
            mean_color = np.mean(minimap, axis=(0, 1))
            min_color = np.min(minimap, axis=(0, 1))
            max_color = np.max(minimap, axis=(0, 1))
            logger.debug(f"_extract_minimap: mean_BGR={mean_color}, min={min_color}, max={max_color}, shape={minimap.shape}")

            # 如果平均值为 0，保存调试截图
            if mean_color.sum() == 0:
                try:
                    cv2.imwrite('/sdcard/minimap_debug.png', minimap)
                    logger.warning("Minimap is all black! Saved debug image to /sdcard/minimap_debug.png")
                except Exception as e:
                    logger.warning(f"Could not save debug image: {e}")

        return minimap

    def _morphology_pipeline(self, mask: np.ndarray) -> np.ndarray:
        """形态学处理管道：闭运算 → 开运算 → 高斯模糊 → 二值化"""
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
        """计算检测置信度（基于面积分布，高斯形状）"""
        if area <= min_area or area >= max_area:
            return 0.0
        # 面积中值处置信度最高
        mid_area = (min_area + max_area) / 2.0
        range_half = (max_area - min_area) / 2.0
        dist = abs(area - mid_area) / range_half
        return max(0.0, 1.0 - dist * dist)

    def _process_color(
        self,
        hsv: np.ndarray,
        color_range: AdaptiveColorRange,
        min_area: float,
        max_area: float
    ) -> List[MapObject]:
        """通用颜色检测处理"""
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
                        # 记录 HSV 用于自适应
                        if 0 <= local_y < hsv.shape[0] and 0 <= local_x < hsv.shape[1]:
                            detected_hsv_values.append(hsv[local_y, local_x].astype(np.float32))

        # 更新自适应颜色范围
        if detected_hsv_values:
            color_range.record(detected_hsv_values)
            color_range.calibrate()

        return results

    def find_player(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找玩家位置（黄色点）"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            logger.warning("find_player: minimap extraction failed")
            return None

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        results = self._process_color(
            hsv, self.player_color,
            self.player_min_area, self.player_max_area
        )
        if not results:
            logger.debug(f"find_player: No player found (minimap shape={minimap.shape})")
            return None
        # 返回置信度最高的
        player = max(results, key=lambda r: r.confidence)
        logger.debug(f"find_player: Found player at ({player.x}, {player.y}) confidence={player.confidence:.2f}")
        return player

    def find_monsters(self, screenshot: np.ndarray) -> List[MapObject]:
        """查找怪物位置（红色三角，双范围）"""
        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            logger.debug("find_monsters: minimap extraction failed")
            return []

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 红色双范围合并
        mask1 = cv2.inRange(hsv, self.monster_color1.lower, self.monster_color1.upper)
        mask2 = cv2.inRange(hsv, self.monster_color2.lower, self.monster_color2.upper)
        mask = cv2.bitwise_or(mask1, mask2)

        # 调试：HSV 值统计
        mask1_count = cv2.countNonZero(mask1)
        mask2_count = cv2.countNonZero(mask2)
        logger.debug(f"find_monsters: minimap shape={minimap.shape}, mask1={mask1_count}, mask2={mask2_count}")

        # 调试：如果两个掩码都没有检测到，尝试输出一些 HSV 统计
        if mask1_count == 0 and mask2_count == 0:
            hsv_mean = np.mean(hsv, axis=(0, 1))
            hsv_std = np.std(hsv, axis=(0, 1))
            logger.warning(f"find_monsters: No red detected! HSV mean={hsv_mean}, std={hsv_std}")
            # 尝试放宽阈值调试
            debug_mask = cv2.inRange(hsv, np.array([0, 50, 50]), np.array([15, 255, 255]))
            debug_count = cv2.countNonZero(debug_mask)
            logger.warning(f"find_monsters: Debug mask (0-15, 50-255, 50-255) count={debug_count}")

        processed = self._morphology_pipeline(mask)
        contours, _ = cv2.findContours(processed, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        # 调试：输出轮廓面积分布
        if mask1_count > 0 or mask2_count > 0:
            areas = [cv2.contourArea(c) for c in contours]
            logger.debug(f"find_monsters: Found {len(contours)} contours, areas={sorted(areas, reverse=True)[:10]}, thresholds=({self.monster_min_area}, {self.monster_max_area})")

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

        # 按综合排序：60% 距离 + 40% 置信度
        center_x = self.x1 + self.map_w // 2
        center_y = self.y1 + self.map_h // 2
        max_dist = self.map_w + self.map_h
        monsters.sort(key=lambda m: (
            (abs(m.x - center_x) + abs(m.y - center_y)) / max_dist * 0.6
            + (1.0 - m.confidence) * 0.4
        ))

        if monsters:
            logger.debug(f"find_monsters: Found {len(monsters)} monsters, first at ({monsters[0].x}, {monsters[0].y})")
        else:
            logger.debug(f"find_monsters: No monsters found (minimap shape={minimap.shape}, mask1={mask1_count}, mask2={mask2_count})")

        return monsters

    def find_npc(self, screenshot: np.ndarray) -> Optional[MapObject]:
        """查找 NPC 位置（绿色菱形）"""
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
        """计算方向（带 15px 死区）"""
        dx = to_pos.x - from_pos.x
        dy = to_pos.y - from_pos.y

        dir_x = 1 if dx > 15 else (-1 if dx < -15 else 0)
        dir_y = 1 if dy > 15 else (-1 if dy < -15 else 0)

        return (dir_x, dir_y)

    def get_distance(self, pos1: MapObject, pos2: MapObject) -> float:
        """计算曼哈顿距离"""
        return abs(pos1.x - pos2.x) + abs(pos1.y - pos2.y)
