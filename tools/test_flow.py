#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
离线流程测试工具
用录制的截图验证 Flow YAML 的执行逻辑
"""

import sys
import os
import argparse
import logging

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import load_flow
from engine.mock_adb import MockADB
from engine.player import Player


def main():
    parser = argparse.ArgumentParser(description="离线测试 Flow YAML")
    parser.add_argument("flow_yaml", help="Flow YAML 文件路径")
    parser.add_argument("--screenshots", "-s", help="截图目录", default=None)
    parser.add_argument("--base-dir", "-b", help="模板基础目录", default=None)
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(level=level, format="%(levelname)s - %(name)s - %(message)s")

    flow = load_flow(args.flow_yaml)
    print(f"\n=== Flow Test: {flow.display_name} ===\n")

    screenshot_dir = args.screenshots or os.path.join("screenshots", flow.name)
    if not os.path.isdir(screenshot_dir):
        print(f"ERROR: 截图目录不存在: {screenshot_dir}")
        sys.exit(1)

    base_dir = args.base_dir or screenshot_dir

    mock = MockADB(screenshot_dir)
    if mock.total_screenshots == 0:
        print(f"ERROR: 截图目录为空: {screenshot_dir}")
        sys.exit(1)

    print(f"已加载 {mock.total_screenshots} 张截图")
    print(f"模板目录: {base_dir}\n")

    player = Player(device=mock, base_dir=base_dir)
    result = player.play(flow)

    print(f"\n{'=' * 50}")
    for i, step_result in enumerate(result.step_results):
        step = flow.steps[i]
        status = "PASS" if step_result.success else ("SKIP" if step_result.skipped else "FAIL")
        print(f"\nStep {i+1}: {step.id}")
        if step_result.scene_matched:
            print(f"  OK Scene: {step.expect_scene} ({step_result.scene_confidence:.2f})")
        elif step.expect_scene:
            print(f"  FAIL Scene: {step.expect_scene}")
        print(f"  {'OK' if step_result.target_found_by else 'FAIL'} Target: {step_result.target_found_by or 'not found'}")
        if step_result.verify_matched:
            print(f"  OK Verify: {step.verify_scene} ({step_result.verify_confidence:.2f})")
        elif step.verify_scene and not step_result.skipped:
            print(f"  FAIL Verify: {step.verify_scene}")
        if step_result.error:
            print(f"  Error: {step_result.error}")

    passed = sum(1 for r in result.step_results if r.success)
    total = len(result.step_results)
    final = "PASSED" if result.success else "FAILED"
    print(f"\n{'=' * 50}")
    print(f"Result: {passed}/{total} steps {final} ({result.total_time:.1f}s)\n")
    sys.exit(0 if result.success else 1)


if __name__ == "__main__":
    main()
