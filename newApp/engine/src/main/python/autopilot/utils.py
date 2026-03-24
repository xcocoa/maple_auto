"""
Utility functions for script control, configuration, and common operations.

Provides sleep with pause-event awareness, logging, toasts, config access,
and helper functions for screen metrics.
"""

import random
import time
import threading
from autopilot._bridge import get_api

# Internal config dict set by PythonEngine.loadScript()
_config_dict = {}


def _set_config_dict(config):
    """
    Called by PythonEngine to set the configuration dictionary.
    Not intended for direct use by scripts.
    """
    global _config_dict
    _config_dict = dict(config) if config else {}


def sleep(seconds):
    """
    Sleeps for the given number of seconds, respecting the pause event.

    If the script is paused, this function blocks until the script is resumed.
    The pause event is set by PythonEngine when pause/resume is called.

    Args:
        seconds: Number of seconds to sleep (can be float).
    """
    # Check if there's a pause event (set by PythonEngine)
    import builtins
    pause_event = getattr(builtins, "__maple_pause_event__", None)

    if pause_event is not None:
        # Wait for the pause event to be set (blocks while paused)
        pause_event.wait()

    if seconds > 0:
        time.sleep(seconds)


def log(message):
    """
    Logs a message to the script console.

    Args:
        message: The message to log.
    """
    get_api().log(str(message))


def toast(message):
    """
    Shows an Android toast message.

    Args:
        message: The text to display.
    """
    get_api().toast(str(message))


def get_config(key, default=None):
    """
    Gets a configuration value.

    Args:
        key: The configuration key.
        default: Default value if key not found.

    Returns:
        The configuration value, or default if not found.
    """
    # Try the Java API first
    try:
        value = get_api().getConfig(str(key))
        if value is not None:
            return value
    except Exception:
        pass

    # Fall back to local config dict
    return _config_dict.get(key, default)


def set_config(key, value):
    """
    Sets a configuration value.

    Args:
        key: The configuration key.
        value: The value to set.
    """
    _config_dict[key] = value
    try:
        get_api().setConfig(str(key), value)
    except Exception:
        pass


def screen_width():
    """
    Returns the screen width in pixels.

    Returns:
        Screen width as an integer.
    """
    return int(get_api().screenWidth())


def screen_height():
    """
    Returns the screen height in pixels.

    Returns:
        Screen height as an integer.
    """
    return int(get_api().screenHeight())


def random_offset(value, offset_range):
    """
    Adds a random offset to a value.

    Args:
        value: The base value.
        offset_range: Maximum offset (+/-).

    Returns:
        The value with a random offset applied.
    """
    return value + random.randint(-offset_range, offset_range)
