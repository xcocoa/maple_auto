#!/usr/bin/env python3
"""OCR 文本感知区域优先级 - 性能验证"""
import cv2, sys, time
sys.path.insert(0, '.')
from modules.ui_detector import UIDetector

img = cv2.imread('debug_input.png')
d = UIDetector({})

print('预热模型...', flush=True)
d.ocr.ocr(img)
print('预热完成\n', flush=True)

UIDetector.invalidate_ocr_cache()

# T1: '关闭' -> right_half 优先（应直接命中，不再先扫 center）
t = time.time()
r = d.find_text(img, '关闭')
e1 = time.time() - t
print(f'T1 关闭(right_half优先): {e1:.2f}s ok={r is not None} {f"({r.x},{r.y})" if r else ""}', flush=True)

# T2: '使用' 同帧 -> 帧缓存中 right_half 有结果
t = time.time()
r = d.find_text(img, '使用')
e2 = time.time() - t
print(f'T2 使用(同帧缓存):      {e2:.4f}s ok={r is not None} {f"({r.x},{r.y})" if r else ""}', flush=True)

UIDetector.invalidate_ocr_cache()

# T3: '使用' -> center 优先（应直接命中）
t = time.time()
r = d.find_text(img, '使用')
e3 = time.time() - t
print(f'T3 使用(center优先):     {e3:.2f}s ok={r is not None} {f"({r.x},{r.y})" if r else ""}', flush=True)

# T4: '领取' 同帧 -> center 缓存 miss, right_half 新扫描
t = time.time()
r = d.find_text(img, '领取')
e4 = time.time() - t
print(f'T4 领取(同帧+right扫描): {e4:.2f}s ok={r is not None} {f"({r.x},{r.y})" if r else ""}', flush=True)

# T5: '关闭' 同帧 -> right_half 缓存命中
t = time.time()
r = d.find_text(img, '关闭')
e5 = time.time() - t
print(f'T5 关闭(同帧缓存):      {e5:.4f}s ok={r is not None} {f"({r.x},{r.y})" if r else ""}', flush=True)

# T6: '确定' 同帧 -> center 缓存命中
t = time.time()
r = d.find_text(img, '确定')
e6 = time.time() - t
print(f'T6 确定(同帧缓存):      {e6:.4f}s ok={r is not None}', flush=True)

# 基准
t = time.time()
d.ocr.ocr(img)
e_full = time.time() - t
print(f'\n全图OCR基准: {e_full:.2f}s', flush=True)

print(f'\n=== 性能总结 ===', flush=True)
for name, e in [('关闭(right优先)', e1), ('使用(同帧缓存)', e2), ('使用(center优先)', e3),
                ('领取(同帧+right)', e4), ('关闭(同帧缓存)', e5), ('确定(同帧缓存)', e6)]:
    sp = e_full / max(e, 0.0001)
    print(f'  {name:22s}: {e:.4f}s  {f"加速{sp:.0f}x" if sp > 1.5 else ""}', flush=True)
print('DONE', flush=True)
