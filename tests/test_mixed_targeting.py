"""Test mixed targeting: template first, coordinate fallback."""
import sys
import os
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import Flow, Step, Target
from engine.player import Player


class MockDevice:
    def __init__(self):
        self.taps = []

    def screenshot(self, force_refresh=False):
        return np.random.randint(0, 255, (575, 1280, 3), dtype=np.uint8)

    def tap(self, x, y):
        self.taps.append((x, y))

    def run(self, cmd):
        pass


def test_fallback_to_coordinates_when_target_template_missing():
    """When target is defined but template file doesn't exist, fall back to x/y."""
    device = MockDevice()
    flow = Flow(
        name="test", display_name="Test", timeout=10,
        steps=[
            Step(
                id="tap1", description="test",
                action_type="tap",
                action_target="some_button",
                action_x=500, action_y=300,
                on_fail="skip", verify_change=False,
            )
        ],
        targets={
            "some_button": Target(
                name="some_button",
                template="nonexistent.png",
                fallback_pos=(500, 300),
                threshold=0.75,
            )
        },
    )
    player = Player(device=device, base_dir=".")
    result = player.play(flow)
    # Should succeed using fallback coordinates
    assert result.step_results[0].success
    assert result.step_results[0].target_found_by == "fallback"


def test_fixed_coordinates_still_work():
    """Steps with only x/y (no target) still work as before."""
    device = MockDevice()
    flow = Flow(
        name="test", display_name="Test", timeout=10,
        steps=[
            Step(
                id="tap1", description="test",
                action_type="tap",
                action_x=100, action_y=200,
                on_fail="skip", verify_change=False,
            )
        ],
    )
    player = Player(device=device, base_dir=".")
    result = player.play(flow)
    assert result.step_results[0].success
    assert result.step_results[0].target_found_by == "fixed"
