package com.maple.auto.engine.screenshot

/**
 * Represents a captured screenshot as raw RGBA pixel data.
 *
 * @param data Raw pixel bytes in RGBA_8888 format.
 * @param width Image width in pixels.
 * @param height Image height in pixels.
 * @param rotation Display rotation in degrees (0, 90, 180, 270).
 * @param rowStride Number of bytes per row (may include padding).
 * @param pixelStride Number of bytes per pixel (typically 4 for RGBA).
 */
data class ScreenshotImage(
    val data: ByteArray,
    val width: Int,
    val height: Int,
    val rotation: Int = 0,
    val rowStride: Int = width * 4,
    val pixelStride: Int = 4
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is ScreenshotImage) return false
        return data.contentEquals(other.data) &&
                width == other.width &&
                height == other.height &&
                rotation == other.rotation &&
                rowStride == other.rowStride &&
                pixelStride == other.pixelStride
    }

    override fun hashCode(): Int {
        var result = data.contentHashCode()
        result = 31 * result + width
        result = 31 * result + height
        result = 31 * result + rotation
        result = 31 * result + rowStride
        result = 31 * result + pixelStride
        return result
    }

    override fun toString(): String =
        "ScreenshotImage(${width}x${height}, rotation=$rotation, rowStride=$rowStride)"
}
