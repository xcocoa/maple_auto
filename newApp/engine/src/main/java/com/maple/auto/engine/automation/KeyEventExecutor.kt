package com.maple.auto.engine.automation

import android.content.Context
import android.content.Intent
import android.util.Log
import com.maple.auto.accessibility.AutoAccessibilityService

/**
 * Engine-level proxy for key events and global actions.
 *
 * Delegates to [AutoAccessibilityService] for global actions (home, back, recents)
 * and provides app launching functionality via the system package manager.
 */
class KeyEventExecutor(private val context: Context) {

    companion object {
        private const val TAG = "KeyEventExecutor"
    }

    /**
     * Presses the Home button.
     *
     * @return `true` if the action was performed.
     */
    fun pressHome(): Boolean {
        val service = getService() ?: return false
        return try {
            service.pressHome()
        } catch (e: Exception) {
            Log.e(TAG, "pressHome failed", e)
            false
        }
    }

    /**
     * Presses the Back button.
     *
     * @return `true` if the action was performed.
     */
    fun pressBack(): Boolean {
        val service = getService() ?: return false
        return try {
            service.pressBack()
        } catch (e: Exception) {
            Log.e(TAG, "pressBack failed", e)
            false
        }
    }

    /**
     * Opens the Recents/Overview screen.
     *
     * @return `true` if the action was performed.
     */
    fun pressRecents(): Boolean {
        val service = getService() ?: return false
        return try {
            service.pressRecents()
        } catch (e: Exception) {
            Log.e(TAG, "pressRecents failed", e)
            false
        }
    }

    /**
     * Opens the notification shade.
     *
     * @return `true` if the action was performed.
     */
    fun openNotifications(): Boolean {
        val service = getService() ?: return false
        return try {
            service.openNotifications()
        } catch (e: Exception) {
            Log.e(TAG, "openNotifications failed", e)
            false
        }
    }

    /**
     * Opens the Quick Settings panel.
     *
     * @return `true` if the action was performed.
     */
    fun openQuickSettings(): Boolean {
        val service = getService() ?: return false
        return try {
            service.openQuickSettings()
        } catch (e: Exception) {
            Log.e(TAG, "openQuickSettings failed", e)
            false
        }
    }

    /**
     * Launches an app by its package name.
     *
     * Uses the package manager to resolve the launch intent.
     *
     * @param packageName The package name of the app to launch (e.g., "com.example.app").
     * @return `true` if the app was launched successfully.
     */
    fun openApp(packageName: String): Boolean {
        return try {
            val intent = context.packageManager.getLaunchIntentForPackage(packageName)
            if (intent != null) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
                context.startActivity(intent)
                Log.d(TAG, "Launched app: $packageName")
                true
            } else {
                Log.w(TAG, "No launch intent found for: $packageName")
                false
            }
        } catch (e: Exception) {
            Log.e(TAG, "openApp($packageName) failed", e)
            false
        }
    }

    /**
     * Sends a key event via the accessibility service.
     *
     * @param action The global action constant from AccessibilityService.
     * @return `true` if the action was performed.
     */
    fun performGlobalAction(action: Int): Boolean {
        val service = getService() ?: return false
        return try {
            service.performGlobalAction(action)
        } catch (e: Exception) {
            Log.e(TAG, "performGlobalAction($action) failed", e)
            false
        }
    }

    private fun getService(): AutoAccessibilityService? {
        val service = AutoAccessibilityService.instance
        if (service == null) {
            Log.w(TAG, "AccessibilityService not running")
        }
        return service
    }
}
