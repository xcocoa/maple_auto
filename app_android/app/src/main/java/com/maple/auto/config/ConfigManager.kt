package com.maple.auto.config

import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import org.json.JSONObject

/**
 * 配置管理器 - 持久化到 SharedPreferences
 *
 * 支持：
 * - 从 SharedPreferences 加载/保存配置
 * - JSON 格式导入/导出（用于 Python 桥接层通信）
 * - 默认配置回退
 */
class ConfigManager(context: Context) {

    companion object {
        private const val TAG = "ConfigManager"
        private const val PREFS_NAME = "maple_auto_config"
        private const val KEY_CONFIG_JSON = "config_json"
        private const val KEY_LAST_MODIFIED = "last_modified"

        @JvmStatic
        @Volatile
        var instance: ConfigManager? = null
            private set

        fun init(context: Context): ConfigManager {
            if (instance == null) {
                synchronized(this) {
                    if (instance == null) {
                        instance = ConfigManager(context.applicationContext)
                    }
                }
            }
            return instance!!
        }
    }

    private val preferences: SharedPreferences =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    init {
        instance = this
    }

    /**
     * 保存完整配置 JSON
     */
    fun saveConfigJson(jsonString: String): Boolean {
        return try {
            // 验证 JSON 格式
            JSONObject(jsonString)

            preferences.edit()
                .putString(KEY_CONFIG_JSON, jsonString)
                .putLong(KEY_LAST_MODIFIED, System.currentTimeMillis())
                .apply()

            Log.d(TAG, "Config saved (${jsonString.length} chars)")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to save config: ${e.message}")
            false
        }
    }

    /**
     * 加载完整配置 JSON
     * 返回 null 表示无保存的配置
     */
    fun loadConfigJson(): String? {
        return try {
            val json = preferences.getString(KEY_CONFIG_JSON, null)
            if (json != null) {
                Log.d(TAG, "Config loaded (${json.length} chars)")
            }
            json
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load config: ${e.message}")
            null
        }
    }

    /**
     * 保存单个配置键值
     */
    fun saveValue(key: String, value: Any): Boolean {
        return try {
            val editor = preferences.edit()
            when (value) {
                is String -> editor.putString(key, value)
                is Int -> editor.putInt(key, value)
                is Long -> editor.putLong(key, value)
                is Float -> editor.putFloat(key, value)
                is Double -> editor.putFloat(key, value.toFloat())
                is Boolean -> editor.putBoolean(key, value)
                else -> {
                    editor.putString(key, value.toString())
                }
            }
            editor.apply()
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to save $key: ${e.message}")
            false
        }
    }

    /**
     * 加载单个配置值
     */
    fun loadString(key: String, default: String = ""): String {
        return preferences.getString(key, default) ?: default
    }

    fun loadInt(key: String, default: Int = 0): Int {
        return preferences.getInt(key, default)
    }

    fun loadFloat(key: String, default: Float = 0f): Float {
        return preferences.getFloat(key, default)
    }

    fun loadBoolean(key: String, default: Boolean = false): Boolean {
        return preferences.getBoolean(key, default)
    }

    /**
     * 检查是否有保存的配置
     */
    fun hasConfig(): Boolean {
        return preferences.contains(KEY_CONFIG_JSON)
    }

    /**
     * 获取上次修改时间
     */
    fun getLastModified(): Long {
        return preferences.getLong(KEY_LAST_MODIFIED, 0)
    }

    /**
     * 清除所有配置（恢复默认）
     */
    fun clearAll() {
        preferences.edit().clear().apply()
        Log.d(TAG, "Config cleared")
    }
}
