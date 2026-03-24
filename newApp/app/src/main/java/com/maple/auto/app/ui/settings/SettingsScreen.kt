package com.maple.auto.app.ui.settings

import android.provider.Settings
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Error
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Divider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.repeatOnLifecycle
import com.maple.auto.app.ui.theme.MapleAutoTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    viewModel: SettingsViewModel = hiltViewModel(),
    onBack: (() -> Unit)? = null,
    onRequestOverlayPermission: () -> Unit = {},
    onRequestAccessibilityPermission: () -> Unit = {},
    onRequestMediaProjection: () -> Unit = {},
    onRequestInputMethod: () -> Unit = {}
) {
    val context = LocalContext.current
    val lifecycleOwner = LocalLifecycleOwner.current
    val autoStart by viewModel.autoStartEngine.collectAsState()
    val keepAlive by viewModel.keepAlive.collectAsState()
    val defaultTimeout by viewModel.defaultTimeout.collectAsState()

    // Permission states from ViewModel
    val hasOverlay by viewModel.overlayGranted.collectAsState()
    val hasAccessibility by viewModel.accessibilityGranted.collectAsState()
    val hasMediaProjection by viewModel.mediaProjectionGranted.collectAsState()
    val hasInputMethod by viewModel.inputMethodGranted.collectAsState()

    // Refresh permissions on every resume (returning from system Settings)
    LaunchedEffect(lifecycleOwner) {
        lifecycleOwner.lifecycle.repeatOnLifecycle(Lifecycle.State.RESUMED) {
            viewModel.refreshPermissions(context)
        }
    }

    if (onBack == null) {
        SettingsContent(
            hasOverlay = hasOverlay,
            hasAccessibility = hasAccessibility,
            hasMediaProjection = hasMediaProjection,
            hasInputMethod = hasInputMethod,
            autoStart = autoStart,
            keepAlive = keepAlive,
            defaultTimeout = defaultTimeout,
            viewModel = viewModel,
            onRequestOverlayPermission = onRequestOverlayPermission,
            onRequestAccessibilityPermission = onRequestAccessibilityPermission,
            onRequestMediaProjection = onRequestMediaProjection,
            onRequestInputMethod = onRequestInputMethod
        )
    } else {
        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text("\u8bbe\u7f6e") },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "\u8fd4\u56de")
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
                SettingsContent(
                    hasOverlay = hasOverlay,
                    hasAccessibility = hasAccessibility,
                    hasMediaProjection = hasMediaProjection,
                    hasInputMethod = hasInputMethod,
                    autoStart = autoStart,
                    keepAlive = keepAlive,
                    defaultTimeout = defaultTimeout,
                    viewModel = viewModel,
                    onRequestOverlayPermission = onRequestOverlayPermission,
                    onRequestAccessibilityPermission = onRequestAccessibilityPermission,
                    onRequestMediaProjection = onRequestMediaProjection,
                    onRequestInputMethod = onRequestInputMethod
                )
            }
        }
    }
}

@Composable
private fun SettingsContent(
    hasOverlay: Boolean,
    hasAccessibility: Boolean,
    hasMediaProjection: Boolean,
    hasInputMethod: Boolean,
    autoStart: Boolean,
    keepAlive: Boolean,
    defaultTimeout: String,
    viewModel: SettingsViewModel,
    onRequestOverlayPermission: () -> Unit,
    onRequestAccessibilityPermission: () -> Unit,
    onRequestMediaProjection: () -> Unit,
    onRequestInputMethod: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState())
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Permission Status Section
        SectionHeader("\u6743\u9650")

        Card(modifier = Modifier.fillMaxWidth()) {
            Column(modifier = Modifier.padding(16.dp)) {
                PermissionRow(
                    name = "\u60ac\u6d6e\u7a97\u6743\u9650",
                    granted = hasOverlay,
                    onEnable = onRequestOverlayPermission
                )
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                PermissionRow(
                    name = "\u65e0\u969c\u788d\u670d\u52a1",
                    granted = hasAccessibility,
                    onEnable = onRequestAccessibilityPermission
                )
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                PermissionRow(
                    name = "\u5c4f\u5e55\u5f55\u5236",
                    granted = hasMediaProjection,
                    onEnable = onRequestMediaProjection
                )
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                PermissionRow(
                    name = "\u8f93\u5165\u6cd5",
                    granted = hasInputMethod,
                    onEnable = onRequestInputMethod
                )
            }
        }

        // Engine Settings Section
        SectionHeader("\u5f15\u64ce\u8bbe\u7f6e")

        Card(modifier = Modifier.fillMaxWidth()) {
            Column(modifier = Modifier.padding(16.dp)) {
                SettingSwitch(
                    title = "\u5f00\u673a\u81ea\u52a8\u542f\u52a8\u5f15\u64ce",
                    checked = autoStart,
                    onCheckedChange = { viewModel.setAutoStartEngine(it) }
                )
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                SettingSwitch(
                    title = "\u4fdd\u6d3b",
                    checked = keepAlive,
                    onCheckedChange = { viewModel.setKeepAlive(it) }
                )
                Divider(modifier = Modifier.padding(vertical = 8.dp))
                OutlinedTextField(
                    value = defaultTimeout,
                    onValueChange = { viewModel.setDefaultTimeout(it) },
                    label = { Text("\u9ed8\u8ba4\u811a\u672c\u8d85\u65f6\u65f6\u95f4\uff08\u79d2\uff09") },
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true
                )
            }
        }

        // About Section
        SectionHeader("\u5173\u4e8e")

        Card(modifier = Modifier.fillMaxWidth()) {
            Column(modifier = Modifier.padding(16.dp)) {
                Text(
                    text = "MapleAuto",
                    style = MaterialTheme.typography.titleMedium
                )
                Text(
                    text = "\u7248\u672c 1.0.0",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.outline
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "Android \u81ea\u52a8\u5316\u6846\u67b6\uff0c\u57fa\u4e8e Python \u811a\u672c\u9a71\u52a8\u3002",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun SectionHeader(title: String) {
    Text(
        text = title,
        style = MaterialTheme.typography.titleSmall,
        color = MaterialTheme.colorScheme.primary
    )
}

@Composable
private fun PermissionRow(
    name: String,
    granted: Boolean,
    onEnable: () -> Unit
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = if (granted) Icons.Default.CheckCircle else Icons.Default.Error,
            contentDescription = null,
            tint = if (granted) Color(0xFF4CAF50) else Color(0xFFFFC107)
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = name,
            style = MaterialTheme.typography.bodyMedium,
            modifier = Modifier.weight(1f)
        )
        if (!granted) {
            Button(onClick = onEnable) {
                Text("\u542f\u7528")
            }
        }
    }
}

@Composable
private fun SettingSwitch(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = title,
            style = MaterialTheme.typography.bodyMedium,
            modifier = Modifier.weight(1f)
        )
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun SettingsScreenPreview() {
    MapleAutoTheme {
        Column(modifier = Modifier.padding(16.dp)) {
            PermissionRow(name = "\u60ac\u6d6e\u7a97", granted = true, onEnable = {})
            PermissionRow(name = "\u65e0\u969c\u788d", granted = false, onEnable = {})
            SettingSwitch(title = "\u81ea\u52a8\u542f\u52a8", checked = true, onCheckedChange = {})
        }
    }
}
