package com.maple.auto.plugin

import android.content.Context
import dalvik.system.DexClassLoader
import org.json.JSONObject
import java.io.File
import java.util.zip.ZipFile

/**
 * Dynamically loads plugins from APK/DEX files using DexClassLoader.
 */
class PluginLoader(private val context: Context) {

    private val dexOutputDir: File by lazy {
        File(context.filesDir, "plugin_dex").also { it.mkdirs() }
    }

    /**
     * Load a plugin from the given APK path.
     *
     * The APK must contain:
     * - A class implementing [PluginInterface]
     * - assets/plugin.json with at least: { "main": "com.example.MyPlugin" }
     *
     * @param apkPath absolute path to the plugin APK
     * @return the loaded [PluginInterface] instance
     * @throws PluginLoadException if loading fails
     */
    fun loadPlugin(apkPath: String): PluginInterface {
        val apkFile = File(apkPath)
        if (!apkFile.exists()) {
            throw PluginLoadException("Plugin APK not found: $apkPath")
        }

        val manifest = readPluginManifest(apkPath)
        val mainClass = manifest.optString("main", "")
        if (mainClass.isEmpty()) {
            throw PluginLoadException("Plugin manifest missing 'main' class entry")
        }

        val classLoader = DexClassLoader(
            apkPath,
            dexOutputDir.absolutePath,
            null,
            context.classLoader
        )

        val pluginClass = try {
            classLoader.loadClass(mainClass)
        } catch (e: ClassNotFoundException) {
            throw PluginLoadException("Plugin main class not found: $mainClass", e)
        }

        val plugin = try {
            pluginClass.getDeclaredConstructor().newInstance() as PluginInterface
        } catch (e: ClassCastException) {
            throw PluginLoadException(
                "Class $mainClass does not implement PluginInterface", e
            )
        } catch (e: Exception) {
            throw PluginLoadException("Failed to instantiate plugin class: $mainClass", e)
        }

        return plugin
    }

    /**
     * Read the plugin manifest (assets/plugin.json) from the APK without fully installing it.
     */
    fun readPluginManifest(apkPath: String): JSONObject {
        return try {
            ZipFile(apkPath).use { zip ->
                val entry = zip.getEntry("assets/plugin.json")
                    ?: throw PluginLoadException("Plugin APK missing assets/plugin.json")
                val json = zip.getInputStream(entry).bufferedReader().readText()
                JSONObject(json)
            }
        } catch (e: PluginLoadException) {
            throw e
        } catch (e: Exception) {
            throw PluginLoadException("Failed to read plugin manifest from $apkPath", e)
        }
    }
}

class PluginLoadException(message: String, cause: Throwable? = null) :
    Exception(message, cause)
