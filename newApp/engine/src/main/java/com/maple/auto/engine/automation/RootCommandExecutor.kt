package com.maple.auto.engine.automation

import android.util.Log
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * Executes shell commands, optionally with root (su) privileges.
 *
 * Used by scripts to interact with system-level features that require
 * shell access (e.g., changing settings, manipulating files, querying
 * system state).
 */
class RootCommandExecutor {

    companion object {
        private const val TAG = "RootCommandExecutor"
        private const val DEFAULT_TIMEOUT_MS = 30_000L
    }

    /**
     * Result of a shell command execution.
     *
     * @property exitCode The process exit code (0 = success).
     * @property stdout Standard output content.
     * @property stderr Standard error content.
     */
    data class CommandResult(
        val exitCode: Int,
        val stdout: String,
        val stderr: String
    ) {
        val isSuccess: Boolean get() = exitCode == 0
    }

    /**
     * Executes a shell command without root privileges.
     *
     * @param command The command string to execute.
     * @param timeoutMs Maximum execution time in milliseconds.
     * @return The [CommandResult] with output and exit code.
     */
    fun execute(command: String, timeoutMs: Long = DEFAULT_TIMEOUT_MS): CommandResult {
        return executeInternal(arrayOf("sh", "-c", command), timeoutMs)
    }

    /**
     * Executes a shell command with root (su) privileges.
     *
     * Requires that the device is rooted and `su` is available.
     *
     * @param command The command string to execute as root.
     * @param timeoutMs Maximum execution time in milliseconds.
     * @return The [CommandResult] with output and exit code.
     */
    fun executeAsRoot(command: String, timeoutMs: Long = DEFAULT_TIMEOUT_MS): CommandResult {
        return executeInternal(arrayOf("su", "-c", command), timeoutMs)
    }

    /**
     * Checks whether root access is available on this device.
     *
     * @return `true` if `su` is accessible and responsive.
     */
    fun isRootAvailable(): Boolean {
        return try {
            val result = executeInternal(arrayOf("su", "-c", "id"), 5000L)
            result.isSuccess && result.stdout.contains("uid=0")
        } catch (e: Exception) {
            Log.d(TAG, "Root check failed", e)
            false
        }
    }

    /**
     * Executes multiple commands sequentially.
     *
     * @param commands List of command strings.
     * @param asRoot Whether to execute with root privileges.
     * @param stopOnError If `true`, stops execution on the first non-zero exit code.
     * @return List of [CommandResult]s, one per command executed.
     */
    fun executeBatch(
        commands: List<String>,
        asRoot: Boolean = false,
        stopOnError: Boolean = false
    ): List<CommandResult> {
        val results = mutableListOf<CommandResult>()
        for (cmd in commands) {
            val result = if (asRoot) executeAsRoot(cmd) else execute(cmd)
            results.add(result)
            if (stopOnError && !result.isSuccess) {
                Log.w(TAG, "Batch execution stopped on error: cmd='$cmd', exitCode=${result.exitCode}")
                break
            }
        }
        return results
    }

    private fun executeInternal(command: Array<String>, timeoutMs: Long): CommandResult {
        var process: Process? = null
        return try {
            Log.d(TAG, "Executing: ${command.joinToString(" ")}")

            process = Runtime.getRuntime().exec(command)

            val stdoutReader = BufferedReader(InputStreamReader(process.inputStream))
            val stderrReader = BufferedReader(InputStreamReader(process.errorStream))

            // Read output in separate threads to avoid deadlock
            val stdoutBuilder = StringBuilder()
            val stderrBuilder = StringBuilder()

            val stdoutThread = Thread {
                try {
                    stdoutReader.forEachLine { stdoutBuilder.appendLine(it) }
                } catch (e: Exception) {
                    Log.e(TAG, "Error reading stdout", e)
                }
            }

            val stderrThread = Thread {
                try {
                    stderrReader.forEachLine { stderrBuilder.appendLine(it) }
                } catch (e: Exception) {
                    Log.e(TAG, "Error reading stderr", e)
                }
            }

            stdoutThread.start()
            stderrThread.start()

            val completed = process.waitFor(timeoutMs, java.util.concurrent.TimeUnit.MILLISECONDS)

            if (!completed) {
                process.destroyForcibly()
                Log.w(TAG, "Command timed out after ${timeoutMs}ms")
                return CommandResult(
                    exitCode = -1,
                    stdout = stdoutBuilder.toString().trim(),
                    stderr = "Command timed out after ${timeoutMs}ms"
                )
            }

            stdoutThread.join(1000)
            stderrThread.join(1000)

            val result = CommandResult(
                exitCode = process.exitValue(),
                stdout = stdoutBuilder.toString().trim(),
                stderr = stderrBuilder.toString().trim()
            )

            Log.d(TAG, "Command completed: exitCode=${result.exitCode}, stdout=${result.stdout.take(200)}")
            result
        } catch (e: Exception) {
            Log.e(TAG, "Command execution failed", e)
            CommandResult(
                exitCode = -1,
                stdout = "",
                stderr = e.message ?: "Unknown error"
            )
        } finally {
            process?.destroy()
        }
    }
}
