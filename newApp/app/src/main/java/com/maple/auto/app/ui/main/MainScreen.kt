package com.maple.auto.app.ui.main

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Code
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.ViewList
import androidx.compose.material.icons.outlined.Code
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.ViewList
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExtendedFloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.navigation.NavHostController
import com.maple.auto.app.ui.scriptlist.ScriptListScreen
import com.maple.auto.app.ui.scriptlog.ScriptLogScreen
import com.maple.auto.app.ui.settings.SettingsScreen
import com.maple.auto.app.ui.theme.MapleAutoTheme

private data class BottomNavItem(
    val label: String,
    val selectedIcon: ImageVector,
    val unselectedIcon: ImageVector,
    val route: String
)

private val bottomNavItems = listOf(
    BottomNavItem("脚本", Icons.Filled.Code, Icons.Outlined.Code, "scripts"),
    BottomNavItem("日志", Icons.Filled.ViewList, Icons.Outlined.ViewList, "logs"),
    BottomNavItem("设置", Icons.Filled.Settings, Icons.Outlined.Settings, "settings")
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(
    viewModel: MainViewModel,
    navController: NavHostController,
    onImportScript: () -> Unit = {},
    onRequestOverlayPermission: () -> Unit = {},
    onRequestAccessibilityPermission: () -> Unit = {},
    onRequestMediaProjection: () -> Unit = {},
    onRequestInputMethod: () -> Unit = {}
) {
    val engineConnected by viewModel.engineConnected.collectAsState()
    var selectedTab by remember { mutableIntStateOf(0) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text("MapleAuto")
                        ConnectionIndicator(connected = engineConnected)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer,
                    titleContentColor = MaterialTheme.colorScheme.onPrimaryContainer
                )
            )
        },
        bottomBar = {
            NavigationBar {
                bottomNavItems.forEachIndexed { index, item ->
                    NavigationBarItem(
                        selected = selectedTab == index,
                        onClick = { selectedTab = index },
                        icon = {
                            Icon(
                                imageVector = if (selectedTab == index) item.selectedIcon else item.unselectedIcon,
                                contentDescription = item.label
                            )
                        },
                        label = { Text(item.label) }
                    )
                }
            }
        },
        floatingActionButton = {
            if (selectedTab == 0) {
                ExtendedFloatingActionButton(
                    onClick = onImportScript,
                    icon = { Icon(Icons.Default.Add, contentDescription = "导入") },
                    text = { Text("导入脚本") }
                )
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            when (selectedTab) {
                0 -> ScriptListScreen(
                    onNavigateToEditor = { path ->
                        navController.navigate("editor/${android.net.Uri.encode(path)}")
                    },
                    onBack = null
                )
                1 -> ScriptLogScreen(onBack = null)
                2 -> SettingsScreen(
                    onBack = null,
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
private fun ConnectionIndicator(connected: Boolean) {
    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Box(
            modifier = Modifier
                .size(8.dp)
                .clip(CircleShape)
                .background(if (connected) Color(0xFF4CAF50) else Color(0xFFFF5252))
        )
        Text(
            text = if (connected) "已连接" else "未连接",
            style = MaterialTheme.typography.labelSmall,
            color = if (connected) Color(0xFF4CAF50) else Color(0xFFFF5252)
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun ConnectionIndicatorPreview() {
    MapleAutoTheme {
        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
            ConnectionIndicator(connected = true)
            ConnectionIndicator(connected = false)
        }
    }
}
