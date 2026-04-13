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
import os
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

    # 调试模式开关（可通过环境变量控制）
    DEBUG_MODE = os.environ.get('MAPLE_DEBUG', '0') == '1'

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

        # 调试计数器
        self._frame_count = 0
        self._debug_interval = 100  # 每 100 帧输出一次详细调试

    def _save_debug_image(self, image: np.ndarray, name: str, screenshot: np.ndarray = None):
        """保存调试图像到应用私有目录"""
        try:
            debug_dir = os.path.join(
                os.environ.get('HOME', '/data/data/com.maple.auto'),
                'files', 'debug'
            )
            os.makedirs(debug_dir, exist_ok=True)

            # 保存图像
            cv2.imwrite(os.path.join(debug_dir, f'{name}.png'), image)
            logger.warning(f"[DEBUG] Saved {name}.png to {debug_dir}")

            # 同时保存完整截图（可选）
            if screenshot is not None and self._frame_count % 200 == 0:
                cv2.imwrite(os.path.join(debug_dir, f'full_frame_{self._frame_count}.png'), screenshot)
        except Exception as e:
            logger.warning(f"[DEBUG] Failed to save image: {e}")

    def _should_debug(self) -> bool:
        """判断当前帧是否需要输出调试信息"""
        # 前 5 帧强制调试，之后每 100 帧调试一次
        return self._frame_count <= 5 or self._frame_count % self._debug_interval == 0

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

        self._frame_count += 1
        h, w = screenshot.shape[:2]

        # 调试模式：第一帧输出截图分析信息
        if self.DEBUG_MODE and self._frame_count == 1:
            self._analyze_first_frame(screenshot)

        # 边界检查
        x1 = max(0, min(self.x1, w - 1))
        y1 = max(0, min(self.y1, h - 1))
        x2 = max(x1 + 1, min(self.x2, w))
        y2 = max(y1 + 1, min(self.y2, h))

        if self._should_debug():
            logger.warning(f"[Minimap] Frame {self._frame_count}: screenshot={w}x{h}, region=({self.x1},{self.y1})-({self.x2},{self.y2})")

        minimap = screenshot[y1:y2, x1:x2]

        # 检查小地图有效性
        if minimap.size == 0:
            logger.warning(f"[Minimap] Empty minimap region!")
            return None

        mean_color = np.mean(minimap, axis=(0, 1))

        # 每 50 帧或前 5 帧输出详细信息
        if self._frame_count <= 5 or self._frame_count % 50 == 0:
            logger.warning(f"[Minimap] Frame {self._frame_count}: crop ({x1},{y1})-({x2},{y2}), shape={minimap.shape}, BGR_mean={mean_color}")
            # 分析全图四个 100x100 角落
            sh, sw = screenshot.shape[:2]
            for name, r in [('TL', screenshot[0:100, 0:100]),
                            ('TR', screenshot[0:100, sw-100:sw]),
                            ('BL', screenshot[sh-100:sh, 0:100]),
                            ('BR', screenshot[sh-100:sh, sw-100:sw])]:
                rm = np.mean(r, axis=(0,1))
                logger.warning(f"  Corner {name}: BGR_mean=[{rm[0]:.0f},{rm[1]:.0f},{rm[2]:.0f}]")

        # 如果全黑，可能是截图服务未初始化
        if mean_color.sum() == 0:
            if self._should_debug():
                logger.warning(f"[Minimap] All black! MediaProjection may not be ready")
                self._save_debug_image(minimap, f'minimap_black_{self._frame_count}', screenshot)
            return minimap  # 仍然返回，让后续检测处理

        return minimap

    def _analyze_first_frame(self, screenshot: np.ndarray):
        """分析第一帧截图，帮助定位小地图区域"""
        h, w = screenshot.shape[:2]
        logger.warning(f"=== First Frame Analysis ===")
        logger.warning(f"  Screenshot size: {w}x{h}")
        logger.warning(f"  Expected minimap: ({self.x1},{self.y1})-({self.x2},{self.y2})")

        # 网格分析亮度分布
        grid_size = 4
        cell_w = w // grid_size
        cell_h = h // grid_size

        for row in range(grid_size):
            for col in range(grid_size):
                x1 = col * cell_w
                y1 = row * cell_h
                x2 = x1 + cell_w
                y2 = y1 + cell_h
                region = screenshot[y1:y2, x1:x2]
                mean = np.mean(region)
                std = np.std(region)
                logger.warning(f"  Grid[{row},{col}]: ({x1},{y1})-({x2},{y2}), mean={mean:.1f}, std={std:.1f}")

        # 保存第一帧
        self._save_debug_image(screenshot, 'first_frame')

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
        """计算检测置信度（面积越接近范围中部越高，线性衰减）"""
        if area <= min_area or area >= max_area:
            return 0.0
        # 使用对数空间计算，避免大 max_area 导致小面积置信度过低
        import math
        log_area = math.log(area)
        log_min = math.log(max(min_area, 1))
        log_max = math.log(max(max_area, 2))
        log_mid = (log_min + log_max) / 2.0
        log_half = (log_max - log_min) / 2.0
        if log_half <= 0:
            return 0.5
        dist = abs(log_area - log_mid) / log_half
        return max(0.0, 1.0 - dist * 0.5)  # 线性衰减，边缘仍有 0.5

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
        verbose = self._should_debug()

        minimap = self._extract_minimap(screenshot)
        if minimap is None or minimap.size == 0:
            if verbose:
                logger.warning(f"[Monster] Frame {self._frame_count}: minimap extraction FAILED")
            return []

        if verbose:
            logger.warning(f"=== [Monster] DEBUG (frame {self._frame_count}) ===")
            logger.warning(f"  minimap: shape={minimap.shape}, mean={np.mean(minimap):.1f}")
            logger.warning(f"  color1 (red): {self.monster_color1.lower} - {self.monster_color1.upper}")
            logger.warning(f"  color2 (red-wrap): {self.monster_color2.lower} - {self.monster_color2.upper}")
            logger.warning(f"  area range: {self.monster_min_area} - {self.monster_max_area}")

            # 前 5 帧保存调试图像
            if self._frame_count <= 5:
                self._save_debug_image(minimap, f'minimap_{self._frame_count}', screenshot)

        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 红色双范围合并
        mask1 = cv2.inRange(hsv, self.monster_color1.lower, self.monster_color1.upper)
        mask2 = cv2.inRange(hsv, self.monster_color2.lower, self.monster_color2.upper)
        mask = cv2.bitwise_or(mask1, mask2)

        mask1_count = cv2.countNonZero(mask1)
        mask2_count = cv2.countNonZero(mask2)

        if verbose:
            logger.warning(f"  mask pixels: red={mask1_count}, red-wrap={mask2_count}, total={mask1_count+mask2_count}")

        # 如果没有检测到红色，分析 HSV 分布
        if mask1_count == 0 and mask2_count == 0:
            hsv_mean = np.mean(hsv, axis=(0, 1))
            logger.warning(f"[Monster] No red detected! HSV mean={hsv_mean}")

            # 尝试放宽阈值
            for s_low in [30, 50, 80, 100]:
                debug_mask = cv2.inRange(hsv, np.array([0, s_low, s_low]), np.array([15, 255, 255]))
                count = cv2.countNonZero(debug_mask)
                if count > 0:
                    logger.warning(f"  relaxed (H:0-15, S:{s_low}+, V:{s_low}+): {count}px")

        processed = self._morphology_pipeline(mask)
        contours, _ = cv2.findContours(processed, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        areas = [cv2.contourArea(c) for c in contours]
        if verbose:
            logger.warning(f"  contours: {len(contours)}, top areas={sorted(areas, reverse=True)[:5]}")
            in_range = [a for a in areas if self.monster_min_area < a < self.monster_max_area]
            logger.warning(f"  in-range: {len(in_range)} contours")

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

                    confidence = self._compute_confidence(area, self.monster_min_area, self.monster_max_area)
                    if confidence >= self.MIN_CONFIDENCE:
                        monsters.append(MapObject(
                            x=screen_x, y=screen_y,
                            area=area, confidence=confidence
                        ))
                        if 0 <= local_y < hsv.shape[0] and 0 <= local_x < hsv.shape[1]:
                            detected_hsv_values.append(hsv[local_y, local_x].astype(np.float32))

        # 自适应更新
        if detected_hsv_values:
            self.monster_color1.record(detected_hsv_values)
            self.monster_color1.calibrate()

        # 按距离和置信度排序
        center_x = self.x1 + self.map_w // 2
        center_y = self.y1 + self.map_h // 2
        max_dist = self.map_w + self.map_h
        monsters.sort(key=lambda m: (
            (abs(m.x - center_x) + abs(m.y - center_y)) / max_dist * 0.6
            + (1.0 - m.confidence) * 0.4
        ))

        if verbose:
            logger.warning(f"  result: {len(monsters)} monsters detected")

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
