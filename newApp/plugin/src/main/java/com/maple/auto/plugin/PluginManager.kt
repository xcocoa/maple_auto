package com.maple.auto.plugin

import android.content.Context
import android.util.Log
import dalvik.system.DexClassLoader
import java.io.File
import java.util.concurrent.ConcurrentHashMap

/**
 * Manages the lifecycle of loaded plugins.
 */
class PluginManager(private val context: Context) {

    companion object {
        private const val TAG = "PluginManager"
        private const val PLUGIN_DIR_NAME = "plugins"
    }

    data class PluginInfo(
        val name: String,
        val version: String,
        val path: String,
        val plugin: PluginInterface,
        val classLoader: ClassLoader
    )

    private val loadedPlugins: ConcurrentHashMap<String, PluginInfo> = ConcurrentHashMap()
    private val pluginLoader = PluginLoader(context)

    val pluginDir: File by lazy {
        File(context.filesDir, PLUGIN_DIR_NAME).also { it.mkdirs() }
    }

    /**
     * Scan the plugin directory and load all discovered plugins.
     */
    fun init() {
        val files = pluginDir.listFiles { file -> file.extension == "apk" } ?: return
        for (file in files) {
            val result = loadPlugin(file.absolutePath)
            if (result.isFailure) {
                Log.e(TAG, "Failed to load plugin: ${file.name}", result.exceptionOrNull())
            }
        }
    }

    /**
     * Load a plugin from the given path.
     */
    fun loadPlugin(path: String): Result<PluginInfo> {
        return try {
            val plugin = pluginLoader.loadPlugin(path)
            plugin.onCreate(context)

            val info = PluginInfo(
                name = plugin.getName(),
                version = plugin.getVersion(),
                path = path,
                plugin = plugin,
                classLoader = plugin.javaClass.classLoader ?: context.classLoader
            )

            // Unload existing plugin with same name if present
            loadedPlugins[info.name]?.let { existing ->
                try {
                    existing.plugin.onDestroy()
                } catch (e: Exception) {
                    Log.w(TAG, "Error destroying previous plugin: ${info.name}", e)
                }
            }

            loadedPlugins[info.name] = info
            Log.i(TAG, "Loaded plugin: ${info.name} v${info.version}")
            Result.success(info)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load plugin from $path", e)
            Result.failure(e)
        }
    }

    /**
     * Unload a plugin by name, calling onDestroy.
     */
    fun unloadPlugin(name: String) {
        val info = loadedPlugins.remove(name) ?: return
        try {
            info.plugin.onDestroy()
            Log.i(TAG, "Unloaded plugin: $name")
        } catch (e: Exception) {
            Log.e(TAG, "Error destroying plugin: $name", e)
        }
    }

    /**
     * Get a loaded plugin by name.
     */
    fun getPlugin(name: String): PluginInterface? {
        return loadedPlugins[name]?.plugin
    }

    /**
     * List all loaded plugins.
     */
    fun listPlugins(): List<PluginInfo> {
        return loadedPlugins.values.toList()
    }

    /**
     * Unload all plugins.
     */
    fun unloadAll() {
        val names = loadedPlugins.keys.toList()
        for (name in names) {
            unloadPlugin(name)
        }
    }
}
