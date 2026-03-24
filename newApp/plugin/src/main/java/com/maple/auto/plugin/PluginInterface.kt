package com.maple.auto.plugin

import android.content.Context

/**
 * Plugin API contract that all plugins must implement.
 */
interface PluginInterface {

    /** Called when the plugin is loaded. Use for initialization. */
    fun onCreate(context: Context)

    /** Called when the plugin is unloaded. Release resources here. */
    fun onDestroy()

    /** Execute plugin logic with the given parameters. */
    fun execute(params: Map<String, Any>): Any?

    /** Return the unique name of this plugin. */
    fun getName(): String

    /** Return the version string of this plugin. */
    fun getVersion(): String
}
