# tests/test_mock_adb.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.mock_adb import MockADB


class TestMockADB:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()
        for i in range(3):
            img = np.zeros((720, 1280, 3), dtype=np.uint8)
            img[:] = [i * 80, i * 80, i * 80]
            cv2.imwrite(os.path.join(self.tmpdir, f"step_{i:02d}.png"), img)

    def test_screenshots_in_order(self):
        mock = MockADB(self.tmpdir)
        s0 = mock.screenshot()
        assert s0 is not None
        assert s0[0, 0, 0] == 0

        s1 = mock.screenshot(force_refresh=True)
        assert s1[0, 0, 0] == 80

        s2 = mock.screenshot(force_refresh=True)
        assert s2[0, 0, 0] == 160

    def test_tap_recorded(self):
        mock = MockADB(self.tmpdir)
        mock.tap(100, 200)
        mock.tap(300, 400)
        assert mock.tap_log == [(100, 200), (300, 400)]

    def test_tap_advances_screenshot(self):
        mock = MockADB(self.tmpdir)
        s0 = mock.screenshot()
        assert s0[0, 0, 0] == 0
        mock.tap(100, 100)
        s1 = mock.screenshot()
        assert s1[0, 0, 0] == 80

    def test_stays_on_last_screenshot(self):
        mock = MockADB(self.tmpdir)
        mock.screenshot(force_refresh=True)
        mock.screenshot(force_refresh=True)
        mock.screenshot(force_refresh=True)
        s = mock.screenshot(force_refresh=True)
        assert s[0, 0, 0] == 160
