package com.maple.auto.engine

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
import com.maple.auto.engine.python.PythonApiModule
import com.maple.auto.engine.python.PythonScriptRunner
import com.maple.auto.common.model.ScriptState
import com.maple.auto.engine.screenshot.ScreenCaptureManager

/**
 * Foreground service that hosts the Python script engine.
 *
 * Runs in the `:enginfloat` process. Manages the PythonScriptRunner and
 * ScreenCaptureManager lifecycle, handles start/stop/pause commands via
 * Intent actions, and maintains a foreground notification.
 */
class EngineService : Service() {

    companion object {
        private const val TAG = "EngineService"
        private const val CHANNEL_ID = "maple_auto_engine"
        private const val CHANNEL_NAME = "MapleAuto 引擎"
        private const val NOTIFICATION_ID = 1001

        const val ACTION_START_SCRIPT = "com.maple.auto.engine.START_SCRIPT"
        const val ACTION_STOP_SCRIPT = "com.maple.auto.engine.STOP_SCRIPT"
        const val ACTION_PAUSE_SCRIPT = "com.maple.auto.engine.PAUSE_SCRIPT"
        const val ACTION_RESUME_SCRIPT = "com.maple.auto.engine.RESUME_SCRIPT"
        const val ACTION_INIT_CAPTURE = "com.maple.auto.engine.INIT_CAPTURE"

        const val EXTRA_SCRIPT_PATH = "script_path"
        const val EXTRA_RESULT_CODE = "result_code"
        const val EXTRA_RESULT_DATA = "result_data"
        const val EXTRA_TIMEOUT_MS = "timeout_ms"

        /**
         * Starts the EngineService as a foreground service.
         */
        fun start(context: Context) {
            val intent = Intent(context, EngineService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(intent)
            } else {
                context.startService(intent)
            }
        }

        /**
         * Stops the EngineService.
         */
        fun stop(context: Context) {
            val intent = Intent(context, EngineService::class.java)
            context.stopService(intent)
        }

        /**
         * Sends a start-script command to the service.
         */
        fun startScript(context: Context, scriptPath: String, timeoutMs: Long = 0) {
            val intent = Intent(context, EngineService::class.java).apply {
                action = ACTION_START_SCRIPT
                putExtra(EXTRA_SCRIPT_PATH, scriptPath)
                putExtra(EXTRA_TIMEOUT_MS, timeoutMs)
            }
            context.startService(intent)
        }

        /**
         * Sends a stop-script command.
         */
        fun stopScript(context: Context) {
            val intent = Intent(context, EngineService::class.java).apply {
                action = ACTION_STOP_SCRIPT
            }
            context.startService(intent)
        }

        /**
         * Sends a pause-script command.
         */
        fun pauseScript(context: Context) {
            val intent = Intent(context, EngineService::class.java).apply {
                action = ACTION_PAUSE_SCRIPT
            }
            context.startService(intent)
        }

        /**
         * Initializes the screen capture from a MediaProjection permission result.
         */
        fun initCapture(context: Context, resultCode: Int, resultData: Intent) {
            val intent = Intent(context, EngineService::class.java).apply {
                action = ACTION_INIT_CAPTURE
                putExtra(EXTRA_RESULT_CODE, resultCode)
                putExtra(EXTRA_RESULT_DATA, resultData)
            }
            context.startService(intent)
        }
    }

    private var scriptRunner: PythonScriptRunner? = null
    private var apiModule: PythonApiModule? = null
    private var screenCaptureManager: ScreenCaptureManager? = null

    override fun onCreate() {
        super.onCreate()
        Log.i(TAG, "EngineService created")

        createNotificationChannel()
        startForeground(NOTIFICATION_ID, buildNotification("引擎空闲"))

        // Initialize components
        apiModule = PythonApiModule(applicationContext)
        scriptRunner = PythonScriptRunner(applicationContext).apply {
            errorCallback = PythonScriptRunner.ErrorCallback { error, stackTrace ->
                Log.e(TAG, "Script error: $error\n$stackTrace")
                updateNotification("错误: $error")
            }
            logCallback = PythonScriptRunner.LogCallback { message ->
                Log.d(TAG, "Script log: $message")
            }
        }

        screenCaptureManager = ScreenCaptureManager.getInstance()
        apiModule?.setScreenCaptureManager(screenCaptureManager!!)
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START_SCRIPT -> handleStartScript(intent)
            ACTION_STOP_SCRIPT -> handleStopScript()
            ACTION_PAUSE_SCRIPT -> handlePauseScript()
            ACTION_RESUME_SCRIPT -> handleResumeScript()
            ACTION_INIT_CAPTURE -> handleInitCapture(intent)
        }
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        Log.i(TAG, "EngineService destroying")
        scriptRunner?.release()
        screenCaptureManager?.release()
        scriptRunner = null
        apiModule = null
        screenCaptureManager = null
        super.onDestroy()
    }

    private fun handleStartScript(intent: Intent) {
        val scriptPath = intent.getStringExtra(EXTRA_SCRIPT_PATH) ?: run {
            Log.e(TAG, "No script path provided")
            return
        }
        val timeoutMs = intent.getLongExtra(EXTRA_TIMEOUT_MS, 0L)

        Log.i(TAG, "Starting script: $scriptPath (timeout=${timeoutMs}ms)")
        updateNotification("运行中: ${scriptPath.substringAfterLast('/')}")

        scriptRunner?.let { runner ->
            runner.timeoutMs = timeoutMs
            runner.loadAndRun(scriptPath)
        }
    }

    private fun handleStopScript() {
        Log.i(TAG, "Stopping script")
        scriptRunner?.stop()
        updateNotification("引擎空闲")
    }

    private fun handlePauseScript() {
        val state = scriptRunner?.getState()
        if (state == ScriptState.RUNNING) {
            scriptRunner?.pause()
            updateNotification("已暂停")
            Log.i(TAG, "Script paused")
        } else if (state == ScriptState.PAUSE) {
            scriptRunner?.resume()
            updateNotification("运行中")
            Log.i(TAG, "Script resumed")
        }
    }

    private fun handleResumeScript() {
        scriptRunner?.resume()
        updateNotification("运行中")
    }

    private fun handleInitCapture(intent: Intent) {
        val resultCode = intent.getIntExtra(EXTRA_RESULT_CODE, 0)
        val resultData = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            intent.getParcelableExtra(EXTRA_RESULT_DATA, Intent::class.java)
        } else {
            @Suppress("DEPRECATION")
            intent.getParcelableExtra(EXTRA_RESULT_DATA)
        }

        if (resultData != null) {
            screenCaptureManager?.init(applicationContext, resultCode, resultData)
            Log.i(TAG, "Screen capture initialized")
        } else {
            Log.e(TAG, "No result data for screen capture initialization")
        }
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                CHANNEL_NAME,
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "MapleAuto 脚本引擎服务"
                setShowBadge(false)
            }
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(channel)
        }
    }

    private fun buildNotification(text: String): Notification {
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("MapleAuto 引擎")
            .setContentText(text)
            .setSmallIcon(android.R.drawable.ic_menu_manage)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setOngoing(true)
            .build()
    }

    private fun updateNotification(text: String) {
        val notification = buildNotification(text)
        val manager = getSystemService(NotificationManager::class.java)
        manager.notify(NOTIFICATION_ID, notification)
    }
}
