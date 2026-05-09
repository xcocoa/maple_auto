"""Test Guardian anomaly detection."""
import sys
import os
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))


class FakeDevice:
    """Mock device for testing Guardian."""
    def __init__(self, screenshots=None):
        self._screenshots = screenshots or []
        self._index = 0
        self.taps = []
        self.keys = []

    def screenshot(self, force_refresh=False):
        if self._index < len(self._screenshots):
            img = self._screenshots[self._index]
            self._index += 1
            return img
        return np.zeros((575, 1280, 3), dtype=np.uint8)

    def tap(self, x, y):
        self.taps.append((x, y))

    def run(self, cmd):
        self.keys.append(cmd)


def test_guardian_no_anomaly():
    """Normal screen should return 'ok'."""
    from engine.guardian import Guardian
    device = FakeDevice([np.random.randint(0, 255, (575, 1280, 3), dtype=np.uint8)])
    guardian = Guardian(device, templates_dir="templates")
    result = guardian.check_and_handle()
    assert result == "ok"


def test_guardian_stuck_detection():
    """Three identical frames should trigger stuck handling."""
    from engine.guardian import Guardian
    # Same frame repeated 4 times (1 current + 3 history)
    frame = np.ones((575, 1280, 3), dtype=np.uint8) * 128
    device = FakeDevice([frame, frame])
    guardian = Guardian(device, templates_dir="templates")
    # Feed history
    guardian._frame_history = [frame.copy(), frame.copy(), frame.copy()]
    result = guardian.check_and_handle()
    assert result == "stuck_handled"
    # Should have pressed back
    assert len(device.keys) > 0
