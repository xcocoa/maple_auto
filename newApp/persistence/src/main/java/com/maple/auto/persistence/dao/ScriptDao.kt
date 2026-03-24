package com.maple.auto.persistence.dao

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.maple.auto.persistence.ScriptEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface ScriptDao {

    @Query("SELECT * FROM scripts ORDER BY updatedAt DESC")
    fun getAllScripts(): Flow<List<ScriptEntity>>

    @Query("SELECT * FROM scripts WHERE id = :id")
    suspend fun getScriptById(id: Long): ScriptEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertScript(script: ScriptEntity): Long

    @Delete
    suspend fun deleteScript(script: ScriptEntity)

    @Query("UPDATE scripts SET state = :state WHERE id = :id")
    suspend fun updateState(id: Long, state: Int)
}
