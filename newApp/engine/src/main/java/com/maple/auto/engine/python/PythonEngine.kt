package com.maple.auto.engine.python

import android.content.Context
import android.util.Log
import com.maple.auto.common.model.ScriptState
import java.util.concurrent.atomic.AtomicReference

/**
 * Wraps the Chaquopy Python interpreter to load and execute automation scripts.
 *
 * Manages the Python runtime lifecycle, script loading, execution on a dedicated
 * thread, and pause/resume control via a Python threading.Event.
 *
 * TODO: Chaquopy integration - Python/PyObject/PyException are only available when
 * Chaquopy plugin is applied (app module). This stub allows engine module to compile.
 */
class PythonEngine {

    companion object {
        private const val TAG = "PythonEngine"

        // Chaquopy class names for reflection
        private const val CLS_PYTHON = "com.chaquo.python.Python"
        private const val CLS_ANDROID_PLATFORM = "com.chaquo.python.android.AndroidPlatform"
        private const val CLS_PY_EXCEPTION = "com.chaquo.python.PyException"
    }

    /** Callback interface for engine state changes and errors. */
    interface Callback {
        fun onStateChanged(state: ScriptState)
        fun onError(error: String, stackTrace: String)
        fun onLog(message: String)
    }

    // TODO: These were PyObject/Python types - stubbed as Any? for compilation without Chaquopy
    private var python: Any? = null
    private var scriptModule: Any? = null
    private var pauseEvent: Any? = null
    private var executionThread: Thread? = null
    private val state = AtomicReference(ScriptState.FREE)
    private var callback: Callback? = null
    private val logBuffer = StringBuilder()

    @Volatile
    private var isInitialized = false

    /**
     * Initializes the Python interpreter if not already started.
     * Must be called before any other operations.
     */
    fun init(context: Context) {
        if (isInitialized) return

        synchronized(this) {
            if (isInitialized) return
            try {
                // Use reflection to call Python.start(AndroidPlatform(context))
                val pythonClass = Class.forName(CLS_PYTHON)
                val isStartedMethod = pythonClass.getMethod("isStarted")
                val isStarted = isStartedMethod.invoke(null) as Boolean

                if (!isStarted) {
                    val platformClass = Class.forName(CLS_ANDROID_PLATFORM)
                    val platformCtor = platformClass.getConstructor(Context::class.java)
                    val platform = platformCtor.newInstance(context)

                    val startMethod = pythonClass.getMethod("start", Class.forName("com.chaquo.python.Platform"))
                    startMethod.invoke(null, platform)
                }

                val getInstanceMethod = pythonClass.getMethod("getInstance")
                python = getInstanceMethod.invoke(null)
                isInitialized = true
                Log.i(TAG, "Python engine initialized")
            } catch (e: ClassNotFoundException) {
                Log.w(TAG, "Chaquopy not available - Python engine running in stub mode")
                isInitialized = true
            } catch (e: Exception) {
                Log.e(TAG, "Failed to initialize Python engine", e)
                isInitialized = true
            }
        }
    }

    fun setCallback(callback: Callback?) {
        this.callback = callback
    }

    /**
     * Loads a Python script file and prepares it for execution.
     *
     * @param scriptPath Absolute path to the .py script file.
     * @param config Configuration parameters passed to the script's setup.
     */
    fun loadScript(scriptPath: String, config: Map<String, Any> = emptyMap()) {
        requireInitialized()

        if (state.get() != ScriptState.FREE) {
            Log.w(TAG, "Cannot load script while in state: ${state.get()}")
            return
        }

        setState(ScriptState.LOAD)
        try {
            val py = python
            if (py == null) {
                Log.w(TAG, "Python not available (stub mode). Cannot load script: $scriptPath")
                setState(ScriptState.ERROR)
                callback?.onError("Python runtime not available", "Chaquopy is not initialized")
                return
            }

            // Use reflection to interact with Python instance
            val pyClass = py.javaClass
            val getModule = pyClass.getMethod("getModule", String::class.java)
            val getBuiltins = pyClass.getMethod("getBuiltins")

            // Create the pause event for pause/resume control
            val threading = getModule.invoke(py, "threading")
            val callAttr = threading!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            pauseEvent = callAttr.invoke(threading, "Event", emptyArray<Any>())
            val pauseCallAttr = pauseEvent!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            pauseCallAttr.invoke(pauseEvent, "set", emptyArray<Any>()) // Initially not paused

            // Add script directory to Python path
            val os = getModule.invoke(py, "os")
            val osPath = callAttr.invoke(os, "path", emptyArray<Any>())
            val scriptDir = callAttr.invoke(osPath, "dirname", arrayOf(scriptPath)).toString()
            val sys = getModule.invoke(py, "sys")
            val sysGet = sys!!.javaClass.getMethod("get", String::class.java)
            val sysPath = sysGet.invoke(sys, "path")!!
            val asList = sysPath.javaClass.getMethod("asList")
            val pathList = asList.invoke(sysPath) as List<*>
            if (!pathList.map { it.toString() }.contains(scriptDir)) {
                val insertMethod = sysPath.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
                insertMethod.invoke(sysPath, "insert", arrayOf(0, scriptDir))
            }

            // Set config in the autopilot module
            val autopilot = getModule.invoke(py, "autopilot.utils")
            val builtins = getBuiltins.invoke(py)
            val builtinsCallAttr = builtins!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            val pyConfig = builtinsCallAttr.invoke(builtins, "dict", emptyArray<Any>())
            val configCallAttr = pyConfig!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            for ((key, value) in config) {
                configCallAttr.invoke(pyConfig, "__setitem__", arrayOf(key, value))
            }
            val autopilotCallAttr = autopilot!!.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            autopilotCallAttr.invoke(autopilot, "_set_config_dict", arrayOf(pyConfig))

            // Store script path for execution
            scriptModule = builtins
            val putMethod = builtins.javaClass.getMethod("put", String::class.java, Any::class.java)
            putMethod.invoke(builtins, "__maple_script_path__", scriptPath)
            putMethod.invoke(builtins, "__maple_pause_event__", pauseEvent)

            Log.i(TAG, "Script loaded: $scriptPath")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to load script", e)
            setState(ScriptState.ERROR)
            callback?.onError("Failed to load script: ${e.message}", e.stackTraceToString())
        }
    }

    /**
     * Starts execution of the loaded script on a dedicated thread.
     */
    fun start() {
        requireInitialized()

        if (state.get() != ScriptState.LOAD) {
            Log.w(TAG, "Cannot start, current state: ${state.get()}")
            return
        }

        setState(ScriptState.RUNNING)
        executionThread = Thread({
            try {
                val py = python
                if (py == null) {
                    Log.w(TAG, "Python not available (stub mode)")
                    setState(ScriptState.FREE)
                    return@Thread
                }

                val getBuiltins = py.javaClass.getMethod("getBuiltins")
                val builtins = getBuiltins.invoke(py)!!
                val builtinsGet = builtins.javaClass.getMethod("get", String::class.java)
                val scriptPath = builtinsGet.invoke(builtins, "__maple_script_path__").toString()

                // Execute script using runpy
                val builtinsCallAttr = builtins.javaClass.getMethod("callAttr", String::class.java, Array<Any>::class.java)
                val code = """
                    import runpy
                    import sys
                    runpy.run_path('$scriptPath', run_name='__main__')
                """.trimIndent()
                val compiled = builtinsCallAttr.invoke(builtins, "compile", arrayOf(code, "<engine>", "exec"))
                builtinsCallAttr.invoke(builtins, "exec", arrayOf(compiled))

                // Script completed normally
                if (state.get() == ScriptState.RUNNING || state.get() == ScriptState.PAUSE) {
                    setState(ScriptState.FREE)
                    Log.i(TAG, "Script completed successfully")
                }
            } catch (e: Exception) {
                if (Thread.currentThread().isInterrupted || state.get() == ScriptState.FREE) {
                    Log.i(TAG, "Script execution interrupted")
                } else {
                    Log.e(TAG, "Script execution error", e)
                    setState(ScriptState.ERROR)
                    callback?.onError(
                        "Script error: ${e.message}",
                        e.stackTraceToString()
                    )
                }
            }
        }, "python-script-executor").apply {
            isDaemon = true
            start()
        }
    }

    /**
     * Pauses script execution by clearing the pause event.
     * The script must check the pause event via `sleep()` in autopilot.utils.
     */
    fun pause() {
        if (state.get() != ScriptState.RUNNING) return
        try {
            val callAttr = pauseEvent?.javaClass?.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            callAttr?.invoke(pauseEvent, "clear", emptyArray<Any>())
        } catch (e: Exception) {
            Log.e(TAG, "Failed to pause", e)
        }
        setState(ScriptState.PAUSE)
        Log.i(TAG, "Script paused")
    }

    /**
     * Resumes a paused script by setting the pause event.
     */
    fun resume() {
        if (state.get() != ScriptState.PAUSE) return
        try {
            val callAttr = pauseEvent?.javaClass?.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            callAttr?.invoke(pauseEvent, "set", emptyArray<Any>())
        } catch (e: Exception) {
            Log.e(TAG, "Failed to resume", e)
        }
        setState(ScriptState.RUNNING)
        Log.i(TAG, "Script resumed")
    }

    /**
     * Stops script execution, interrupts the thread, and cleans up resources.
     */
    fun stop() {
        val currentState = state.get()
        if (currentState == ScriptState.FREE) return

        Log.i(TAG, "Stopping script execution")

        // Resume if paused so the thread can exit
        try {
            val callAttr = pauseEvent?.javaClass?.getMethod("callAttr", String::class.java, Array<Any>::class.java)
            callAttr?.invoke(pauseEvent, "set", emptyArray<Any>())
        } catch (e: Exception) {
            Log.e(TAG, "Failed to set pause event during stop", e)
        }

        // Interrupt the execution thread
        executionThread?.let { thread ->
            thread.interrupt()
            try {
                thread.join(3000) // Wait up to 3 seconds
            } catch (e: InterruptedException) {
                Log.w(TAG, "Interrupted while waiting for script thread to stop")
            }
        }

        cleanup()
        setState(ScriptState.FREE)
        Log.i(TAG, "Script stopped")
    }

    /** Returns the current engine state. */
    fun getState(): ScriptState = state.get()

    /** Returns and clears the accumulated log output. */
    fun consumeLog(): String {
        synchronized(logBuffer) {
            val log = logBuffer.toString()
            logBuffer.clear()
            return log
        }
    }

    /** Appends a log message (called from Python via bridge). */
    internal fun appendLog(message: String) {
        synchronized(logBuffer) {
            logBuffer.appendLine(message)
        }
        callback?.onLog(message)
    }

    /** Releases all resources. Call when the engine is no longer needed. */
    fun release() {
        stop()
        python = null
        isInitialized = false
        callback = null
        Log.i(TAG, "Python engine released")
    }

    private fun setState(newState: ScriptState) {
        val old = state.getAndSet(newState)
        if (old != newState) {
            Log.d(TAG, "State changed: $old -> $newState")
            callback?.onStateChanged(newState)
        }
    }

    private fun cleanup() {
        executionThread = null
        scriptModule = null
        pauseEvent = null
    }

    private fun requireInitialized() {
        check(isInitialized) { "PythonEngine not initialized. Call init() first." }
    }
}
