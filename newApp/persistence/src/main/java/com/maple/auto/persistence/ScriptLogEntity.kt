package com.maple.auto.persistence

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "script_logs")
data class ScriptLogEntity(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0,
    val scriptId: Long,
    val level: Int, // 0=DEBUG, 1=INFO, 2=WARN, 3=ERROR
    val message: String,
    val timestamp: Long = System.currentTimeMillis()
)
