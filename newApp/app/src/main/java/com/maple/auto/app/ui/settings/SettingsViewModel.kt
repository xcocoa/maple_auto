package com.maple.auto.app.ui.settings

import android.content.Context
import android.content.SharedPreferences
import android.provider.Settings
import androidx.lifecycle.ViewModel
import com.maple.auto.common.util.PermissionUtils
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import javax.inject.Inject

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val prefs: SharedPreferences
) : ViewModel() {

    private val _autoStartEngine = MutableStateFlow(prefs.getBoolean(KEY_AUTO_START, false))
    val autoStartEngine: StateFlow<Boolean> = _autoStartEngine.asStateFlow()

    private val _keepAlive = MutableStateFlow(prefs.getBoolean(KEY_KEEP_ALIVE, true))
    val keepAlive: StateFlow<Boolean> = _keepAlive.asStateFlow()

    private val _defaultTimeout = MutableStateFlow(prefs.getInt(KEY_DEFAULT_TIMEOUT, 300).toString())
    val defaultTimeout: StateFlow<String> = _defaultTimeout.asStateFlow()

    // Permission states
    private val _overlayGranted = MutableStateFlow(false)
    val overlayGranted: StateFlow<Boolean> = _overlayGranted.asStateFlow()

    private val _accessibilityGranted = MutableStateFlow(false)
    val accessibilityGranted: StateFlow<Boolean> = _accessibilityGranted.asStateFlow()

    private val _mediaProjectionGranted = MutableStateFlow(false)
    val mediaProjectionGranted: StateFlow<Boolean> = _mediaProjectionGranted.asStateFlow()

    private val _inputMethodGranted = MutableStateFlow(false)
    val inputMethodGranted: StateFlow<Boolean> = _inputMethodGranted.asStateFlow()

    /**
     * Refresh all permission states. Call this on lifecycle resume.
     */
    fun refreshPermissions(context: Context) {
        _overlayGranted.value = Settings.canDrawOverlays(context)
        _accessibilityGranted.value = try {
            PermissionUtils.isAccessibilityServiceEnabled(
                context,
                Class.forName("com.maple.auto.accessibility.AutoAccessibilityService")
            )
        } catch (e: Exception) {
            false
        }
        _inputMethodGranted.value = PermissionUtils.isInputMethodEnabled(
            context,
            "${context.packageName}/.ime.AutoInputMethodService"
        )
        // MediaProjection is session-based, check via shared preference flag
        _mediaProjectionGranted.value = prefs.getBoolean(KEY_MEDIA_PROJECTION_GRANTED, false)
    }

    fun setMediaProjectionGranted(granted: Boolean) {
        _mediaProjectionGranted.value = granted
        prefs.edit().putBoolean(KEY_MEDIA_PROJECTION_GRANTED, granted).apply()
    }

    fun setAutoStartEngine(enabled: Boolean) {
        _autoStartEngine.value = enabled
        prefs.edit().putBoolean(KEY_AUTO_START, enabled).apply()
    }

    fun setKeepAlive(enabled: Boolean) {
        _keepAlive.value = enabled
        prefs.edit().putBoolean(KEY_KEEP_ALIVE, enabled).apply()
    }

    fun setDefaultTimeout(value: String) {
        _defaultTimeout.value = value
        val timeout = value.toIntOrNull() ?: 300
        prefs.edit().putInt(KEY_DEFAULT_TIMEOUT, timeout).apply()
    }

    companion object {
        const val KEY_AUTO_START = "auto_start_engine"
        const val KEY_KEEP_ALIVE = "keep_alive"
        const val KEY_DEFAULT_TIMEOUT = "default_timeout"
        const val KEY_MEDIA_PROJECTION_GRANTED = "media_projection_granted"
    }
}
