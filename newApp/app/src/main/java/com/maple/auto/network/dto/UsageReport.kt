package com.maple.auto.network.dto

import kotlinx.serialization.Serializable

@Serializable
data class UsageReport(
    val scriptId: String,
    val scriptVersion: String,
    val deviceModel: String,
    val androidVersion: String,
    val appVersion: String,
    val executionCount: Int = 0,
    val totalRunTimeMs: Long = 0,
    val errorCount: Int = 0,
    val lastRunAt: String = "",
    val metadata: Map<String, String> = emptyMap()
)
