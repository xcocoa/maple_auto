"""
Internal image matching module using OpenCV (cv2) and numpy.

Called from Kotlin's ImageMatcher via Chaquopy. Not intended for direct use
by automation scripts.
"""

import numpy as np


def _bytes_to_image(data, width, height):
    """Convert raw RGBA byte data to a numpy array (BGR for OpenCV)."""
    arr = np.frombuffer(bytes(data), dtype=np.uint8)
    rgba = arr.reshape((height, width, 4))
    # Convert RGBA to BGR for OpenCV
    bgr = rgba[:, :, :3][:, :, ::-1].copy()
    return bgr


def find_image(data, width, height, template_path, threshold):
    """
    Find the best template match in the screenshot.

    Returns [x, y, w, h, confidence] or None.
    """
    try:
        import cv2
    except ImportError:
        return None

    screen = _bytes_to_image(data, width, height)
    template = cv2.imread(str(template_path))
    if template is None:
        return None

    th, tw = template.shape[:2]
    result = cv2.matchTemplate(screen, template, cv2.TM_CCOEFF_NORMED)
    min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(result)

    if max_val >= threshold:
        x, y = max_loc
        return [int(x), int(y), int(tw), int(th), float(max_val)]

    return None


def find_all_images(data, width, height, template_path, threshold):
    """
    Find all template matches in the screenshot above the threshold.

    Returns list of [x, y, w, h, confidence].
    """
    try:
        import cv2
    except ImportError:
        return []

    screen = _bytes_to_image(data, width, height)
    template = cv2.imread(str(template_path))
    if template is None:
        return []

    th, tw = template.shape[:2]
    result = cv2.matchTemplate(screen, template, cv2.TM_CCOEFF_NORMED)

    locations = np.where(result >= threshold)
    matches = []
    for pt in zip(*locations[::-1]):
        x, y = int(pt[0]), int(pt[1])
        confidence = float(result[y, x])
        matches.append([x, y, int(tw), int(th), confidence])

    # Non-maximum suppression: remove overlapping matches
    if len(matches) > 1:
        matches = _nms(matches, tw, th)

    return matches


def find_color(data, width, height, r, g, b, left, top, right, bottom, threshold):
    """
    Find the first pixel matching the target RGB color within a region.

    Returns [x, y] or None.
    """
    arr = np.frombuffer(bytes(data), dtype=np.uint8)
    rgba = arr.reshape((height, width, 4))

    # Clamp region bounds
    left = max(0, int(left))
    top = max(0, int(top))
    right = min(width, int(right))
    bottom = min(height, int(bottom))

    region = rgba[top:bottom, left:right, :3]  # RGB channels

    target = np.array([int(r), int(g), int(b)], dtype=np.int16)
    diff = np.abs(region.astype(np.int16) - target)
    mask = np.all(diff <= threshold, axis=2)

    indices = np.argwhere(mask)
    if len(indices) == 0:
        return None

    # First match: argwhere returns (row, col) = (y-offset, x-offset)
    y_off, x_off = indices[0]
    return [int(x_off + left), int(y_off + top)]


def _nms(matches, tw, th, overlap_threshold=0.5):
    """Simple non-maximum suppression for template matches."""
    if not matches:
        return matches

    # Sort by confidence descending
    matches.sort(key=lambda m: m[4], reverse=True)
    kept = []

    for match in matches:
        x, y, w, h, conf = match
        overlap = False
        for k in kept:
            kx, ky = k[0], k[1]
            # Check overlap ratio
            ox = max(0, min(x + tw, kx + tw) - max(x, kx))
            oy = max(0, min(y + th, ky + th) - max(y, ky))
            overlap_area = ox * oy
            total_area = tw * th
            if total_area > 0 and overlap_area / total_area > overlap_threshold:
                overlap = True
                break
        if not overlap:
            kept.append(match)

    return kept
