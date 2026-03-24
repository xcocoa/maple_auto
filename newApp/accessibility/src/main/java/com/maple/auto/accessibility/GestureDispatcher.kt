package com.maple.auto.accessibility

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Path
import android.os.Build
import android.util.Log
import androidx.annotation.RequiresApi
import kotlin.coroutines.resume
import kotlin.coroutines.suspendCoroutine

/**
 * Handles gesture creation and dispatch through the [AccessibilityService] API.
 *
 * All gestures use [GestureDescription] and are dispatched via
 * [AccessibilityService.dispatchGesture]. Suspend functions convert the async
 * callback into a coroutine-friendly result.
 */
object GestureDispatcher {

    private const val TAG = "GestureDispatcher"

    /**
     * Performs a click gesture at the given coordinates.
     *
     * Creates a short path from (x-1, y-1) to (x+1, y+1) with a 50ms start delay,
     * matching the Huoji reference implementation.
     *
     * @param service The accessibility service to dispatch through.
     * @param x The X coordinate.
     * @param y The Y coordinate.
     * @param durationMs Duration of the click stroke in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun click(
        service: AccessibilityService,
        x: Float,
        y: Float,
        durationMs: Long = 100L
    ): Boolean {
        val path = Path().apply {
            moveTo(x - 1f, y - 1f)
            lineTo(x + 1f, y + 1f)
        }
        val stroke = GestureDescription.StrokeDescription(path, 50L, durationMs)
        return dispatchGesture(service, GestureDescription.Builder().addStroke(stroke).build())
    }

    /**
     * Performs a long-press gesture at the given coordinates.
     *
     * Creates a small 2x2 rectangle path, matching the Huoji reference implementation.
     *
     * @param service The accessibility service to dispatch through.
     * @param x The X coordinate.
     * @param y The Y coordinate.
     * @param durationMs Duration of the long press in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun longPress(
        service: AccessibilityService,
        x: Float,
        y: Float,
        durationMs: Long = 1000L
    ): Boolean {
        val path = Path().apply {
            moveTo(x - 1f, y - 1f)
            lineTo(x + 1f, y - 1f)
            lineTo(x + 1f, y + 1f)
            lineTo(x - 1f, y + 1f)
        }
        val stroke = GestureDescription.StrokeDescription(path, 0L, durationMs)
        return dispatchGesture(service, GestureDescription.Builder().addStroke(stroke).build())
    }

    /**
     * Performs a swipe gesture from one point to another.
     *
     * @param service The accessibility service to dispatch through.
     * @param x1 Start X coordinate.
     * @param y1 Start Y coordinate.
     * @param x2 End X coordinate.
     * @param y2 End Y coordinate.
     * @param durationMs Duration of the swipe in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun swipe(
        service: AccessibilityService,
        x1: Float,
        y1: Float,
        x2: Float,
        y2: Float,
        durationMs: Long = 500L
    ): Boolean {
        val path = Path().apply {
            moveTo(x1, y1)
            lineTo(x2, y2)
        }
        val stroke = GestureDescription.StrokeDescription(path, 0L, durationMs)
        return dispatchGesture(service, GestureDescription.Builder().addStroke(stroke).build())
    }

    /**
     * Performs a swipe gesture through multiple points.
     *
     * @param service The accessibility service to dispatch through.
     * @param points List of (x, y) coordinate pairs defining the swipe path.
     *               Must contain at least 2 points.
     * @param durationMs Duration of the swipe in milliseconds.
     * @return `true` if the gesture completed successfully.
     * @throws IllegalArgumentException if fewer than 2 points are provided.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun multiSwipe(
        service: AccessibilityService,
        points: List<Pair<Float, Float>>,
        durationMs: Long = 500L
    ): Boolean {
        require(points.size >= 2) { "multiSwipe requires at least 2 points" }
        val path = Path().apply {
            moveTo(points[0].first, points[0].second)
            for (i in 1 until points.size) {
                lineTo(points[i].first, points[i].second)
            }
        }
        val stroke = GestureDescription.StrokeDescription(path, 0L, durationMs)
        return dispatchGesture(service, GestureDescription.Builder().addStroke(stroke).build())
    }

    /**
     * Performs a pinch gesture (two-finger zoom in/out).
     *
     * Creates two simultaneous strokes moving symmetrically from/to the center.
     *
     * @param service The accessibility service to dispatch through.
     * @param centerX Center X coordinate of the pinch.
     * @param centerY Center Y coordinate of the pinch.
     * @param startDistance Starting distance between the two fingers (from center to each finger).
     * @param endDistance Ending distance between the two fingers.
     * @param durationMs Duration of the pinch in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun pinch(
        service: AccessibilityService,
        centerX: Float,
        centerY: Float,
        startDistance: Float,
        endDistance: Float,
        durationMs: Long = 500L
    ): Boolean {
        // Finger 1: moves from left of center to closer/farther left
        val path1 = Path().apply {
            moveTo(centerX - startDistance, centerY)
            lineTo(centerX - endDistance, centerY)
        }
        // Finger 2: moves from right of center to closer/farther right
        val path2 = Path().apply {
            moveTo(centerX + startDistance, centerY)
            lineTo(centerX + endDistance, centerY)
        }
        val stroke1 = GestureDescription.StrokeDescription(path1, 0L, durationMs)
        val stroke2 = GestureDescription.StrokeDescription(path2, 0L, durationMs)
        val gesture = GestureDescription.Builder()
            .addStroke(stroke1)
            .addStroke(stroke2)
            .build()
        return dispatchGesture(service, gesture)
    }

    /**
     * Dispatches a pre-built [GestureDescription] and suspends until completion.
     *
     * This is the core dispatch method used by all gesture helpers. It converts
     * the async [AccessibilityService.GestureResultCallback] into a suspend result.
     *
     * @param service The accessibility service to dispatch through.
     * @param gesture The gesture description to dispatch.
     * @return `true` if the gesture completed successfully, `false` if cancelled or failed.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun dispatchGesture(
        service: AccessibilityService,
        gesture: GestureDescription
    ): Boolean = suspendCoroutine { continuation ->
        val callback = object : AccessibilityService.GestureResultCallback() {
            override fun onCompleted(gestureDescription: GestureDescription?) {
                Log.d(TAG, "Gesture completed successfully")
                continuation.resume(true)
            }

            override fun onCancelled(gestureDescription: GestureDescription?) {
                Log.w(TAG, "Gesture was cancelled")
                continuation.resume(false)
            }
        }
        try {
            val dispatched = service.dispatchGesture(gesture, callback, null)
            if (!dispatched) {
                Log.e(TAG, "dispatchGesture returned false")
                continuation.resume(false)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to dispatch gesture", e)
            continuation.resume(false)
        }
    }
}
