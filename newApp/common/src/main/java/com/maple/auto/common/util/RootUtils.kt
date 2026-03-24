package com.maple.auto.common.util

import java.io.BufferedReader
import java.io.DataOutputStream
import java.io.File
import java.io.InputStreamReader

object RootUtils {

    private val SU_PATHS = arrayOf(
        "/system/bin/su",
        "/system/xbin/su",
        "/sbin/su",
        "/su/bin/su",
        "/data/local/xbin/su",
        "/data/local/bin/su"
    )

    /**
     * Check if the device has root access by looking for su binary.
     */
    fun hasRoot(): Boolean {
        for (path in SU_PATHS) {
            if (File(path).exists()) {
                return true
            }
        }
        // Also try executing su to confirm
        return try {
            val result = execShell("which su")
            result.exitCode == 0 && result.stdout.isNotBlank()
        } catch (e: Exception) {
            false
        }
    }

    /**
     * Execute a command as root via su.
     */
    fun execRoot(command: String): CommandResult {
        return try {
            val process = Runtime.getRuntime().exec("su")
            DataOutputStream(process.outputStream).use { os ->
                os.writeBytes("$command\n")
                os.writeBytes("exit\n")
                os.flush()
            }

            val stdout = BufferedReader(InputStreamReader(process.inputStream)).readText()
            val stderr = BufferedReader(InputStreamReader(process.errorStream)).readText()
            val exitCode = process.waitFor()

            CommandResult(exitCode, stdout.trim(), stderr.trim())
        } catch (e: Exception) {
            CommandResult(-1, "", e.message ?: "Unknown error")
        }
    }

    /**
     * Execute a shell command (non-root).
     */
    fun execShell(command: String): CommandResult {
        return try {
            val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", command))

            val stdout = BufferedReader(InputStreamReader(process.inputStream)).readText()
            val stderr = BufferedReader(InputStreamReader(process.errorStream)).readText()
            val exitCode = process.waitFor()

            CommandResult(exitCode, stdout.trim(), stderr.trim())
        } catch (e: Exception) {
            CommandResult(-1, "", e.message ?: "Unknown error")
        }
    }

    data class CommandResult(
        val exitCode: Int,
        val stdout: String,
        val stderr: String
    ) {
        val isSuccess: Boolean get() = exitCode == 0
    }
}
