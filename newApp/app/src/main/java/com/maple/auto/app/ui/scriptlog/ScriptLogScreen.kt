package com.maple.auto.app.ui.scriptlog

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.DeleteSweep
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SmallFloatingActionButton
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.maple.auto.persistence.ScriptLogEntity
import com.maple.auto.app.ui.theme.MapleAutoTheme
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

private enum class LogFilter(val label: String) {
    ALL("全部"),
    INFO("信息"),
    WARN("警告"),
    ERROR("错误")
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun ScriptLogScreen(
    viewModel: ScriptLogViewModel = hiltViewModel(),
    onBack: (() -> Unit)? = null
) {
    val logs by viewModel.logs.collectAsState()
    var selectedFilter by remember { mutableStateOf(LogFilter.ALL) }
    val listState = rememberLazyListState()
    val scope = rememberCoroutineScope()
    var autoScroll by remember { mutableStateOf(true) }

    val filteredLogs by remember(logs, selectedFilter) {
        derivedStateOf {
            when (selectedFilter) {
                LogFilter.ALL -> logs
                LogFilter.INFO -> logs.filter { it.level == 1 }
                LogFilter.WARN -> logs.filter { it.level == 2 }
                LogFilter.ERROR -> logs.filter { it.level == 3 }
            }
        }
    }

    LaunchedEffect(filteredLogs.size) {
        if (autoScroll && filteredLogs.isNotEmpty()) {
            listState.animateScrollToItem(filteredLogs.size - 1)
        }
    }

    if (onBack == null) {
        // Embedded mode: render content directly without Scaffold
        ScriptLogContent(
            filteredLogs = filteredLogs,
            selectedFilter = selectedFilter,
            onFilterSelected = { selectedFilter = it },
            listState = listState,
            autoScroll = autoScroll,
            onAutoScrollToggle = { autoScroll = it },
            onClear = { viewModel.clearAll() },
            scope = scope
        )
    } else {
        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text("日志") },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "返回")
                        }
                    },
                    actions = {
                        IconButton(onClick = { viewModel.clearAll() }) {
                            Icon(Icons.Default.DeleteSweep, contentDescription = "清空日志")
                        }
                    }
                )
            },
            floatingActionButton = {
                if (!autoScroll) {
                    SmallFloatingActionButton(
                        onClick = {
                            autoScroll = true
                            scope.launch {
                                if (filteredLogs.isNotEmpty()) {
                                    listState.animateScrollToItem(filteredLogs.size - 1)
                                }
                            }
                        }
                    ) {
                        Icon(Icons.Default.KeyboardArrowDown, contentDescription = "滚动到底部")
                    }
                }
            }
        ) { innerPadding ->
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
            ) {
                ScriptLogContent(
                    filteredLogs = filteredLogs,
                    selectedFilter = selectedFilter,
                    onFilterSelected = { selectedFilter = it },
                    listState = listState,
                    autoScroll = autoScroll,
                    onAutoScrollToggle = { autoScroll = it },
                    onClear = { viewModel.clearAll() },
                    scope = scope
                )
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
private fun ScriptLogContent(
    filteredLogs: List<ScriptLogEntity>,
    selectedFilter: LogFilter,
    onFilterSelected: (LogFilter) -> Unit,
    listState: androidx.compose.foundation.lazy.LazyListState,
    autoScroll: Boolean,
    onAutoScrollToggle: (Boolean) -> Unit,
    onClear: () -> Unit,
    scope: kotlinx.coroutines.CoroutineScope
) {
    Column(modifier = Modifier.fillMaxSize()) {
        FlowRow(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            LogFilter.entries.forEach { filter ->
                FilterChip(
                    selected = selectedFilter == filter,
                    onClick = { onFilterSelected(filter) },
                    label = { Text(filter.label) }
                )
            }
        }

        if (filteredLogs.isEmpty()) {
            Box(
                modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.Center
            ) {
                Text(
                    text = "暂无日志",
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.outline
                )
            }
        } else {
            LazyColumn(
                state = listState,
                modifier = Modifier.fillMaxSize(),
                contentPadding = PaddingValues(horizontal = 16.dp, vertical = 4.dp),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                items(filteredLogs, key = { it.id }) { log ->
                    LogEntry(log = log)
                }
            }
        }
    }
}

@Composable
private fun LogEntry(log: ScriptLogEntity) {
    val levelColor = when (log.level) {
        1 -> Color(0xFF4CAF50)    // INFO
        2 -> Color(0xFFFFC107)    // WARN
        3 -> Color(0xFFF44336)    // ERROR
        else -> MaterialTheme.colorScheme.onSurface // DEBUG
    }

    val timeFormat = remember { SimpleDateFormat("HH:mm:ss.SSS", Locale.getDefault()) }

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 2.dp),
        verticalAlignment = Alignment.Top
    ) {
        Box(
            modifier = Modifier
                .padding(top = 6.dp)
                .size(6.dp)
                .clip(CircleShape)
                .background(levelColor)
        )
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = timeFormat.format(Date(log.timestamp)),
            style = MaterialTheme.typography.labelSmall.copy(fontFamily = FontFamily.Monospace),
            color = MaterialTheme.colorScheme.outline
        )
        Spacer(modifier = Modifier.width(8.dp))
        Text(
            text = log.message,
            style = MaterialTheme.typography.bodySmall.copy(fontFamily = FontFamily.Monospace),
            color = levelColor,
            modifier = Modifier.weight(1f)
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun LogEntryPreview() {
    MapleAutoTheme {
        Column(modifier = Modifier.padding(16.dp)) {
            LogEntry(ScriptLogEntity(id = 1, scriptId = 0, level = 1, message = "Script started successfully"))
            LogEntry(ScriptLogEntity(id = 2, scriptId = 0, level = 2, message = "Element not found, retrying..."))
            LogEntry(ScriptLogEntity(id = 3, scriptId = 0, level = 3, message = "Failed to capture screenshot"))
        }
    }
}
