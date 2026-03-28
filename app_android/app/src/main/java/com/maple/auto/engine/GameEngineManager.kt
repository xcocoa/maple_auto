package com.maple.auto.engine

import android.util.Log
import com.chaquo.python.PyObject
import com.chaquo.python.Python
import com.maple.auto.service.FloatingWindowService
import kotlinx.coroutines.*

/**
 * 游戏引擎管理器（单例）
 *
 * 作为 Kotlin <-> Python 的桥梁：
 * - 在后台线程中调用 Python game_engine 模块
 * - 将引擎状态回调转发给 Kotlin UI（浮窗）
 * - 管理引擎生命周期
 * - 周期性轮询统计数据并更新浮窗显示
 */
object GameEngineManager {

    private const val TAG = "GameEngineManager"
    private const val STATS_POLL_INTERVAL_MS = 2000L

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
        return try {
            val pyStats = gameEngineModule?.callAttr("get_engine_stats")
            Log.d(TAG, "fetchStats: pyStats=$pyStats")
            if (pyStats != null) {
                val result = pyObjectToMap(pyStats)
                Log.d(TAG, "fetchStats: result=$result")
                result
            } else {
                Log.w(TAG, "fetchStats: pyStats is null")
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "fetchStats failed: ${e.message}")
            null
        }
    }

    /**
     * 递归将 PyObject 转为 Kotlin Map
     */
    private fun pyObjectToMap(pyObj: PyObject): Map<String, Any> {
        Log.d(TAG, "pyObjectToMap: pyObj class=${pyObj.javaClass.simpleName}")
        return try {
            Log.d(TAG, "pyObjectToMap: calling asMap()...")
            val pyMap = pyObj.asMap()
            Log.d(TAG, "pyObjectToMap: asMap returned, size=${pyMap.size}")

            val result = mutableMapOf<String, Any>()

            // 使用 Python 的 list() 包装 keys()
            val keysCallable = pyObj.callAttr("keys")
            val python = Python.getInstance()
            val builtins = python.getModule("builtins")
            val keysListPy = builtins.callAttr("list", keysCallable)
            Log.d(TAG, "pyObjectToMap: list(keys) returned, class=${keysListPy.javaClass.simpleName}")

            val keysList = keysListPy.asList()
            Log.d(TAG, "pyObjectToMap: keys asList, size=${keysList.size}")

            // 使用 asMap() 返回的 Kotlin Map 来获取 value
            for ((idx, keyObj) in keysList.withIndex()) {
                try {
                    val keyPyObj = keyObj as PyObject
                    val keyStr = keyPyObj.toString()
                    Log.d(TAG, "pyObjectToMap: converting key=$keyStr (index=$idx)")
                    // 直接从 asMap 返回的 Kotlin Map 中获取 value
                    val value = pyMap[keyPyObj]
                    Log.d(TAG, "pyObjectToMap: got value for key=$keyStr, value=null? ${value == null}")
                    if (value != null) {
                        Log.d(TAG, "pyObjectToMap: value class=${value.javaClass.simpleName}")
                        Log.d(TAG, "pyObjectToMap: calling convertValue...")
                        result[keyStr] = convertValue(value)
                        Log.d(TAG, "pyObjectToMap: converted key=$keyStr successfully")
                    } else {
                        Log.w(TAG, "pyObjectToMap: value is null for key=$keyStr")
                        result[keyStr] = "null"
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "pyObjectToMap: failed to convert key=$keyObj: ${e.message}", e)
                }
            }
            Log.d(TAG, "pyObjectToMap: result size=${result.size}, keys=${result.keys}")
            result
        } catch (e: Exception) {
            Log.e(TAG, "pyObjectToMap failed: ${e.message}", e)
            emptyMap()
        }
    }

    private fun convertValue(value: Any?): Any {
        if (value == null) return "null"

        return when (value) {
            is PyObject -> {
                val strRep = value.toString()

                // 先检查字符串表示，避免无限递归
                // 字符串、布尔值、数字直接返回
                if (strRep == "True") return true
                if (strRep == "False") return false

                // 检查是否是整数
                if (strRep.matches(Regex("^-?\\d+$"))) {
                    return try { value.toInt() } catch (_: Exception) { strRep }
                }

                // 检查是否是浮点数
                if (strRep.matches(Regex("^-?\\d+\\.?\\d*$")) && strRep.contains(".")) {
                    return try { value.toDouble() } catch (_: Exception) { strRep }
                }

                // 检查是否是字符串（引号包围）或短字符串（长度<10 且不是 dict/list/tuple）
                if ((strRep.startsWith("\"") && strRep.endsWith("\"")) ||
                    (strRep.startsWith("'") && strRep.endsWith("'")) ||
                    (strRep.length < 10 && !strRep.startsWith("{") && !strRep.startsWith("[") && !strRep.startsWith("("))) {
                    return strRep
                }

                // 检查是否是元组
                if (strRep.startsWith("(") && strRep.endsWith(")")) {
                    return strRep
                }

                // 检查是否是 dict
                if (strRep.startsWith("{") && strRep.endsWith("}")) {
                    try {
                        val map = value.asMap()
                        val result = mutableMapOf<String, Any>()
                        val python = Python.getInstance()
                        val builtins = python.getModule("builtins")
                        val keysCallable = value.callAttr("keys")
                        val keysListPy = builtins.callAttr("list", keysCallable)
                        val keysList = keysListPy.asList()
                        for (keyObj in keysList) {
                            val keyPyObj = keyObj as PyObject
                            val keyStr = keyPyObj.toString()
                            val v = map[keyPyObj]
                            result[keyStr] = if (v is PyObject) convertValue(v) else convertValue(v)
                        }
                        return result
                    } catch (e: Exception) {
                        // dict 处理失败，返回字符串
                    }
                }

                // 检查是否是 list
                if (strRep.startsWith("[") && strRep.endsWith("]")) {
                    try {
                        val list = value.asList()
                        return list.map { if (it is PyObject) convertValue(it) else convertValue(it) }
                    } catch (e: Exception) {
                        // list 处理失败，返回字符串
                    }
                }

                // 默认返回字符串表示
                strRep
            }
            is Number -> value
            is Boolean -> value
            is String -> value
            is Map<*, *> -> {
                val result = mutableMapOf<String, Any>()
                for ((k, v) in value.entries) {
                    result[k.toString()] = convertValue(v)
                }
                result
            }
            is List<*> -> value.map { convertValue(it) }
            else -> value.toString()
        }
    }

    private fun convertPyValue(pyObj: PyObject): Any {
        return convertValue(pyObj)
    }

    /**
     * 开始周期性轮询统计并更新浮窗
     */
    private fun startStatsPolling() {
        stopStatsPolling()
        statsPollingJob = scope.launch {
            Log.d(TAG, "Stats polling loop started, isRunning=$isRunning")
            while (isActive && isRunning) {
                try {
                    Log.d(TAG, "Fetching stats... isRunning=$isRunning")
                    val stats = fetchStats()
                    Log.d(TAG, "FetchStats returned: stats=$stats")
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
                Log.d(TAG, "Waiting for next poll...")
                delay(STATS_POLL_INTERVAL_MS)
            }
            Log.w(TAG, "Stats polling loop exited, isActive=$isActive, isRunning=$isRunning")
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