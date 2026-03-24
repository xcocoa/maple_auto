package com.maple.auto.app.service

import android.app.Notification
import android.app.PendingIntent
import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.maple.auto.app.MapleAutoApplication
import com.maple.auto.app.ui.main.MainActivity
import com.maple.auto.common.model.ScriptState
import com.maple.auto.ipc.protocol.IpcCommand
import com.maple.auto.ipc.protocol.IpcMessage
import com.maple.auto.ipc.socket.LocalSocketClient

class KeepAliveService : Service() {

    private var socketClient: LocalSocketClient? = null
    private var currentState: ScriptState = ScriptState.FREE

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        Log.i(TAG, "KeepAliveService created")
        startForeground(NOTIFICATION_ID, createNotification(ScriptState.FREE))
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        val autoStartEngine = intent?.getBooleanExtra(EXTRA_AUTO_START_ENGINE, false) ?: false

        if (autoStartEngine) {
            connectToEngine()
        }

        return START_STICKY
    }

    private fun connectToEngine() {
        if (socketClient?.isRunning == true) return

        socketClient = LocalSocketClient(messageCallback = { message ->
            handleMessage(message)
        }).apply {
            addConnectionStateListener(object : LocalSocketClient.ConnectionStateListener {
                override fun onConnected() {
                    Log.i(TAG, "Connected to engine")
                    updateNotification(currentState)
                }

                override fun onDisconnected() {
                    Log.i(TAG, "Disconnected from engine")
                    currentState = ScriptState.FREE
                    updateNotification(currentState)
                }

                override fun onReconnecting(attempt: Int, delayMs: Long) {
                    // Silently reconnect
                }
            })
            start()
        }
    }

    private fun handleMessage(message: IpcMessage) {
        when (message.cmd) {
            IpcCommand.STATE_CHANGE -> {
                val stateOrdinal = message.intArgs.firstOrNull() ?: return
                val state = ScriptState.entries.getOrNull(stateOrdinal) ?: return
                currentState = state
                updateNotification(state)
            }
        }
    }

    private fun updateNotification(state: ScriptState) {
        val notification = createNotification(state)
        val manager = getSystemService(NOTIFICATION_SERVICE) as android.app.NotificationManager
        manager.notify(NOTIFICATION_ID, notification)
    }

    private fun createNotification(state: ScriptState): Notification {
        val openIntent = Intent(this, MainActivity::class.java).let {
            PendingIntent.getActivity(
                this, 0, it,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
        }

        val stopIntent = Intent(this, KeepAliveService::class.java).apply {
            action = ACTION_STOP
        }.let {
            PendingIntent.getService(
                this, 1, it,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
        }

        val statusText = when (state) {
            ScriptState.FREE -> "引擎空闲"
            ScriptState.LOAD -> "正在加载脚本..."
            ScriptState.RUNNING -> "脚本运行中"
            ScriptState.PAUSE -> "脚本已暂停"
            ScriptState.ERROR -> "脚本出错"
        }

        return NotificationCompat.Builder(this, MapleAutoApplication.CHANNEL_KEEP_ALIVE)
            .setContentTitle("MapleAuto")
            .setContentText(statusText)
            .setSmallIcon(android.R.drawable.ic_menu_manage)
            .setContentIntent(openIntent)
            .addAction(
                android.R.drawable.ic_menu_view,
                "打开",
                openIntent
            )
            .addAction(
                android.R.drawable.ic_menu_close_clear_cancel,
                "停止",
                stopIntent
            )
            .setOngoing(true)
            .setSilent(true)
            .build()
    }

    override fun onDestroy() {
        super.onDestroy()
        socketClient?.close()
        socketClient = null
        Log.i(TAG, "KeepAliveService destroyed")
    }

    companion object {
        private const val TAG = "KeepAliveService"
        private const val NOTIFICATION_ID = 1001
        const val EXTRA_AUTO_START_ENGINE = "auto_start_engine"
        const val ACTION_STOP = "com.maple.auto.STOP_SERVICE"
    }
}
