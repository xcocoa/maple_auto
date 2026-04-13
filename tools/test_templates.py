# -*- coding: utf-8 -*-
"""
模板验证工具
在游戏截图上测试模板匹配效果，验证模板是否能正确识别
可实时从设备截图测试，也可使用本地截图文件

使用方法：
1. python tools/test_templates.py                    # 使用 screen.png
2. python tools/test_templates.py --live              # 实时从设备截图
3. python tools/test_templates.py --template close_btn.png  # 测试单个模板
"""

import os
import sys
import cv2
import time
import argparse
import numpy as np
from typing import Optional, List, Tuple

# 添加项目根目录到路径
sys.path.insert(0, os.path.dirname(os.path.dirname(__file__)))

TEMPLATES_DIR = os.path.join(os.path.dirname(os.path.dirname(__file__)), "templates", "daily")
BASE_W, BASE_H = 1280, 720


def load_screenshot(path: str = "screen.png") -> Optional[np.ndarray]:
    """加载截图并缩放到基准分辨率"""
    img = cv2.imread(path)
    if img is None:
        return None
    h, w = img.shape[:2]
    if w != BASE_W or h != BASE_H:
        img = cv2.resize(img, (BASE_W, BASE_H))
    return img


def live_screenshot() -> Optional[np.ndarray]:
    """从设备实时截图"""
    try:
        from core.adb import ADB
        from core.config import Config

        # 尝试加载配置
        config_path = "config/daily.yaml"
        if not os.path.exists(config_path):
            config_path = "config/roguelike.yaml"

        config = Config(config_path)
        device_id = config.get('device.id', 'emulator-5560')
        adb = ADB(device_id)

        img = adb.screenshot(force_refresh=True)
        if img is not None:
            h, w = img.shape[:2]
            if w != BASE_W or h != BASE_H:
                img = cv2.resize(img, (BASE_W, BASE_H))
        return img
    except Exception as e:
        print(f"实时截图失败: {e}")
        return None


def test_single_template(
    screenshot: np.ndarray,
    template_name: str,
    threshold: float = 0.8
) -> List[Tuple[int, int, int, int, float]]:
    """
    测试单个模板匹配

    Returns:
        匹配结果列表 [(x1, y1, x2, y2, score), ...]
    """
    template_path = os.path.join(TEMPLATES_DIR, template_name)
    if not os.path.exists(template_path):
        print(f"  ⬜ {template_name} - 模板文件不存在")
        return []

    template = cv2.imread(template_path)
    if template is None:
        print(f"  ❌ {template_name} - 无法读取模板")
        return []

    th, tw = template.shape[:2]
    sh, sw = screenshot.shape[:2]

    if tw > sw or th > sh:
        print(f"  ❌ {template_name} - 模板尺寸({tw}x{th})大于截图({sw}x{sh})")
        return []

    result = cv2.matchTemplate(screenshot, template, cv2.TM_CCOEFF_NORMED)
    _, max_val, _, max_loc = cv2.minMaxLoc(result)

    matches = []

    if max_val >= threshold:
        x1 = max_loc[0]
        y1 = max_loc[1]
        x2 = x1 + tw
        y2 = y1 + th
        matches.append((x1, y1, x2, y2, max_val))
        print(f"  ✅ {template_name:25s} - 匹配成功! score={max_val:.4f} 位置=({x1},{y1})-({x2},{y2})")
    else:
        print(f"  ❌ {template_name:25s} - 未匹配 (最高score={max_val:.4f} < 阈值{threshold})")

    return matches


def test_all_templates(screenshot: np.ndarray, threshold: float = 0.8):
    """测试所有模板"""
    if not os.path.exists(TEMPLATES_DIR):
        print(f"模板目录不存在: {TEMPLATES_DIR}")
        return

    templates = [f for f in os.listdir(TEMPLATES_DIR) if f.endswith('.png')]
    if not templates:
        print("模板目录为空，请先使用 make_templates.py 制作模板")
        return

    print(f"\n测试 {len(templates)} 个模板 (阈值: {threshold}):")
    print("-" * 70)

    all_matches = {}
    for template_name in sorted(templates):
        matches = test_single_template(screenshot, template_name, threshold)
        if matches:
            all_matches[template_name] = matches

    print("-" * 70)
    print(f"匹配成功: {len(all_matches)}/{len(templates)}")

    return all_matches


def visualize_matches(
    screenshot: np.ndarray,
    all_matches: dict,
    window_name: str = "模板匹配结果"
):
    """可视化匹配结果"""
    display = screenshot.copy()

    colors = [
        (0, 255, 0),    # 绿
        (255, 0, 0),    # 蓝
        (0, 0, 255),    # 红
        (255, 255, 0),  # 青
        (0, 255, 255),  # 黄
        (255, 0, 255),  # 紫
    ]

    for i, (name, matches) in enumerate(all_matches.items()):
        color = colors[i % len(colors)]
        for x1, y1, x2, y2, score in matches:
            cv2.rectangle(display, (x1, y1), (x2, y2), color, 2)
            label = f"{name.replace('.png', '')} ({score:.2f})"
            cv2.putText(display, label, (x1, y1 - 5),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.4, color, 1)

    cv2.namedWindow(window_name, cv2.WINDOW_NORMAL)
    cv2.resizeWindow(window_name, BASE_W, BASE_H)
    cv2.imshow(window_name, display)

    print("\n按任意键关闭窗口...")
    cv2.waitKey(0)
    cv2.destroyAllWindows()


def main():
    parser = argparse.ArgumentParser(description="模板匹配验证工具")
    parser.add_argument("--live", action="store_true", help="从设备实时截图")
    parser.add_argument("--image", type=str, default="screen.png", help="截图文件路径")
    parser.add_argument("--template", type=str, default=None, help="测试单个模板")
    parser.add_argument("--threshold", type=float, default=0.8, help="匹配阈值")
    parser.add_argument("--no-visual", action="store_true", help="不显示可视化结果")
    args = parser.parse_args()

    print("=" * 55)
    print("🔍 冒险岛日常自动化 - 模板验证工具")
    print("=" * 55)

    # 获取截图
    if args.live:
        print("\n从设备实时截图...")
        screenshot = live_screenshot()
        if screenshot is None:
            print("❌ 无法从设备截图")
            return
        print(f"✅ 截图成功 ({screenshot.shape[1]}x{screenshot.shape[0]})")
    else:
        print(f"\n加载截图: {args.image}")
        screenshot = load_screenshot(args.image)
        if screenshot is None:
            print(f"❌ 无法加载截图: {args.image}")
            print("请先截图: adb exec-out screencap -p > screen.png")
            return
        print(f"✅ 加载成功 ({screenshot.shape[1]}x{screenshot.shape[0]})")

    # 测试模板
    if args.template:
        print(f"\n测试单个模板: {args.template}")
        print("-" * 70)
        matches = test_single_template(screenshot, args.template, args.threshold)
        all_matches = {args.template: matches} if matches else {}
    else:
        all_matches = test_all_templates(screenshot, args.threshold)

    # 可视化
    if all_matches and not args.no_visual:
        visualize_matches(screenshot, all_matches)


if __name__ == "__main__":
    main()
