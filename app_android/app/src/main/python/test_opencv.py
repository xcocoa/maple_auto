# -*- coding: utf-8 -*-
"""
OpenCV 集成测试模块

在 Android 上验证 OpenCV 各项功能是否正常工作，
并记录性能指标。

用法（Android）: 由 Kotlin 调用 run_all_tests()
用法（PC 测试）: python3 test_opencv.py
"""

import time
import logging
import numpy as np

logger = logging.getLogger(__name__)


class OpenCVTestResult:
    """单项测试结果"""

    def __init__(self, name: str):
        self.name = name
        self.passed = False
        self.time_ms = 0.0
        self.error = None
        self.details = ""

    def to_dict(self):
        return {
            'name': self.name,
            'passed': self.passed,
            'time_ms': round(self.time_ms, 2),
            'error': str(self.error) if self.error else None,
            'details': self.details,
        }


def _time_it(func, *args, **kwargs):
    """计时辅助"""
    t0 = time.time()
    result = func(*args, **kwargs)
    elapsed = (time.time() - t0) * 1000
    return result, elapsed


def test_import():
    """测试 OpenCV 和 numpy 导入"""
    r = OpenCVTestResult("import")
    try:
        import cv2
        r.details = f"cv2 version: {cv2.__version__}, numpy: {np.__version__}"
        r.passed = True
    except Exception as e:
        r.error = e
    return r


def test_create_image():
    """测试创建模拟图像"""
    r = OpenCVTestResult("create_image")
    try:
        # 创建 1280x720 BGR 图像
        img, elapsed = _time_it(np.random.randint, 0, 256, (720, 1280, 3), dtype=np.uint8)
        r.time_ms = elapsed
        r.details = f"shape={img.shape}, dtype={img.dtype}"
        r.passed = img.shape == (720, 1280, 3) and img.dtype == np.uint8
    except Exception as e:
        r.error = e
    return r


def test_bgr_to_hsv():
    """测试 BGR → HSV 转换"""
    r = OpenCVTestResult("bgr_to_hsv")
    try:
        import cv2
        img = np.random.randint(0, 256, (720, 1280, 3), dtype=np.uint8)
        hsv, elapsed = _time_it(cv2.cvtColor, img, cv2.COLOR_BGR2HSV)
        r.time_ms = elapsed
        r.details = f"shape={hsv.shape}, time={elapsed:.1f}ms"
        r.passed = hsv.shape == img.shape
    except Exception as e:
        r.error = e
    return r


def test_color_inrange():
    """测试颜色范围检测 (inRange)"""
    r = OpenCVTestResult("color_inrange")
    try:
        import cv2
        # 创建有已知颜色区域的图像
        img = np.zeros((720, 1280, 3), dtype=np.uint8)
        # 添加一个黄色区域（玩家）
        img[100:150, 500:550] = [0, 200, 200]  # BGR → HSV 约 30, 255, 200
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        lower = np.array([20, 150, 150])
        upper = np.array([35, 255, 255])

        mask, elapsed = _time_it(cv2.inRange, hsv, lower, upper)
        r.time_ms = elapsed

        pixel_count = np.count_nonzero(mask)
        r.details = f"detected_pixels={pixel_count}, time={elapsed:.1f}ms"
        r.passed = pixel_count > 0
    except Exception as e:
        r.error = e
    return r


def test_morphology():
    """测试形态学操作（闭运算 + 开运算）"""
    r = OpenCVTestResult("morphology")
    try:
        import cv2
        mask = np.zeros((200, 400), dtype=np.uint8)
        mask[50:150, 100:300] = 255
        # 添加噪点
        noise = np.random.randint(0, 2, mask.shape, dtype=np.uint8) * 255
        mask = cv2.bitwise_or(mask, noise)

        kernel = np.ones((3, 3), np.uint8)

        t0 = time.time()
        closed = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)
        opened = cv2.morphologyEx(closed, cv2.MORPH_OPEN, kernel, iterations=1)
        elapsed = (time.time() - t0) * 1000

        r.time_ms = elapsed
        r.details = f"input_nonzero={np.count_nonzero(mask)}, output_nonzero={np.count_nonzero(opened)}, time={elapsed:.1f}ms"
        r.passed = True
    except Exception as e:
        r.error = e
    return r


def test_contour_detection():
    """测试轮廓检测"""
    r = OpenCVTestResult("contour_detection")
    try:
        import cv2
        mask = np.zeros((200, 400), dtype=np.uint8)
        # 画 3 个矩形
        cv2.rectangle(mask, (50, 50), (100, 100), 255, -1)
        cv2.rectangle(mask, (150, 50), (200, 100), 255, -1)
        cv2.rectangle(mask, (250, 50), (300, 100), 255, -1)

        contours, elapsed = _time_it(
            cv2.findContours, mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE
        )
        # findContours 返回 (contours, hierarchy)
        contours = contours[0] if isinstance(contours, tuple) else contours

        r.time_ms = elapsed
        r.details = f"found {len(contours)} contours, time={elapsed:.1f}ms"
        r.passed = len(contours) == 3
    except Exception as e:
        r.error = e
    return r


def test_gaussian_blur():
    """测试高斯模糊"""
    r = OpenCVTestResult("gaussian_blur")
    try:
        import cv2
        img = np.random.randint(0, 256, (720, 1280, 3), dtype=np.uint8)
        blurred, elapsed = _time_it(cv2.GaussianBlur, img, (5, 5), 0)
        r.time_ms = elapsed
        r.details = f"shape={blurred.shape}, time={elapsed:.1f}ms"
        r.passed = blurred.shape == img.shape
    except Exception as e:
        r.error = e
    return r


def test_minimap_pipeline():
    """测试完整的小地图检测管道（模拟）"""
    r = OpenCVTestResult("minimap_pipeline")
    try:
        import cv2

        # 创建模拟游戏画面
        frame = np.zeros((720, 1280, 3), dtype=np.uint8)

        # 小地图区域背景（灰色）
        frame[20:180, 900:1260] = [60, 60, 60]

        # 添加玩家（黄色点）
        cv2.circle(frame, (1050, 100), 8, (0, 220, 220), -1)
        # 添加怪物（红色点）
        cv2.circle(frame, (1100, 80), 6, (0, 0, 220), -1)
        cv2.circle(frame, (980, 120), 6, (0, 0, 200), -1)
        # 添加 NPC（绿色点）
        cv2.circle(frame, (1150, 150), 7, (0, 200, 0), -1)

        # 完整管道计时
        t0 = time.time()

        # 1. 提取小地图区域
        minimap = frame[20:180, 900:1260]

        # 2. BGR → HSV
        hsv = cv2.cvtColor(minimap, cv2.COLOR_BGR2HSV)

        # 3. 颜色检测
        # 玩家（黄色）
        player_mask = cv2.inRange(hsv, np.array([20, 150, 150]), np.array([35, 255, 255]))

        # 怪物（红色）
        monster_mask1 = cv2.inRange(hsv, np.array([0, 150, 150]), np.array([15, 255, 255]))
        monster_mask2 = cv2.inRange(hsv, np.array([160, 150, 150]), np.array([180, 255, 255]))
        monster_mask = cv2.bitwise_or(monster_mask1, monster_mask2)

        # NPC（绿色）
        npc_mask = cv2.inRange(hsv, np.array([50, 150, 150]), np.array([70, 255, 255]))

        # 4. 形态学处理
        kernel = np.ones((3, 3), np.uint8)
        for mask in [player_mask, monster_mask, npc_mask]:
            cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)
            cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel, iterations=1)

        # 5. 轮廓检测
        player_contours, _ = cv2.findContours(player_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        monster_contours, _ = cv2.findContours(monster_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        npc_contours, _ = cv2.findContours(npc_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        elapsed = (time.time() - t0) * 1000

        r.time_ms = elapsed
        r.details = (
            f"player={len(player_contours)}, "
            f"monsters={len(monster_contours)}, "
            f"npc={len(npc_contours)}, "
            f"total={elapsed:.1f}ms"
        )
        # 至少应该检测到玩家和怪物
        r.passed = len(player_contours) >= 1 and len(monster_contours) >= 1

    except Exception as e:
        r.error = e
    return r


def test_memory_stability():
    """测试内存稳定性（连续处理 100 帧）"""
    r = OpenCVTestResult("memory_stability")
    try:
        import cv2

        frame = np.random.randint(0, 256, (720, 1280, 3), dtype=np.uint8)
        times = []

        for i in range(100):
            t0 = time.time()
            hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
            mask = cv2.inRange(hsv, np.array([20, 150, 150]), np.array([35, 255, 255]))
            kernel = np.ones((3, 3), np.uint8)
            processed = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
            contours, _ = cv2.findContours(processed, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            elapsed = (time.time() - t0) * 1000
            times.append(elapsed)

        avg = sum(times) / len(times)
        max_t = max(times)
        min_t = min(times)
        std = (sum((t - avg) ** 2 for t in times) / len(times)) ** 0.5

        r.time_ms = avg
        r.details = f"100 frames: avg={avg:.1f}ms, min={min_t:.1f}ms, max={max_t:.1f}ms, std={std:.1f}ms"
        # 目标: 平均 < 50ms per frame
        r.passed = avg < 50.0

    except Exception as e:
        r.error = e
    return r


# ============================================================================
# 测试运行器
# ============================================================================

ALL_TESTS = [
    test_import,
    test_create_image,
    test_bgr_to_hsv,
    test_color_inrange,
    test_morphology,
    test_contour_detection,
    test_gaussian_blur,
    test_minimap_pipeline,
    test_memory_stability,
]


def run_all_tests() -> dict:
    """运行所有测试，返回结果汇总"""
    results = []
    total_time = 0.0
    passed = 0
    failed = 0

    for test_func in ALL_TESTS:
        try:
            result = test_func()
        except Exception as e:
            result = OpenCVTestResult(test_func.__name__)
            result.error = e

        results.append(result.to_dict())
        total_time += result.time_ms

        if result.passed:
            passed += 1
        else:
            failed += 1

        status = "PASS" if result.passed else "FAIL"
        logger.info(f"[{status}] {result.name}: {result.details}")
        if result.error:
            logger.error(f"  Error: {result.error}")

    summary = {
        'total': len(ALL_TESTS),
        'passed': passed,
        'failed': failed,
        'total_time_ms': round(total_time, 2),
        'results': results,
    }

    logger.info(f"OpenCV Test: {passed}/{len(ALL_TESTS)} passed, total={total_time:.1f}ms")
    return summary


if __name__ == '__main__':
    logging.basicConfig(
        level=logging.INFO,
        format='%(message)s'
    )

    print("=" * 60)
    print("OpenCV Integration Test Suite")
    print("=" * 60)

    summary = run_all_tests()

    print(f"\n{'=' * 60}")
    print(f"Results: {summary['passed']}/{summary['total']} passed")
    print(f"Total time: {summary['total_time_ms']:.1f}ms")
    print(f"{'=' * 60}")

    for r in summary['results']:
        status = "PASS" if r['passed'] else "FAIL"
        print(f"  [{status}] {r['name']}: {r['details']}")
        if r['error']:
            print(f"         Error: {r['error']}")

    import sys
    sys.exit(1 if summary['failed'] > 0 else 0)
