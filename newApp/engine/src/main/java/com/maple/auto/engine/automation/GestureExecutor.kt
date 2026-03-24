package com.maple.auto.engine.automation

import android.util.Log
import com.maple.auto.accessibility.AutoAccessibilityService
import com.maple.auto.accessibility.GestureDispatcher
import kotlinx.coroutines.runBlocking

/**
 * Engine-level proxy for gesture operations.
 *
 * Delegates to [GestureDispatcher] via the [AutoAccessibilityService] singleton.
 * Provides blocking APIs suitable for use from Python scripts (which run on
 * background threads and expect synchronous results).
 */
class GestureExecutor {

    companion object {
        private const val TAG = "GestureExecutor"
    }

    /**
     * Performs a tap/click at the given screen coordinates.
     *
     * @param x X coordinate in pixels.
     * @param y Y coordinate in pixels.
     * @param durationMs Click duration in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    fun click(x: Int, y: Int, durationMs: Long = 100L): Boolean {
        val service = getService() ?: return false
        return runBlocking {
            try {
                GestureDispatcher.click(service, x.toFloat(), y.toFloat(), durationMs)
            } catch (e: Exception) {
                Log.e(TAG, "click($x, $y) failed", e)
                false
            }
        }
    }

    /**
     * Performs a long-press gesture at the given screen coordinates.
     *
     * @param x X coordinate in pixels.
     * @param y Y coordinate in pixels.
     * @param durationMs Long-press duration in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    fun longPress(x: Int, y: Int, durationMs: Long = 1000L): Boolean {
        val service = getService() ?: return false
        return runBlocking {
            try {
                GestureDispatcher.longPress(service, x.toFloat(), y.toFloat(), durationMs)
            } catch (e: Exception) {
                Log.e(TAG, "longPress($x, $y) failed", e)
                false
            }
        }
    }

    /**
     * Performs a swipe gesture between two screen coordinates.
     *
     * @param x1 Start X coordinate.
     * @param y1 Start Y coordinate.
     * @param x2 End X coordinate.
     * @param y2 End Y coordinate.
     * @param durationMs Swipe duration in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    fun swipe(x1: Int, y1: Int, x2: Int, y2: Int, durationMs: Long = 500L): Boolean {
        val service = getService() ?: return false
        return runBlocking {
            try {
                GestureDispatcher.swipe(
                    service,
                    x1.toFloat(), y1.toFloat(),
                    x2.toFloat(), y2.toFloat(),
                    durationMs
                )
            } catch (e: Exception) {
                Log.e(TAG, "swipe($x1,$y1 -> $x2,$y2) failed", e)
                false
            }
        }
    }

    /**
     * Performs a swipe through multiple waypoints.
     *
     * @param points List of (x, y) pairs defining the swipe path. Must have at least 2 points.
     * @param durationMs Swipe duration in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    fun multiSwipe(points: List<Pair<Int, Int>>, durationMs: Long = 500L): Boolean {
        if (points.size < 2) {
            Log.w(TAG, "multiSwipe requires at least 2 points")
            return false
        }
        val service = getService() ?: return false
        val floatPoints = points.map { (x, y) -> Pair(x.toFloat(), y.toFloat()) }
        return runBlocking {
            try {
                GestureDispatcher.multiSwipe(service, floatPoints, durationMs)
            } catch (e: Exception) {
                Log.e(TAG, "multiSwipe failed", e)
                false
            }
        }
    }

    /**
     * Performs a pinch gesture (two-finger zoom in/out).
     *
     * @param centerX Center X of the pinch.
     * @param centerY Center Y of the pinch.
     * @param startDistance Starting distance from center to each finger.
     * @param endDistance Ending distance from center to each finger.
     * @param durationMs Pinch duration in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    fun pinch(
        centerX: Int,
        centerY: Int,
        startDistance: Int,
        endDistance: Int,
        durationMs: Long = 500L
    ): Boolean {
        val service = getService() ?: return false
        return runBlocking {
            try {
                GestureDispatcher.pinch(
                    service,
                    centerX.toFloat(), centerY.toFloat(),
                    startDistance.toFloat(), endDistance.toFloat(),
                    durationMs
                )
            } catch (e: Exception) {
                Log.e(TAG, "pinch failed", e)
                false
            }
        }
    }

    private fun getService(): AutoAccessibilityService? {
        val service = AutoAccessibilityService.instance
        if (service == null) {
            Log.w(TAG, "AccessibilityService not running")
        }
        return service
    }
}
