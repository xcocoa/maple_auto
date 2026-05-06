# tests/test_target_locator.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.target_locator import TargetLocator, LocateResult
from engine.flow_schema import Target


class TestTargetLocator:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()

    def test_locate_by_template(self):
        """Should find target via template matching"""
        template = np.zeros((40, 40, 3), dtype=np.uint8)
        template[5:35, 5:35] = [0, 255, 255]
        os.makedirs(os.path.join(self.tmpdir, "targets"), exist_ok=True)
        cv2.imwrite(os.path.join(self.tmpdir, "targets/btn.png"), template)

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[300:340, 600:640] = template

        target = Target(name="test_btn", template="targets/btn.png", fallback_pos=(500, 500), threshold=0.9)
        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate(screenshot, target)

        assert result is not None
        assert result.found_by == "template"
        assert abs(result.x - 620) <= 2
        assert abs(result.y - 320) <= 2
        assert result.confidence >= 0.9

    def test_fallback_to_coordinates(self):
        """Should use fallback when template not found"""
        target = Target(name="missing_btn", template="targets/nonexistent.png", fallback_pos=(800, 400), threshold=0.9)
        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)

        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate(screenshot, target)

        assert result is not None
        assert result.found_by == "fallback"
        assert result.x == 800
        assert result.y == 400
        assert result.confidence == 0.0

    def test_no_target_no_fallback(self):
        """Should return None when no template and no fallback"""
        target = Target(name="empty_btn", template=None, fallback_pos=None, threshold=0.9)
        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)

        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate(screenshot, target)
        assert result is None

    def test_fixed_coordinates(self):
        """locate_fixed should return coords directly"""
        locator = TargetLocator(base_dir=self.tmpdir)
        result = locator.locate_fixed(640, 360)

        assert result.x == 640
        assert result.y == 360
        assert result.found_by == "fixed"
