# -*- coding: utf-8 -*-
"""
模板裁剪工具
从游戏截图中交互式裁剪 UI 元素，保存为模板图片
用于日常自动化的模板制作

使用方法：
1. 先通过 ADB 截图：adb exec-out screencap -p > screen.png
2. 运行本脚本：python tools/make_templates.py
3. 在图片上拖拽框选 UI 元素区域
4. 按提示输入模板名称保存
"""

import os
import sys
import cv2
import numpy as np

# 全局变量
img = None
img_display = None
drawing = False
start_x, start_y = 0, 0
end_x, end_y = 0, 0
crop_regions = []  # 已裁剪的区域列表

# 输出目录
OUTPUT_DIR = os.path.join(os.path.dirname(os.path.dirname(__file__)), "templates", "daily")

# 基准分辨率
BASE_W, BASE_H = 1280, 720

# 需要制作的模板清单
TEMPLATE_CHECKLIST = {
    "通用 UI": [
        ("close_btn.png", "关闭按钮（X）"),
        ("confirm_btn.png", "确认按钮"),
        ("cancel_btn.png", "取消按钮"),
        ("back_btn.png", "返回按钮（←）"),
        ("home_btn.png", "主界面按钮"),
    ],
    "每日签到": [
        ("sign_in_btn.png", "签到按钮"),
        ("sign_in_reward.png", "签到奖励弹窗"),
    ],
    "邮件": [
        ("mail_btn.png", "邮箱按钮/图标"),
        ("collect_all.png", "一键领取按钮"),
        ("mail_empty.png", "邮箱为空提示"),
    ],
    "每日任务": [
        ("quest_btn.png", "任务按钮/图标"),
        ("daily_tab.png", "每日标签页"),
        ("quest_go.png", "前往按钮"),
        ("quest_complete.png", "任务完成标记"),
        ("quest_reward.png", "领取奖励按钮"),
    ],
    "商店": [
        ("shop_btn.png", "商店按钮/图标"),
        ("buy_btn.png", "购买按钮"),
        ("buy_confirm.png", "确认购买弹窗按钮"),
        ("item_stamina.png", "体力药水图标"),
    ],
    "挂机打怪": [
        ("auto_battle.png", "自动战斗按钮"),
    ],
}


def on_mouse(event, x, y, flags, param):
    """鼠标回调：拖拽框选区域"""
    global drawing, start_x, start_y, end_x, end_y, img_display

    if event == cv2.EVENT_LBUTTONDOWN:
        drawing = True
        start_x, start_y = x, y
        end_x, end_y = x, y

    elif event == cv2.EVENT_MOUSEMOVE:
        if drawing:
            end_x, end_y = x, y
            # 实时绘制选框
            img_display = img.copy()
            draw_existing_regions(img_display)
            cv2.rectangle(img_display, (start_x, start_y), (end_x, end_y), (0, 255, 0), 2)
            # 显示尺寸
            w = abs(end_x - start_x)
            h = abs(end_y - start_y)
            cv2.putText(img_display, f"{w}x{h}", (min(start_x, end_x), min(start_y, end_y) - 5),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)
            cv2.imshow("模板裁剪工具", img_display)

    elif event == cv2.EVENT_LBUTTONUP:
        drawing = False
        end_x, end_y = x, y

        # 确保坐标有效
        x1 = min(start_x, end_x)
        y1 = min(start_y, end_y)
        x2 = max(start_x, end_x)
        y2 = max(start_y, end_y)

        if x2 - x1 > 5 and y2 - y1 > 5:
            print(f"\n已选择区域: ({x1}, {y1}) → ({x2}, {y2}), 尺寸: {x2-x1}x{y2-y1}")
            save_crop(x1, y1, x2, y2)
        else:
            # 单击 - 显示坐标和颜色
            print(f"坐标: ({x}, {y}), BGR: {img[y, x]}")

    elif event == cv2.EVENT_RBUTTONDOWN:
        # 右键 - 显示坐标信息
        print(f"坐标: ({x}, {y}), BGR: {img[y, x]}")
        hsv = cv2.cvtColor(img[y:y+1, x:x+1], cv2.COLOR_BGR2HSV)
        print(f"HSV: {hsv[0, 0]}")


def draw_existing_regions(display_img):
    """在图片上绘制已保存的区域"""
    for region in crop_regions:
        x1, y1, x2, y2, name = region
        cv2.rectangle(display_img, (x1, y1), (x2, y2), (255, 0, 0), 1)
        cv2.putText(display_img, name, (x1, y1 - 3),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.4, (255, 0, 0), 1)


def save_crop(x1, y1, x2, y2):
    """保存裁剪区域为模板图片"""
    global img_display

    # 裁剪
    crop = img[y1:y2, x1:x2]

    # 显示裁剪预览
    preview = cv2.resize(crop, (crop.shape[1] * 3, crop.shape[0] * 3), interpolation=cv2.INTER_NEAREST)
    cv2.imshow("裁剪预览 (3x放大)", preview)

    # 提示输入文件名
    print("\n请输入模板文件名（不含路径，如 close_btn.png）")
    print("直接回车跳过，输入 q 取消：")
    name = input("> ").strip()

    if not name or name == 'q':
        print("已取消")
        cv2.destroyWindow("裁剪预览 (3x放大)")
        return

    # 补全 .png 后缀
    if not name.endswith('.png'):
        name += '.png'

    # 保存
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    filepath = os.path.join(OUTPUT_DIR, name)

    if os.path.exists(filepath):
        print(f"文件已存在: {filepath}")
        overwrite = input("是否覆盖？(y/n) > ").strip().lower()
        if overwrite != 'y':
            print("已取消")
            cv2.destroyWindow("裁剪预览 (3x放大)")
            return

    cv2.imwrite(filepath, crop)
    print(f"✅ 已保存: {filepath} ({crop.shape[1]}x{crop.shape[0]})")

    # 记录已裁剪区域
    crop_regions.append((x1, y1, x2, y2, name))

    # 更新显示
    img_display = img.copy()
    draw_existing_regions(img_display)
    cv2.imshow("模板裁剪工具", img_display)
    cv2.destroyWindow("裁剪预览 (3x放大)")


def print_checklist():
    """打印模板制作清单"""
    print("\n" + "=" * 55)
    print("📋 模板制作清单")
    print("=" * 55)

    for category, templates in TEMPLATE_CHECKLIST.items():
        print(f"\n【{category}】")
        for filename, desc in templates:
            filepath = os.path.join(OUTPUT_DIR, filename)
            status = "✅" if os.path.exists(filepath) else "⬜"
            print(f"  {status} {filename:25s} - {desc}")

    # 统计
    total = sum(len(t) for t in TEMPLATE_CHECKLIST.values())
    done = sum(
        1 for templates in TEMPLATE_CHECKLIST.values()
        for filename, _ in templates
        if os.path.exists(os.path.join(OUTPUT_DIR, filename))
    )
    print(f"\n进度: {done}/{total}")
    print("=" * 55)


def main():
    global img, img_display

    print("=" * 55)
    print("🖼️  冒险岛日常自动化 - 模板裁剪工具")
    print("=" * 55)
    print()

    # 打印清单
    print_checklist()

    print()
    print("使用说明:")
    print("  1. 先截图: adb exec-out screencap -p > screen.png")
    print("  2. 在图片上拖拽框选 UI 元素")
    print("  3. 输入模板名称保存")
    print()
    print("快捷键:")
    print("  左键拖拽 - 框选区域")
    print("  右键点击 - 查看坐标/颜色/HSV")
    print("  R 键     - 重置标记")
    print("  L 键     - 显示模板清单")
    print("  Q 键     - 退出")
    print()

    # 查找截图文件
    screenshot_paths = ["screen.png", "screenshot.png", "screenshots/screen.png"]
    img_path = None
    for p in screenshot_paths:
        if os.path.exists(p):
            img_path = p
            break

    if img_path is None:
        print("❌ 找不到截图文件！")
        print("请先执行以下命令截图：")
        print("  adb exec-out screencap -p > screen.png")
        print()
        input("按回车退出...")
        return

    # 加载图片
    img = cv2.imread(img_path)
    if img is None:
        print(f"❌ 无法读取图片: {img_path}")
        return

    h, w = img.shape[:2]
    print(f"已加载截图: {img_path} ({w}x{h})")

    # 如果分辨率不是基准分辨率，缩放
    if w != BASE_W or h != BASE_H:
        print(f"缩放到基准分辨率: {BASE_W}x{BASE_H}")
        img = cv2.resize(img, (BASE_W, BASE_H))

    img_display = img.copy()

    # 创建窗口
    cv2.namedWindow("模板裁剪工具", cv2.WINDOW_NORMAL)
    cv2.resizeWindow("模板裁剪工具", BASE_W, BASE_H)
    cv2.setMouseCallback("模板裁剪工具", on_mouse)

    print("\n开始裁剪模板，请在图片上框选 UI 元素...")
    print()

    while True:
        cv2.imshow("模板裁剪工具", img_display)
        key = cv2.waitKey(1) & 0xFF

        if key == ord('q'):
            break
        elif key == ord('r'):
            img_display = img.copy()
            crop_regions.clear()
            print("已重置所有标记")
        elif key == ord('l'):
            print_checklist()

    cv2.destroyAllWindows()

    # 最终清单
    print()
    print_checklist()
    print("\n程序已退出")


if __name__ == "__main__":
    main()
