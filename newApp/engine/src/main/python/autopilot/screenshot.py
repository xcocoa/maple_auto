"""
Screenshot and image recognition functions.

Wraps the Java PythonApiModule screenshot and image matching methods.
"""

from autopilot._bridge import get_api


def screenshot():
    """
    Captures a screenshot of the current screen.

    Returns:
        A bytes object containing the raw screenshot image data,
        or None if capture failed.
    """
    data = get_api().screenshot()
    if data is None:
        return None
    return bytes(data)


def screenshot_size():
    """
    Returns the current screen dimensions.

    Returns:
        A tuple (width, height) in pixels.
    """
    w = get_api().screenshotWidth()
    h = get_api().screenshotHeight()
    return (int(w), int(h))


def find_image(template_path, threshold=0.9):
    """
    Searches the screen for a template image.

    Args:
        template_path: Absolute path to the template image file.
        threshold: Match confidence threshold (0.0-1.0). Default 0.9.

    Returns:
        A dict with match result {'x': int, 'y': int, 'confidence': float}
        if found, or None if not found.
    """
    result = get_api().findImage(str(template_path), float(threshold))
    if result is None:
        return None
    try:
        return {
            "x": int(result.x),
            "y": int(result.y),
            "confidence": float(result.confidence),
        }
    except AttributeError:
        # If it's already a dict-like object
        return result


def find_color(color, left=0, top=0, right=0, bottom=0, threshold=10):
    """
    Searches the screen for a pixel matching the given color.

    Args:
        color: The color to find as an integer (e.g., 0xFFRRGGBB).
        left: Left bound of search region (0 = full screen).
        top: Top bound of search region.
        right: Right bound of search region.
        bottom: Bottom bound of search region.
        threshold: Color difference tolerance (0-255).

    Returns:
        A tuple (x, y) of the first matching pixel, or None if not found.
    """
    result = get_api().findColor(
        int(color), int(left), int(top), int(right), int(bottom), int(threshold)
    )
    if result is None:
        return None
    return (int(result[0]), int(result[1]))


def get_pixel(x, y):
    """
    Gets the color of a pixel at the given screen coordinates.

    Args:
        x: X coordinate.
        y: Y coordinate.

    Returns:
        The pixel color as an integer (0xAARRGGBB format).
    """
    return int(get_api().getPixel(int(x), int(y)))
