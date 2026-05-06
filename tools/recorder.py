#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""录制工具入口"""

import sys
import os
import argparse
import logging

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from core.adb import ADB
from core.config import Config
from engine.recorder import Recorder


def main():
    parser = argparse.ArgumentParser(description="录制日常任务操作")
    parser.add_argument("--task", "-t", required=True, help="任务名称")
    parser.add_argument("--config", "-c", default="config/daily.yaml", help="配置文件")
    parser.add_argument("--output", "-o", default=".", help="输出目录")
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(level=level, format="%(asctime)s - %(levelname)s - %(message)s")

    config = Config(args.config)
    device_id = config.get('device.id', 'emulator-5560')
    adb_path = config.get('device.adb_path', 'adb')

    adb = ADB(device_id, adb_path)
    if not adb.is_device_connected():
        print(f"ERROR: 设备未连接: {device_id}")
        sys.exit(1)

    print(f"设备已连接: {device_id}")
    print(f"任务名称: {args.task}")
    print(f"输出目录: {args.output}")
    print("\n请在设备上手动操作，完成后按 Ctrl+C 结束录制")
    print("=" * 50)

    recorder = Recorder(adb, task_name=args.task, output_dir=args.output)
    recorder.start()


if __name__ == "__main__":
    main()
