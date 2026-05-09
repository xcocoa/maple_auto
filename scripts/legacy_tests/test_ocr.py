#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
OCR 功能测试脚本
在当前截图上验证 PaddleOCR 文本识别和 find_text 功能
"""

import os
import sys
import cv2
import logging

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s [%(name)s] %(levelname)s: %(message)s',
    datefmt='%H:%M:%S'
)
logger = logging.getLogger('TestOCR')

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from modules.ui_detector import UIDetector


def main():
    # 读取测试截图
    img_path = "test_screenshot.png"
    if not os.path.exists(img_path):
        logger.error(f"截图文件不存在: {img_path}")
        return

    screenshot = cv2.imread(img_path)
    logger.info(f"截图尺寸: {screenshot.shape[1]}x{screenshot.shape[0]}")

    # 创建 UIDetector
    detector = UIDetector({})

    # 测试1：列出所有识别到的文字
    logger.info("=" * 60)
    logger.info("测试1：列出所有 OCR 识别到的文字")
    logger.info("=" * 60)

    ocr = detector.ocr
    if ocr is None:
        logger.error("OCR 初始化失败！")
        return

    try:
        result = ocr.ocr(screenshot, cls=False)
    except TypeError:
        result = ocr.ocr(screenshot)

    if result and result[0]:
        ocr_result = result[0]
        if hasattr(ocr_result, 'keys') and 'rec_texts' in ocr_result:
            texts = ocr_result['rec_texts']
            scores = ocr_result['rec_scores']
            polys = ocr_result['dt_polys']
            logger.info(f"共识别到 {len(texts)} 个文本区域:")
            for i, (text, score) in enumerate(zip(texts, scores)):
                poly = polys[i]
                cx = int((poly[:, 0].min() + poly[:, 0].max()) / 2)
                cy = int((poly[:, 1].min() + poly[:, 1].max()) / 2)
                logger.info(f"  [{i:2d}] '{text}' (置信度={score:.3f}, 中心=({cx},{cy}))")
        else:
            logger.info("旧版 PaddleOCR 格式")
            for i, line in enumerate(ocr_result):
                text = line[1][0]
                score = line[1][1]
                box = line[0]
                logger.info(f"  [{i:2d}] '{text}' (置信度={score:.3f})")

    # 测试2：查找特定文本
    logger.info("")
    logger.info("=" * 60)
    logger.info("测试2：使用 find_text 查找特定文本")
    logger.info("=" * 60)

    test_texts = ["关闭", "使用", "社区", "领取", "自动战斗", "确认", "入场"]
    for text in test_texts:
        element = detector.find_text(screenshot, text)
        if element:
            logger.info(f"  ✅ 找到 '{text}' -> 坐标({element.x}, {element.y}), 置信度={element.confidence:.3f}")
        else:
            logger.info(f"  ❌ 未找到 '{text}'")

    logger.info("")
    logger.info("OCR 测试完成！")


if __name__ == "__main__":
    main()
