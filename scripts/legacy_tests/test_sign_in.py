#!/usr/bin/env python3
"""
简单的签到测试脚本
直接使用坐标点击，不依赖模板匹配
"""

import time
import os
import sys

# 添加项目根目录到路径
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from core.adb import ADB

def test_sign_in():
    """测试签到流程"""
    print("=== 开始签到测试 ===")
    
    # 初始化ADB（使用配置中的设备ID）
    adb = ADB(device_id="ZY22LJC9ST")
    
    # 测试点击序列
    clicks = [
        (610, 1356, "点击屏幕中心"),
        (610, 2000, "点击底部区域"), 
        (610, 2400, "点击底部按钮")
    ]
    
    for i, (x, y, desc) in enumerate(clicks):
        print(f"步骤 {i+1}: {desc} ({x}, {y})")
        adb.tap(x, y)
        time.sleep(2)  # 等待界面响应
    
    print("=== 签到测试完成 ===")

if __name__ == "__main__":
    test_sign_in()