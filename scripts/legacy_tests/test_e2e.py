# -*- coding: utf-8 -*-
"""
端到端测试：使用 StateMachinePlayer 执行 daily_all 完整流程
直接复用 DailyGame 中的 ScaledADB，模拟真实执行环境
"""
import sys
import os
import time
import signal

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

import logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s'
)
logger = logging.getLogger('AutoDaily')

from core.adb import ADB
from games.daily import ScaledADB
from modules.scene_player import StateMachinePlayer


def main():
    # 解析参数
    flow_name = 'daily_all'
    if len(sys.argv) > 1:
        flow_name = sys.argv[1]

    print(f"🎮 端到端测试：执行流程 '{flow_name}'")
    print("=" * 60)

    # 初始化 ADB（与 DailyGame 完全一致）
    raw_adb = ADB('ZY22LJC9ST')
    adb = ScaledADB(raw_adb, 1280, 720)

    # 验证设备连接
    if not raw_adb.is_device_connected():
        print("❌ 设备未连接")
        return

    # 先截图触发校准
    img = adb.screenshot(force_refresh=True)
    if img is None:
        print("❌ 截图失败")
        return
    print(f"✅ 设备已连接，截图 {img.shape[1]}x{img.shape[0]}")
    print(f"   裁剪偏移: ({adb._crop_x}, {adb._crop_y})")
    print(f"   缩放比: ({adb._scale_x:.3f}, {adb._scale_y:.3f})")

    # 初始化 StateMachinePlayer（与 DailyGame 完全一致）
    player = StateMachinePlayer({})
    player.load_config('config/daily_scenes.yaml')

    available_flows = player.get_flow_names()
    print(f"✅ 可用流程: {available_flows}")

    if flow_name not in available_flows:
        print(f"❌ 流程 '{flow_name}' 不存在，可用: {available_flows}")
        return

    # 注册信号处理
    def signal_handler(sig, frame):
        print("\n⚠️ 用户中断")
        sys.exit(0)
    signal.signal(signal.SIGINT, signal_handler)

    # 执行流程
    print(f"\n▶ 开始执行 '{flow_name}'...")
    print("   按 Ctrl+C 可随时中断")
    print("=" * 60)

    start_time = time.time()
    success = player.play(flow_name, adb)
    elapsed = time.time() - start_time

    # 输出结果
    print("\n" + "=" * 60)
    if success:
        print(f"✅ 流程 '{flow_name}' 执行成功！")
    else:
        print(f"❌ 流程 '{flow_name}' 执行失败")
    print(f"   总耗时: {elapsed:.1f}s")
    print(f"   统计: {player.get_stats()}")
    print("=" * 60)


if __name__ == '__main__':
    main()
