# -*- coding: utf-8 -*-
"""
坐标获取工具
用于快速获取游戏界面元素的坐标
"""

import cv2
import numpy as np

# 全局变量
img = None
img_copy = None

def on_mouse(event, x, y, flags, param):
    """鼠标回调函数"""
    global img, img_copy

    if event == cv2.EVENT_LBUTTONDOWN:
        # 左键点击 - 打印坐标
        print(f"\n========================================")
        print(f"坐标：({x}, {y})")
        print(f"颜色 (BGR): {img[y, x]}")
        print(f"========================================")

        # 在图片上标记
        cv2.circle(img_copy, (x, y), 5, (0, 255, 0), -1)
        cv2.putText(img_copy, f"({x},{y})", (x+10, y),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)
        cv2.imshow("点击获取坐标", img_copy)

    elif event == cv2.EVENT_RBUTTONDOWN:
        # 右键点击 - 打印区域信息
        print(f"\n右键点击：({x}, {y})")

def main():
    global img, img_copy

    print("=" * 50)
    print("冒险岛坐标获取工具")
    print("=" * 50)
    print()
    print("使用说明:")
    print("1. 在模拟器中打开冒险岛游戏")
    print("2. 按 Ctrl+S 截图，或运行:")
    print('   D:\\mumu\\MuMu Player 12\\shell\\adb.exe -s emulator-5554 shell screencap -p > screen.png')
    print("3. 把 screen.png 放到当前文件夹")
    print("4. 运行本脚本")
    print()
    print("操作说明:")
    print("- 左键点击：获取单点坐标")
    print("- 拖动鼠标：测量两点距离")
    print("- 按 Q 键：退出")
    print("- 按 R 键：重置标记")
    print()

    # 尝试加载截图
    try:
        img = cv2.imread("screen.png")
        if img is None:
            print("错误：找不到 screen.png 文件!")
            print("请先截图并保存为 screen.png")
            input("按回车退出...")
            return
    except Exception as e:
        print(f"错误：{e}")
        return

    img_copy = img.copy()

    # 显示图片信息
    print(f"图片尺寸：{img.shape[1]} x {img.shape[0]}")
    print()

    # 创建窗口
    cv2.namedWindow("点击获取坐标", cv2.WINDOW_NORMAL)
    cv2.resizeWindow("点击获取坐标", 720, 1280)
    cv2.setMouseCallback("点击获取坐标", on_mouse)

    print("现在开始点击图片获取坐标...")
    print()

    # 主循环
    while True:
        cv2.imshow("点击获取坐标", img_copy)
        key = cv2.waitKey(1) & 0xFF

        if key == ord('q'):
            break
        elif key == ord('r'):
            img_copy = img.copy()
            print("已重置标记")

    cv2.destroyAllWindows()
    print("\n程序已退出")

if __name__ == "__main__":
    main()
