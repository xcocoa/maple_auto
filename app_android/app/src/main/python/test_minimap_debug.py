# -*- coding: utf-8 -*-
"""
小地图调试脚本 - 保存截图和小地图区域供分析
用于诊断小地图检测失败的原因
"""

import logging
import platform_bridge
import cv2
import numpy as np
from config import Config
from modules.minimap import MinimapDetector

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)


def debug_minimap():
    """调试小地图检测"""
    
    # 初始化
    if not platform_bridge.initialize():
        logger.error("Platform bridge init failed")
        return
    
    # 初始化配置和缩放
    config = Config()
    w = platform_bridge.get_screen_width()
    h = platform_bridge.get_screen_height()
    config.init_screen_size(w, h)
    logger.info(f"Screen: {w}x{h}, scale={config.scale_factor}")
    
    # 截图
    screenshot = platform_bridge.screenshot()
    if screenshot is None:
        logger.error("Failed to capture screenshot")
        return
    
    logger.info(f"Screenshot shape: {screenshot.shape}, dtype: {screenshot.dtype}")
    
    # 获取小地图配置
    minimap_cfg = config.get_section('minimap')
    x1 = minimap_cfg.get('x1', 900)
    y1 = minimap_cfg.get('y1', 20)
    x2 = minimap_cfg.get('x2', 1260)
    y2 = minimap_cfg.get('y2', 180)
    
    logger.info(f"Minimap region (config): x1={x1}, y1={y1}, x2={x2}, y2={y2}")
    logger.info(f"Minimap region (config): ({x1}, {y1}) - ({x2}, {y2})")
    logger.info(f"Minimap size: {x2-x1} x {y2-y1}")
    
    # 验证区域边界
    h_img, w_img = screenshot.shape[:2]
    logger.info(f"Image bounds: {w_img}x{h_img}")
    logger.info(f"Minimap x2={x2} vs image width={w_img}: {'✓' if x2 <= w_img else '✗ OUT OF BOUNDS'}")
    logger.info(f"Minimap y2={y2} vs image height={h_img}: {'✓' if y2 <= h_img else '✗ OUT OF BOUNDS'}")
    
    # 提取小地图
    minimap = screenshot[y1:y2, x1:x2]
    logger.info(f"Minimap extracted shape: {minimap.shape}")
    
    # 分析小地图内容
    if minimap.size > 0:
        mean_bgr = np.mean(minimap, axis=(0, 1))
        std_bgr = np.std(minimap, axis=(0, 1))
        min_val = np.min(minimap)
        max_val = np.max(minimap)
        logger.info(f"Minimap BGR mean: {mean_bgr}, std: {std_bgr}")
        logger.info(f"Minimap min: {min_val}, max: {max_val}")
        
        # 转HSV
        minimap_hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)
        mean_hsv = np.mean(minimap_hsv, axis=(0, 1))
        logger.info(f"Minimap HSV mean: {mean_hsv}")
    else:
        logger.warning("Minimap region is empty!")
    
    # 保存全截图和小地图
    try:
        import os
        from datetime import datetime
        
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        
        # 保存全截图
        full_path = f"/sdcard/DCIM/{timestamp}_full.png"
        cv2.imwrite(full_path, screenshot)
        logger.info(f"Full screenshot saved: {full_path}")
        
        # 保存小地图
        if minimap.size > 0:
            minimap_path = f"/sdcard/DCIM/{timestamp}_minimap.png"
            cv2.imwrite(minimap_path, minimap)
            logger.info(f"Minimap saved: {minimap_path}")
            
            # 绘制小地图边框到全截图上
            viz = screenshot.copy()
            cv2.rectangle(viz, (x1, y1), (x2, y2), (0, 255, 0), 3)
            viz_path = f"/sdcard/DCIM/{timestamp}_viz.png"
            cv2.imwrite(viz_path, viz)
            logger.info(f"Visualization saved: {viz_path}")
            
    except Exception as e:
        logger.error(f"Failed to save images: {e}")
    
    # 测试怪物检测
    logger.info("=" * 60)
    logger.info("Testing monster detection...")
    logger.info("=" * 60)
    
    minimap_detector = MinimapDetector(minimap_cfg)
    monsters = minimap_detector.find_monsters(screenshot)
    logger.info(f"Monsters found: {len(monsters)}")
    for i, m in enumerate(monsters):
        logger.info(f"  Monster {i}: ({m.x}, {m.y}), area={m.area:.1f}, confidence={m.confidence:.3f}")
    
    # 测试其他检测
    player = minimap_detector.find_player(screenshot)
    logger.info(f"Player found: {player}")
    if player:
        logger.info(f"  Player: ({player.x}, {player.y}), area={player.area:.1f}")
    
    npc = minimap_detector.find_npc(screenshot)
    logger.info(f"NPC found: {npc}")
    if npc:
        logger.info(f"  NPC: ({npc.x}, {npc.y}), area={npc.area:.1f}")
    
    portal = minimap_detector.find_portal(screenshot)
    logger.info(f"Portal found: {portal}")
    if portal:
        logger.info(f"  Portal: ({portal.x}, {portal.y}), area={portal.area:.1f}")


if __name__ == '__main__':
    logger.info("=" * 60)
    logger.info("Minimap Debug Started")
    logger.info("=" * 60)
    debug_minimap()
