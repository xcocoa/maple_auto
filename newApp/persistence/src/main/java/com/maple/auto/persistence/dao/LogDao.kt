package com.maple.auto.persistence.dao

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query
import com.maple.auto.persistence.ScriptLogEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface LogDao {

    @Query("SELECT * FROM script_logs WHERE scriptId = :scriptId ORDER BY timestamp DESC")
    fun getLogsForScript(scriptId: Long): Flow<List<ScriptLogEntity>>

    @Query("SELECT * FROM script_logs ORDER BY timestamp DESC LIMIT :limit")
    fun getRecentLogs(limit: Int = 200): Flow<List<ScriptLogEntity>>

    @Insert
    suspend fun insertLog(log: ScriptLogEntity)

    @Query("DELETE FROM script_logs WHERE scriptId = :scriptId")
    suspend fun clearLogsForScript(scriptId: Long)

    @Query("DELETE FROM script_logs")
    suspend fun clearAllLogs()
}
