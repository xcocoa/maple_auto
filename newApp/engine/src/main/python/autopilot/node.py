"""
Node finding and interaction functions.

Wraps the Java PythonApiModule node methods to provide a Pythonic API
for finding UI elements and performing actions on them.
"""

import time
from autopilot._bridge import get_api


def find_node(text=None, id=None, cls=None, desc=None):
    """
    Finds the first UI node matching the given criteria.

    Args:
        text: Match by visible text (contains match).
        id: Match by resource ID (e.g., "com.example:id/button").
        cls: Match by class name (e.g., "android.widget.Button").
        desc: Match by content description.

    Returns:
        A dict with node properties (text, id, className, description,
        clickable, enabled, left, top, right, bottom), or None if not found.
    """
    result = get_api().findNode(text, id, cls, desc)
    if result is None:
        return None
    return _pyobject_to_dict(result)


def find_all_nodes(text=None, id=None, cls=None, desc=None):
    """
    Finds all UI nodes matching the given criteria.

    Args:
        text: Match by visible text.
        id: Match by resource ID.
        cls: Match by class name.
        desc: Match by content description.

    Returns:
        A list of dicts with node properties.
    """
    results = get_api().findAllNodes(text, id, cls, desc)
    if results is None:
        return []
    return [dict(item) for item in results]


def click_node(text=None, id=None, cls=None, desc=None):
    """
    Finds a node matching the criteria and clicks it.

    Args:
        text: Match by visible text.
        id: Match by resource ID.
        cls: Match by class name.
        desc: Match by content description.

    Returns:
        True if a matching node was found and clicked.
    """
    return bool(get_api().clickNode(text, id, cls, desc))


def long_click_node(text=None, id=None, cls=None, desc=None):
    """
    Finds a node matching the criteria and long-clicks it.

    Note: Delegates to finding the node and clicking the center coordinates
    with a long press via the gesture API.

    Args:
        text: Match by visible text.
        id: Match by resource ID.
        cls: Match by class name.
        desc: Match by content description.

    Returns:
        True if a matching node was found and long-clicked.
    """
    node = find_node(text=text, id=id, cls=cls, desc=desc)
    if node is None:
        return False
    # Calculate center of the node and perform long press
    cx = (node.get("left", 0) + node.get("right", 0)) // 2
    cy = (node.get("top", 0) + node.get("bottom", 0)) // 2
    from autopilot.gesture import long_press
    return long_press(cx, cy)


def set_node_text(new_text, text=None, id=None, cls=None, desc=None):
    """
    Finds a node and sets its text content.

    Args:
        new_text: The text to set.
        text: Match by visible text.
        id: Match by resource ID.
        cls: Match by class name.
        desc: Match by content description.

    Returns:
        True if a matching node was found and text was set.
    """
    return bool(get_api().inputText(str(new_text)))


def scroll_forward(text=None, id=None, cls=None, desc=None):
    """
    Scrolls forward in a scrollable node. If no criteria given, swipes up.

    Returns:
        True if scrolled successfully.
    """
    if text is None and id is None and cls is None and desc is None:
        from autopilot.gesture import swipe_up
        return swipe_up()
    # Try finding a scrollable node and scrolling
    from autopilot.gesture import swipe_up
    return swipe_up()


def scroll_backward(text=None, id=None, cls=None, desc=None):
    """
    Scrolls backward in a scrollable node. If no criteria given, swipes down.

    Returns:
        True if scrolled successfully.
    """
    if text is None and id is None and cls is None and desc is None:
        from autopilot.gesture import swipe_down
        return swipe_down()
    from autopilot.gesture import swipe_down
    return swipe_down()


def get_node_info(text=None, id=None, cls=None, desc=None):
    """
    Gets detailed information about a node.

    Returns:
        A dict with detailed node properties, or None if not found.
    """
    return find_node(text=text, id=id, cls=cls, desc=desc)


def wait_for_node(text=None, id=None, cls=None, desc=None,
                  timeout_s=10.0, interval_s=0.5):
    """
    Waits for a node matching the criteria to appear.

    Args:
        text: Match by visible text.
        id: Match by resource ID.
        cls: Match by class name.
        desc: Match by content description.
        timeout_s: Maximum wait time in seconds.
        interval_s: Poll interval in seconds.

    Returns:
        The node dict if found within the timeout, None otherwise.
    """
    from autopilot.utils import sleep
    deadline = time.time() + timeout_s
    while time.time() < deadline:
        node = find_node(text=text, id=id, cls=cls, desc=desc)
        if node is not None:
            return node
        sleep(interval_s)
    return None


def _pyobject_to_dict(obj):
    """Converts a Chaquopy PyObject dict to a Python dict."""
    try:
        # PyObject from Java dict - try to convert
        result = {}
        for key in obj:
            k = str(key)
            v = obj[key]
            # Convert Java types to Python
            if v is not None:
                try:
                    result[k] = v.toJava(object)
                except (AttributeError, TypeError):
                    result[k] = v
            else:
                result[k] = None
        return result
    except (TypeError, AttributeError):
        # Already a dict or compatible type
        try:
            return dict(obj)
        except (TypeError, ValueError):
            return obj
