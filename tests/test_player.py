# tests/test_player.py
import os
import cv2
import tempfile
import numpy as np
import pytest
from engine.player import Player, PlayResult, StepResult
from engine.flow_schema import Flow, Step, Scene, Target


class FakeDevice:
    """Fake device that returns pre-loaded screenshots in sequence"""
    def __init__(self, screenshots: list):
        self._screenshots = screenshots
        self._index = 0
        self.tap_log = []

    def screenshot(self, force_refresh=False):
        if force_refresh and self._index < len(self._screenshots) - 1:
            self._index += 1
        if self._index < len(self._screenshots):
            return self._screenshots[self._index]
        return self._screenshots[-1]

    def tap(self, x, y):
        self.tap_log.append((x, y))
        if self._index < len(self._screenshots) - 1:
            self._index += 1

    def long_press(self, x, y, duration=500):
        self.tap_log.append((x, y))

    def invalidate_cache(self):
        pass


def make_scene_image(color_bgr):
    """Create a 720x1280 image with a 100x100 colored square at (100,100)"""
    img = np.zeros((720, 1280, 3), dtype=np.uint8)
    img[100:200, 100:200] = color_bgr
    return img


class TestPlayer:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()

    def _save_template(self, img, path):
        full = os.path.join(self.tmpdir, path)
        os.makedirs(os.path.dirname(full), exist_ok=True)
        cv2.imwrite(full, img)

    def test_simple_two_step_flow(self):
        """Player should execute steps sequentially"""
        img_a = make_scene_image([255, 0, 0])
        img_b = make_scene_image([0, 0, 255])

        # Use crops from the actual scene images so TM_CCOEFF_NORMED returns 1.0
        self._save_template(img_a[50:250, 50:250].copy(), "scenes/scene_a.png")
        self._save_template(img_b[50:250, 50:250].copy(), "scenes/scene_b.png")

        device = FakeDevice([img_a, img_b])

        flow = Flow(
            name="test_flow", display_name="Test", timeout=10, max_retries=1,
            steps=[
                Step(id="step1", description="Tap", expect_scene="scene_a",
                     action_type="tap", action_x=640, action_y=360,
                     verify_scene="scene_b", verify_timeout=2.0, on_fail="abort"),
            ],
            scenes={
                "scene_a": Scene(name="scene_a", templates=["scenes/scene_a.png"], threshold=0.8),
                "scene_b": Scene(name="scene_b", templates=["scenes/scene_b.png"], threshold=0.8),
            },
            targets={},
        )

        player = Player(device=device, base_dir=self.tmpdir)
        result = player.play(flow)

        assert result.success is True
        assert len(result.step_results) == 1
        assert result.step_results[0].success is True
        assert device.tap_log == [(640, 360)]

    def test_on_fail_skip(self):
        """Step with on_fail=skip should not block the flow"""
        img_a = make_scene_image([255, 0, 0])
        self._save_template(img_a[50:250, 50:250].copy(), "scenes/scene_a.png")
        device = FakeDevice([img_a, img_a, img_a])

        flow = Flow(
            name="test_skip", display_name="Test Skip", timeout=10, max_retries=1,
            steps=[
                Step(id="step1", description="Fail", expect_scene="scene_a",
                     action_type="tap", action_x=100, action_y=100,
                     verify_scene="nonexistent_scene", verify_timeout=0.5, on_fail="skip"),
            ],
            scenes={
                "scene_a": Scene(name="scene_a", templates=["scenes/scene_a.png"], threshold=0.8),
            },
            targets={},
        )

        player = Player(device=device, base_dir=self.tmpdir)
        result = player.play(flow)

        assert result.success is True
        assert result.step_results[0].success is False
        assert result.step_results[0].skipped is True

    def test_on_fail_abort(self):
        """Step with on_fail=abort should stop the flow"""
        img_a = make_scene_image([255, 0, 0])
        self._save_template(img_a[50:250, 50:250].copy(), "scenes/scene_a.png")
        device = FakeDevice([img_a, img_a, img_a])

        flow = Flow(
            name="test_abort", display_name="Test Abort", timeout=10, max_retries=0,
            steps=[
                Step(id="step1", description="Fail", expect_scene="scene_a",
                     action_type="tap", action_x=100, action_y=100,
                     verify_scene="nonexistent_scene", verify_timeout=0.5, on_fail="abort"),
            ],
            scenes={
                "scene_a": Scene(name="scene_a", templates=["scenes/scene_a.png"], threshold=0.8),
            },
            targets={},
        )

        player = Player(device=device, base_dir=self.tmpdir)
        result = player.play(flow)

        assert result.success is False
