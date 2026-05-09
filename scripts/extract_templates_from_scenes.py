#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
从场景图片中提取UI模板
支持自动提取和手动截取模板的验证
"""

import os
import cv2
import numpy as np
import yaml

# 输入和输出路径
SCENES_DIR = "/Users/xuzhengxin/Code/maple_auto/templates/daily/scenes"
OUTPUT_DIR = "/Users/xuzhengxin/Code/maple_auto/templates/daily"
TEMPLATES_CONFIG = "/Users/xuzhengxin/Code/maple_auto/config/templates.yaml"

def load_template_config():
    """加载模板配置文件"""
    if os.path.exists(TEMPLATES_CONFIG):
        with open(TEMPLATES_CONFIG, 'r', encoding='utf-8') as f:
            return yaml.safe_load(f)
    return {}

def validate_manual_templates():
    """验证手动截取的模板"""
    config = load_template_config()
    if not config:
        print("❌ 未找到模板配置文件")
        return
    
    print("🔍 验证手动截取的模板:")
    
    for template_name in config.get('validation', {}).get('required_templates', []):
        template_info = config['templates'].get(template_name)
        if not template_info:
            continue
            
        template_path = os.path.join(OUTPUT_DIR, template_info['filename'])
        
        if os.path.exists(template_path):
            template = cv2.imread(template_path)
            if template is not None:
                # 检查尺寸
                expected_size = template_info.get('expected_size')
                actual_size = (template.shape[1], template.shape[0])
                
                # 检查非黑像素比例
                non_black_ratio = np.sum(template != 0) / template.size * 100
                min_ratio = config['validation'].get('min_non_black_pixels', 10.0)
                
                status = "✅"
                if expected_size and actual_size != tuple(expected_size):
                    status = "⚠️ "
                if non_black_ratio < min_ratio:
                    status = "❌"
                
                print(f"{status} {template_name}: {actual_size[0]}x{actual_size[1]}, 非黑像素: {non_black_ratio:.1f}%")
            else:
                print(f"❌ {template_name}: 无法读取图片")
        else:
            print(f"❌ {template_name}: 文件不存在")

def extract_templates():
    """从场景图片中提取UI模板"""
    
    # 确保输出目录存在
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    
    # 先验证手动截取的模板
    validate_manual_templates()
    
    print("\n📷 开始自动提取缺失的模板...")
    
    # 获取场景图片列表
    scene_files = [f for f in os.listdir(SCENES_DIR) if f.startswith("scene_auto_flow_") and f.endswith(".png")]
    
    if not scene_files:
        print("❌ 未找到场景图片")
        return
    
    # 尝试多个场景图片，找到最佳的模板
    best_templates = {}
    
    for scene_file in scene_files[:5]:  # 只测试前5个场景图片
        scene_path = os.path.join(SCENES_DIR, scene_file)
        print(f"\n📷 测试场景图片: {scene_file}")
        
        # 读取图片
        img = cv2.imread(scene_path)
        if img is None:
            continue
        
        # 动态计算黑边偏移量
        non_black = np.any(img != [0, 0, 0], axis=2)
        cols = np.any(non_black, axis=0)
        min_col, max_col = np.where(cols)[0][[0, -1]]
        game_width = max_col - min_col + 1
        
        # 定义UI元素位置（基于实际游戏区域）
        ui_positions = {
            "close_btn.png": (game_width - 70, 50, game_width, 120),
            "back_btn.png": (0, 50, 70, 120),
            "home_btn.png": (game_width//2 - 40, 50, game_width//2 + 40, 130),
            "quest_btn.png": (game_width//6 - 40, 600, game_width//6 + 40, 680),
            "shop_btn.png": (game_width//3 - 40, 600, game_width//3 + 40, 680),
            "mail_btn.png": (game_width//2 - 40, 600, game_width//2 + 40, 680),
            "sign_in_btn.png": (2*game_width//3 - 40, 600, 2*game_width//3 + 40, 680),
            "confirm_btn.png": (game_width//2 - 140, 500, game_width//2 + 140, 580),
            "cancel_btn.png": (game_width//2 - 140, 500, game_width//2 + 140, 580),
            "collect_all.png": (game_width - 180, 500, game_width, 580),
            "auto_battle.png": (game_width - 180, 300, game_width, 380),
        }
        
        # 提取并测试模板质量
        for template_name, (x1, y1, x2, y2) in ui_positions.items():
            # 确保坐标在图片范围内（考虑黑边偏移）
            x1_adj, y1_adj = max(0, x1), max(0, y1)
            x2_adj, y2_adj = min(game_width, x2), min(720, y2)
            
            if x2_adj > x1_adj and y2_adj > y1_adj:
                # 裁剪区域（考虑黑边偏移）
                crop = img[y1_adj:y2_adj, x1_adj+min_col:x2_adj+min_col]
                
                # 检查模板质量（非全黑且尺寸正确）
                if np.any(crop != [0, 0, 0]) and crop.shape[0] > 0 and crop.shape[1] > 0:
                    if template_name not in best_templates:
                        best_templates[template_name] = crop
                    else:
                        # 选择更清晰的模板（基于像素方差）
                        current_var = np.var(crop)
                        best_var = np.var(best_templates[template_name])
                        if current_var > best_var:
                            best_templates[template_name] = crop
    
    # 保存最佳模板
    for template_name, template_img in best_templates.items():
        output_path = os.path.join(OUTPUT_DIR, template_name)
        cv2.imwrite(output_path, template_img)
        print(f"✅ 已保存: {template_name} ({template_img.shape[1]}x{template_img.shape[0]})")
    
    print(f"\n🎯 总共提取了 {len(best_templates)} 个UI模板")

if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(description='UI模板管理工具')
    parser.add_argument('--validate', action='store_true', help='只验证手动截取的模板')
    parser.add_argument('--extract', action='store_true', help='提取缺失的模板')
    
    args = parser.parse_args()
    
    if args.validate:
        validate_manual_templates()
    elif args.extract:
        extract_templates()
    else:
        # 默认行为：先验证再提取
        validate_manual_templates()
        extract_templates()