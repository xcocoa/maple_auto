package com.maple.auto.capture

import android.app.Notification
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.PixelFormat
import android.hardware.display.DisplayManager
import android.hardware.display.VirtualDisplay
import android.media.ImageReader
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.os.IBinder
import android.util.DisplayMetrics
import android.util.Log
import android.view.WindowManager
import androidx.core.app.NotificationCompat
import com.maple.auto.MainActivity
import com.maple.auto.MapleAutoApp
import com.maple.auto.R

/**
 * 截图服务（基于 MediaProjection）
 * 参考 huoji ScreenShoterV3.java 实现
 *
 * 使用流程:
 * 1. ScreenCaptureRequestActivity 获取用户授权 → resultCode + data
 * 2. 启动本服务并传入 resultCode + data
 * 3. 调用 captureScreen() 获取截图 Bitmap
 */
class ScreenCaptureService : Service() {

    companion object {
        private const val TAG = "ScreenCapture"
        private const val NOTIFICATION_ID = 2001
        private const val VIRTUAL_DISPLAY_NAME = "maple_capture"
        private const val MAX_CAPTURE_RETRIES = 50
        private const val CAPTURE_RETRY_DELAY_MS = 20L

        const val EXTRA_RESULT_CODE = "result_code"
        const val EXTRA_RESULT_DATA = "result_data"

        @JvmStatic
        @Volatile
        var instance: ScreenCaptureService? = null
            private set
    }

    private var mediaProjection: MediaProjection? = null
    private var virtualDisplay: VirtualDisplay? = null
    private var imageReader: ImageReader? = null
    private var handlerThread: HandlerThread? = null
    private var handler: Handler? = null

    private var screenWidth = 0
    private var screenHeight = 0
    private var screenDensity = 0

    @Volatile
    private var latestBitmap: Bitmap? = null

    @Volatile
    private var captureRequested = false

    override fun onCreate() {
        super.onCreate()
        instance = this

        // 获取屏幕参数
        val wm = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val metrics = DisplayMetrics()
        @Suppress("DEPRECATION")
        wm.defaultDisplay.getRealMetrics(metrics)
        screenWidth = metrics.widthPixels
        screenHeight = metrics.heightPixels
        screenDensity = metrics.densityDpi

        // 创建后台线程
        handlerThread = HandlerThread("imageReaderHandler").also {
            it.start()
            handler = Handler(it.looper)
        }

        Log.d(TAG, "ScreenCaptureService created, screen: ${screenWidth}x${screenHeight}, dpi: $screenDensity")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        startForeground(NOTIFICATION_ID, createNotification())

        if (intent != null && mediaProjection == null) {
            val resultCode = intent.getIntExtra(EXTRA_RESULT_CODE, 0)
            val resultData = intent.getParcelableExtra<Intent>(EXTRA_RESULT_DATA)

            if (resultData != null) {
                initProjection(resultCode, resultData)
            } else {
                Log.e(TAG, "Missing result data, stopping")
                stopSelf()
            }
        }

        return START_NOT_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        cleanup()
        instance = null
        super.onDestroy()
        Log.d(TAG, "ScreenCaptureService destroyed")
    }

    /**
     * 初始化 MediaProjection 和 ImageReader
     */
    private fun initProjection(resultCode: Int, data: Intent) {
        try {
            val projectionManager = getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
            mediaProjection = projectionManager.getMediaProjection(resultCode, data)

            mediaProjection?.registerCallback(object : MediaProjection.Callback() {
                override fun onStop() {
                    Log.d(TAG, "MediaProjection stopped")
                    cleanup()
                }
            }, handler)

            // 创建 ImageReader
            imageReader = ImageReader.newInstance(
                screenWidth, screenHeight,
                PixelFormat.RGBA_8888, 2
            ).also { reader ->
                reader.setOnImageAvailableListener({ ir ->
                    val image = ir.acquireLatestImage() ?: return@setOnImageAvailableListener
                    try {
                        // 只在请求截图时处理帧，否则直接丢弃
                        if (!captureRequested) return@setOnImageAvailableListener

                        val planes = image.planes
                        val buffer = planes[0].buffer
                        val pixelStride = planes[0].pixelStride
                        val rowStride = planes[0].rowStride
                        val rowPadding = rowStride - pixelStride * screenWidth

                        val bitmap = Bitmap.createBitmap(
                            screenWidth + rowPadding / pixelStride,
                            screenHeight,
                            Bitmap.Config.ARGB_8888
                        )
                        bitmap.copyPixelsFromBuffer(buffer)

                        // 如果有 padding，裁剪到实际尺寸
                        val finalBitmap = if (rowPadding > 0) {
                            Bitmap.createBitmap(bitmap, 0, 0, screenWidth, screenHeight).also {
                                bitmap.recycle()
                            }
                        } else {
                            bitmap
                        }

                        // 替换最新截图
                        synchronized(this@ScreenCaptureService) {
                            latestBitmap?.recycle()
                            latestBitmap = finalBitmap
                            captureRequested = false
                        }
                    } finally {
                        image.close()
                    }
                }, handler)
            }

            // 创建 VirtualDisplay
            virtualDisplay = mediaProjection?.createVirtualDisplay(
                VIRTUAL_DISPLAY_NAME,
                screenWidth, screenHeight, screenDensity,
                DisplayManager.VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR,
                imageReader!!.surface, null, handler
            )

            Log.d(TAG, "MediaProjection initialized successfully")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize projection", e)
            cleanup()
            stopSelf()
        }
    }

    /**
     * 获取最新截图
     * 
     * 使用轮询等待方式（参考 huoji: 50 次 x 20ms = 1 秒超时）
     * 返回 Bitmap 的副本，调用方负责 recycle
     */
    fun captureScreen(): Bitmap? {
        if (mediaProjection == null) {
            Log.w(TAG, "MediaProjection not initialized")
            return null
        }

        // 清除旧截图，请求新帧
        synchronized(this) {
            latestBitmap?.recycle()
            latestBitmap = null
            captureRequested = true
        }

        // 轮询等待新截图
        for (i in 0 until MAX_CAPTURE_RETRIES) {
            synchronized(this) {
                latestBitmap?.let { bitmap ->
                    return bitmap.copy(bitmap.config ?: Bitmap.Config.ARGB_8888, false)
                }
            }
            Thread.sleep(CAPTURE_RETRY_DELAY_MS)
        }

        Log.w(TAG, "Capture timeout after ${MAX_CAPTURE_RETRIES * CAPTURE_RETRY_DELAY_MS}ms")
        return null
    }

    /**
     * 获取屏幕宽度
     */
    fun getScreenWidth(): Int = screenWidth

    /**
     * 获取屏幕高度
     */
    fun getScreenHeight(): Int = screenHeight

    /**
     * 清理所有资源
     */
    private fun cleanup() {
        synchronized(this) {
            virtualDisplay?.release()
            virtualDisplay = null

            imageReader?.close()
            imageReader = null

            mediaProjection?.stop()
            mediaProjection = null

            handlerThread?.quitSafely()
            handlerThread = null
            handler = null

            latestBitmap?.recycle()
            latestBitmap = null
        }
    }

    private fun createNotification(): Notification {
        val pendingIntent = PendingIntent.getActivity(
            this, 0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, MapleAutoApp.CHANNEL_CAPTURE)
            .setContentTitle(getString(R.string.capture_notification_title))
            .setContentText(getString(R.string.capture_notification_text))
            .setSmallIcon(android.R.drawable.ic_menu_camera)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }
}
