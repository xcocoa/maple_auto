package com.maple.auto.common.util

import android.app.ActivityManager
import android.app.Application
import android.content.Context
import android.os.Build
import android.os.Process

object ProcessUtils {

    private const val ENGINE_PROCESS_SUFFIX = ":engine"

    /**
     * Get the name of the current process.
     */
    fun getCurrentProcessName(context: Context): String? {
        // API 28+ has a direct method
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            return Application.getProcessName()
        }

        // Fallback: read from /proc/self/cmdline
        try {
            val file = java.io.File("/proc/self/cmdline")
            if (file.exists()) {
                val name = file.readText().trim { it <= ' ' || it == '\u0000' }
                if (name.isNotEmpty()) return name
            }
        } catch (_: Exception) {
        }

        // Fallback: ActivityManager
        val pid = Process.myPid()
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as? ActivityManager
        am?.runningAppProcesses?.forEach { info ->
            if (info.pid == pid) {
                return info.processName
            }
        }

        return null
    }

    /**
     * Check if the current process is the main (default) process.
     */
    fun isMainProcess(context: Context): Boolean {
        val processName = getCurrentProcessName(context) ?: return false
        return processName == context.packageName
    }

    /**
     * Check if the current process is the engine process (":engine" suffix).
     */
    fun isEngineProcess(context: Context): Boolean {
        val processName = getCurrentProcessName(context) ?: return false
        return processName == "${context.packageName}$ENGINE_PROCESS_SUFFIX"
    }
}
