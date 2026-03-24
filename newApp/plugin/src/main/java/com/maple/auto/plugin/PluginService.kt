package com.maple.auto.plugin

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.util.Log

/**
 * Service running in :daemon process that manages the plugin lifecycle.
 *
 * Receives commands via Intent actions to load, unload, execute, and list plugins.
 */
class PluginService : Service() {

    companion object {
        private const val TAG = "PluginService"
        private const val NOTIFICATION_ID = 10001
        private const val CHANNEL_ID = "plugin_service_channel"

        const val ACTION_LOAD_PLUGIN = "com.maple.auto.plugin.ACTION_LOAD_PLUGIN"
        const val ACTION_UNLOAD_PLUGIN = "com.maple.auto.plugin.ACTION_UNLOAD_PLUGIN"
        const val ACTION_EXECUTE_PLUGIN = "com.maple.auto.plugin.ACTION_EXECUTE_PLUGIN"
        const val ACTION_LIST_PLUGINS = "com.maple.auto.plugin.ACTION_LIST_PLUGINS"

        const val EXTRA_PLUGIN_PATH = "extra_plugin_path"
        const val EXTRA_PLUGIN_NAME = "extra_plugin_name"
        const val EXTRA_PARAMS = "extra_params"

        fun createLoadIntent(context: Context, pluginPath: String): Intent {
            return Intent(context, PluginService::class.java).apply {
                action = ACTION_LOAD_PLUGIN
                putExtra(EXTRA_PLUGIN_PATH, pluginPath)
            }
        }

        fun createUnloadIntent(context: Context, pluginName: String): Intent {
            return Intent(context, PluginService::class.java).apply {
                action = ACTION_UNLOAD_PLUGIN
                putExtra(EXTRA_PLUGIN_NAME, pluginName)
            }
        }

        fun createExecuteIntent(context: Context, pluginName: String): Intent {
            return Intent(context, PluginService::class.java).apply {
                action = ACTION_EXECUTE_PLUGIN
                putExtra(EXTRA_PLUGIN_NAME, pluginName)
            }
        }

        fun createListIntent(context: Context): Intent {
            return Intent(context, PluginService::class.java).apply {
                action = ACTION_LIST_PLUGINS
            }
        }
    }

    private lateinit var pluginManager: PluginManager
    private lateinit var pluginSandbox: PluginSandbox

    override fun onCreate() {
        super.onCreate()
        pluginManager = PluginManager(applicationContext)
        pluginSandbox = PluginSandbox(pluginManager.pluginDir.absolutePath)
        pluginManager.init()

        startForeground(NOTIFICATION_ID, createNotification())
        Log.i(TAG, "PluginService created, loaded ${pluginManager.listPlugins().size} plugins")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        intent?.let { handleIntent(it) }
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        pluginSandbox.shutdown()
        pluginManager.unloadAll()
        Log.i(TAG, "PluginService destroyed")
        super.onDestroy()
    }

    private fun handleIntent(intent: Intent) {
        when (intent.action) {
            ACTION_LOAD_PLUGIN -> handleLoadPlugin(intent)
            ACTION_UNLOAD_PLUGIN -> handleUnloadPlugin(intent)
            ACTION_EXECUTE_PLUGIN -> handleExecutePlugin(intent)
            ACTION_LIST_PLUGINS -> handleListPlugins()
            else -> Log.w(TAG, "Unknown action: ${intent.action}")
        }
    }

    private fun handleLoadPlugin(intent: Intent) {
        val path = intent.getStringExtra(EXTRA_PLUGIN_PATH)
        if (path.isNullOrEmpty()) {
            Log.e(TAG, "LOAD_PLUGIN: missing plugin path")
            return
        }
        val result = pluginManager.loadPlugin(path)
        result.onSuccess { info ->
            Log.i(TAG, "Plugin loaded: ${info.name} v${info.version}")
        }
        result.onFailure { e ->
            Log.e(TAG, "Plugin load failed: $path", e)
        }
    }

    private fun handleUnloadPlugin(intent: Intent) {
        val name = intent.getStringExtra(EXTRA_PLUGIN_NAME)
        if (name.isNullOrEmpty()) {
            Log.e(TAG, "UNLOAD_PLUGIN: missing plugin name")
            return
        }
        pluginManager.unloadPlugin(name)
    }

    @Suppress("UNCHECKED_CAST")
    private fun handleExecutePlugin(intent: Intent) {
        val name = intent.getStringExtra(EXTRA_PLUGIN_NAME)
        if (name.isNullOrEmpty()) {
            Log.e(TAG, "EXECUTE_PLUGIN: missing plugin name")
            return
        }

        val plugin = pluginManager.getPlugin(name)
        if (plugin == null) {
            Log.e(TAG, "EXECUTE_PLUGIN: plugin not found: $name")
            return
        }

        val params = intent.getBundleExtra(EXTRA_PARAMS)?.let { bundle ->
            bundle.keySet().associateWith { key -> bundle.get(key) as Any }
        } ?: emptyMap()

        try {
            val result = pluginSandbox.executeInSandbox(plugin, params)
            Log.i(TAG, "Plugin '$name' executed successfully, result: $result")
        } catch (e: Exception) {
            Log.e(TAG, "Plugin '$name' execution failed", e)
        }
    }

    private fun handleListPlugins() {
        val plugins = pluginManager.listPlugins()
        Log.i(TAG, "Loaded plugins (${plugins.size}):")
        plugins.forEach { info ->
            Log.i(TAG, "  - ${info.name} v${info.version} [${info.path}]")
        }
    }

    private fun createNotification(): Notification {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Plugin Service",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "Keeps plugin service running"
            }
            val nm = getSystemService(NotificationManager::class.java)
            nm.createNotificationChannel(channel)
        }

        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(this, CHANNEL_ID)
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(this)
        }.apply {
            setContentTitle("MapleAuto Plugins")
            setContentText("Plugin service running")
            setSmallIcon(android.R.drawable.ic_menu_manage)
            setOngoing(true)
        }.build()
    }
}
