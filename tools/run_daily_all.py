#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
一键执行所有日常流程
用法:
  python3 tools/run_daily_all.py
  python3 tools/run_daily_all.py --skip gem_dungeon,sky_island_hunt
  python3 tools/run_daily_all.py --only daily_tasks,collect_mail
  python3 tools/run_daily_all.py --verbose
"""

import sys
import os
import time
import argparse
import logging
from typing import List, Optional

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import load_flow
from engine.player import Player, PlayResult
from core.scaled_adb import ScaledADB
from core.adb import ADB

# 执行顺序（按游戏逻辑依赖排列）
DAILY_FLOWS = [
    "flows/daily_tasks.yaml",
    "flows/send_popularity.yaml",
    "flows/gem_dungeon.yaml",
    "flows/sky_island_hunt.yaml",
    "flows/starforce_enhance.yaml",
    "flows/collect_mail.yaml",
]


def filter_flows(skip: Optional[List[str]], only: Optional[List[str]]) -> List[str]:
    """根据 --skip 和 --only 参数过滤流程列表"""
    flows = DAILY_FLOWS[:]
    if only:
        flows = [f for f in flows if any(name in f for name in only)]
    elif skip:
        flows = [f for f in flows if not any(name in f for name in skip)]
    return flows


def reset_to_main_screen(device) -> None:
    """流程之间执行回到主界面的保障序列：关闭可能打开的面板"""
    # 点击通用关闭按钮位置（右上角X）
    device.tap(1122, 32)
    time.sleep(1.5)
    # 再点一次确保嵌套面板也关闭
    device.tap(1122, 32)
    time.sleep(1.5)
    # 点击空白区域关闭残余弹窗
    device.tap(640, 500)
    time.sleep(1.0)


def run_single_flow(player: Player, flow_path: str, verbose: bool) -> dict:
    """运行单个流程，返回结果摘要字典"""
    flow = load_flow(flow_path)
    start = time.time()
    try:
        result = player.play(flow)
        duration = time.time() - start
        steps_pass = sum(1 for r in result.step_results if r.success)
        steps_skip = sum(1 for r in result.step_results if r.skipped)
        steps_fail = sum(1 for r in result.step_results if not r.success and not r.skipped)
        return {
            "flow": flow.name,
            "display_name": flow.display_name,
            "success": result.success,
            "duration": round(duration, 1),
            "steps_total": len(result.step_results),
            "steps_pass": steps_pass,
            "steps_skip": steps_skip,
            "steps_fail": steps_fail,
            "error": result.error or None,
        }
    except Exception as e:
        duration = time.time() - start
        return {
            "flow": os.path.basename(flow_path).replace('.yaml', ''),
            "display_name": flow_path,
            "success": False,
            "duration": round(duration, 1),
            "steps_total": 0,
            "steps_pass": 0,
            "steps_skip": 0,
            "steps_fail": 0,
            "error": str(e),
        }


def print_summary(results: List[dict], total_duration: float) -> None:
    """输出彩色汇总表格"""
    print(f"\n{'=' * 60}")
    print(f"{'流程':<20} {'状态':<8} {'耗时':>8} {'通过/跳过/失败':>16}")
    print(f"{'-' * 60}")
    for r in results:
        if r["success"]:
            status = "\033[32mPASS\033[0m"
        else:
            status = "\033[31mFAIL\033[0m"
        steps = f"{r['steps_pass']}/{r['steps_skip']}/{r['steps_fail']}"
        print(f"  {r['display_name']:<18} {status:<8} {r['duration']:>6.1f}s {steps:>14}")
    print(f"{'=' * 60}")
    passed = sum(1 for r in results if r["success"])
    print(f"总计: {passed}/{len(results)} 通过, 耗时 {total_duration:.1f}s")
    if passed == len(results):
        print("\033[32m全部成功!\033[0m")
    else:
        print(f"\033[31m{len(results) - passed} 个流程失败\033[0m")


def main():
    parser = argparse.ArgumentParser(description="一键执行所有日常流程")
    parser.add_argument("--device", "-d", default="ZY22LJC9ST", help="设备序列号")
    parser.add_argument("--skip", type=str, default=None,
                        help="跳过的流程名(逗号分隔): gem_dungeon,sky_island_hunt")
    parser.add_argument("--only", type=str, default=None,
                        help="只执行的流程名(逗号分隔): daily_tasks,collect_mail")
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(level=level, format="%(levelname)s - %(name)s - %(message)s")

    # 过滤流程
    skip_list = args.skip.split(",") if args.skip else None
    only_list = args.only.split(",") if args.only else None
    flows = filter_flows(skip=skip_list, only=only_list)

    print(f"\n=== 一键日常执行 ({len(flows)} 个流程) ===\n")
    for f in flows:
        print(f"  • {f}")
    print()

    # 连接设备
    adb = ADB(device_id=args.device)
    scaled = ScaledADB(adb, base_w=1280, base_h=0)
    img = scaled.screenshot(force_refresh=True)
    if img is None:
        print("ERROR: 无法获取设备截图，请检查连接")
        sys.exit(1)
    print(f"设备已连接: {args.device}, 基准分辨率: {img.shape[1]}x{img.shape[0]}")

    # 创建 Guardian（如果模板目录存在）
    from engine.guardian import Guardian
    guardian = None
    if os.path.isdir("templates"):
        guardian = Guardian(device=scaled, templates_dir="templates")

    # 逐个执行
    player = Player(device=scaled, base_dir=".", step_max_retries=3, guardian=guardian)
    results = []
    total_start = time.time()

    for i, flow_path in enumerate(flows):
        print(f"\n--- [{i+1}/{len(flows)}] {flow_path} ---")
        result = run_single_flow(player, flow_path, args.verbose)
        results.append(result)

        if result["success"]:
            print(f"  \033[32m✓\033[0m 完成 ({result['duration']:.1f}s)")
        else:
            print(f"  \033[31m✗\033[0m 失败: {result['error']}")

        # 流程间重置（最后一个流程后不需要）
        if i < len(flows) - 1:
            reset_to_main_screen(scaled)
            # 重置 Guardian 状态
            if guardian:
                guardian.reset()

    total_duration = time.time() - total_start
    print_summary(results, total_duration)

    # 写入日志
    from engine.run_logger import write_run_log
    write_run_log(results, total_duration, args.device)

    # 返回码
    all_pass = all(r["success"] for r in results)
    sys.exit(0 if all_pass else 1)


if __name__ == "__main__":
    main()
