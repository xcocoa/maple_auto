package com.maple.auto.network.dto

import kotlinx.serialization.Serializable

@Serializable
data class ScriptDto(
    val id: String,
    val name: String,
    val version: String,
    val description: String = "",
    val author: String = "",
    val downloadUrl: String = "",
    val size: Long = 0,
    val createdAt: String = "",
    val updatedAt: String = ""
)
