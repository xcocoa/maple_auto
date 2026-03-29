package com.maple.auto.capture

import android.content.Context
import android.content.Intent
import android.util.Log

/**
 * MediaProjection 授权持久化管理器
 *
 * 功能：
 * - 保存/加载 resultCode 和 resultData
 * - 使用 Intent.toUri() / Intent.parseUri() 序列化
 *
 * 注意：
 * - Token 在设备重启后会失效（Android 系统限制）
 * - 部分设备强制停止应用后也会失效
 */
object MediaProjectionStore {

    private const val TAG = "MediaProjectionStore"
    private const val PREFS_NAME = "media_projection_store"
    private const val KEY_RESULT_CODE = "result_code"
    private const val KEY_RESULT_DATA_URI = "result_data_uri"

    private var preferences: android.content.SharedPreferences? = null

    /**
     * 初始化（在 Application.onCreate 中调用）
     */
    fun init(context: Context) {
        preferences = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        Log.d(TAG, "MediaProjectionStore initialized")
    }

    /**
     * 保存授权数据
     */
    fun save(resultCode: Int, resultData: Intent): Boolean {
        return try {
            val uri = resultData.toUri(Intent.URI_INTENT_SCHEME)
            preferences?.edit()?.apply {
                putInt(KEY_RESULT_CODE, resultCode)
                putString(KEY_RESULT_DATA_URI, uri)
            }?.apply() ?: false
            Log.d(TAG, "Saved projection token: resultCode=$resultCode")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to save projection token", e)
            false
        }
    }

    /**
     * 加载 resultCode
     */
    fun loadResultCode(): Int {
        return preferences?.getInt(KEY_RESULT_CODE, 0) ?: 0
    }

    /**
     * 加载 resultData
     */
    fun loadResultData(): Intent? {
        return try {
            val uri = preferences?.getString(KEY_RESULT_DATA_URI, null)
            if (uri != null) {
                val intent = Intent.parseUri(uri, Intent.URI_INTENT_SCHEME)
                Log.d(TAG, "Loaded projection token from store")
                intent
            } else {
                Log.d(TAG, "No stored projection token found")
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load projection token", e)
            null
        }
    }

    /**
     * 检查是否有保存的 token
     */
    fun hasToken(): Boolean {
        val hasCode = preferences?.contains(KEY_RESULT_CODE) ?: false
        val hasUri = preferences?.contains(KEY_RESULT_DATA_URI) ?: false
        return hasCode && hasUri
    }

    /**
     * 清除保存的 token
     */
    fun clear() {
        preferences?.edit()?.clear()?.apply()
        Log.d(TAG, "Cleared projection token")
    }
}