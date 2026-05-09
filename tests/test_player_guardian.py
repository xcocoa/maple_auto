"""Test Player integrates Guardian."""
import sys
import os
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from engine.flow_schema import Flow, Step
from engine.player import Player, PlayResult


class MockDevice:
    """Mock device that returns random screenshots."""
    def __init__(self):
        self._frame = np.random.randint(0, 255, (575, 1280, 3), dtype=np.uint8)
        self.taps = []

    def screenshot(self, force_refresh=False):
        noise = np.random.randint(0, 10, self._frame.shape, dtype=np.uint8)
        return self._frame + noise

    def tap(self, x, y):
        self.taps.append((x, y))

    def run(self, cmd):
        pass


def test_player_has_guardian():
    """Player should accept guardian parameter."""
    from engine.guardian import Guardian
    device = MockDevice()
    guardian = Guardian(device, templates_dir="templates")
    player = Player(device=device, base_dir=".", guardian=guardian)
    assert player._guardian is guardian


def test_player_without_guardian():
    """Player without guardian should still work."""
    device = MockDevice()
    flow = Flow(name="test", display_name="Test", timeout=10, steps=[
        Step(id="tap1", description="test tap", action_type="tap",
             action_x=100, action_y=200, on_fail="skip", verify_change=False)
    ])
    player = Player(device=device, base_dir=".")
    result = player.play(flow)
    assert isinstance(result, PlayResult)
