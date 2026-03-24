package com.maple.auto.app.ui.scriptlog

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.maple.auto.persistence.ScriptLogEntity
import com.maple.auto.persistence.dao.LogDao
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class ScriptLogViewModel @Inject constructor(
    private val logDao: LogDao
) : ViewModel() {

    val logs: StateFlow<List<ScriptLogEntity>> = logDao.getRecentLogs()
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())

    fun clearAll() {
        viewModelScope.launch {
            logDao.clearAllLogs()
        }
    }
}
