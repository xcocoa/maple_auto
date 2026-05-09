#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试日常任务流程
直接使用 ScaledADB + ScenePlayer 运行 daily_all 流程
"""

import os
import sys
import cv2
import time
import logging
import numpy as np
from typing import Optional

# 设置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(name)s] %(levelname)s: %(message)s',
    datefmt='%H:%M:%S'
)
logger = logging.getLogger('TestDaily')

# 添加项目根目录到路径
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from core.adb import ADB
from modules.scene_player import ScenePlayer


class ScaledADB:
    """ADB 代理：截图缩放到基准分辨率，触摸坐标反向缩放到设备分辨率"""

    def __init__(self, adb: ADB, base_w: int = 1280, base_h: int = 720):
        self._adb = adb
        self._base_w = base_w
        self._base_h = base_h
        self._scale_x = 1.0
        self._scale_y = 1.0
        self._calibrated = False
        self._crop_x = 0
        self._crop_y = 0
        self._crop_w = 0
        self._crop_h = 0

    def calibrate(self, device_w: int, device_h: int):
        """根据实际设备分辨率计算缩放比，处理全面屏比例差异"""
        base_ratio = self._base_w / self._base_h  # 1.778 (16:9)
        device_ratio = device_w / device_h

        if abs(device_ratio - base_ratio) < 0.05:
            self._crop_x = 0
            self._crop_y = 0
            self._crop_w = device_w
            self._crop_h = device_h
        elif device_ratio > base_ratio:
            target_w = int(device_h * base_ratio)
            self._crop_x = (device_w - target_w) // 2
            self._crop_y = 0
            self._crop_w = target_w
            self._crop_h = device_h
        else:
            target_h = int(device_w / base_ratio)
            self._crop_x = 0
            self._crop_y = (device_h - target_h) // 2
            self._crop_w = device_w
            self._crop_h = target_h

        self._scale_x = self._crop_w / self._base_w
        self._scale_y = self._crop_h / self._base_h
        self._calibrated = True

        logger.info(
            f"设备分辨率: {device_w}x{device_h}, "
            f"裁剪偏移: ({self._crop_x}, {self._crop_y}), "
            f"裁剪区域: {self._crop_w}x{self._crop_h}, "
            f"缩放比: ({self._scale_x:.3f}, {self._scale_y:.3f})"
        )

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        """截图并缩放到基准分辨率"""
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None

        h, w = raw.shape[:2]

        if not self._calibrated:
            self.calibrate(w, h)

        # 裁剪到 16:9 区域
        if self._crop_x > 0 or self._crop_y > 0:
            x1 = self._crop_x
            y1 = self._crop_y
            x2 = x1 + self._crop_w
            y2 = y1 + self._crop_h
            raw = raw[y1:y2, x1:x2]

        # 缩放到基准分辨率
        if raw.shape[1] != self._base_w or raw.shape[0] != self._base_h:
            raw = cv2.resize(raw, (self._base_w, self._base_h))

        return raw

    def tap(self, x: int, y: int) -> None:
        """点击：基准坐标 → 设备坐标"""
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        logger.debug(f"tap: 基准({x},{y}) → 设备({device_x},{device_y})")
        self._adb.tap(device_x, device_y)

    def swipe(self, x1: int, y1: int, x2: int, y2: int, duration: int = 100) -> None:
        """滑动：基准坐标 → 设备坐标"""
        self._adb.swipe(
            int(x1 * self._scale_x) + self._crop_x,
            int(y1 * self._scale_y) + self._crop_y,
            int(x2 * self._scale_x) + self._crop_x,
            int(y2 * self._scale_y) + self._crop_y,
            duration
        )

    def input_text(self, text: str) -> None:
        """输入文本"""
        self._adb.run(f'shell input text "{text}"')

    def invalidate_cache(self) -> None:
        self._adb.invalidate_cache()

    def __getattr__(self, name):
        return getattr(self._adb, name)


def main():
    # 选择要运行的流程
    flow_name = sys.argv[1] if len(sys.argv) > 1 else "daily_all"

    logger.info("=" * 60)
    logger.info(f"测试日常任务流程: {flow_name}")
    logger.info("=" * 60)

    # 1. 初始化 ADB
    device_id = "ZY22LJC9ST"
    logger.info(f"连接设备: {device_id}")
    raw_adb = ADB(device_id)

    # 检查设备连接
    if not raw_adb.is_device_connected():
        logger.error("设备未连接！请检查 ADB 连接。")
        return

    # 获取设备分辨率
    screen_w, screen_h = raw_adb.get_screen_size()
    logger.info(f"设备分辨率: {screen_w}x{screen_h}")

    # 2. 创建 ScaledADB 代理
    adb = ScaledADB(raw_adb, base_w=1280, base_h=720)

    # 3. 测试截图
    logger.info("测试截图...")
    screenshot = adb.screenshot(force_refresh=True)
    if screenshot is None:
        logger.error("截图失败！")
        return
    logger.info(f"截图成功: {screenshot.shape[1]}x{screenshot.shape[0]}")

    # 保存测试截图
    cv2.imwrite("test_screenshot.png", screenshot)
    logger.info("测试截图已保存: test_screenshot.png")

    # 4. 初始化 ScenePlayer
    logger.info("初始化场景回放引擎...")
    player = ScenePlayer()
    if not player.load_config("config/daily_scenes.yaml"):
        logger.error("加载场景配置失败！")
        return

    available_flows = player.get_flow_names()
    logger.info(f"可用流程: {available_flows}")

    if flow_name not in available_flows:
        logger.error(f"流程 '{flow_name}' 不存在！可用: {available_flows}")
        return

    # 显示流程信息
    flow_info = player.get_flow_info(flow_name)
    logger.info(f"流程: {flow_info['name']}")
    logger.info(f"描述: {flow_info['description']}")
    logger.info(f"步骤数: {flow_info['steps']}")
    logger.info("-" * 60)
    for i, action in enumerate(flow_info['actions']):
        optional_tag = " [可选]" if action['optional'] else ""
        logger.info(f"  [{i+1}] {action['scene_id']}: {action['description']}{optional_tag}")
    logger.info("-" * 60)

    # 5. 确认运行
    logger.info("")
    logger.info("⚠️  即将在设备上执行自动化操作！")
    logger.info("    请确保游戏已打开并在主界面。")
    logger.info("    按 Ctrl+C 可随时中断。")
    logger.info("")

    try:
        input("按 Enter 开始执行，Ctrl+C 取消...")
    except KeyboardInterrupt:
        logger.info("已取消。")
        return

    # 6. 执行流程
    logger.info("=" * 60)
    logger.info(f"开始执行: {flow_name}")
    logger.info("=" * 60)

    start_time = time.time()

    def on_progress(step_idx, total, desc):
        elapsed = time.time() - start_time
        logger.info(f"[进度 {step_idx+1}/{total}] {desc} (已用时 {elapsed:.1f}s)")

    try:
        success = player.play(flow_name, adb, on_progress=on_progress)
    except KeyboardInterrupt:
        logger.info("用户中断执行。")
        success = False
    except Exception as e:
        logger.error(f"执行异常: {e}", exc_info=True)
        success = False

    elapsed = time.time() - start_time

    # 7. 输出结果
    logger.info("=" * 60)
    if success:
        logger.info(f"✅ 流程执行成功！耗时: {elapsed:.1f}s")
    else:
        logger.info(f"❌ 流程执行失败。耗时: {elapsed:.1f}s")

    stats = player.get_stats()
    logger.info(f"统计: 执行={stats['actions_executed']}, "
                f"跳过={stats['actions_skipped']}, "
                f"超时={stats['actions_timeout']}")
    logger.info("=" * 60)


if __name__ == "__main__":
    main()
