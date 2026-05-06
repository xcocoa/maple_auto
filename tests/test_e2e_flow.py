# tests/test_e2e_flow.py
"""
端到端测试：验证完整链路
Flow YAML -> Player -> MockADB -> 验证结果
"""
import os
import cv2
import tempfile
import numpy as np
import pytest

from engine.flow_schema import load_flow
from engine.mock_adb import MockADB
from engine.player import Player


class TestE2EFlow:
    def setup_method(self):
        self.tmpdir = tempfile.mkdtemp()
        self.scenes_dir = os.path.join(self.tmpdir, "scenes")
        self.targets_dir = os.path.join(self.tmpdir, "targets")
        os.makedirs(self.scenes_dir)
        os.makedirs(self.targets_dir)

    def _create_scene(self, name, color_bgr):
        """Create a scene template and a matching full screenshot"""
        # Template: 200x200 with colored center
        template = np.zeros((200, 200, 3), dtype=np.uint8)
        template[50:150, 50:150] = color_bgr
        path = os.path.join(self.scenes_dir, f"{name}.png")
        cv2.imwrite(path, template)

        # Full screenshot with template embedded
        full = np.zeros((720, 1280, 3), dtype=np.uint8)
        full[100:300, 100:300] = template
        return full

    def _create_target(self, name, color_bgr):
        """Create a target template"""
        template = np.zeros((60, 60, 3), dtype=np.uint8)
        template[10:50, 10:50] = color_bgr
        path = os.path.join(self.targets_dir, f"{name}.png")
        cv2.imwrite(path, template)
        return template

    def test_full_flow_with_mock(self):
        """E2E: Load YAML, run with MockADB, verify success"""
        # Create 2 scenes
        screen_a = self._create_scene("scene_a", [255, 0, 0])  # blue
        screen_b = self._create_scene("scene_b", [0, 255, 0])  # green

        # Create target in screen_a
        target_template = self._create_target("btn_a", [255, 0, 0])
        # Embed target in screen_a at position (600, 350)
        screen_a[320:380, 570:630] = target_template

        # Save screenshots as MockADB sequence
        screenshots_seq_dir = os.path.join(self.tmpdir, "seq")
        os.makedirs(screenshots_seq_dir)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "00_scene_a.png"), screen_a)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "01_scene_b.png"), screen_b)

        # Write Flow YAML
        flow_yaml = f"""
name: e2e_test
display_name: E2E Test
timeout: 30
max_retries: 1

steps:
  - id: click_btn
    description: "Click button A to go to scene B"
    expect_scene: "scene_a"
    action:
      type: tap
      target: "btn_a"
    verify:
      scene: "scene_b"
      timeout: 2.0
    on_fail: abort

scenes:
  scene_a:
    templates: ["scenes/scene_a.png"]
    threshold: 0.8
  scene_b:
    templates: ["scenes/scene_b.png"]
    threshold: 0.8

targets:
  btn_a:
    template: "targets/btn_a.png"
    fallback_pos: [600, 350]
    threshold: 0.8
"""
        flow_path = os.path.join(self.tmpdir, "test_flow.yaml")
        with open(flow_path, 'w') as f:
            f.write(flow_yaml)

        # Run
        flow = load_flow(flow_path)
        mock = MockADB(screenshots_seq_dir)
        player = Player(device=mock, base_dir=self.tmpdir)
        result = player.play(flow)

        # Verify
        assert result.success is True
        assert len(result.step_results) == 1
        assert result.step_results[0].success is True
        assert result.step_results[0].scene_matched is True
        assert result.step_results[0].target_found_by in ("template", "fallback")
        assert mock.tap_log  # something was tapped

    def test_multi_step_flow(self):
        """E2E: Multiple steps executing in sequence"""
        screen_a = self._create_scene("scene_a", [255, 0, 0])
        screen_b = self._create_scene("scene_b", [0, 255, 0])
        screen_c = self._create_scene("scene_c", [0, 0, 255])

        screenshots_seq_dir = os.path.join(self.tmpdir, "seq2")
        os.makedirs(screenshots_seq_dir)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "00.png"), screen_a)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "01.png"), screen_b)
        cv2.imwrite(os.path.join(screenshots_seq_dir, "02.png"), screen_c)

        flow_yaml = """
name: multi_step
display_name: Multi Step
timeout: 30
max_retries: 1

steps:
  - id: step1
    description: "A to B"
    expect_scene: "scene_a"
    action:
      type: tap
      x: 640
      y: 360
    verify:
      scene: "scene_b"
      timeout: 2.0
    on_fail: abort

  - id: step2
    description: "B to C"
    expect_scene: "scene_b"
    action:
      type: tap
      x: 500
      y: 300
    verify:
      scene: "scene_c"
      timeout: 2.0
    on_fail: abort

scenes:
  scene_a:
    templates: ["scenes/scene_a.png"]
    threshold: 0.8
  scene_b:
    templates: ["scenes/scene_b.png"]
    threshold: 0.8
  scene_c:
    templates: ["scenes/scene_c.png"]
    threshold: 0.8

targets: {}
"""
        flow_path = os.path.join(self.tmpdir, "multi.yaml")
        with open(flow_path, 'w') as f:
            f.write(flow_yaml)

        flow = load_flow(flow_path)
        mock = MockADB(screenshots_seq_dir)
        player = Player(device=mock, base_dir=self.tmpdir)
        result = player.play(flow)

        assert result.success is True
        assert len(result.step_results) == 2
        assert all(r.success for r in result.step_results)
        assert len(mock.tap_log) == 2
