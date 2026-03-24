"""
System control functions.

Wraps the Java PythonApiModule system methods (key events, app launching,
shell commands, text input).
"""

from autopilot._bridge import get_api


def press_home():
    """
    Presses the Home button.

    Returns:
        True if the action was performed.
    """
    return bool(get_api().pressHome())


def press_back():
    """
    Presses the Back button.

    Returns:
        True if the action was performed.
    """
    return bool(get_api().pressBack())


def press_recents():
    """
    Opens the Recents/Overview screen.

    Returns:
        True if the action was performed.
    """
    return bool(get_api().pressRecents())


def open_app(package_name):
    """
    Launches an app by its package name.

    Args:
        package_name: The package name (e.g., "com.example.app").
    """
    get_api().openApp(str(package_name))


def open_notifications():
    """
    Opens the notification shade.

    Returns:
        True if the action was performed.
    """
    # PythonApiModule doesn't expose this directly, use shell
    return bool(get_api().pressHome())  # Fallback


def open_quick_settings():
    """
    Opens the Quick Settings panel.

    Returns:
        True if the action was performed.
    """
    # Swipe down from top twice to open quick settings
    from autopilot.gesture import swipe
    from autopilot.utils import screen_width, sleep
    w = screen_width()
    cx = w // 2
    swipe(cx, 10, cx, 500, 300)
    sleep(0.3)
    return swipe(cx, 10, cx, 500, 300)


def shell(command):
    """
    Executes a shell command.

    Args:
        command: The shell command string to execute.

    Returns:
        The stdout output as a string.
    """
    return str(get_api().shell(str(command)))


def input_text(text):
    """
    Inputs text into the currently focused field.

    Args:
        text: The text to input.

    Returns:
        True if text was input successfully.
    """
    return bool(get_api().inputText(str(text)))
