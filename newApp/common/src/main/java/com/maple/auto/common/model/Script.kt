package com.maple.auto.common.model

data class Script(
    val id: Long = 0,
    val name: String,
    val version: String = "1.0",
    val description: String = "",
    val filePath: String,
    val configPath: String? = null,
    val state: ScriptState = ScriptState.FREE
)

enum class ScriptState {
    FREE,
    LOAD,
    RUNNING,
    PAUSE,
    ERROR
}
