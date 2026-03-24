package com.maple.auto.common.model

import kotlinx.serialization.Serializable

@Serializable
data class ScriptConfig(
    val title: String = "",
    val tabs: List<ConfigTab> = emptyList()
)

@Serializable
data class ConfigTab(
    val name: String,
    val items: List<ConfigItem>
)

@Serializable
data class ConfigItem(
    val type: String, // checkbox, edittext, spinner, slider, switch, label
    val key: String,
    val label: String,
    val default: String? = null,
    val options: List<String>? = null,
    val min: Int? = null,
    val max: Int? = null,
    val inputType: String? = null
)
