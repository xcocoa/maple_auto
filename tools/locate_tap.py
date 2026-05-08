#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
触摸坐标定位工具
监听设备 getevent，将原始触摸坐标转换为基准坐标 (1280x575)
用法: python3 tools/locate_tap.py [--count N]
  等待用户在真机上点击，输出对应的基准坐标
"""

import sys
import os
import argparse
import subprocess
import re
import time

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


# 设备触摸面板参数 (ZY22LJC9ST)
TOUCH_MAX_X = 19520
TOUCH_MAX_Y = 43392
DEVICE_W = 2712  # 横屏宽
DEVICE_H = 1220  # 横屏高
BASE_W = 1280
BASE_H = 575

# 触摸→屏幕映射 (横屏模式，已验证)
# screenX = touch_y * device_w / touch_max_y
# screenY = (touch_max_x - touch_x) * device_h / touch_max_x
MAPPING = "Y->screenX, X_flip->screenY"


def touch_to_screen(touch_x: int, touch_y: int) -> tuple:
    """原始触摸坐标 → 设备屏幕坐标"""
    screen_x = touch_y * DEVICE_W / TOUCH_MAX_Y
    screen_y = (TOUCH_MAX_X - touch_x) * DEVICE_H / TOUCH_MAX_X
    return int(screen_x), int(screen_y)


def screen_to_base(screen_x: int, screen_y: int) -> tuple:
    """设备屏幕坐标 → 基准坐标 (1280x575)"""
    scale_x = DEVICE_W / BASE_W
    scale_y = DEVICE_H / BASE_H
    return int(screen_x / scale_x), int(screen_y / scale_y)


def find_touch_device(serial: str) -> str:
    """查找触摸输入设备路径"""
    result = subprocess.run(
        ['adb', '-s', serial, 'shell', 'getevent', '-pl'],
        capture_output=True, text=True, timeout=5
    )

    device = None
    for line in result.stdout.split('\n'):
        if 'add device' in line:
            device = line.split(':')[1].strip().split()[0] if ':' in line else None
        if 'ABS_MT_POSITION_X' in line and device:
            return device
    return '/dev/input/event10'  # fallback


def listen_taps(serial: str, device: str, count: int):
    """监听触摸事件并输出坐标"""
    print(f"\n{'='*50}")
    print(f"触摸坐标定位工具")
    print(f"{'='*50}")
    print(f"设备: {serial}")
    print(f"触摸设备: {device}")
    print(f"触摸范围: X(0~{TOUCH_MAX_X}), Y(0~{TOUCH_MAX_Y})")
    print(f"映射方式: {MAPPING}")
    print(f"设备分辨率: {DEVICE_W}x{DEVICE_H}")
    print(f"基准分辨率: {BASE_W}x{BASE_H}")
    print(f"{'='*50}")
    print(f"\n请在设备上点击目标位置（共 {count} 次）...\n")

    proc = subprocess.Popen(
        ['adb', '-s', serial, 'shell', 'getevent', '-lt', device],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True
    )

    tap_count = 0
    current_x = None
    current_y = None

    try:
        for line in proc.stdout:
            # 解析 ABS_MT_POSITION_X
            if 'ABS_MT_POSITION_X' in line:
                match = re.search(r'([0-9a-fA-F]+)\s*$', line.strip())
                if match:
                    current_x = int(match.group(1), 16)

            # 解析 ABS_MT_POSITION_Y
            elif 'ABS_MT_POSITION_Y' in line:
                match = re.search(r'([0-9a-fA-F]+)\s*$', line.strip())
                if match:
                    current_y = int(match.group(1), 16)

            # 手指抬起 = 一次完整的点击
            elif 'BTN_TOUCH' in line and 'UP' in line.upper():
                pass  # 有些设备没有这个
            elif 'SYN_REPORT' in line and current_x is not None and current_y is not None:
                # 只在有新坐标时记录
                screen_x, screen_y = touch_to_screen(current_x, current_y)
                base_x, base_y = screen_to_base(screen_x, screen_y)

                tap_count += 1
                print(f"  点击 #{tap_count}:")
                print(f"    触摸原始: ({current_x}, {current_y})")
                print(f"    设备坐标: ({screen_x}, {screen_y})")
                print(f"    基准坐标: ({base_x}, {base_y})  ← 用这个")
                print()

                current_x = None
                current_y = None

                if tap_count >= count:
                    break

    except KeyboardInterrupt:
        pass
    finally:
        proc.terminate()
        proc.wait()

    print(f"\n{'='*50}")
    print(f"完成! 共捕获 {tap_count} 次点击")
    print(f"{'='*50}")


def verify_tap(serial: str, base_x: int, base_y: int):
    """验证：用基准坐标发送点击"""
    scale_x = DEVICE_W / BASE_W
    scale_y = DEVICE_H / BASE_H
    device_x = int(base_x * scale_x)
    device_y = int(base_y * scale_y)

    print(f"\n验证点击: base({base_x}, {base_y}) → device({device_x}, {device_y})")
    subprocess.run(
        ['adb', '-s', serial, 'shell', 'input', 'tap', str(device_x), str(device_y)],
        timeout=5
    )
    print("已发送!")


def main():
    parser = argparse.ArgumentParser(description="触摸坐标定位工具")
    parser.add_argument("--device", "-d", default="ZY22LJC9ST", help="设备序列号")
    parser.add_argument("--count", "-c", type=int, default=3, help="捕获点击次数")
    parser.add_argument("--verify", "-v", nargs=2, type=int, metavar=('X', 'Y'),
                        help="验证模式: 发送基准坐标点击")
    args = parser.parse_args()

    if args.verify:
        verify_tap(args.device, args.verify[0], args.verify[1])
        return

    touch_device = find_touch_device(args.device)
    listen_taps(args.device, touch_device, args.count)


if __name__ == "__main__":
    main()
