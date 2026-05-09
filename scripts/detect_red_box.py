#!/usr/bin/env python3
"""检测截图中红框标记的位置，输出1280x720基准坐标"""
import sys
import cv2
import numpy as np

def detect_red_box(img_path):
    img = cv2.imread(img_path)
    if img is None:
        print(f"无法读取: {img_path}")
        return
    
    h, w = img.shape[:2]
    print(f"原始尺寸: {w}x{h}")
    
    # 缩放到1280x720
    img_small = cv2.resize(img, (1280, 720), interpolation=cv2.INTER_AREA)
    
    # BGR转HSV
    hsv = cv2.cvtColor(img_small, cv2.COLOR_BGR2HSV)
    
    # 红色范围1: H=0~10
    mask1 = cv2.inRange(hsv, (0, 80, 80), (10, 255, 255))
    # 红色范围2: H=160~180
    mask2 = cv2.inRange(hsv, (160, 80, 80), (180, 255, 255))
    red_mask = cv2.bitwise_or(mask1, mask2)
    
    # 形态学操作去噪
    kernel = np.ones((3, 3), np.uint8)
    red_mask = cv2.morphologyEx(red_mask, cv2.MORPH_CLOSE, kernel)
    red_mask = cv2.morphologyEx(red_mask, cv2.MORPH_OPEN, kernel)
    
    # 找轮廓
    contours, _ = cv2.findContours(red_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    
    if not contours:
        print("未检测到红色区域")
        return
    
    # 按面积排序，取最大的几个
    contours = sorted(contours, key=cv2.contourArea, reverse=True)
    
    print(f"\n检测到 {len(contours)} 个红色区域，前5个最大的:")
    for i, cnt in enumerate(contours[:5]):
        area = cv2.contourArea(cnt)
        if area < 30:
            break
        x, y, cw, ch = cv2.boundingRect(cnt)
        cx, cy = x + cw // 2, y + ch // 2
        print(f"  区域{i+1}: 位置=({x},{y}) 大小={cw}x{ch} 面积={area:.0f} 中心=({cx},{cy})")
    
    # 计算所有红色像素的整体包围框
    pts = np.where(red_mask > 0)
    if len(pts[0]) > 0:
        min_y = int(pts[0].min())
        max_y = int(pts[0].max())
        min_x = int(pts[1].min())
        max_x = int(pts[1].max())
        cx = (min_x + max_x) // 2
        cy = (min_y + max_y) // 2
        print(f"\n===== 结果(基于1280x720) =====")
        print(f"红框范围: ({min_x},{min_y}) -> ({max_x},{max_y})")
        print(f"红框大小: {max_x-min_x}x{max_y-min_y}")
        print(f"红框中心: tap_x={cx}, tap_y={cy}")

if __name__ == "__main__":
    path = sys.argv[1] if len(sys.argv) > 1 else "/Users/xuzhengxin/Code/maple_auto/templates/daily/scenes/core/scene_daily_flow_030.png"
    detect_red_box(path)
