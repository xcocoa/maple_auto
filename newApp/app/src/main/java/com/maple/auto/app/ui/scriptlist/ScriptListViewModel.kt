package com.maple.auto.app.ui.scriptlist

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.maple.auto.engine.EngineService
import com.maple.auto.persistence.ScriptEntity
import com.maple.auto.persistence.dao.ScriptDao
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ScriptListViewModel @Inject constructor(
    private val scriptDao: ScriptDao
) : ViewModel() {

    val scripts: StateFlow<List<ScriptEntity>> = scriptDao.getAllScripts()
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())

    private val _isRefreshing = MutableStateFlow(false)
    val isRefreshing: StateFlow<Boolean> = _isRefreshing.asStateFlow()

    private val _selectedScript = MutableStateFlow<ScriptEntity?>(null)
    val selectedScript: StateFlow<ScriptEntity?> = _selectedScript.asStateFlow()

    fun selectScript(script: ScriptEntity) {
        _selectedScript.value = script
    }

    fun refresh() {
        viewModelScope.launch {
            _isRefreshing.value = true
            kotlinx.coroutines.delay(500)
            _isRefreshing.value = false
        }
    }

    fun importScript() {
        Log.d(TAG, "Import script requested")
    }

    fun importScript(uri: Uri, name: String, filePath: String) {
        viewModelScope.launch {
            val script = ScriptEntity(
                name = name,
                filePath = filePath,
                description = ""
            )
            scriptDao.insertScript(script)
        }
    }

    fun deleteScript(scriptId: Long) {
        viewModelScope.launch {
            val script = scriptDao.getScriptById(scriptId) ?: return@launch
            scriptDao.deleteScript(script)
        }
    }

    /**
     * Run a script by starting the EngineService directly (bypassing IPC).
     * Requires a Context to start the service.
     */
    fun runScript(context: Context, scriptId: Long) {
        viewModelScope.launch {
            val script = scriptDao.getScriptById(scriptId) ?: return@launch
            Log.i(TAG, "Starting script: ${script.name} at ${script.filePath}")

            // Start the EngineService as foreground service first
            EngineService.start(context)
            // Then send the start-script command
            EngineService.startScript(context, script.filePath)
        }
    }

    fun stopScript(context: Context) {
        EngineService.stopScript(context)
    }

    companion object {
        private const val TAG = "ScriptListVM"
    }
}
