package com.maple.auto.app.ui.main

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.media.projection.MediaProjectionManager
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.maple.auto.app.ui.editor.ScriptEditorScreen
import com.maple.auto.app.ui.guide.PermissionGuideScreen
import com.maple.auto.app.ui.scriptlog.ScriptLogScreen
import com.maple.auto.app.ui.scriptlist.ScriptListScreen
import com.maple.auto.app.ui.settings.SettingsScreen
import com.maple.auto.app.ui.theme.MapleAutoTheme
import com.maple.auto.persistence.ScriptEntity
import com.maple.auto.persistence.dao.ScriptDao
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import java.io.File
import javax.inject.Inject

@AndroidEntryPoint
class MainActivity : ComponentActivity() {

    @Inject
    lateinit var scriptDao: ScriptDao

    private var overlayPermissionGranted by mutableStateOf(false)
    private var mediaProjectionGranted by mutableStateOf(false)

    private val overlayPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) {
        overlayPermissionGranted = Settings.canDrawOverlays(this)
    }

    private val mediaProjectionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { result ->
        mediaProjectionGranted = result.resultCode == Activity.RESULT_OK
    }

    private val importScriptLauncher = registerForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        uri?.let { handleImportScript(it) }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        overlayPermissionGranted = Settings.canDrawOverlays(this)

        setContent {
            MapleAutoTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    val navController = rememberNavController()

                    NavHost(
                        navController = navController,
                        startDestination = "home"
                    ) {
                        composable("home") {
                            val viewModel: MainViewModel = hiltViewModel()
                            MainScreen(
                                viewModel = viewModel,
                                navController = navController,
                                onImportScript = { importScriptLauncher.launch("*/*") },
                                onRequestOverlayPermission = { requestOverlayPermission() },
                                onRequestAccessibilityPermission = { openAccessibilitySettings() },
                                onRequestMediaProjection = { requestMediaProjection() },
                                onRequestInputMethod = { openInputMethodSettings() }
                            )
                        }
                        composable("scripts") {
                            ScriptListScreen(
                                onNavigateToEditor = { path ->
                                    navController.navigate("editor/${Uri.encode(path)}")
                                },
                                onBack = { navController.popBackStack() }
                            )
                        }
                        composable("logs") {
                            ScriptLogScreen(
                                onBack = { navController.popBackStack() }
                            )
                        }
                        composable("settings") {
                            SettingsScreen(
                                onBack = { navController.popBackStack() },
                                onRequestOverlayPermission = { requestOverlayPermission() },
                                onRequestAccessibilityPermission = { openAccessibilitySettings() },
                                onRequestMediaProjection = { requestMediaProjection() },
                                onRequestInputMethod = { openInputMethodSettings() }
                            )
                        }
                        composable(
                            "editor/{path}",
                            arguments = listOf(navArgument("path") { type = NavType.StringType })
                        ) { backStackEntry ->
                            val path = backStackEntry.arguments?.getString("path") ?: ""
                            ScriptEditorScreen(
                                filePath = Uri.decode(path),
                                onBack = { navController.popBackStack() }
                            )
                        }
                        composable("guide") {
                            PermissionGuideScreen(
                                onRequestOverlayPermission = { requestOverlayPermission() },
                                onRequestAccessibilityPermission = { openAccessibilitySettings() },
                                onRequestMediaProjection = { requestMediaProjection() },
                                onRequestInputMethod = { openInputMethodSettings() },
                                onDone = { navController.popBackStack() }
                            )
                        }
                    }
                }
            }
        }
    }

    private fun handleImportScript(uri: Uri) {
        val contentResolver = contentResolver
        val scriptsDir = File(filesDir, "scripts")
        if (!scriptsDir.exists()) {
            scriptsDir.mkdirs()
        }

        val fileName = getFileNameFromUri(uri) ?: "script_${System.currentTimeMillis()}.py"
        val destFile = File(scriptsDir, fileName)

        try {
            contentResolver.openInputStream(uri)?.use { input ->
                destFile.outputStream().use { output ->
                    input.copyTo(output)
                }
            }

            val scriptName = fileName.substringBeforeLast(".")

            CoroutineScope(Dispatchers.IO).launch {
                scriptDao.insertScript(
                    ScriptEntity(
                        name = scriptName,
                        filePath = destFile.absolutePath,
                        description = ""
                    )
                )
            }
            Log.d(TAG, "Script imported: $fileName -> ${destFile.absolutePath}")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to import script", e)
        }
    }

    private fun getFileNameFromUri(uri: Uri): String? {
        var name: String? = null
        contentResolver.query(uri, null, null, null, null)?.use { cursor ->
            val nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
            if (nameIndex >= 0 && cursor.moveToFirst()) {
                name = cursor.getString(nameIndex)
            }
        }
        return name
    }

    private fun requestOverlayPermission() {
        val intent = Intent(
            Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
            Uri.parse("package:$packageName")
        )
        overlayPermissionLauncher.launch(intent)
    }

    private fun requestMediaProjection() {
        val manager = getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
        mediaProjectionLauncher.launch(manager.createScreenCaptureIntent())
    }

    private fun openAccessibilitySettings() {
        startActivity(Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS))
    }

    private fun openInputMethodSettings() {
        startActivity(Intent(Settings.ACTION_INPUT_METHOD_SETTINGS))
    }

    companion object {
        private const val TAG = "MainActivity"
    }
}
