package com.maple.auto.engine.screenshot

import android.graphics.Point
import android.graphics.Rect
import android.util.Log

/**
 * Image template matching and color finding operations.
 *
 * Delegates actual OpenCV operations to Python via Chaquopy for efficient
 * image processing using numpy and cv2.
 *
 * TODO: Chaquopy integration - Python/PyObject references replaced with reflection
 * to allow compilation without Chaquopy in the engine module.
 */
class ImageMatcher {

    companion object {
        private const val TAG = "ImageMatcher"
        private const val CLS_PYTHON = "com.chaquo.python.Python"
    }

    /**
     * Result of a template match operation.
     */
    data class MatchResult(
        val x: Int,
        val y: Int,
        val width: Int,
        val height: Int,
        val confidence: Double
    )

    /** Cached Python instance obtained via reflection, or null if Chaquopy unavailable. */
    private val pythonInstance: Any? by lazy {
        try {
            val pythonClass = Class.forName(CLS_PYTHON)
            val getInstance = pythonClass.getMethod("getInstance")
            getInstance.invoke(null)
        } catch (e: Exception) {
            Log.w(TAG, "Chaquopy not available - image matching via Python disabled")
            null
        }
    }

    /**
     * Finds the best match of a template image within the screenshot.
     *
     * @param screenshot The screenshot to search in.
     * @param templatePath Path to the template image file.
     * @param threshold Minimum confidence threshold (0.0 - 1.0).
     * @return [MatchResult] if found above threshold, null otherwise.
     */
    fun findImage(
        screenshot: ScreenshotImage,
        templatePath: String,
        threshold: Double = 0.9
    ): MatchResult? {
        return try {
            val py = pythonInstance ?: run {
                Log.w(TAG, "Python not available for findImage")
                return null
            }
            val getModule = py.javaClass.getMethod("getModule", String::class.java)
            val matchModule = getModule.invoke(py, "autopilot._image_match")

            val callAttr = matchModule!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            val result = callAttr.invoke(
                matchModule, "find_image",
                arrayOf<Any>(screenshot.data, screenshot.width, screenshot.height, templatePath, threshold)
            )

            if (result == null || result.toString() == "None") {
                return null
            }

            parseMatchResult(result)
        } catch (e: Exception) {
            Log.e(TAG, "findImage failed", e)
            null
        }
    }

    /**
     * Finds all matches of a template image within the screenshot.
     *
     * @param screenshot The screenshot to search in.
     * @param templatePath Path to the template image file.
     * @param threshold Minimum confidence threshold (0.0 - 1.0).
     * @return List of [MatchResult] above the threshold.
     */
    fun findAllImages(
        screenshot: ScreenshotImage,
        templatePath: String,
        threshold: Double = 0.9
    ): List<MatchResult> {
        return try {
            val py = pythonInstance ?: run {
                Log.w(TAG, "Python not available for findAllImages")
                return emptyList()
            }
            val getModule = py.javaClass.getMethod("getModule", String::class.java)
            val matchModule = getModule.invoke(py, "autopilot._image_match")

            val callAttr = matchModule!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            val results = callAttr.invoke(
                matchModule, "find_all_images",
                arrayOf<Any>(screenshot.data, screenshot.width, screenshot.height, templatePath, threshold)
            )

            if (results == null || results.toString() == "None") {
                return emptyList()
            }

            val asList = results.javaClass.getMethod("asList")
            val list = asList.invoke(results) as List<*>
            list.mapNotNull { it?.let { parseMatchResult(it) } }
        } catch (e: Exception) {
            Log.e(TAG, "findAllImages failed", e)
            emptyList()
        }
    }

    /**
     * Finds the first pixel matching the target color within a region.
     *
     * @param screenshot The screenshot to search in.
     * @param color Target color as ARGB int.
     * @param region Optional bounding region to search within.
     * @param threshold Color distance threshold (0-255 per channel).
     * @return [Point] of the first matching pixel, or null if not found.
     */
    fun findColor(
        screenshot: ScreenshotImage,
        color: Int,
        region: Rect? = null,
        threshold: Int = 10
    ): Point? {
        return try {
            val py = pythonInstance ?: run {
                Log.w(TAG, "Python not available for findColor")
                return null
            }
            val getModule = py.javaClass.getMethod("getModule", String::class.java)
            val matchModule = getModule.invoke(py, "autopilot._image_match")

            val r = (color shr 16) and 0xFF
            val g = (color shr 8) and 0xFF
            val b = color and 0xFF

            val callAttr = matchModule!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            val result = callAttr.invoke(
                matchModule, "find_color",
                arrayOf<Any>(
                    screenshot.data,
                    screenshot.width,
                    screenshot.height,
                    r, g, b,
                    region?.left ?: 0,
                    region?.top ?: 0,
                    region?.right ?: screenshot.width,
                    region?.bottom ?: screenshot.height,
                    threshold
                )
            )

            if (result == null || result.toString() == "None") {
                return null
            }

            val asList = result.javaClass.getMethod("asList")
            val coords = asList.invoke(result) as List<*>
            val toInt0 = coords[0]!!.javaClass.getMethod("toInt")
            val toInt1 = coords[1]!!.javaClass.getMethod("toInt")
            Point(toInt0.invoke(coords[0]) as Int, toInt1.invoke(coords[1]) as Int)
        } catch (e: Exception) {
            Log.e(TAG, "findColor failed", e)
            null
        }
    }

    /**
     * Gets the ARGB color value of a pixel in the screenshot.
     *
     * @param screenshot The screenshot to read from.
     * @param x X coordinate.
     * @param y Y coordinate.
     * @return ARGB color int, or 0 if coordinates are out of bounds.
     */
    fun getPixel(screenshot: ScreenshotImage, x: Int, y: Int): Int {
        if (x < 0 || x >= screenshot.width || y < 0 || y >= screenshot.height) return 0

        val offset = y * screenshot.rowStride + x * screenshot.pixelStride
        if (offset + 3 >= screenshot.data.size) return 0

        val r = screenshot.data[offset].toInt() and 0xFF
        val g = screenshot.data[offset + 1].toInt() and 0xFF
        val b = screenshot.data[offset + 2].toInt() and 0xFF
        val a = screenshot.data[offset + 3].toInt() and 0xFF

        return (a shl 24) or (r shl 16) or (g shl 8) or b
    }

    private fun parseMatchResult(pyObj: Any): MatchResult? {
        return try {
            val asList = pyObj.javaClass.getMethod("asList")
            val list = asList.invoke(pyObj) as List<*>
            val toInt = { obj: Any? -> obj!!.javaClass.getMethod("toInt").invoke(obj) as Int }
            val toDouble = { obj: Any? -> obj!!.javaClass.getMethod("toDouble").invoke(obj) as Double }
            MatchResult(
                x = toInt(list[0]),
                y = toInt(list[1]),
                width = toInt(list[2]),
                height = toInt(list[3]),
                confidence = toDouble(list[4])
            )
        } catch (e: Exception) {
            Log.e(TAG, "Failed to parse match result", e)
            null
        }
    }
}
