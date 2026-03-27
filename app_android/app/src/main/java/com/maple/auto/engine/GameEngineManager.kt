package com.maple.auto.engine

import android.util.Log
import com.chaquo.python.PyObject
import com.chaquo.python.Python
import com.maple.auto.service.FloatingWindowService
import kotlinx.coroutines.*

/**
 * 游戏引擎管理器
 *
 * 作为 Kotlin <-> Python 的桥梁：
 * - 在后台线程中调用 Python game_engine 模块
 * - 将引擎状态回调转发给 Kotlin UI（浮窗）
 * - 管理引擎生命周期
 * - 周期性轮询统计数据并更新浮窗显示
 */
class GameEngineManager {

    companion object {
        private const val TAG = "GameEngineManager"
        private const val STATS_POLL_INTERVAL_MS = 2000L  // 2 秒轮询一次统计
    }

    private val scope = CoroutineScope(Dispatchers.IO + Job())
    private var gameEngineModule: PyObject? = null
    private var statsPollingJob: Job? = null

    @Volatile
    var isRunning = false
        private set

    // 回调
    var onStateChanged: ((String) -> Unit)? = null
    var onError: ((String) -> Unit)? = null
    var onStatsUpdated: ((Map<String, Any>) -> Unit)? = null

    /**
     * 测试手势注入
     */
    fun testGesture(callback: ((Map<String, Any>) -> Unit)? = null) {
        scope.launch {
            try {
                Log.d(TAG, "Running gesture test...")
                val python = Python.getInstance()
                val module = python.getModule("game_engine")
                val result = module.callAttr("test_gesture")
                val resultMap = pyObjectToMap(result)
                Log.d(TAG, "Gesture test results: $resultMap")
                if (callback != null) {
                    withContext(Dispatchers.Main) {
                        callback(resultMap)
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Gesture test failed", e)
            }
        }
    }

    /**
     * 测试截图功能
     */
    fun testScreenshot(callback: ((Map<String, Any>) -> Unit)? = null) {
        scope.launch {
            try {
                Log.d(TAG, "Running screenshot test...")
                val python = Python.getInstance()
                val module = python.getModule("game_engine")
                val result = module.callAttr("test_screenshot")
                val resultMap = pyObjectToMap(result)
                Log.d(TAG, "Screenshot test results: $resultMap")
                if (callback != null) {
                    withContext(Dispatchers.Main) {
                        callback(resultMap)
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Screenshot test failed", e)
            }
        }
    }

    /**
     * 启动游戏引擎
     */
    fun start() {
        if (isRunning) {
            Log.w(TAG, "Engine already running")
            return
        }

        scope.launch {
            try {
                Log.d(TAG, "Starting Python game engine...")

                val python = Python.getInstance()
                gameEngineModule = python.getModule("game_engine")

                // 启动引擎
                gameEngineModule?.callAttr("start_engine")
                isRunning = true

                Log.d(TAG, "Python game engine started")

                // 开始统计轮询
                startStatsPolling()
            } catch (e: Exception) {
                Log.e(TAG, "Failed to start game engine", e)
                isRunning = false
                withContext(Dispatchers.Main) {
                    onError?.invoke("Engine start failed: ${e.message}")
                }
            }
        }
    }

    /**
     * 停止游戏引擎
     */
    fun stop() {
        stopStatsPolling()
        scope.launch {
            try {
                gameEngineModule?.callAttr("stop_engine")
                isRunning = false
                Log.d(TAG, "Python game engine stopped")

                // 更新浮窗状态为空闲
                withContext(Dispatchers.Main) {
                    FloatingWindowService.instance?.updateStatus("idle")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to stop game engine", e)
            }
        }
    }

    /**
     * 暂停
     */
    fun pause() {
        scope.launch {
            try {
                gameEngineModule?.callAttr("pause_engine")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to pause engine", e)
            }
        }
    }

    /**
     * 恢复
     */
    fun resume() {
        scope.launch {
            try {
                gameEngineModule?.callAttr("resume_engine")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to resume engine", e)
            }
        }
    }

    /**
     * 获取引擎统计
     */
    fun getStats(callback: (Map<String, Any>) -> Unit) {
        scope.launch {
            try {
                val stats = fetchStats()
                if (stats != null) {
                    withContext(Dispatchers.Main) {
                        callback(stats)
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to get stats", e)
            }
        }
    }

    /**
     * 从 Python 引擎获取统计数据
     */
    private fun fetchStats(): Map<String, Any>? {
        val pyStats = gameEngineModule?.callAttr("get_engine_stats") ?: return null
        return pyObjectToMap(pyStats)
    }

    /**
     * 递归将 PyObject 转为 Kotlin Map
     */
    private fun pyObjectToMap(pyObj: PyObject): Map<String, Any> {
        return try {
            pyObj.asMap().mapKeys { it.key.toString() }.mapValues { (_, value) ->
                convertPyValue(value as PyObject)
            }
        } catch (e: Exception) {
            emptyMap()
        }
    }

    private fun convertPyValue(pyObj: PyObject): Any {
        return try {
            // 尝试各种类型转换
            try { return pyObj.toBoolean() } catch (_: Exception) {}
            try { return pyObj.toInt() } catch (_: Exception) {}
            try { return pyObj.toDouble() } catch (_: Exception) {}
            try {
                val map = pyObj.asMap()
                return map.mapKeys { it.key.toString() }.mapValues { (_, v) ->
                    convertPyValue(v as PyObject)
                }
            } catch (_: Exception) {}
            try {
                val list = pyObj.asList()
                return list.map { convertPyValue(it) }
            } catch (_: Exception) {}
            pyObj.toString()
        } catch (e: Exception) {
            pyObj.toString()
        }
    }

    /**
     * 开始周期性轮询统计并更新浮窗
     */
    private fun startStatsPolling() {
        stopStatsPolling()
        statsPollingJob = scope.launch {
            while (isActive && isRunning) {
                try {
                    val stats = fetchStats()
                    if (stats != null) {
                        withContext(Dispatchers.Main) {
                            // 更新浮窗
                            FloatingWindowService.instance?.updateStats(stats)
                            // 回调外部监听者
                            onStatsUpdated?.invoke(stats)
                        }
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "Stats polling error: ${e.message}")
                }
                delay(STATS_POLL_INTERVAL_MS)
            }
        }
        Log.d(TAG, "Stats polling started (interval: ${STATS_POLL_INTERVAL_MS}ms)")
    }

    /**
     * 停止统计轮询
     */
    private fun stopStatsPolling() {
        statsPollingJob?.cancel()
        statsPollingJob = null
    }

    /**
     * 销毁
     */
    fun destroy() {
        stop()
        scope.cancel()
        gameEngineModule = null
    }
}
