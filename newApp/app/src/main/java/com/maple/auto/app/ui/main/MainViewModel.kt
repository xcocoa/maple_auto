package com.maple.auto.app.ui.main

import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.maple.auto.common.model.ScriptState
import com.maple.auto.ipc.protocol.IpcCommand
import com.maple.auto.ipc.protocol.IpcMessage
import com.maple.auto.ipc.socket.LocalSocketClient
import com.maple.auto.persistence.ScriptEntity
import com.maple.auto.persistence.dao.ScriptDao
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class MainViewModel @Inject constructor(
    private val scriptDao: ScriptDao
) : ViewModel() {

    private val _engineConnected = MutableStateFlow(false)
    val engineConnected: StateFlow<Boolean> = _engineConnected.asStateFlow()

    private val _currentScript = MutableStateFlow<ScriptEntity?>(null)
    val currentScript: StateFlow<ScriptEntity?> = _currentScript.asStateFlow()

    private val _scriptState = MutableStateFlow(ScriptState.FREE)
    val scriptState: StateFlow<ScriptState> = _scriptState.asStateFlow()

    private var socketClient: LocalSocketClient? = null

    init {
        connectToEngine()
    }

    fun connectToEngine() {
        if (socketClient?.isRunning == true) return

        socketClient = LocalSocketClient(messageCallback = { message ->
            handleMessage(message)
        }).apply {
            addConnectionStateListener(object : LocalSocketClient.ConnectionStateListener {
                override fun onConnected() {
                    _engineConnected.value = true
                }

                override fun onDisconnected() {
                    _engineConnected.value = false
                    _scriptState.value = ScriptState.FREE
                }

                override fun onReconnecting(attempt: Int, delayMs: Long) {
                    Log.d(TAG, "Reconnecting attempt $attempt, delay ${delayMs}ms")
                }
            })
            start()
        }
    }

    private fun handleMessage(message: IpcMessage) {
        when (message.cmd) {
            IpcCommand.STATE_CHANGE -> {
                val stateOrdinal = message.intArgs.firstOrNull() ?: return
                val state = ScriptState.entries.getOrNull(stateOrdinal) ?: return
                _scriptState.value = state
            }
        }
    }

    fun startScript(scriptId: Long) {
        viewModelScope.launch {
            val script = scriptDao.getScriptById(scriptId) ?: return@launch
            _currentScript.value = script
            socketClient?.send(IpcMessage.of(IpcCommand.SCRIPT_PATH, script.filePath))
            socketClient?.send(IpcMessage(cmd = IpcCommand.SCRIPT_START))
        }
    }

    fun pauseScript() {
        socketClient?.send(IpcMessage(cmd = IpcCommand.SCRIPT_PAUSE))
    }

    fun stopScript() {
        socketClient?.send(IpcMessage(cmd = IpcCommand.SCRIPT_STOP))
    }

    override fun onCleared() {
        super.onCleared()
        socketClient?.close()
        socketClient = null
    }

    companion object {
        private const val TAG = "MainViewModel"
    }
}
