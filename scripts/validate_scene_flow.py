#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
场景回放流程校验工具
检查 daily_scenes.yaml 中 auto_flow 的 37 步流程：
  1. 每张场景截图是否有效（非全黑、非过渡帧）
  2. 点击坐标是否落在有效游戏区域内
  3. 相邻步骤的场景是否有明显差异（避免重复步骤）
  4. 输出校验报告
"""

import os
import cv2
import yaml
import numpy as np

PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))
SCENES_DIR = os.path.join(PROJECT_ROOT, "templates", "daily", "scenes")
CONFIG_PATH = os.path.join(PROJECT_ROOT, "config", "daily_scenes.yaml")


def analyze_scene_image(img_path):
    """分析单张场景截图"""
    img = cv2.imread(img_path)
    if img is None:
        return {"valid": False, "error": "无法读取图片"}

    h, w = img.shape[:2]
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    # 计算黑边
    non_black = np.any(img != [0, 0, 0], axis=2)
    cols = np.any(non_black, axis=0)
    rows = np.any(non_black, axis=1)

    if not np.any(cols) or not np.any(rows):
        return {"valid": False, "error": "全黑帧", "brightness": 0}

    min_col, max_col = np.where(cols)[0][[0, -1]]
    min_row, max_row = np.where(rows)[0][[0, -1]]

    game_region = img[min_row:max_row+1, min_col:max_col+1]
    game_w = max_col - min_col + 1
    game_h = max_row - min_row + 1

    # 亮度
    avg_brightness = np.mean(gray)
    game_brightness = np.mean(cv2.cvtColor(game_region, cv2.COLOR_BGR2GRAY))

    # 是否为暗帧/过渡帧
    is_dark = game_brightness < 30

    return {
        "valid": True,
        "size": (w, h),
        "black_border": {"left": int(min_col), "right": int(w - max_col - 1), "top": int(min_row), "bottom": int(h - max_row - 1)},
        "game_region": {"x": int(min_col), "y": int(min_row), "w": int(game_w), "h": int(game_h)},
        "brightness": float(avg_brightness),
        "game_brightness": float(game_brightness),
        "is_dark": is_dark,
    }


def check_tap_in_game_region(tap_x, tap_y, scene_info):
    """检查点击坐标是否在有效游戏区域内（坐标基于1280x720）"""
    if not scene_info["valid"]:
        return False, "场景无效"

    gr = scene_info["game_region"]
    # 点击坐标是基于1280x720的，需要检查是否在游戏区域内
    in_x = gr["x"] <= tap_x <= gr["x"] + gr["w"]
    in_y = gr["y"] <= tap_y <= gr["y"] + gr["h"]

    if not in_x or not in_y:
        return False, f"点击({tap_x},{tap_y})超出游戏区域({gr['x']},{gr['y']})-({gr['x']+gr['w']},{gr['y']+gr['h']})"
    return True, "OK"


def compute_scene_diff(img_path1, img_path2):
    """计算两张场景截图的差异度"""
    img1 = cv2.imread(img_path1)
    img2 = cv2.imread(img_path2)
    if img1 is None or img2 is None:
        return -1

    # 缩小后比较
    small1 = cv2.resize(img1, (160, 90))
    small2 = cv2.resize(img2, (160, 90))
    gray1 = cv2.cvtColor(small1, cv2.COLOR_BGR2GRAY)
    gray2 = cv2.cvtColor(small2, cv2.COLOR_BGR2GRAY)
    diff = cv2.absdiff(gray1, gray2)
    diff_ratio = np.count_nonzero(diff > 25) / diff.size
    return diff_ratio


def main():
    # 加载配置
    with open(CONFIG_PATH, 'r', encoding='utf-8') as f:
        config = yaml.safe_load(f)

    flow = config.get("flows", {}).get("auto_flow")
    if not flow:
        print("❌ 未找到 auto_flow 流程")
        return

    actions = flow.get("actions", [])
    print(f"=" * 60)
    print(f"📋 场景回放流程校验报告")
    print(f"=" * 60)
    print(f"流程: auto_flow ({len(actions)} 步)")
    print(f"场景目录: {SCENES_DIR}")
    print()

    issues = []
    prev_img_path = None

    for i, action in enumerate(actions):
        step_num = i + 1
        scene_template = action["scene_template"]
        tap_x = action["tap_x"]
        tap_y = action["tap_y"]
        desc = action.get("description", "")
        optional = action.get("optional", False)

        img_path = os.path.join(SCENES_DIR, scene_template)

        # 1. 检查场景截图是否存在
        if not os.path.exists(img_path):
            issue = f"步骤{step_num}: 场景截图不存在 {scene_template}"
            issues.append(("❌", issue))
            print(f"  ❌ 步骤{step_num:2d}: {scene_template} - 文件不存在")
            continue

        # 2. 分析场景截图
        info = analyze_scene_image(img_path)

        if not info["valid"]:
            issue = f"步骤{step_num}: {info.get('error', '未知错误')}"
            issues.append(("❌", issue))
            print(f"  ❌ 步骤{step_num:2d}: {scene_template} - {info.get('error')}")
            continue

        # 3. 检查是否为暗帧
        if info["is_dark"]:
            issue = f"步骤{step_num}: 暗帧/过渡帧 (亮度={info['game_brightness']:.1f})"
            issues.append(("⚠️ ", issue))

        # 4. 检查点击坐标
        tap_ok, tap_msg = check_tap_in_game_region(tap_x, tap_y, info)
        if not tap_ok:
            issue = f"步骤{step_num}: {tap_msg}"
            issues.append(("❌", issue))

        # 5. 检查与上一步的差异
        diff_str = ""
        if prev_img_path:
            diff = compute_scene_diff(prev_img_path, img_path)
            if diff >= 0:
                if diff < 0.05:
                    issue = f"步骤{step_num}: 与上一步几乎相同 (差异={diff:.1%})"
                    issues.append(("⚠️ ", issue))
                diff_str = f" 差异={diff:.1%}"

        # 输出
        border = info["black_border"]
        status = "✅" if tap_ok and not info["is_dark"] else ("⚠️ " if info["is_dark"] else "❌")
        opt_mark = " [可选]" if optional else ""
        print(
            f"  {status} 步骤{step_num:2d}: {scene_template}"
            f" → 点击({tap_x:4d},{tap_y:3d}){opt_mark}"
            f" | 黑边L={border['left']:3d} R={border['right']:2d}"
            f" | 亮度={info['game_brightness']:5.1f}"
            f"{diff_str}"
        )

        prev_img_path = img_path

    # 汇总
    print()
    print(f"=" * 60)
    print(f"📊 校验汇总")
    print(f"=" * 60)
    print(f"总步骤: {len(actions)}")

    errors = [i for i in issues if i[0] == "❌"]
    warnings = [i for i in issues if i[0] == "⚠️ "]

    print(f"错误: {len(errors)} 个")
    for _, msg in errors:
        print(f"  ❌ {msg}")

    print(f"警告: {len(warnings)} 个")
    for _, msg in warnings:
        print(f"  ⚠️  {msg}")

    if not errors and not warnings:
        print("  ✅ 所有步骤校验通过！")

    # 黑边一致性检查
    print()
    print(f"📐 黑边一致性检查:")
    border_set = set()
    for action in actions:
        img_path = os.path.join(SCENES_DIR, action["scene_template"])
        if os.path.exists(img_path):
            info = analyze_scene_image(img_path)
            if info["valid"]:
                b = info["black_border"]
                border_set.add((b["left"], b["right"]))
    if len(border_set) > 1:
        print(f"  ⚠️  黑边不一致！发现 {len(border_set)} 种不同的黑边: {border_set}")
        print(f"  → 这意味着视频录制时画面有轻微偏移，点击坐标可能需要动态调整")
    else:
        print(f"  ✅ 黑边一致: {border_set}")


if __name__ == "__main__":
    main()