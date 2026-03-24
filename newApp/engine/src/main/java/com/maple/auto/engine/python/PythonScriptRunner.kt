package com.maple.auto.engine.python

import android.content.Context
import android.os.Handler
import android.os.HandlerThread
import android.util.Log
import com.maple.auto.common.model.ScriptState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Manages the full lifecycle of Python script execution.
 *
 * Provides a state machine (FREE → LOAD → RUNNING ↔ PAUSE → FREE),
 * dedicated HandlerThread for execution, configurable timeout watchdog,
 * and observable state via Kotlin Flow.
 */
class PythonScriptRunner(private val context: Context) {

    companion object {
        private const val TAG = "PythonScriptRunner"
        private const val DEFAULT_TIMEOUT_MS = 0L // 0 = no timeout
    }

    /** Callback for script errors. */
    fun interface ErrorCallback {
        fun onError(error: String, stackTrace: String)
    }

    /** Callback for log output. */
    fun interface LogCallback {
        fun onLog(message: String)
    }

    private val engine = PythonEngine()
    private var handlerThread: HandlerThread? = null
    private var handler: Handler? = null
    private var watchdogThread: Thread? = null

    private val _stateFlow = MutableStateFlow(ScriptState.FREE)
    /** Observable state changes. */
    val stateFlow: StateFlow<ScriptState> = _stateFlow.asStateFlow()

    var errorCallback: ErrorCallback? = null
    var logCallback: LogCallback? = null

    /** Timeout in milliseconds. 0 means no timeout. */
    var timeoutMs: Long = DEFAULT_TIMEOUT_MS

    private val engineCallback = object : PythonEngine.Callback {
        override fun onStateChanged(state: ScriptState) {
            _stateFlow.value = state
            Log.d(TAG, "Script state: $state")
            if (state == ScriptState.FREE || state == ScriptState.ERROR) {
                cancelWatchdog()
                cleanupHandlerThread()
            }
        }

        override fun onError(error: String, stackTrace: String) {
            errorCallback?.onError(error, stackTrace)
        }

        override fun onLog(message: String) {
            logCallback?.onLog(message)
        }
    }

    init {
        engine.init(context)
        engine.setCallback(engineCallback)
    }

    /**
     * Loads a script and immediately starts execution.
     *
     * @param scriptPath Absolute path to the .py script file.
     * @param config Configuration map passed to the script.
     */
    fun loadAndRun(scriptPath: String, config: Map<String, Any> = emptyMap()) {
        val currentState = engine.getState()
        if (currentState != ScriptState.FREE) {
            Log.w(TAG, "Cannot load while in state: $currentState. Stopping first.")
            stop()
        }

        // Create a dedicated HandlerThread for script operations
        handlerThread = HandlerThread("script-runner").apply { start() }
        handler = Handler(handlerThread!!.looper)

        handler?.post {
            engine.loadScript(scriptPath, config)
            if (engine.getState() == ScriptState.LOAD) {
                engine.start()
                startWatchdog()
            }
        }
    }

    /**
     * Pauses the running script.
     * Only valid when state is RUNNING.
     */
    fun pause() {
        if (engine.getState() == ScriptState.RUNNING) {
            engine.pause()
        }
    }

    /**
     * Resumes a paused script.
     * Only valid when state is PAUSE.
     */
    fun resume() {
        if (engine.getState() == ScriptState.PAUSE) {
            engine.resume()
            startWatchdog() // Restart watchdog on resume
        }
    }

    /**
     * Stops script execution and resets to FREE state.
     */
    fun stop() {
        cancelWatchdog()
        engine.stop()
        cleanupHandlerThread()
    }

    /** Returns the current script state. */
    fun getState(): ScriptState = engine.getState()

    /** Releases all resources. */
    fun release() {
        stop()
        engine.setCallback(null)
        engine.release()
        errorCallback = null
        logCallback = null
    }

    private fun startWatchdog() {
        if (timeoutMs <= 0) return
        cancelWatchdog()

        watchdogThread = Thread({
            try {
                Thread.sleep(timeoutMs)
                // If we get here, the timeout expired
                val currentState = engine.getState()
                if (currentState == ScriptState.RUNNING || currentState == ScriptState.PAUSE) {
                    Log.w(TAG, "Script execution timed out after ${timeoutMs}ms")
                    errorCallback?.onError(
                        "Script timed out after ${timeoutMs}ms",
                        ""
                    )
                    stop()
                }
            } catch (e: InterruptedException) {
                // Watchdog cancelled, this is expected
            }
        }, "script-watchdog").apply {
            isDaemon = true
            start()
        }
    }

    private fun cancelWatchdog() {
        watchdogThread?.interrupt()
        watchdogThread = null
    }

    private fun cleanupHandlerThread() {
        handlerThread?.quitSafely()
        handlerThread = null
        handler = null
    }
}
