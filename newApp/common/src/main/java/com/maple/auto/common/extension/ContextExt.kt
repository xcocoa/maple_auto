package com.maple.auto.common.extension

import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.DisplayMetrics
import android.view.WindowManager
import android.widget.Toast

fun Context.toast(message: String) {
    Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
}

fun Context.dp2px(dp: Int): Int {
    return (dp * resources.displayMetrics.density + 0.5f).toInt()
}

fun Context.px2dp(px: Int): Int {
    return (px / resources.displayMetrics.density + 0.5f).toInt()
}

fun Context.getScreenMetrics(): DisplayMetrics {
    val dm = DisplayMetrics()
    val wm = getSystemService(Context.WINDOW_SERVICE) as WindowManager
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
        val bounds = wm.currentWindowMetrics.bounds
        dm.widthPixels = bounds.width()
        dm.heightPixels = bounds.height()
        dm.density = resources.displayMetrics.density
        dm.densityDpi = resources.displayMetrics.densityDpi
        dm.scaledDensity = resources.displayMetrics.scaledDensity
        dm.xdpi = resources.displayMetrics.xdpi
        dm.ydpi = resources.displayMetrics.ydpi
    } else {
        @Suppress("DEPRECATION")
        wm.defaultDisplay.getMetrics(dm)
    }
    return dm
}

fun Context.startForegroundServiceCompat(intent: Intent) {
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
        startForegroundService(intent)
    } else {
        startService(intent)
    }
}
