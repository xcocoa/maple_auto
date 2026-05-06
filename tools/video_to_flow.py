#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
视频关键帧 → Flow YAML 自动生成工具
使用 OCR 分析关键帧中的按钮文字，推断点击位置，生成 Flow YAML。

使用方法：
  python tools/video_to_flow.py --scenes screenshots/daily_sign_in/scenes/ --task daily_sign_in
  python tools/video_to_flow.py --scenes screenshots/daily_sign_in/scenes/ --task daily_sign_in --interactive
"""

import os
import sys
import cv2
import yaml
import argparse
import logging
import numpy as np
from typing import List, Dict, Optional, Tuple

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

logger = logging.getLogger('VideoToFlow')

# 常见可点击按钮文字（用于识别哪些 OCR 结果是按钮）
BUTTON_KEYWORDS = [
    '确定', '确认', '关闭', '领取', '签到', '开始', '前往',
    '立即查看', '一键领取', '全部领取', '入场', '退出',
    '点击开始', '返回', '下一步', '跳过', '使用',
    '购买', '强化', '升级', '抽奖',
]

# 按钮区域特征（通常在这些区域有按钮）
BUTTON_REGIONS = {
    'bottom_center': (400, 500, 880, 576),   # 底部中央
    'center': (300, 200, 980, 450),           # 画面中央
    'top_right': (1100, 0, 1280, 80),         # 右上角（关闭按钮）
    'top_left': (0, 0, 150, 80),              # 左上角（返回按钮）
}


def load_keyframes(scenes_dir: str) -> List[Tuple[str, np.ndarray]]:
    """加载关键帧图片"""
    frames = []
    files = sorted([f for f in os.listdir(scenes_dir) if f.endswith('.png')])
    for filename in files:
        path = os.path.join(scenes_dir, filename)
        img = cv2.imread(path)
        if img is not None:
            frames.append((filename, img))
    logger.info(f"加载了 {len(frames)} 个关键帧")
    return frames


def deduplicate_frames(frames: List[Tuple[str, np.ndarray]], threshold: float = 15.0) -> List[Tuple[str, np.ndarray]]:
    """去除相似帧，只保留场景明显不同的帧"""
    if not frames:
        return []

    result = [frames[0]]
    prev_gray = cv2.cvtColor(frames[0][1], cv2.COLOR_BGR2GRAY)
    prev_small = cv2.resize(prev_gray, (320, 144))

    for filename, img in frames[1:]:
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        small = cv2.resize(gray, (320, 144))
        diff = cv2.absdiff(prev_small, small)
        mean_diff = np.mean(diff)

        if mean_diff > threshold:
            result.append((filename, img))
            prev_small = small

    logger.info(f"去重后保留 {len(result)} 个不同场景")
    return result


def ocr_frame(img: np.ndarray) -> List[Dict]:
    """对单帧执行 OCR，返回检测到的文本列表"""
    try:
        from paddleocr import PaddleOCR
    except ImportError:
        logger.error("未安装 paddleocr，请运行: pip install paddleocr paddlepaddle")
        return []

    # 使用全局 OCR 实例
    global _ocr_instance
    if '_ocr_instance' not in globals() or _ocr_instance is None:
        _ocr_instance = PaddleOCR(
            use_doc_orientation_classify=False,
            use_doc_unwarping=False,
            use_textline_orientation=False,
        )

    result = _ocr_instance.ocr(img)
    texts = []

    if not result or not result[0]:
        return texts

    ocr_data = result[0]

    # 兼容新旧版本
    if hasattr(ocr_data, 'keys') and 'rec_texts' in ocr_data:
        # 新版 PaddleOCR >= 3.5
        for i, text in enumerate(ocr_data['rec_texts']):
            poly = ocr_data['dt_polys'][i]
            xs = poly[:, 0]
            ys = poly[:, 1]
            x_min, x_max = float(xs.min()), float(xs.max())
            y_min, y_max = float(ys.min()), float(ys.max())
            texts.append({
                'text': text,
                'x': int((x_min + x_max) / 2),
                'y': int((y_min + y_max) / 2),
                'w': int(x_max - x_min),
                'h': int(y_max - y_min),
                'confidence': float(ocr_data['rec_scores'][i]),
            })
    else:
        # 旧版
        for line in ocr_data:
            box = line[0]
            text = line[1][0]
            confidence = line[1][1]
            xs = [pt[0] for pt in box]
            ys = [pt[1] for pt in box]
            x_min, x_max = min(xs), max(xs)
            y_min, y_max = min(ys), max(ys)
            texts.append({
                'text': text,
                'x': int((x_min + x_max) / 2),
                'y': int((y_min + y_max) / 2),
                'w': int(x_max - x_min),
                'h': int(y_max - y_min),
                'confidence': confidence,
            })

    return texts


def identify_buttons(ocr_results: List[Dict]) -> List[Dict]:
    """从 OCR 结果中识别可能的按钮"""
    buttons = []

    for item in ocr_results:
        text = item['text']
        is_button = False

        # 检查是否匹配按钮关键词
        for keyword in BUTTON_KEYWORDS:
            if keyword in text or text in keyword:
                is_button = True
                break

        # 短文本（2-4字）且置信度高，可能是按钮
        if not is_button and 2 <= len(text) <= 6 and item['confidence'] > 0.8:
            # 检查是否在典型按钮区域
            for region_name, (rx1, ry1, rx2, ry2) in BUTTON_REGIONS.items():
                if rx1 <= item['x'] <= rx2 and ry1 <= item['y'] <= ry2:
                    is_button = True
                    break

        if is_button:
            buttons.append(item)

    return buttons


def analyze_scenes(frames: List[Tuple[str, np.ndarray]], interactive: bool = False) -> List[Dict]:
    """分析每个场景的 OCR 结果和按钮"""
    scenes = []

    print(f"\n{'='*60}")
    print(f"分析 {len(frames)} 个场景...")
    print(f"{'='*60}\n")

    for i, (filename, img) in enumerate(frames):
        print(f"[{i+1}/{len(frames)}] 分析 {filename}...")

        ocr_results = ocr_frame(img)
        buttons = identify_buttons(ocr_results)

        scene_info = {
            'index': i,
            'filename': filename,
            'image': img,
            'ocr_texts': ocr_results,
            'buttons': buttons,
        }

        # 打印检测到的文本
        if ocr_results:
            all_texts = [f"'{t['text']}'({t['x']},{t['y']})" for t in ocr_results[:10]]
            print(f"  文本: {', '.join(all_texts)}")

        if buttons:
            btn_texts = [f"[{b['text']}]({b['x']},{b['y']})" for b in buttons]
            print(f"  按钮: {', '.join(btn_texts)}")
        else:
            print(f"  按钮: 无（可能需要手动标注）")

        if interactive and buttons:
            print(f"\n  检测到的按钮候选:")
            for j, btn in enumerate(buttons):
                print(f"    {j+1}. [{btn['text']}] 位置=({btn['x']}, {btn['y']}) 置信度={btn['confidence']:.2f}")

            choice = input(f"  选择要点击的按钮编号 (1-{len(buttons)}, Enter跳过, q退出): ").strip()
            if choice == 'q':
                break
            elif choice.isdigit() and 1 <= int(choice) <= len(buttons):
                scene_info['selected_button'] = buttons[int(choice) - 1]
            # 否则跳过
        elif buttons:
            # 非交互模式：选第一个匹配到的按钮关键词
            scene_info['selected_button'] = buttons[0]

        scenes.append(scene_info)
        print()

    return scenes


def generate_flow_yaml(scenes: List[Dict], task_name: str, output_dir: str):
    """根据分析结果生成 Flow YAML"""

    # 创建输出目录
    flow_dir = os.path.join(output_dir, "flows")
    screenshot_dir = os.path.join(output_dir, "screenshots", task_name)
    scenes_out_dir = os.path.join(screenshot_dir, "scenes")
    targets_out_dir = os.path.join(screenshot_dir, "targets")
    os.makedirs(flow_dir, exist_ok=True)
    os.makedirs(scenes_out_dir, exist_ok=True)
    os.makedirs(targets_out_dir, exist_ok=True)

    steps = []
    flow_scenes = {}
    flow_targets = {}

    for i, scene in enumerate(scenes):
        if 'selected_button' not in scene:
            continue  # 跳过没有按钮的场景

        btn = scene['selected_button']
        step_id = f"step_{i+1:02d}_{btn['text'].replace(' ', '_')}"
        scene_name = f"scene_{i+1:02d}"
        target_name = f"target_{i+1:02d}_{btn['text']}"

        # 保存场景截图
        scene_file = f"scenes/{scene_name}.png"
        cv2.imwrite(os.path.join(screenshot_dir, scene_file), scene['image'])

        # 裁剪目标模板（按钮周围区域）
        img = scene['image']
        h, w = img.shape[:2]
        crop_size = max(btn['w'], btn['h']) + 20  # 比按钮大一圈
        half = crop_size // 2
        cx, cy = btn['x'], btn['y']
        x1 = max(0, cx - half)
        y1 = max(0, cy - half)
        x2 = min(w, cx + half)
        y2 = min(h, cy + half)
        target_crop = img[y1:y2, x1:x2]

        target_file = f"targets/{target_name}.png"
        if target_crop.size > 0:
            cv2.imwrite(os.path.join(screenshot_dir, target_file), target_crop)

        # 添加场景定义
        flow_scenes[scene_name] = {
            'templates': [scene_file],
            'threshold': 0.65,
        }

        # 添加目标定义
        flow_targets[target_name] = {
            'template': target_file,
            'fallback_pos': [btn['x'], btn['y']],
            'threshold': 0.7,
        }

        # 下一个场景用于验证
        next_scene = None
        if i + 1 < len(scenes):
            next_scene_name = f"scene_{i+2:02d}"
            next_img = scenes[i+1]['image']
            next_file = f"scenes/{next_scene_name}.png"
            cv2.imwrite(os.path.join(screenshot_dir, next_file), next_img)
            flow_scenes[next_scene_name] = {
                'templates': [next_file],
                'threshold': 0.65,
            }
            next_scene = next_scene_name

        # 添加步骤
        step = {
            'id': step_id,
            'description': f"点击 [{btn['text']}] ({btn['x']}, {btn['y']})",
            'expect_scene': scene_name,
            'action': {
                'type': 'tap',
                'target': target_name,
            },
            'verify': {
                'scene': next_scene or scene_name,
                'timeout': 5.0,
            },
            'on_fail': 'retry',
        }
        steps.append(step)

    # 组装 Flow YAML
    flow_data = {
        'name': task_name,
        'display_name': task_name.replace('_', ' ').title(),
        'timeout': 120,
        'max_retries': 2,
        'steps': steps,
        'scenes': flow_scenes,
        'targets': flow_targets,
    }

    flow_path = os.path.join(flow_dir, f"{task_name}.yaml")
    with open(flow_path, 'w', encoding='utf-8') as f:
        yaml.dump(flow_data, f, allow_unicode=True, default_flow_style=False, sort_keys=False)

    print(f"\n{'='*60}")
    print(f"Flow YAML 生成完成！")
    print(f"{'='*60}")
    print(f"  Flow 文件: {flow_path}")
    print(f"  截图目录: {screenshot_dir}")
    print(f"  步骤数量: {len(steps)}")
    print(f"  场景数量: {len(flow_scenes)}")
    print(f"  目标数量: {len(flow_targets)}")
    print()
    print("下一步:")
    print(f"  1. 检查生成的 YAML: cat {flow_path}")
    print(f"  2. 离线测试: python tools/test_flow.py {flow_path} -s {screenshot_dir}")
    print(f"  3. 真机运行: python main.py daily")

    return flow_path


def main():
    parser = argparse.ArgumentParser(description="从视频关键帧自动生成 Flow YAML")
    parser.add_argument("--scenes", "-s", required=True, help="关键帧目录")
    parser.add_argument("--task", "-t", required=True, help="任务名称")
    parser.add_argument("--output", "-o", default=".", help="输出根目录")
    parser.add_argument("--interactive", "-i", action="store_true", help="交互模式（手动选择按钮）")
    parser.add_argument("--dedup-threshold", type=float, default=15.0, help="去重阈值")
    parser.add_argument("--verbose", "-v", action="store_true")
    args = parser.parse_args()

    level = logging.DEBUG if args.verbose else logging.INFO
    logging.basicConfig(level=level, format="%(levelname)s - %(message)s")

    # 加载关键帧
    frames = load_keyframes(args.scenes)
    if not frames:
        print(f"ERROR: 目录为空或无图片: {args.scenes}")
        sys.exit(1)

    # 去重
    frames = deduplicate_frames(frames, threshold=args.dedup_threshold)

    # OCR 分析
    scenes = analyze_scenes(frames, interactive=args.interactive)

    # 生成 Flow YAML
    generate_flow_yaml(scenes, args.task, args.output)


if __name__ == "__main__":
    main()
