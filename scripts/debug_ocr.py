#!/usr/bin/env python3
"""调试OCR性能优化：mobile模型 + 缓存机制"""
import cv2, sys, time
sys.path.insert(0, '.')
from core.adb import ADB
from modules.ui_detector import UIDetector

print('=' * 60)
print('OCR 性能优化调试')
print('=' * 60)

# 连接设备截图
adb = ADB('ZY22LJC9ST')
raw = adb.screenshot(force_refresh=True)
h, w = raw.shape[:2]
print(f'设备截图: {w}x{h}')

# 裁剪16:9并缩放到基准分辨率
cw = int(h * 1280/720)
cx = (w - cw) // 2
cropped = raw[0:h, cx:cx+cw]
img = cv2.resize(cropped, (1280, 720))
cv2.imwrite('debug_input.png', img)
print(f'基准分辨率: {img.shape[1]}x{img.shape[0]}')

detector = UIDetector({})
print(f'UIDetector 创建完成')

# 测试1: 首次 OCR（含模型加载）
print('\n--- 测试1: 首次 OCR（含模型加载）---')
t0 = time.time()
r1 = detector.find_text(img, '使用')
elapsed1 = time.time() - t0
print(f'耗时: {elapsed1:.2f}s')
if r1:
    print(f'✅ 找到 "使用": ({r1.x},{r1.y}) conf={r1.confidence:.3f}')
else:
    print(f'❌ 未找到 "使用"')

# 测试2: 同一帧查找第二个文本（应命中缓存）
print('\n--- 测试2: 同一帧查找 "领取"（应命中缓存）---')
t1 = time.time()
r2 = detector.find_text(img, '领取')
elapsed2 = time.time() - t1
print(f'耗时: {elapsed2:.2f}s')
if r2:
    print(f'✅ 找到 "领取": ({r2.x},{r2.y}) conf={r2.confidence:.3f}')
else:
    print(f'❌ 未找到 "领取"')

# 测试3: 同一帧查找第三个文本（应命中缓存）
print('\n--- 测试3: 同一帧查找 "关闭"（应命中缓存）---')
t2 = time.time()
r3 = detector.find_text(img, '关闭')
elapsed3 = time.time() - t2
print(f'耗时: {elapsed3:.2f}s')
if r3:
    print(f'✅ 找到 "关闭": ({r3.x},{r3.y}) conf={r3.confidence:.3f}')
else:
    print(f'❌ 未找到 "关闭"')

# 测试4: 新截图（缓存失效，重新 OCR）
print('\n--- 测试4: 新截图（缓存失效）---')
time.sleep(1)  # 等待一下再截图
raw2 = adb.screenshot(force_refresh=True)
if raw2 is None:
    time.sleep(2)
    raw2 = adb.screenshot(force_refresh=True)
if raw2 is None:
    print('❌ 截图失败，跳过测试4和5')
    elapsed4 = elapsed5 = -1
else:
    cropped2 = raw2[0:h, cx:cx+cw]
    img2 = cv2.resize(cropped2, (1280, 720))
    t3 = time.time()
    r4 = detector.find_text(img2, '使用')
    elapsed4 = time.time() - t3
    print(f'耗时: {elapsed4:.2f}s')
    if r4:
        print(f'✅ 找到 "使用": ({r4.x},{r4.y}) conf={r4.confidence:.3f}')
    else:
        print(f'❌ 未找到 "使用"')

    # 测试5: 新截图上再查找（应命中缓存）
    print('\n--- 测试5: 新截图上查找 "领取"（应命中缓存）---')
    t4 = time.time()
    r5 = detector.find_text(img2, '领取')
    elapsed5 = time.time() - t4
    print(f'耗时: {elapsed5:.2f}s')
    if r5:
        print(f'✅ 找到 "领取": ({r5.x},{r5.y}) conf={r5.confidence:.3f}')
    else:
        print(f'❌ 未找到 "领取"')

# 总结
print('\n' + '=' * 60)
print('性能总结:')
print(f'  首次 OCR（含模型加载）: {elapsed1:.2f}s')
print(f'  缓存命中（同帧第2次）:  {elapsed2:.2f}s')
print(f'  缓存命中（同帧第3次）:  {elapsed3:.2f}s')
print(f'  新帧 OCR（缓存失效）:   {elapsed4:.2f}s')
print(f'  缓存命中（新帧第2次）:  {elapsed5:.2f}s')
print('=' * 60)
print('DONE')
