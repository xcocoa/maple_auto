# -*- coding: utf-8 -*-
"""
截图预处理脚本
将全面屏截图（2712x1220）裁剪缩放到基准分辨率（1280x720）
供离线测试框架使用
"""

import cv2
import os
import sys

BASE_W, BASE_H = 1280, 720


def crop_and_scale(img):
    """模拟 ScaledADB 的裁剪+缩放逻辑"""
    h, w = img.shape[:2]
    base_ratio = BASE_W / BASE_H
    device_ratio = w / h

    if device_ratio > base_ratio + 0.05:
        # 设备更宽（全面屏横屏），以高度为基准裁剪宽度
        target_w = int(h * base_ratio)
        crop_x = (w - target_w) // 2
        img = img[0:h, crop_x:crop_x + target_w]
    elif device_ratio < base_ratio - 0.05:
        # 设备更高，以宽度为基准裁剪高度
        target_h = int(w / base_ratio)
        crop_y = (h - target_h) // 2
        img = img[crop_y:crop_y + target_h, 0:w]

    return cv2.resize(img, (BASE_W, BASE_H))


def process_file(src_path, dst_path):
    """处理单个截图文件"""
    img = cv2.imread(src_path)
    if img is None:
        print(f"  ❌ 无法读取: {src_path}")
        return False

    h, w = img.shape[:2]
    if w == BASE_W and h == BASE_H:
        # 已经是基准分辨率，直接复制
        cv2.imwrite(dst_path, img)
        print(f"  ✅ {os.path.basename(src_path)} → {os.path.basename(dst_path)} (已是1280x720)")
    else:
        scaled = crop_and_scale(img)
        cv2.imwrite(dst_path, scaled)
        print(f"  ✅ {os.path.basename(src_path)} ({w}x{h}) → {os.path.basename(dst_path)} (1280x720)")
    return True


def main():
    project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    logs_dir = os.path.join(project_root, "logs")
    dst_dir = os.path.join(project_root, "tests", "screenshots")
    os.makedirs(dst_dir, exist_ok=True)

    # 映射：源文件名 → 目标文件名（语义化命名）
    file_map = {
        # logs/ 目录下的截图
        os.path.join(logs_dir, "screen_main.png"): "main_screen.png",
        os.path.join(logs_dir, "screen_menu.png"): "menu_panel.png",
        os.path.join(logs_dir, "screen_menu2.png"): "menu_panel_2.png",
        os.path.join(logs_dir, "screen_menu3.png"): "menu_panel_3.png",
        os.path.join(logs_dir, "screen_menu4.png"): "menu_panel_4.png",
        os.path.join(logs_dir, "screen_guild.png"): "guild_page.png",
        os.path.join(logs_dir, "screen_clean.png"): "clean_screen.png",
        os.path.join(logs_dir, "screen_nobubble.png"): "nobubble_screen.png",
        os.path.join(logs_dir, "screen_pre.png"): "pre_screen.png",
        os.path.join(logs_dir, "screen_pre2.png"): "pre_screen_2.png",
        os.path.join(logs_dir, "screen_pre3.png"): "pre_screen_3.png",
        os.path.join(logs_dir, "screen_test.png"): "test_screen.png",
        os.path.join(logs_dir, "screen_test2.png"): "test_screen_2.png",
        os.path.join(logs_dir, "screen_test3.png"): "test_screen_3.png",
    }

    # 根目录下的截图
    root_files = {
        os.path.join(project_root, "current_screen.png"): "current_screen.png",
        os.path.join(project_root, "current_screen2.png"): "current_screen_2.png",
        os.path.join(project_root, "current_screen3.png"): "current_screen_3.png",
        os.path.join(project_root, "current_screen4.png"): "current_screen_4.png",
        os.path.join(project_root, "current_screen5.png"): "current_screen_5.png",
    }
    file_map.update(root_files)

    print(f"📸 截图预处理：将全面屏截图裁剪缩放到 {BASE_W}x{BASE_H}")
    print(f"   输出目录: {dst_dir}")
    print()

    success = 0
    for src_path, dst_name in file_map.items():
        if os.path.exists(src_path):
            dst_path = os.path.join(dst_dir, dst_name)
            if process_file(src_path, dst_path):
                success += 1

    print(f"\n✅ 处理完成: {success} 个截图")
    print(f"   保存到: {dst_dir}")


if __name__ == "__main__":
    main()
