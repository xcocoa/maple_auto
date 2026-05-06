# tests/test_flow_schema.py
import os
import tempfile
import pytest
from engine.flow_schema import Flow, Step, Scene, Target, load_flow


SAMPLE_FLOW_YAML = """
name: test_sign_in
display_name: 测试签到
timeout: 60
max_retries: 2

steps:
  - id: open_menu
    description: "点击菜单"
    expect_scene: "main_screen"
    action:
      type: tap
      target: "menu_button"
    verify:
      scene: "main_menu"
      timeout: 3.0
    on_fail: retry

  - id: click_sign
    description: "点击签到"
    expect_scene: "main_menu"
    action:
      type: tap
      x: 610
      y: 450
    verify:
      scene: "sign_page"
      timeout: 3.0
    on_fail: skip

scenes:
  main_screen:
    templates: ["scenes/main_01.png", "scenes/main_02.png"]
    threshold: 0.7
  main_menu:
    templates: ["scenes/menu_01.png"]
    threshold: 0.75
  sign_page:
    templates: ["scenes/sign_01.png"]
    threshold: 0.7

targets:
  menu_button:
    template: "targets/menu_btn.png"
    fallback_pos: [1150, 100]
    threshold: 0.75
"""


class TestFlowSchema:
    def test_load_flow_from_yaml(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)
        os.unlink(f.name)

        assert flow.name == "test_sign_in"
        assert flow.display_name == "测试签到"
        assert flow.timeout == 60
        assert flow.max_retries == 2
        assert len(flow.steps) == 2

    def test_step_with_target(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)
        os.unlink(f.name)

        step = flow.steps[0]
        assert step.id == "open_menu"
        assert step.expect_scene == "main_screen"
        assert step.action_type == "tap"
        assert step.action_target == "menu_button"
        assert step.action_x is None
        assert step.verify_scene == "main_menu"
        assert step.verify_timeout == 3.0
        assert step.on_fail == "retry"

    def test_step_with_fixed_coords(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)
        os.unlink(f.name)

        step = flow.steps[1]
        assert step.action_target is None
        assert step.action_x == 610
        assert step.action_y == 450
        assert step.on_fail == "skip"

    def test_scenes_parsed(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)
        os.unlink(f.name)

        assert "main_screen" in flow.scenes
        scene = flow.scenes["main_screen"]
        assert scene.templates == ["scenes/main_01.png", "scenes/main_02.png"]
        assert scene.threshold == 0.7

    def test_targets_parsed(self):
        with tempfile.NamedTemporaryFile(mode='w', suffix='.yaml', delete=False) as f:
            f.write(SAMPLE_FLOW_YAML)
            f.flush()
            flow = load_flow(f.name)
        os.unlink(f.name)

        assert "menu_button" in flow.targets
        target = flow.targets["menu_button"]
        assert target.template == "targets/menu_btn.png"
        assert target.fallback_pos == (1150, 100)
        assert target.threshold == 0.75
