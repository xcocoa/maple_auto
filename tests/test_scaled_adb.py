# tests/test_scaled_adb.py
import numpy as np
import pytest
from core.scaled_adb import ScaledADB


class FakeADB:
    """Minimal ADB stub for testing"""
    def __init__(self, screen_w=2248, screen_h=1080):
        self._screen_w = screen_w
        self._screen_h = screen_h
        self.tap_log = []

    def screenshot(self, force_refresh=False):
        return np.zeros((self._screen_h, self._screen_w, 3), dtype=np.uint8)

    def tap(self, x, y):
        self.tap_log.append((x, y))

    def swipe(self, x1, y1, x2, y2, duration=100):
        pass

    def long_press(self, x, y, duration=500):
        pass

    def invalidate_cache(self):
        pass


class TestScaledADB:
    def test_calibrate_widescreen_no_crop(self):
        """2712x1220 全面屏: 全屏缩放，不裁剪，高度自适应"""
        fake = FakeADB(2712, 1220)
        scaled = ScaledADB(fake, base_w=1280, base_h=0)
        scaled.calibrate(2712, 1220)
        # 自适应高度: 1280 * 1220 / 2712 = 575
        assert scaled._actual_base_h == 575
        assert scaled._scale_x == pytest.approx(2712 / 1280, rel=0.01)
        assert scaled._scale_y == pytest.approx(1220 / 575, rel=0.01)

    def test_calibrate_standard_ratio(self):
        """1280x720 设备: 指定固定高度时 scale=1"""
        fake = FakeADB(1280, 720)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(1280, 720)
        assert scaled._scale_x == 1.0
        assert scaled._scale_y == 1.0

    def test_tap_maps_coordinates_linearly(self):
        """点击坐标应线性映射到设备坐标（无裁剪偏移）"""
        fake = FakeADB(2712, 1220)
        scaled = ScaledADB(fake, base_w=1280, base_h=0)
        scaled.calibrate(2712, 1220)
        # base (640, 288) → device (640*2.119, 288*2.122) ≈ (1356, 611)
        scaled.tap(640, 288)
        assert len(fake.tap_log) == 1
        dx, dy = fake.tap_log[0]
        assert abs(dx - 1356) <= 1
        assert abs(dy - 611) <= 1

    def test_screenshot_returns_adaptive_resolution(self):
        """截图应缩放到基准宽度，高度按比例自适应"""
        fake = FakeADB(2712, 1220)
        scaled = ScaledADB(fake, base_w=1280, base_h=0)
        result = scaled.screenshot(force_refresh=True)
        assert result is not None
        assert result.shape == (575, 1280, 3)

    def test_fixed_base_height(self):
        """指定固定 base_h 时使用该高度"""
        fake = FakeADB(2712, 1220)
        scaled = ScaledADB(fake, base_w=1280, base_h=576)
        result = scaled.screenshot(force_refresh=True)
        assert result.shape == (576, 1280, 3)
