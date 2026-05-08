#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
真机流程运行工具
通过 Player 引擎 + ScaledADB 在真实设备上执行 Flow YAML
"""

import sys
import os
import argparse
import logging

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import load_flow
from engine.player import Player
from core.scaled_adb import ScaledADB
from core.adb import ADB


def main():
    parser = argparse.ArgumentParser(description="真机运行 Flow YAML")
    parser.add_argument("flow_yaml", help="Flow YAML 文件路径")
    parser.add_argument("--device", "-d", help="设备序列号", default=None)
    parser.add_argument("--base-w", type=int, default=1280, help="基准宽度")
    parser.add_argument("--base-h", type=int, default=0, help="基准高度(0=自适应)")
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(level=level, format="%(levelname)s - %(name)s - %(message)s")

    # 加载 Flow
    flow = load_flow(args.flow_yaml)
    print(f"\n=== 真机运行: {flow.display_name} ===")
    print(f"步骤数: {len(flow.steps)}, 超时: {flow.timeout}s, 默认延迟: {flow.step_delay}s\n")

    # 连接设备
    device_id = args.device or "ZY22LJC9ST"
    adb = ADB(device_id=device_id)
    scaled = ScaledADB(adb, base_w=args.base_w, base_h=args.base_h)

    # 初始截图以触发校准
    img = scaled.screenshot(force_refresh=True)
    if img is None:
        print("ERROR: 无法获取设备截图，请检查连接")
        sys.exit(1)
    w, h = img.shape[1], img.shape[0]
    print(f"设备已连接, 基准分辨率: {w}x{h}")

    # 执行
    player = Player(device=scaled, base_dir=".", step_max_retries=3)
    result = player.play(flow)

    # 输出结果
    print(f"\n{'=' * 50}")
    for i, step_result in enumerate(result.step_results):
        step = flow.steps[i]
        if step_result.success:
            status = "\033[32mPASS\033[0m"
        elif step_result.skipped:
            status = "\033[33mSKIP\033[0m"
        else:
            status = "\033[31mFAIL\033[0m"
        print(f"  [{status}] {step.id}: {step.description}")
        if step_result.error:
            print(f"        Error: {step_result.error}")

    passed = sum(1 for r in result.step_results if r.success)
    skipped = sum(1 for r in result.step_results if r.skipped)
    total = len(result.step_results)
    final_status = "\033[32mSUCCESS\033[0m" if result.success else "\033[31mFAILED\033[0m"
    print(f"\n{'=' * 50}")
    print(f"结果: {final_status} ({passed}通过/{skipped}跳过/{total}总计, {result.total_time:.1f}s)")
    sys.exit(0 if result.success else 1)


if __name__ == "__main__":
    main()
