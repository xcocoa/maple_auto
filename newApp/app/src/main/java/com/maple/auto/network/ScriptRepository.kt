package com.maple.auto.network

import android.net.Uri
import com.maple.auto.common.model.Script
import com.maple.auto.common.model.ScriptState
import com.maple.auto.persistence.FileManager
import com.maple.auto.persistence.ScriptLogEntity
import com.maple.auto.persistence.dao.LogDao
import com.maple.auto.persistence.dao.ScriptDao
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

/**
 * Repository that provides a clean API for script operations,
 * combining local database access with file management.
 */
class ScriptRepository(
    private val scriptDao: ScriptDao,
    private val logDao: LogDao,
    private val fileManager: FileManager
) {

    /**
     * Get all scripts as a Flow, mapped to domain model.
     */
    fun getAllScripts(): Flow<List<Script>> {
        return scriptDao.getAllScripts().map { entities ->
            entities.map { it.toDomain() }
        }
    }

    /**
     * Get a single script by ID.
     */
    suspend fun getScript(id: Long): Script? {
        return scriptDao.getScriptById(id)?.toDomain()
    }

    /**
     * Import a script from a content URI.
     */
    suspend fun importScript(uri: Uri): Script {
        val entity = fileManager.importScript(uri)
        return entity.toDomain()
    }

    /**
     * Delete a script by ID, removing both files and DB entry.
     */
    suspend fun deleteScript(id: Long) {
        val entity = scriptDao.getScriptById(id) ?: return
        fileManager.deleteScript(entity)
    }

    /**
     * Update the state of a script.
     */
    suspend fun updateScriptState(id: Long, state: ScriptState) {
        scriptDao.updateState(id, state.ordinal)
    }

    /**
     * Add a log entry for a script.
     */
    suspend fun addLog(scriptId: Long, level: Int, message: String) {
        logDao.insertLog(
            ScriptLogEntity(
                scriptId = scriptId,
                level = level,
                message = message
            )
        )
    }

    /**
     * Get logs for a specific script.
     */
    fun getLogs(scriptId: Long): Flow<List<ScriptLogEntity>> {
        return logDao.getLogsForScript(scriptId)
    }

    private fun com.maple.auto.persistence.ScriptEntity.toDomain(): Script {
        return Script(
            id = id,
            name = name,
            version = version,
            description = description,
            filePath = filePath,
            configPath = configPath,
            state = ScriptState.entries.getOrElse(state) { ScriptState.FREE }
        )
    }
}
