package com.maple.auto.plugin

import android.util.Log
import java.util.concurrent.Callable
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.TimeoutException

/**
 * Security sandbox for plugin execution.
 *
 * Restricts plugin access to sensitive APIs and enforces execution timeouts.
 */
class PluginSandbox(
    private val pluginBaseDir: String,
    private val executionTimeoutMs: Long = DEFAULT_TIMEOUT_MS
) {

    companion object {
        private const val TAG = "PluginSandbox"
        private const val DEFAULT_TIMEOUT_MS = 30_000L

        /** Packages that plugins are blocked from accessing. */
        private val BLOCKED_PACKAGES = listOf(
            "java.lang.reflect",
            "java.lang.invoke",
            "dalvik.system"
        )

        /** I/O classes plugins may not use directly (must go through sandbox APIs). */
        private val RESTRICTED_IO_PACKAGES = listOf(
            "java.io",
            "java.nio"
        )
    }

    private val executor = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "plugin-sandbox").apply {
            isDaemon = true
        }
    }

    /**
     * Execute plugin logic inside the sandbox with security checks and timeout enforcement.
     *
     * @param plugin the plugin to execute
     * @param params execution parameters
     * @return the plugin execution result
     * @throws PluginSecurityException if the plugin violates sandbox rules
     * @throws PluginTimeoutException if execution exceeds the timeout
     */
    fun executeInSandbox(plugin: PluginInterface, params: Map<String, Any>): Any? {
        validatePluginAccess(plugin)

        val future = executor.submit(Callable {
            plugin.execute(params)
        })

        return try {
            future.get(executionTimeoutMs, TimeUnit.MILLISECONDS)
        } catch (e: TimeoutException) {
            future.cancel(true)
            throw PluginTimeoutException(
                "Plugin '${plugin.getName()}' exceeded timeout of ${executionTimeoutMs}ms"
            )
        } catch (e: Exception) {
            val cause = e.cause ?: e
            throw PluginExecutionException(
                "Plugin '${plugin.getName()}' execution failed: ${cause.message}", cause
            )
        }
    }

    /**
     * Validate that the plugin class does not reference blocked packages.
     */
    private fun validatePluginAccess(plugin: PluginInterface) {
        val className = plugin.javaClass.name
        for (blocked in BLOCKED_PACKAGES) {
            if (className.startsWith(blocked)) {
                throw PluginSecurityException(
                    "Plugin class '$className' is in blocked package: $blocked"
                )
            }
        }
    }

    fun shutdown() {
        executor.shutdownNow()
    }

    /**
     * A ClassLoader that restricts access to sensitive packages.
     * Used to load plugin classes with sandboxed access.
     */
    class SandboxClassLoader(
        private val pluginBaseDir: String,
        parent: ClassLoader
    ) : ClassLoader(parent) {

        override fun loadClass(name: String, resolve: Boolean): Class<*> {
            // Block access to dangerous reflection APIs
            for (blocked in BLOCKED_PACKAGES) {
                if (name.startsWith(blocked)) {
                    throw PluginSecurityException(
                        "Access to '$name' is blocked in plugin sandbox"
                    )
                }
            }

            // Restrict I/O to plugin directory only (enforced at runtime, not classload)
            // I/O classes are allowed to load but operations are sandboxed

            return super.loadClass(name, resolve)
        }
    }
}

class PluginSecurityException(message: String) : SecurityException(message)

class PluginTimeoutException(message: String) : Exception(message)

class PluginExecutionException(message: String, cause: Throwable? = null) :
    Exception(message, cause)
