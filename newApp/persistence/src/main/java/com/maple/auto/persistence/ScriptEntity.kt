package com.maple.auto.persistence

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "scripts")
data class ScriptEntity(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0,
    val name: String,
    val version: String = "1.0",
    val description: String = "",
    val filePath: String,
    val configPath: String? = null,
    val state: Int = 0, // ScriptState ordinal
    val createdAt: Long = System.currentTimeMillis(),
    val updatedAt: Long = System.currentTimeMillis()
)
