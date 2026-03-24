package com.maple.auto.persistence

import android.content.Context
import android.net.Uri
import android.util.Log
import com.maple.auto.persistence.dao.ScriptDao
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipInputStream

/**
 * Manages script files on disk, supporting both single .py files and .zip packages.
 *
 * For .zip packages, extracts to scripts/[name]/ directory and reads manifest.json.
 */
class FileManager(private val context: Context, private val scriptDao: ScriptDao) {

    companion object {
        private const val TAG = "FileManager"
        private const val SCRIPTS_DIR = "scripts"
        private const val MANIFEST_FILE = "manifest.json"
    }

    val scriptsDir: File by lazy {
        File(context.filesDir, SCRIPTS_DIR).also { it.mkdirs() }
    }

    /**
     * Import a script from a content URI.
     * Supports .py single files and .zip script packages.
     */
    suspend fun importScript(sourceUri: Uri): ScriptEntity {
        val contentResolver = context.contentResolver
        val fileName = getFileName(sourceUri)

        return if (fileName.endsWith(".zip")) {
            importZipPackage(sourceUri, fileName)
        } else {
            importSingleFile(sourceUri, fileName)
        }
    }

    private suspend fun importSingleFile(sourceUri: Uri, fileName: String): ScriptEntity {
        val destFile = File(scriptsDir, fileName)
        context.contentResolver.openInputStream(sourceUri)?.use { input ->
            FileOutputStream(destFile).use { output ->
                input.copyTo(output)
            }
        } ?: throw IllegalStateException("Cannot open input stream for $sourceUri")

        val name = fileName.substringBeforeLast(".")
        val entity = ScriptEntity(
            name = name,
            filePath = destFile.absolutePath
        )
        val id = scriptDao.insertScript(entity)
        return entity.copy(id = id)
    }

    private suspend fun importZipPackage(sourceUri: Uri, fileName: String): ScriptEntity {
        val packageName = fileName.substringBeforeLast(".")
        val packageDir = File(scriptsDir, packageName).also { it.mkdirs() }

        // Extract zip contents
        context.contentResolver.openInputStream(sourceUri)?.use { input ->
            ZipInputStream(input).use { zis ->
                var entry = zis.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        val outFile = File(packageDir, entry.name)
                        outFile.parentFile?.mkdirs()
                        FileOutputStream(outFile).use { output ->
                            zis.copyTo(output)
                        }
                    }
                    zis.closeEntry()
                    entry = zis.nextEntry
                }
            }
        } ?: throw IllegalStateException("Cannot open input stream for $sourceUri")

        // Read manifest
        val manifestFile = File(packageDir, MANIFEST_FILE)
        val (name, version, description, mainFile, configFile) = if (manifestFile.exists()) {
            parseManifest(manifestFile)
        } else {
            ManifestInfo(packageName, "1.0", "", packageName, null)
        }

        val scriptFile = File(packageDir, mainFile)
        val configPath = configFile?.let { File(packageDir, it).absolutePath }

        val entity = ScriptEntity(
            name = name,
            version = version,
            description = description,
            filePath = scriptFile.absolutePath,
            configPath = configPath
        )
        val id = scriptDao.insertScript(entity)
        return entity.copy(id = id)
    }

    /**
     * Delete a script's files and database entry.
     */
    suspend fun deleteScript(script: ScriptEntity) {
        val file = File(script.filePath)
        val parent = file.parentFile

        // If file is inside a package directory (scripts/[name]/), delete the whole directory
        if (parent != null && parent.parentFile == scriptsDir && parent != scriptsDir) {
            parent.deleteRecursively()
        } else {
            file.delete()
        }

        // Also delete config file if exists
        script.configPath?.let { File(it).delete() }

        scriptDao.deleteScript(script)
    }

    /**
     * Get the script file for a given ScriptEntity.
     */
    fun getScriptFile(script: ScriptEntity): File {
        return File(script.filePath)
    }

    /**
     * Export a script to the given destination URI.
     */
    fun exportScript(script: ScriptEntity, destUri: Uri) {
        val sourceFile = File(script.filePath)
        if (!sourceFile.exists()) {
            throw IllegalStateException("Script file not found: ${script.filePath}")
        }

        context.contentResolver.openOutputStream(destUri)?.use { output ->
            sourceFile.inputStream().use { input ->
                input.copyTo(output)
            }
        } ?: throw IllegalStateException("Cannot open output stream for $destUri")
    }

    private fun getFileName(uri: Uri): String {
        // Try to get display name from content resolver
        context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
            val nameIndex = cursor.getColumnIndex("_display_name")
            if (nameIndex >= 0 && cursor.moveToFirst()) {
                val name = cursor.getString(nameIndex)
                if (!name.isNullOrBlank()) return name
            }
        }
        // Fallback: use last path segment
        return uri.lastPathSegment ?: "script_${System.currentTimeMillis()}.py"
    }

    private data class ManifestInfo(
        val name: String,
        val version: String,
        val description: String,
        val mainFile: String,
        val configFile: String?
    )

    private fun parseManifest(file: File): ManifestInfo {
        val json = JSONObject(file.readText())
        return ManifestInfo(
            name = json.optString("name", file.parentFile?.name ?: "unknown"),
            version = json.optString("version", "1.0"),
            description = json.optString("description", ""),
            mainFile = json.optString("main", "main.py"),
            configFile = json.optString("config", null)
        )
    }
}
