package com.maple.auto.app

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.SharedPreferences
import android.os.Build
import android.os.Process
import android.util.Log
import com.maple.auto.persistence.FileManager
import com.maple.auto.persistence.ScriptDatabase
import dagger.hilt.android.HiltAndroidApp
import java.io.BufferedReader
import java.io.File
import java.io.FileReader
import java.util.zip.ZipInputStream

@HiltAndroidApp
class MapleAutoApplication : Application() {

    override fun onCreate() {
        super.onCreate()

        val processName = getCurrentProcessName()
        Log.i(TAG, "Application onCreate in process: $processName")

        // Common initialization for all processes
        initCommon()

        // UI-specific initialization only in main process
        if (isMainProcess(processName)) {
            Log.i(TAG, "Initializing main process components")
            initMainProcess()
        }
    }

    private fun initCommon() {
        createNotificationChannels()
    }

    private fun initMainProcess() {
        // Import default scripts on first launch
        importDefaultScriptsIfNeeded()
    }

    private fun importDefaultScriptsIfNeeded() {
        val prefs = getSharedPreferences("maple_auto_prefs", MODE_PRIVATE)
        if (prefs.getBoolean(PREF_DEFAULT_SCRIPTS_IMPORTED, false)) {
            return
        }

        try {
            val scriptsDir = File(filesDir, "scripts")
            scriptsDir.mkdirs()

            // List all ZIP files in assets/default_scripts/
            val defaultScripts = assets.list("default_scripts") ?: emptyArray()
            val db = ScriptDatabase.create(this)
            val scriptDao = db.scriptDao()

            for (zipName in defaultScripts) {
                if (!zipName.endsWith(".zip")) continue
                Log.i(TAG, "Importing default script: $zipName")

                val packageName = zipName.substringBeforeLast(".")
                val packageDir = File(scriptsDir, packageName).also { it.mkdirs() }

                // Extract ZIP from assets
                assets.open("default_scripts/$zipName").use { assetStream ->
                    ZipInputStream(assetStream).use { zis ->
                        var entry = zis.nextEntry
                        while (entry != null) {
                            if (!entry.isDirectory) {
                                // Strip the top-level directory from entry name
                                val entryName = entry.name
                                val relativePath = if (entryName.contains("/")) {
                                    entryName.substringAfter("/")
                                } else {
                                    entryName
                                }
                                if (relativePath.isNotEmpty()) {
                                    val outFile = File(packageDir, relativePath)
                                    outFile.parentFile?.mkdirs()
                                    outFile.outputStream().use { out -> zis.copyTo(out) }
                                }
                            }
                            zis.closeEntry()
                            entry = zis.nextEntry
                        }
                    }
                }

                // Read manifest.json
                val manifestFile = File(packageDir, "manifest.json")
                var name = packageName
                var version = "1.0"
                var description = ""
                var mainFile = "main.py"
                var configFile: String? = null

                if (manifestFile.exists()) {
                    try {
                        val json = org.json.JSONObject(manifestFile.readText())
                        name = json.optString("name", packageName)
                        version = json.optString("version", "1.0")
                        description = json.optString("description", "")
                        mainFile = json.optString("main", "main.py")
                        configFile = if (json.has("config")) json.getString("config") else null
                    } catch (e: Exception) {
                        Log.w(TAG, "Failed to parse manifest for $packageName", e)
                    }
                }

                val scriptPath = File(packageDir, mainFile).absolutePath
                val configPath = configFile?.let { File(packageDir, it).absolutePath }

                val entity = com.maple.auto.persistence.ScriptEntity(
                    name = name,
                    version = version,
                    description = description,
                    filePath = scriptPath,
                    configPath = configPath
                )

                // Insert into database (run on current thread since this is init)
                kotlinx.coroutines.runBlocking {
                    scriptDao.insertScript(entity)
                }
                Log.i(TAG, "Default script imported: $name ($scriptPath)")
            }

            prefs.edit().putBoolean(PREF_DEFAULT_SCRIPTS_IMPORTED, true).apply()
            Log.i(TAG, "Default scripts import completed")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to import default scripts", e)
        }
    }

    private fun createNotificationChannels() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val manager = getSystemService(NotificationManager::class.java)

            val engineChannel = NotificationChannel(
                CHANNEL_ENGINE,
                "引擎服务",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "显示引擎运行状态"
                setShowBadge(false)
            }

            val scriptChannel = NotificationChannel(
                CHANNEL_SCRIPT,
                "脚本执行",
                NotificationManager.IMPORTANCE_DEFAULT
            ).apply {
                description = "脚本执行通知"
            }

            val keepAliveChannel = NotificationChannel(
                CHANNEL_KEEP_ALIVE,
                "保活服务",
                NotificationManager.IMPORTANCE_MIN
            ).apply {
                description = "保持应用在后台运行"
                setShowBadge(false)
            }

            manager.createNotificationChannels(
                listOf(engineChannel, scriptChannel, keepAliveChannel)
            )
        }
    }

    private fun isMainProcess(processName: String?): Boolean {
        return processName == null || processName == packageName
    }

    private fun getCurrentProcessName(): String? {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            return Application.getProcessName()
        }
        return try {
            BufferedReader(FileReader("/proc/${Process.myPid()}/cmdline")).use { reader ->
                reader.readLine()?.trim { it <= ' ' || it == '\u0000' }
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to get process name", e)
            null
        }
    }

    companion object {
        private const val TAG = "MapleAutoApp"
        const val CHANNEL_ENGINE = "engine_service"
        const val CHANNEL_SCRIPT = "script_execution"
        const val CHANNEL_KEEP_ALIVE = "keep_alive"
        private const val PREF_DEFAULT_SCRIPTS_IMPORTED = "default_scripts_imported"
    }
}
