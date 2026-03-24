package com.maple.auto.engine.floatwindow

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.maple.auto.common.model.ScriptState

/**
 * Service that manages the floating window overlay.
 * Runs in the :enginfloat process for isolation.
 */
class FloatWindowService : Service() {

    private var floatWindowManager: FloatWindowManager? = null

    override fun onCreate() {
        super.onCreate()
        Log.d(TAG, "FloatWindowService created")
        startForegroundNotification()
        floatWindowManager = FloatWindowManager(this).apply {
            setActionCallback(object : FloatWindowView.OnFloatActionListener {
                override fun onPlay() {
                    sendBroadcast(Intent(BROADCAST_ACTION_PLAY).setPackage(packageName))
                }

                override fun onPause() {
                    sendBroadcast(Intent(BROADCAST_ACTION_PAUSE).setPackage(packageName))
                }

                override fun onStop() {
                    sendBroadcast(Intent(BROADCAST_ACTION_STOP).setPackage(packageName))
                }

                override fun onSettings() {
                    sendBroadcast(Intent(BROADCAST_ACTION_SETTINGS).setPackage(packageName))
                }

                override fun onClose() {
                    sendBroadcast(Intent(BROADCAST_ACTION_CLOSE).setPackage(packageName))
                    stopSelf()
                }
            })
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val action = intent?.action
        Log.d(TAG, "onStartCommand action=$action")

        when (action) {
            ACTION_SHOW -> {
                val scriptName = intent.getStringExtra(EXTRA_SCRIPT_NAME)
                floatWindowManager?.show()
                if (scriptName != null) {
                    floatWindowManager?.setScriptName(scriptName)
                }
            }
            ACTION_HIDE -> {
                floatWindowManager?.hide()
            }
            ACTION_UPDATE_STATE -> {
                val stateOrdinal = intent.getIntExtra(EXTRA_STATE, -1)
                if (stateOrdinal >= 0 && stateOrdinal < ScriptState.entries.size) {
                    floatWindowManager?.updateState(ScriptState.entries[stateOrdinal])
                }
            }
            ACTION_SHOW_SETTINGS -> {
                val configJson = intent.getStringExtra(EXTRA_CONFIG_JSON) ?: return START_STICKY
                floatWindowManager?.showSettings(configJson)
            }
            ACTION_STOP_SERVICE -> {
                floatWindowManager?.hide()
                stopSelf()
            }
        }

        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        Log.d(TAG, "FloatWindowService destroyed")
        floatWindowManager?.destroy()
        floatWindowManager = null
        super.onDestroy()
    }

    private fun startForegroundNotification() {
        val channelId = NOTIFICATION_CHANNEL_ID

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                channelId,
                                "悬浮窗服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "保持悬浮窗口正常运行"
                setShowBadge(false)
            }
            val nm = getSystemService(NotificationManager::class.java)
            nm?.createNotificationChannel(channel)
        }

        val notification: Notification = NotificationCompat.Builder(this, channelId)
            .setContentTitle("MapleAuto")
            .setContentText("悬浮窗口已开启")
            .setSmallIcon(android.R.drawable.ic_dialog_info)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setOngoing(true)
            .build()

        startForeground(NOTIFICATION_ID, notification)
    }

    companion object {
        private const val TAG = "FloatWindowService"
        private const val NOTIFICATION_CHANNEL_ID = "maple_float_window"
        private const val NOTIFICATION_ID = 10001

        const val ACTION_SHOW = "com.maple.auto.engine.float.ACTION_SHOW"
        const val ACTION_HIDE = "com.maple.auto.engine.float.ACTION_HIDE"
        const val ACTION_UPDATE_STATE = "com.maple.auto.engine.float.ACTION_UPDATE_STATE"
        const val ACTION_SHOW_SETTINGS = "com.maple.auto.engine.float.ACTION_SHOW_SETTINGS"
        const val ACTION_STOP_SERVICE = "com.maple.auto.engine.float.ACTION_STOP_SERVICE"

        const val EXTRA_STATE = "extra_state"
        const val EXTRA_SCRIPT_NAME = "extra_script_name"
        const val EXTRA_CONFIG_JSON = "extra_config_json"

        const val BROADCAST_ACTION_PLAY = "com.maple.auto.engine.float.PLAY"
        const val BROADCAST_ACTION_PAUSE = "com.maple.auto.engine.float.PAUSE"
        const val BROADCAST_ACTION_STOP = "com.maple.auto.engine.float.STOP"
        const val BROADCAST_ACTION_SETTINGS = "com.maple.auto.engine.float.SETTINGS"
        const val BROADCAST_ACTION_CLOSE = "com.maple.auto.engine.float.CLOSE"

        @JvmStatic
        fun show(context: Context, scriptName: String? = null) {
            val intent = Intent(context, FloatWindowService::class.java).apply {
                action = ACTION_SHOW
                if (scriptName != null) putExtra(EXTRA_SCRIPT_NAME, scriptName)
            }
            startServiceCompat(context, intent)
        }

        @JvmStatic
        fun hide(context: Context) {
            val intent = Intent(context, FloatWindowService::class.java).apply {
                action = ACTION_HIDE
            }
            startServiceCompat(context, intent)
        }

        @JvmStatic
        fun updateState(context: Context, state: ScriptState) {
            val intent = Intent(context, FloatWindowService::class.java).apply {
                action = ACTION_UPDATE_STATE
                putExtra(EXTRA_STATE, state.ordinal)
            }
            startServiceCompat(context, intent)
        }

        @JvmStatic
        fun showSettings(context: Context, configJson: String) {
            val intent = Intent(context, FloatWindowService::class.java).apply {
                action = ACTION_SHOW_SETTINGS
                putExtra(EXTRA_CONFIG_JSON, configJson)
            }
            startServiceCompat(context, intent)
        }

        @JvmStatic
        fun stop(context: Context) {
            val intent = Intent(context, FloatWindowService::class.java).apply {
                action = ACTION_STOP_SERVICE
            }
            context.stopService(intent)
        }

        private fun startServiceCompat(context: Context, intent: Intent) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(intent)
            } else {
                context.startService(intent)
            }
        }
    }
}
