#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
验证 OCR click_text 动作在真机上的效果
测试流程：星之力强化（包含2个OCR动作："强化"和"确认"）
"""

import os
import sys
import cv2
import time
import logging
import numpy as np
from typing import Optional

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(name)s] %(levelname)s: %(message)s',
    datefmt='%H:%M:%S'
)
logger = logging.getLogger('VerifyOCR')

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
        """根据实际设备分辨率计算缩放比"""
        base_ratio = self._base_w / self._base_h
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
            f"校准完成: 设备={device_w}x{device_h}, "
            f"裁剪偏移=({self._crop_x},{self._crop_y}), "
            f"缩放=({self._scale_x:.3f},{self._scale_y:.3f})"
        )

    def screenshot(self, force_refresh: bool = False) -> Optional[np.ndarray]:
        raw = self._adb.screenshot(force_refresh=force_refresh)
        if raw is None:
            return None
        h, w = raw.shape[:2]
        if not self._calibrated:
            self.calibrate(w, h)
        if self._crop_x > 0 or self._crop_y > 0:
            x1, y1 = self._crop_x, self._crop_y
            raw = raw[y1:y1+self._crop_h, x1:x1+self._crop_w]
        if raw.shape[1] != self._base_w or raw.shape[0] != self._base_h:
            raw = cv2.resize(raw, (self._base_w, self._base_h))
        return raw

    def tap(self, x: int, y: int) -> None:
        device_x = int(x * self._scale_x) + self._crop_x
        device_y = int(y * self._scale_y) + self._crop_y
        logger.info(f"  TAP: 基准({x},{y}) → 设备({device_x},{device_y})")
        self._adb.tap(device_x, device_y)

    def swipe(self, x1, y1, x2, y2, duration=100):
        self._adb.swipe(
            int(x1 * self._scale_x) + self._crop_x,
            int(y1 * self._scale_y) + self._crop_y,
            int(x2 * self._scale_x) + self._crop_x,
            int(y2 * self._scale_y) + self._crop_y,
            duration
        )

    def input_text(self, text: str) -> None:
        self._adb.run(f'shell input text "{text}"')

    def invalidate_cache(self) -> None:
        self._adb.invalidate_cache()

    def get_screen_size(self):
        return self._adb.get_screen_size()

    def __getattr__(self, name):
        return getattr(self._adb, name)


def save_screenshot(adb, filename):
    """截图并保存，用于调试"""
    img = adb.screenshot(force_refresh=True)
    if img is not None:
        cv2.imwrite(filename, img)
        logger.info(f"截图已保存: {filename}")
    return img


def main():
    flow_name = sys.argv[1] if len(sys.argv) > 1 else "starforce_enhance"

    logger.info("=" * 60)
    logger.info(f"🔍 OCR click_text 真机验证")
    logger.info(f"   测试流程: {flow_name}")
    logger.info("=" * 60)

    # 初始化
    device_id = "ZY22LJC9ST"
    raw_adb = ADB(device_id)
    if not raw_adb.is_device_connected():
        logger.error("设备未连接！")
        return

    adb = ScaledADB(raw_adb, base_w=1280, base_h=720)

    # 测试截图
    img = save_screenshot(adb, "verify_step0_initial.png")
    if img is None:
        logger.error("截图失败！")
        return

    # 初始化 ScenePlayer
    player = ScenePlayer()
    if not player.load_config("config/daily_scenes.yaml"):
        logger.error("加载配置失败！")
        return

    available = player.get_flow_names()
    logger.info(f"可用流程: {available}")

    if flow_name not in available:
        logger.error(f"流程 '{flow_name}' 不存在！")
        return

    flow_info = player.get_flow_info(flow_name)
    logger.info(f"流程: {flow_info['description']}")
    logger.info(f"步骤数: {flow_info['steps']}")
    for i, a in enumerate(flow_info['actions']):
        tag = " [可选]" if a['optional'] else ""
        logger.info(f"  [{i+1}] {a['scene_id']}: {a['description']}{tag}")

    logger.info("")
    logger.info("⚠️  即将在设备上执行自动化操作！")
    logger.info("    请确保游戏已打开并在正确的界面。")
    logger.info("    按 Ctrl+C 可随时中断。")
    logger.info("")

    try:
        input("按 Enter 开始执行，Ctrl+C 取消...")
    except KeyboardInterrupt:
        logger.info("已取消。")
        return

    # 执行流程
    logger.info("=" * 60)
    logger.info(f"▶ 开始执行: {flow_name}")
    logger.info("=" * 60)

    start_time = time.time()
    step_screenshots = []

    def on_progress(step_idx, total, desc):
        elapsed = time.time() - start_time
        logger.info(f"[进度 {step_idx+1}/{total}] {desc} (已用时 {elapsed:.1f}s)")
        # 每步保存截图用于调试
        fname = f"verify_step{step_idx+1}_{desc[:10].replace(' ','_')}.png"
        save_screenshot(adb, fname)
        step_screenshots.append(fname)

    try:
        success = player.play(flow_name, adb, on_progress=on_progress)
    except KeyboardInterrupt:
        logger.info("用户中断。")
        success = False
    except Exception as e:
        logger.error(f"执行异常: {e}", exc_info=True)
        success = False

    elapsed = time.time() - start_time

    # 最终截图
    save_screenshot(adb, "verify_step_final.png")

    # 输出结果
    logger.info("=" * 60)
    if success:
        logger.info(f"✅ 流程执行成功！耗时: {elapsed:.1f}s")
    else:
        logger.info(f"❌ 流程执行失败。耗时: {elapsed:.1f}s")

    stats = player.get_stats()
    logger.info(f"统计: 执行={stats['actions_executed']}, "
                f"跳过={stats['actions_skipped']}, "
                f"超时={stats['actions_timeout']}")
    logger.info(f"步骤截图: {step_screenshots}")
    logger.info("=" * 60)


if __name__ == "__main__":
    main()
