package com.maple.auto.diagnostics

import android.content.Context
import android.os.Build
import android.util.DisplayMetrics
import android.util.Log
import android.view.WindowManager
import com.maple.auto.capture.ScreenCaptureService
import com.maple.auto.config.ConfigManager
import com.maple.auto.service.GestureService
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.*

/**
 * 诊断工具
 *
 * 收集设备信息、权限状态、性能指标，
 * 用于真机调试和问题排查。
 */
class DiagnosticTool(private val context: Context) {

    companion object {
        private const val TAG = "DiagnosticTool"
    }

    /**
     * 收集完整的诊断报告
     */
    fun collectReport(): JSONObject {
        val report = JSONObject()
        report.put("timestamp", SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Date()))
        report.put("device", collectDeviceInfo())
        report.put("screen", collectScreenInfo())
        report.put("permissions", collectPermissionStatus())
        report.put("services", collectServiceStatus())
        report.put("config", collectConfigInfo())
        report.put("memory", collectMemoryInfo())
        return report
    }

    /**
     * 收集设备基本信息
     */
    fun collectDeviceInfo(): JSONObject {
        return JSONObject().apply {
            put("manufacturer", Build.MANUFACTURER)
            put("model", Build.MODEL)
            put("device", Build.DEVICE)
            put("android_version", Build.VERSION.RELEASE)
            put("sdk_int", Build.VERSION.SDK_INT)
            put("board", Build.BOARD)
            put("hardware", Build.HARDWARE)
            put("abi", Build.SUPPORTED_ABIS.joinToString(","))
        }
    }

    /**
     * 收集屏幕信息
     */
    fun collectScreenInfo(): JSONObject {
        val wm = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val metrics = DisplayMetrics()
        @Suppress("DEPRECATION")
        wm.defaultDisplay.getRealMetrics(metrics)

        return JSONObject().apply {
            put("width", metrics.widthPixels)
            put("height", metrics.heightPixels)
            put("density", metrics.density)
            put("dpi", metrics.densityDpi)
            put("xdpi", metrics.xdpi)
            put("ydpi", metrics.ydpi)
            put("scaled_density", metrics.scaledDensity)
            // 横屏时的游戏分辨率
            val gameWidth = maxOf(metrics.widthPixels, metrics.heightPixels)
            val gameHeight = minOf(metrics.widthPixels, metrics.heightPixels)
            put("game_width", gameWidth)
            put("game_height", gameHeight)
            put("scale_from_1280x720", JSONObject().apply {
                put("x", gameWidth / 1280.0)
                put("y", gameHeight / 720.0)
            })
        }
    }

    /**
     * 收集权限状态
     */
    fun collectPermissionStatus(): JSONObject {
        return JSONObject().apply {
            put("overlay", android.provider.Settings.canDrawOverlays(context))
            put("accessibility", GestureService.instance != null)
            put("screen_capture", ScreenCaptureService.instance != null)
        }
    }

    /**
     * 收集服务运行状态
     */
    fun collectServiceStatus(): JSONObject {
        return JSONObject().apply {
            put("gesture_service", GestureService.instance != null)
            put("screen_capture_service", ScreenCaptureService.instance != null)
            put("floating_window_service",
                com.maple.auto.service.FloatingWindowService.instance != null)
        }
    }

    /**
     * 收集配置信息
     */
    fun collectConfigInfo(): JSONObject {
        return JSONObject().apply {
            val mgr = ConfigManager.instance
            put("config_manager_initialized", mgr != null)
            put("has_saved_config", mgr?.hasConfig() ?: false)
            put("last_modified", mgr?.getLastModified() ?: 0)
        }
    }

    /**
     * 收集内存信息
     */
    fun collectMemoryInfo(): JSONObject {
        val runtime = Runtime.getRuntime()
        return JSONObject().apply {
            put("total_mb", runtime.totalMemory() / (1024 * 1024))
            put("free_mb", runtime.freeMemory() / (1024 * 1024))
            put("used_mb", (runtime.totalMemory() - runtime.freeMemory()) / (1024 * 1024))
            put("max_mb", runtime.maxMemory() / (1024 * 1024))
        }
    }

    /**
     * 输出诊断报告到 Logcat
     */
    fun printReport() {
        val report = collectReport()
        Log.i(TAG, "=== Diagnostic Report ===")
        Log.i(TAG, report.toString(2))
        Log.i(TAG, "=== End Report ===")
    }

    /**
     * 获取简短摘要（用于浮窗显示）
     */
    fun getSummary(): String {
        val screen = collectScreenInfo()
        val perms = collectPermissionStatus()
        val mem = collectMemoryInfo()

        return buildString {
            appendLine("Device: ${Build.MANUFACTURER} ${Build.MODEL}")
            appendLine("Android: ${Build.VERSION.RELEASE} (SDK ${Build.VERSION.SDK_INT})")
            appendLine("Screen: ${screen.getInt("game_width")}x${screen.getInt("game_height")}")
            appendLine("DPI: ${screen.getInt("dpi")}, Density: ${screen.getDouble("density")}")
            appendLine("Permissions: overlay=${perms.getBoolean("overlay")}, " +
                    "a11y=${perms.getBoolean("accessibility")}, " +
                    "capture=${perms.getBoolean("screen_capture")}")
            appendLine("Memory: ${mem.getLong("used_mb")}/${mem.getLong("max_mb")} MB")
        }.trim()
    }
}
