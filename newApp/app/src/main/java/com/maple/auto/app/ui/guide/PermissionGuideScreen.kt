package com.maple.auto.app.ui.guide

import android.provider.Settings
import android.text.TextUtils
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.ArrowForward
import androidx.compose.material.icons.filled.Accessibility
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Keyboard
import androidx.compose.material.icons.filled.Layers
import androidx.compose.material.icons.filled.Screenshot
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.maple.auto.app.ui.theme.MapleAutoTheme
import kotlinx.coroutines.launch

private data class PermissionStep(
    val title: String,
    val description: String,
    val icon: ImageVector,
    val isRequired: Boolean = true
)

private val permissionSteps = listOf(
    PermissionStep(
        title = "悬浮窗权限",
        description = "允许 MapleAuto 显示在其他应用上方。这是脚本运行时显示悬浮控制面板所必需的。",
        icon = Icons.Default.Layers
    ),
    PermissionStep(
        title = "无障碍服务",
        description = "启用 MapleAuto 无障碍服务。这允许自动执行界面操作，如点击、滑动和读取屏幕内容。",
        icon = Icons.Default.Accessibility
    ),
    PermissionStep(
        title = "屏幕录制",
        description = "授予屏幕录制权限。这允许脚本截取屏幕截图，用于图像识别和自动化操作。",
        icon = Icons.Default.Screenshot
    ),
    PermissionStep(
        title = "输入法（可选）",
        description = "设置 MapleAuto 输入法，用于高级文本输入自动化。此步骤为可选。",
        icon = Icons.Default.Keyboard,
        isRequired = false
    )
)

@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun PermissionGuideScreen(
    onRequestOverlayPermission: () -> Unit = {},
    onRequestAccessibilityPermission: () -> Unit = {},
    onRequestMediaProjection: () -> Unit = {},
    onRequestInputMethod: () -> Unit = {},
    onDone: () -> Unit = {}
) {
    val context = LocalContext.current
    val pagerState = rememberPagerState(pageCount = { permissionSteps.size })
    val scope = rememberCoroutineScope()

    // Check accessibility service
    val accessibilityEnabled = try {
        val expectedId = "${context.packageName}/com.maple.auto.accessibility.AutoAccessibilityService"
        val enabledServices = Settings.Secure.getString(
            context.contentResolver,
            Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES
        ) ?: ""
        val splitter = TextUtils.SimpleStringSplitter(':')
        splitter.setString(enabledServices)
        var found = false
        while (splitter.hasNext()) {
            if (splitter.next().equals(expectedId, ignoreCase = true)) {
                found = true
                break
            }
        }
        found
    } catch (e: Exception) { false }

    val permissionGranted = listOf(
        Settings.canDrawOverlays(context),
        accessibilityEnabled,
        false, // MediaProjection - session-based, checked after grant
        false  // Input method - optional
    )

    val allRequiredGranted = permissionGranted[0] && permissionGranted[1]

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("权限引导") },
                navigationIcon = {
                    IconButton(onClick = onDone) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "返回")
                    }
                }
            )
        }
    ) { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            LinearProgressIndicator(
                progress = (pagerState.currentPage + 1).toFloat() / permissionSteps.size,
                modifier = Modifier.fillMaxWidth()
            )

            HorizontalPager(
                state = pagerState,
                modifier = Modifier
                    .weight(1f)
                    .fillMaxWidth()
            ) { page ->
                PermissionStepPage(
                    step = permissionSteps[page],
                    isGranted = permissionGranted[page],
                    onAction = {
                        when (page) {
                            0 -> onRequestOverlayPermission()
                            1 -> onRequestAccessibilityPermission()
                            2 -> onRequestMediaProjection()
                            3 -> onRequestInputMethod()
                        }
                    }
                )
            }

            // Navigation buttons
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                if (pagerState.currentPage > 0) {
                    OutlinedButton(
                        onClick = {
                            scope.launch {
                                pagerState.animateScrollToPage(pagerState.currentPage - 1)
                            }
                        }
                    ) {
                        Text("上一步")
                    }
                } else {
                    Spacer(modifier = Modifier.weight(1f, fill = false))
                }

                if (pagerState.currentPage < permissionSteps.size - 1) {
                    FilledTonalButton(
                        onClick = {
                            scope.launch {
                                pagerState.animateScrollToPage(pagerState.currentPage + 1)
                            }
                        }
                    ) {
                        Text("下一步")
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowForward,
                            contentDescription = null,
                            modifier = Modifier.padding(start = 4.dp)
                        )
                    }
                } else {
                    Button(onClick = onDone) {
                        Text("完成")
                    }
                }
            }
        }
    }
}

@Composable
private fun PermissionStepPage(
    step: PermissionStep,
    isGranted: Boolean,
    onAction: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = step.icon,
            contentDescription = null,
            modifier = Modifier.size(80.dp),
            tint = MaterialTheme.colorScheme.primary
        )

        Spacer(modifier = Modifier.height(24.dp))

        Text(
            text = step.title,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )

        if (!step.isRequired) {
            Text(
                text = "可选",
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.outline,
                modifier = Modifier.padding(top = 4.dp)
            )
        }

        Spacer(modifier = Modifier.height(16.dp))

        Text(
            text = step.description,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )

        Spacer(modifier = Modifier.height(32.dp))

        // Status indicator
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Icon(
                imageVector = if (isGranted) Icons.Default.CheckCircle else Icons.Default.Error,
                contentDescription = null,
                tint = if (isGranted) Color(0xFF4CAF50) else Color(0xFFFFC107)
            )
            Text(
                text = if (isGranted) "已授权" else "未授权",
                color = if (isGranted) Color(0xFF4CAF50) else Color(0xFFFFC107)
            )
        }

        Spacer(modifier = Modifier.height(16.dp))

        if (!isGranted) {
            Button(onClick = onAction) {
                Text(if (step.isRequired) "启用" else "设置")
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun PermissionStepPagePreview() {
    MapleAutoTheme {
        PermissionStepPage(
            step = permissionSteps[0],
            isGranted = false,
            onAction = {}
        )
    }
}
