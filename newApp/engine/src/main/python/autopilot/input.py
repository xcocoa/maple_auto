"""
Input method helper functions.

Provides higher-level text input utilities including clipboard-based
input for when direct setText doesn't work.
"""

from autopilot._bridge import get_api
from autopilot.utils import sleep


def input_text(text):
    """
    Inputs text into the currently focused field using the accessibility API.

    Args:
        text: The text to input.

    Returns:
        True if text was input successfully.
    """
    return bool(get_api().inputText(str(text)))


def clear_text():
    """
    Clears text in the currently focused field by selecting all and deleting.

    Returns:
        True if the action was attempted.
    """
    # Select all via key combination
    shell_result = get_api().shell("input keyevent KEYCODE_MOVE_HOME")
    get_api().shell("input keyevent --longpress KEYCODE_SHIFT_LEFT KEYCODE_MOVE_END")
    get_api().shell("input keyevent KEYCODE_DEL")
    return True


def type_text(text, interval_ms=50):
    """
    Types text character by character with a delay between each.
    Useful for fields that don't accept direct setText.

    Args:
        text: The text to type.
        interval_ms: Delay between characters in milliseconds.
    """
    for char in str(text):
        get_api().shell("input text '{}'".format(char.replace("'", "\\'")))
        if interval_ms > 0:
            sleep(interval_ms / 1000.0)


def press_enter():
    """Presses the Enter key."""
    get_api().shell("input keyevent KEYCODE_ENTER")


def press_delete():
    """Presses the Delete/Backspace key."""
    get_api().shell("input keyevent KEYCODE_DEL")


def press_tab():
    """Presses the Tab key."""
    get_api().shell("input keyevent KEYCODE_TAB")
