package com.maple.auto

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.os.Build
import android.util.Log
import com.chaquo.python.Python
import com.chaquo.python.android.AndroidPlatform
import com.maple.auto.capture.MediaProjectionStore
import com.maple.auto.config.ConfigManager

class MapleAutoApp : Application() {

    companion object {
        private const val TAG = "MapleAutoApp"
        const val CHANNEL_FLOATING = "maple_floating"
        const val CHANNEL_CAPTURE = "maple_capture"

        @Volatile
        lateinit var instance: MapleAutoApp
            private set
    }

    override fun onCreate() {
        super.onCreate()
        instance = this
        initPython()
        createNotificationChannels()
        MediaProjectionStore.init(this)
        ConfigManager.init(this)
    }

    private fun initPython() {
        if (!Python.isStarted()) {
            Python.start(AndroidPlatform(this))
            Log.d(TAG, "Python runtime initialized")
        }
    }

    private fun createNotificationChannels() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val manager = getSystemService(NotificationManager::class.java)

            val floatingChannel = NotificationChannel(
                CHANNEL_FLOATING,
                "悬浮窗服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "MapleAuto 悬浮窗运行通知"
                setShowBadge(false)
            }

            val captureChannel = NotificationChannel(
                CHANNEL_CAPTURE,
                "截图服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "MapleAuto 截图运行通知"
                setShowBadge(false)
            }

            manager.createNotificationChannels(listOf(floatingChannel, captureChannel))
        }
    }
}
