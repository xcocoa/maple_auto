package com.maple.auto.engine.screenshot

import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.PixelFormat
import android.hardware.display.DisplayManager
import android.hardware.display.VirtualDisplay
import android.media.Image
import android.media.ImageReader
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.util.DisplayMetrics
import android.util.Log
import android.view.Surface
import android.view.WindowManager
import java.nio.ByteBuffer

/**
 * Manages screen capture via MediaProjection + VirtualDisplay + ImageReader.
 *
 * Provides thread-safe singleton access for capturing screenshots as [ScreenshotImage].
 * Uses one-shot capture: creates VirtualDisplay, grabs a single frame, then releases.
 */
class ScreenCaptureManager private constructor() {

    companion object {
        private const val TAG = "ScreenCaptureManager"
        private const val VIRTUAL_DISPLAY_NAME = "maple_auto_capture"
        private const val POLL_INTERVAL_MS = 20L
        private const val MAX_TIMEOUT_MS = 1000L

        @Volatile
        private var instance: ScreenCaptureManager? = null

        fun getInstance(): ScreenCaptureManager {
            return instance ?: synchronized(this) {
                instance ?: ScreenCaptureManager().also { instance = it }
            }
        }
    }

    private var mediaProjection: MediaProjection? = null
    private var displayMetrics: DisplayMetrics? = null
    private var context: Context? = null

    @Volatile
    private var isInitialized = false

    private val captureLock = Object()

    /**
     * Sets up MediaProjection from the permission result.
     *
     * @param context Application context.
     * @param resultCode The result code from the permission activity.
     * @param resultData The result data Intent from the permission activity.
     */
    fun init(context: Context, resultCode: Int, resultData: Intent) {
        synchronized(captureLock) {
            this.context = context.applicationContext

            val projectionManager = context.getSystemService(Context.MEDIA_PROJECTION_SERVICE)
                    as MediaProjectionManager
            mediaProjection = projectionManager.getMediaProjection(resultCode, resultData)

            displayMetrics = DisplayMetrics()
            val windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
            @Suppress("DEPRECATION")
            windowManager.defaultDisplay.getRealMetrics(displayMetrics)

            mediaProjection?.registerCallback(object : MediaProjection.Callback() {
                override fun onStop() {
                    Log.i(TAG, "MediaProjection stopped")
                    isInitialized = false
                }
            }, null)

            isInitialized = true
            Log.i(TAG, "ScreenCaptureManager initialized: ${displayMetrics!!.widthPixels}x${displayMetrics!!.heightPixels}")
        }
    }

    /**
     * Captures a screenshot using MediaProjection.
     *
     * Creates a VirtualDisplay and ImageReader, polls for the first available frame
     * with 20ms intervals up to 1s max timeout, then releases all resources.
     *
     * @return [ScreenshotImage] containing RGBA pixel data, or null on failure.
     */
    fun captureScreenshot(): ScreenshotImage? {
        if (!isInitialized) {
            Log.w(TAG, "Not initialized")
            return null
        }

        synchronized(captureLock) {
            val projection = mediaProjection ?: return null
            val metrics = displayMetrics ?: return null

            val width = metrics.widthPixels
            val height = metrics.heightPixels
            val density = metrics.densityDpi

            // Determine current rotation
            val windowManager = context!!.getSystemService(Context.WINDOW_SERVICE) as WindowManager
            @Suppress("DEPRECATION")
            val rotation = windowManager.defaultDisplay.rotation

            var imageReader: ImageReader? = null
            var virtualDisplay: VirtualDisplay? = null

            try {
                imageReader = ImageReader.newInstance(width, height, PixelFormat.RGBA_8888, 2)

                virtualDisplay = projection.createVirtualDisplay(
                    VIRTUAL_DISPLAY_NAME,
                    width,
                    height,
                    density,
                    DisplayManager.VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR,
                    imageReader.surface,
                    null,
                    null
                )

                // Poll for image with timeout
                var image: Image? = null
                val startTime = System.currentTimeMillis()

                while (image == null) {
                    image = imageReader.acquireLatestImage()
                    if (image != null) break

                    val elapsed = System.currentTimeMillis() - startTime
                    if (elapsed >= MAX_TIMEOUT_MS) {
                        Log.w(TAG, "Screenshot capture timed out after ${MAX_TIMEOUT_MS}ms")
                        return null
                    }
                    Thread.sleep(POLL_INTERVAL_MS)
                }

                return processImage(image!!, width, height, rotation)
            } catch (e: Exception) {
                Log.e(TAG, "Failed to capture screenshot", e)
                return null
            } finally {
                virtualDisplay?.release()
                imageReader?.close()
            }
        }
    }

    private fun processImage(image: Image, width: Int, height: Int, rotation: Int): ScreenshotImage? {
        return try {
            val plane = image.planes[0]
            val buffer = plane.buffer
            val rowStride = plane.rowStride
            val pixelStride = plane.pixelStride

            // Handle row padding if rowStride != width * pixelStride
            val rowPadding = rowStride - pixelStride * width
            val bitmapWidth = width + rowPadding / pixelStride

            if (rowPadding == 0) {
                // No padding, direct copy
                val data = ByteArray(buffer.remaining())
                buffer.get(data)
                image.close()
                ScreenshotImage(
                    data = data,
                    width = width,
                    height = height,
                    rotation = rotationToDegrees(rotation),
                    rowStride = rowStride,
                    pixelStride = pixelStride
                )
            } else {
                // Has row padding, create bitmap and strip padding
                val bitmap = Bitmap.createBitmap(bitmapWidth, height, Bitmap.Config.ARGB_8888)
                bitmap.copyPixelsFromBuffer(buffer)
                image.close()

                // Crop to actual width
                val cropped = Bitmap.createBitmap(bitmap, 0, 0, width, height)
                if (cropped !== bitmap) bitmap.recycle()

                // Apply rotation if needed
                val finalBitmap = if (rotation != Surface.ROTATION_0) {
                    val matrix = Matrix()
                    matrix.postRotate(rotationToDegrees(rotation).toFloat())
                    val rotated = Bitmap.createBitmap(cropped, 0, 0, cropped.width, cropped.height, matrix, true)
                    cropped.recycle()
                    rotated
                } else {
                    cropped
                }

                // Extract pixel data
                val finalWidth = finalBitmap.width
                val finalHeight = finalBitmap.height
                val byteBuffer = ByteBuffer.allocate(finalWidth * finalHeight * 4)
                finalBitmap.copyPixelsToBuffer(byteBuffer)
                val data = byteBuffer.array()
                finalBitmap.recycle()

                ScreenshotImage(
                    data = data,
                    width = finalWidth,
                    height = finalHeight,
                    rotation = 0, // Already applied rotation
                    rowStride = finalWidth * 4,
                    pixelStride = 4
                )
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to process image", e)
            image.close()
            null
        }
    }

    private fun rotationToDegrees(rotation: Int): Int = when (rotation) {
        Surface.ROTATION_0 -> 0
        Surface.ROTATION_90 -> 90
        Surface.ROTATION_180 -> 180
        Surface.ROTATION_270 -> 270
        else -> 0
    }

    /**
     * Releases the MediaProjection and all associated resources.
     */
    fun release() {
        synchronized(captureLock) {
            mediaProjection?.stop()
            mediaProjection = null
            isInitialized = false
            context = null
            displayMetrics = null
            Log.i(TAG, "ScreenCaptureManager released")
        }
    }
}
