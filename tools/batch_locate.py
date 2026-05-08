#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
批量坐标录制工具
按照提示顺序点击按钮，一次性采集所有 TODO 坐标
用法: python3 tools/batch_locate.py <flow_name>
"""

import sys
import os
import subprocess
import re
import yaml
import time

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

TOUCH_MAX_X = 19520
TOUCH_MAX_Y = 43392
DEVICE_W = 2712
DEVICE_H = 1220
BASE_W = 1280
BASE_H = 575
DEVICE = "ZY22LJC9ST"
TOUCH_DEV = "/dev/input/event10"


def touch_to_base(touch_x, touch_y):
    screen_x = touch_y * DEVICE_W / TOUCH_MAX_Y
    screen_y = (TOUCH_MAX_X - touch_x) * DEVICE_H / TOUCH_MAX_X
    base_x = int(screen_x / (DEVICE_W / BASE_W))
    base_y = int(screen_y / (DEVICE_H / BASE_H))
    return base_x, base_y


def capture_one_tap(timeout=30):
    """捕获一次触摸，返回 (base_x, base_y) 或 None"""
    proc = subprocess.Popen(
        ['adb', '-s', DEVICE, 'shell', 'getevent', '-lt', TOUCH_DEV],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    )

    tx, ty = None, None
    start = time.time()

    try:
        for line in proc.stdout:
            if time.time() - start > timeout:
                break
            if 'ABS_MT_POSITION_X' in line:
                match = re.search(r'([0-9a-fA-F]+)\s*$', line.strip())
                if match:
                    tx = int(match.group(1), 16)
            elif 'ABS_MT_POSITION_Y' in line:
                match = re.search(r'([0-9a-fA-F]+)\s*$', line.strip())
                if match:
                    ty = int(match.group(1), 16)
            if tx is not None and ty is not None:
                break
    finally:
        proc.terminate()
        proc.wait()

    if tx is not None and ty is not None:
        return touch_to_base(tx, ty)
    return None


def find_todo_steps(flow_path):
    """找出所有标记 TODO 的步骤"""
    with open(flow_path, 'r', encoding='utf-8') as f:
        data = yaml.safe_load(f)

    todo_steps = []
    for step in data.get('steps', []):
        desc = step.get('description', '')
        if 'TODO' in desc:
            todo_steps.append(step)
    return todo_steps, data


def main():
    if len(sys.argv) < 2:
        # 列出所有有 TODO 的 flow
        flows_dir = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'flows')
        print("\n可录制的流程：")
        for f in sorted(os.listdir(flows_dir)):
            if f.endswith('.yaml'):
                path = os.path.join(flows_dir, f)
                todos, _ = find_todo_steps(path)
                if todos:
                    print(f"  {f} — {len(todos)} 个坐标待录制")
        print(f"\n用法: python3 tools/batch_locate.py <flow_yaml>")
        return

    flow_path = sys.argv[1]
    if not os.path.exists(flow_path):
        flow_path = os.path.join('flows', flow_path)
    if not os.path.exists(flow_path):
        print(f"文件不存在: {flow_path}")
        return

    todo_steps, data = find_todo_steps(flow_path)
    if not todo_steps:
        print("没有 TODO 步骤需要录制")
        return

    print(f"\n{'='*50}")
    print(f"批量坐标录制: {data.get('display_name', data.get('name'))}")
    print(f"{'='*50}")
    print(f"共 {len(todo_steps)} 个坐标待录制")
    print(f"请按顺序依次点击每个按钮\n")

    results = {}
    for i, step in enumerate(todo_steps, 1):
        desc = step['description'].replace('（TODO: 需确认坐标）', '').replace('（TODO: 需确认输入方式）', '').strip()
        print(f"  [{i}/{len(todo_steps)}] {desc}")
        print(f"         请在设备上点击该按钮...")

        coord = capture_one_tap(timeout=30)
        if coord:
            bx, by = coord
            print(f"         ✓ 坐标: ({bx}, {by})\n")
            results[step['id']] = (bx, by)
        else:
            print(f"         ✗ 超时未检测到点击\n")

    # 回填坐标到 yaml
    if results:
        print(f"\n{'='*50}")
        print(f"录制完成! 共获取 {len(results)}/{len(todo_steps)} 个坐标")
        print(f"{'='*50}\n")

        # 更新 yaml 文件
        for step in data.get('steps', []):
            if step['id'] in results:
                bx, by = results[step['id']]
                step['action']['x'] = bx
                step['action']['y'] = by
                # 移除 TODO 标记
                step['description'] = step['description'].replace('（TODO: 需确认坐标）', '').replace('（TODO: 需确认输入方式）', '').strip()

        with open(flow_path, 'w', encoding='utf-8') as f:
            yaml.dump(data, f, allow_unicode=True, default_flow_style=False, sort_keys=False)

        print(f"已更新: {flow_path}")
        print("\n录制的坐标：")
        for step_id, (bx, by) in results.items():
            print(f"  {step_id}: ({bx}, {by})")
    else:
        print("未录制到任何坐标")


if __name__ == "__main__":
    main()
