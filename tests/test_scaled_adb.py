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
    def test_calibrate_widescreen(self):
        """2248x1080 device should crop width to 16:9"""
        fake = FakeADB(2248, 1080)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(2248, 1080)
        assert scaled._crop_x == 164
        assert scaled._crop_y == 0
        assert scaled._crop_w == 1920
        assert scaled._crop_h == 1080

    def test_calibrate_standard_ratio(self):
        """1280x720 should have zero crop"""
        fake = FakeADB(1280, 720)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(1280, 720)
        assert scaled._crop_x == 0
        assert scaled._crop_y == 0

    def test_tap_maps_coordinates(self):
        """Tap at base coords should map to device coords with crop offset"""
        fake = FakeADB(2248, 1080)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        scaled.calibrate(2248, 1080)
        scaled.tap(640, 360)
        assert len(fake.tap_log) == 1
        assert fake.tap_log[0] == (1124, 540)

    def test_screenshot_returns_base_resolution(self):
        """Screenshot should be resized to base resolution"""
        fake = FakeADB(2248, 1080)
        scaled = ScaledADB(fake, base_w=1280, base_h=720)
        result = scaled.screenshot(force_refresh=True)
        assert result is not None
        assert result.shape == (720, 1280, 3)
