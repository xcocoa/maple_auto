package com.maple.auto.app.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import com.maple.auto.app.service.KeepAliveService
import com.maple.auto.app.ui.settings.SettingsViewModel

class BootReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_BOOT_COMPLETED) return

        Log.i(TAG, "Boot completed received")

        val prefs = context.getSharedPreferences("maple_auto_prefs", Context.MODE_PRIVATE)
        val autoStart = prefs.getBoolean(SettingsViewModel.KEY_AUTO_START, false)
        val keepAlive = prefs.getBoolean(SettingsViewModel.KEY_KEEP_ALIVE, true)

        if (autoStart || keepAlive) {
            Log.i(TAG, "Starting services: autoStart=$autoStart, keepAlive=$keepAlive")
            val serviceIntent = Intent(context, KeepAliveService::class.java).apply {
                putExtra(KeepAliveService.EXTRA_AUTO_START_ENGINE, autoStart)
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(serviceIntent)
            } else {
                context.startService(serviceIntent)
            }
        }
    }

    companion object {
        private const val TAG = "BootReceiver"
    }
}
