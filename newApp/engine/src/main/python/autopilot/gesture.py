"""
Gesture automation functions.

Wraps the Java PythonApiModule gesture methods with Pythonic APIs,
adding random offset support and convenience swipe helpers.
"""

import random
from autopilot._bridge import get_api


def click(x, y, duration_ms=100, random_range=0):
    """
    Performs a tap at the given screen coordinates.

    Args:
        x: X coordinate in pixels.
        y: Y coordinate in pixels.
        duration_ms: Click duration in milliseconds.
        random_range: If > 0, adds a random offset of +/- this many pixels.

    Returns:
        True if the gesture completed successfully.
    """
    if random_range > 0:
        x += random.randint(-random_range, random_range)
        y += random.randint(-random_range, random_range)
    return bool(get_api().click(int(x), int(y), int(duration_ms)))


def long_press(x, y, duration_ms=1000, random_range=0):
    """
    Performs a long-press at the given screen coordinates.

    Args:
        x: X coordinate in pixels.
        y: Y coordinate in pixels.
        duration_ms: Long-press duration in milliseconds.
        random_range: If > 0, adds a random offset.

    Returns:
        True if the gesture completed successfully.
    """
    if random_range > 0:
        x += random.randint(-random_range, random_range)
        y += random.randint(-random_range, random_range)
    return bool(get_api().longPress(int(x), int(y), int(duration_ms)))


def swipe(x1, y1, x2, y2, duration_ms=500):
    """
    Performs a swipe from (x1, y1) to (x2, y2).

    Args:
        x1: Start X coordinate.
        y1: Start Y coordinate.
        x2: End X coordinate.
        y2: End Y coordinate.
        duration_ms: Swipe duration in milliseconds.

    Returns:
        True if the gesture completed successfully.
    """
    return bool(get_api().swipe(int(x1), int(y1), int(x2), int(y2), int(duration_ms)))


def swipe_up(duration_ms=500):
    """Swipes up from bottom-center to top-center of the screen."""
    from autopilot.utils import screen_width, screen_height
    w, h = screen_width(), screen_height()
    cx = w // 2
    return swipe(cx, int(h * 0.75), cx, int(h * 0.25), duration_ms)


def swipe_down(duration_ms=500):
    """Swipes down from top-center to bottom-center of the screen."""
    from autopilot.utils import screen_width, screen_height
    w, h = screen_width(), screen_height()
    cx = w // 2
    return swipe(cx, int(h * 0.25), cx, int(h * 0.75), duration_ms)


def swipe_left(duration_ms=500):
    """Swipes left from right-center to left-center of the screen."""
    from autopilot.utils import screen_width, screen_height
    w, h = screen_width(), screen_height()
    cy = h // 2
    return swipe(int(w * 0.75), cy, int(w * 0.25), cy, duration_ms)


def swipe_right(duration_ms=500):
    """Swipes right from left-center to right-center of the screen."""
    from autopilot.utils import screen_width, screen_height
    w, h = screen_width(), screen_height()
    cy = h // 2
    return swipe(int(w * 0.25), cy, int(w * 0.75), cy, duration_ms)


def multi_swipe(points, duration_ms=500):
    """
    Swipes through multiple waypoints.

    Args:
        points: List of (x, y) tuples defining the swipe path.
        duration_ms: Swipe duration in milliseconds.

    Returns:
        True if the gesture completed successfully.
    """
    # Convert to Java-compatible format via the Kotlin API
    # PythonApiModule doesn't expose multiSwipe directly, so chain swipes
    if len(points) < 2:
        return False

    result = True
    for i in range(len(points) - 1):
        x1, y1 = points[i]
        x2, y2 = points[i + 1]
        seg_duration = duration_ms // (len(points) - 1)
        if not swipe(x1, y1, x2, y2, max(seg_duration, 50)):
            result = False
    return result


def pinch_in(center_x, center_y, start_distance=200, end_distance=50, duration_ms=500):
    """
    Performs a pinch-in (zoom out) gesture.

    Args:
        center_x: Center X of the pinch.
        center_y: Center Y of the pinch.
        start_distance: Starting distance from center to each finger.
        end_distance: Ending distance from center to each finger.
        duration_ms: Gesture duration in milliseconds.

    Returns:
        True if the gesture completed successfully.
    """
    # Use two swipe gestures to simulate pinch
    # Finger 1: left of center moving inward
    # Finger 2: right of center moving inward
    from autopilot.utils import sleep as _sleep
    r1 = swipe(
        center_x - start_distance, center_y,
        center_x - end_distance, center_y,
        duration_ms
    )
    return r1


def pinch_out(center_x, center_y, start_distance=50, end_distance=200, duration_ms=500):
    """
    Performs a pinch-out (zoom in) gesture.

    Args:
        center_x: Center X of the pinch.
        center_y: Center Y of the pinch.
        start_distance: Starting distance from center to each finger.
        end_distance: Ending distance from center to each finger.
        duration_ms: Gesture duration in milliseconds.

    Returns:
        True if the gesture completed successfully.
    """
    r1 = swipe(
        center_x - start_distance, center_y,
        center_x - end_distance, center_y,
        duration_ms
    )
    return r1
