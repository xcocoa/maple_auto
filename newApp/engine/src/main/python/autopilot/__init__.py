"""
autopilot - Python automation framework for MapleAuto.

Provides a high-level, Pythonic API for Android UI automation including
gestures, node finding, screenshots, and system control.

Usage in scripts:
    from autopilot import *

    click(500, 800)
    sleep(1)
    node = find_node(text="Login")
    if node:
        click_node(text="Login")
"""

from autopilot.gesture import (
    click,
    long_press,
    swipe,
    swipe_up,
    swipe_down,
    swipe_left,
    swipe_right,
    multi_swipe,
    pinch_in,
    pinch_out,
)
from autopilot.node import (
    find_node,
    find_all_nodes,
    click_node,
    long_click_node,
    set_node_text,
    scroll_forward,
    scroll_backward,
    get_node_info,
    wait_for_node,
)
from autopilot.screenshot import (
    screenshot,
    screenshot_size,
    find_image,
    find_color,
    get_pixel,
)
from autopilot.system import (
    press_home,
    press_back,
    press_recents,
    open_app,
    open_notifications,
    open_quick_settings,
    shell,
    input_text,
)
from autopilot.utils import (
    sleep,
    log,
    toast,
    get_config,
    set_config,
    screen_width,
    screen_height,
    random_offset,
)

__all__ = [
    # gesture
    "click", "long_press", "swipe", "swipe_up", "swipe_down",
    "swipe_left", "swipe_right", "multi_swipe", "pinch_in", "pinch_out",
    # node
    "find_node", "find_all_nodes", "click_node", "long_click_node",
    "set_node_text", "scroll_forward", "scroll_backward", "get_node_info",
    "wait_for_node",
    # screenshot
    "screenshot", "screenshot_size", "find_image", "find_color", "get_pixel",
    # system
    "press_home", "press_back", "press_recents", "open_app",
    "open_notifications", "open_quick_settings", "shell", "input_text",
    # utils
    "sleep", "log", "toast", "get_config", "set_config",
    "screen_width", "screen_height", "random_offset",
]

__version__ = "1.0.0"
