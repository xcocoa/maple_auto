"""
Internal bridge module for accessing the Java PythonApiModule instance.

This module provides a lazy accessor for the Kotlin PythonApiModule
that is injected into the Python runtime by PythonEngine.
"""

_api_instance = None


def set_api(api):
    """
    Sets the Java PythonApiModule instance.

    Called by the Kotlin side to inject the API bridge.

    Args:
        api: The PythonApiModule Java object.
    """
    global _api_instance
    _api_instance = api


def get_api():
    """
    Returns the Java PythonApiModule instance.

    Returns:
        The PythonApiModule instance.

    Raises:
        RuntimeError: If the API has not been initialized.
    """
    if _api_instance is None:
        raise RuntimeError(
            "autopilot API not initialized. "
            "This module must be run through the MapleAuto engine."
        )
    return _api_instance
