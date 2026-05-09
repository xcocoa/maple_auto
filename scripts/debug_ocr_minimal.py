#!/usr/bin/env python3
"""最小化调试：验证修改后的UIDetector.find_text是否正常工作"""
import cv2, sys, time, traceback
sys.path.insert(0, '.')

print('Step 1: 读取图片', flush=True)
img = cv2.imread('verify_screenshot.png')
if img is None:
    print('ERROR: verify_screenshot.png 不存在', flush=True)
    sys.exit(1)
img = cv2.resize(img, (1280, 720))
print(f'Step 2: 图片尺寸 {img.shape[1]}x{img.shape[0]}', flush=True)

print('Step 3: 创建 UIDetector', flush=True)
from modules.ui_detector import UIDetector
detector = UIDetector({})
print('Step 4: UIDetector 创建完成', flush=True)

print('Step 5: 访问 ocr 属性（触发初始化）', flush=True)
try:
    ocr_instance = detector.ocr
    print(f'Step 6: OCR 实例类型: {type(ocr_instance)}', flush=True)
except Exception as e:
    print(f'Step 6: OCR 初始化异常: {e}', flush=True)
    traceback.print_exc()
    sys.exit(1)

if ocr_instance is None:
    print('ERROR: OCR 实例为 None', flush=True)
    sys.exit(1)

print('Step 7: 直接调用 ocr.ocr()', flush=True)
try:
    t0 = time.time()
    result = ocr_instance.ocr(img)
    print(f'Step 8: OCR 完成, 耗时={time.time()-t0:.1f}s, type={type(result)}', flush=True)
    if result and result[0]:
        r = result[0]
        if hasattr(r, 'keys'):
            print(f'  New API: {len(r["rec_texts"])} texts', flush=True)
            # 查找"使用"
            for i, t in enumerate(r['rec_texts']):
                if '使用' in t:
                    print(f'  FOUND "使用" at index {i}: "{t}" score={r["rec_scores"][i]:.3f}', flush=True)
                if '领取' in t:
                    print(f'  FOUND "领取" at index {i}: "{t}" score={r["rec_scores"][i]:.3f}', flush=True)
                if '关闭' in t:
                    print(f'  FOUND "关闭" at index {i}: "{t}" score={r["rec_scores"][i]:.3f}', flush=True)
        else:
            print(f'  Old API: {len(r)} lines', flush=True)
    else:
        print('  OCR 返回空结果', flush=True)
except Exception as e:
    print(f'Step 8: OCR 调用异常: {e}', flush=True)
    traceback.print_exc()

print('Step 9: 调用 find_text', flush=True)
try:
    t1 = time.time()
    element = detector.find_text(img, '使用')
    print(f'Step 10: find_text 完成, 耗时={time.time()-t1:.1f}s', flush=True)
    if element:
        print(f'  FOUND: ({element.x},{element.y}) conf={element.confidence:.3f}', flush=True)
    else:
        print('  NOT FOUND', flush=True)
except Exception as e:
    print(f'Step 10: find_text 异常: {e}', flush=True)
    traceback.print_exc()

print('ALL DONE', flush=True)
