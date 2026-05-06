# tests/test_scene_matcher.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.scene_matcher import SceneMatcher
from engine.flow_schema import Scene


class TestSceneMatcher:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()

    def test_match_exact_scene(self):
        """Should match when screenshot contains the template"""
        template = np.zeros((100, 100, 3), dtype=np.uint8)
        template[20:80, 20:80] = [255, 0, 0]
        os.makedirs(os.path.join(self.tmpdir, "scenes"), exist_ok=True)
        cv2.imwrite(os.path.join(self.tmpdir, "scenes/blue.png"), template)

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[100:200, 100:200] = template

        scenes = {
            "blue_scene": Scene(name="blue_scene", templates=["scenes/blue.png"], threshold=0.9)
        }
        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)
        result = matcher.match(screenshot)

        assert result is not None
        assert result[0] == "blue_scene"
        assert result[1] >= 0.9

    def test_no_match_returns_none(self):
        """Should return None when no scene matches"""
        template = np.zeros((100, 100, 3), dtype=np.uint8)
        template[:] = [0, 255, 0]
        os.makedirs(os.path.join(self.tmpdir, "scenes"), exist_ok=True)
        cv2.imwrite(os.path.join(self.tmpdir, "scenes/green.png"), template)

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)

        scenes = {
            "green_scene": Scene(name="green_scene", templates=["scenes/green.png"], threshold=0.9)
        }
        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)
        result = matcher.match(screenshot)
        assert result is None

    def test_match_specific_scene(self):
        """match_scene should only check the named scene"""
        template = np.zeros((100, 100, 3), dtype=np.uint8)
        template[20:80, 20:80] = [0, 0, 255]
        os.makedirs(os.path.join(self.tmpdir, "scenes"), exist_ok=True)
        cv2.imwrite(os.path.join(self.tmpdir, "scenes/red.png"), template)

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[300:400, 600:700] = template

        scenes = {
            "red_scene": Scene(name="red_scene", templates=["scenes/red.png"], threshold=0.9)
        }
        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)

        confidence = matcher.match_scene(screenshot, "red_scene")
        assert confidence >= 0.9

        confidence = matcher.match_scene(screenshot, "nonexistent")
        assert confidence == 0.0

    def test_multi_template_takes_best(self):
        """When scene has multiple templates, use the best match"""
        t1 = np.zeros((100, 100, 3), dtype=np.uint8)
        t1[20:80, 20:80] = [255, 255, 0]
        t2 = np.zeros((100, 100, 3), dtype=np.uint8)
        t2[10:90, 10:90] = [255, 255, 0]
        os.makedirs(os.path.join(self.tmpdir, "scenes"), exist_ok=True)
        cv2.imwrite(os.path.join(self.tmpdir, "scenes/t1.png"), t1)
        cv2.imwrite(os.path.join(self.tmpdir, "scenes/t2.png"), t2)

        screenshot = np.zeros((720, 1280, 3), dtype=np.uint8)
        screenshot[100:200, 100:200] = t2

        scenes = {
            "yellow_scene": Scene(name="yellow_scene", templates=["scenes/t1.png", "scenes/t2.png"], threshold=0.8)
        }
        matcher = SceneMatcher(scenes, base_dir=self.tmpdir)
        result = matcher.match(screenshot)

        assert result is not None
        assert result[0] == "yellow_scene"
