package com.maple.auto.app.ui.scriptlist

import androidx.compose.ui.platform.LocalContext
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Code
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.maple.auto.persistence.ScriptEntity
import com.maple.auto.app.ui.theme.MapleAutoTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ScriptListScreen(
    viewModel: ScriptListViewModel = hiltViewModel(),
    onNavigateToEditor: (String) -> Unit = {},
    onBack: (() -> Unit)? = null
) {
    val scripts by viewModel.scripts.collectAsState()
    val isRefreshing by viewModel.isRefreshing.collectAsState()
    val context = LocalContext.current

    if (onBack == null) {
        // Embedded mode: render content directly without Scaffold
        ScriptListContent(
            scripts = scripts,
            onSelect = { viewModel.selectScript(it) },
            onRun = { viewModel.runScript(context, it) },
            onEdit = { onNavigateToEditor(it) },
            onDelete = { viewModel.deleteScript(it) }
        )
    } else {
        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text("脚本") },
                    navigationIcon = {
                        IconButton(onClick = onBack) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "返回")
                        }
                    }
                )
            },
            floatingActionButton = {
                FloatingActionButton(
                    onClick = { viewModel.importScript() }
                ) {
                    Icon(Icons.Default.Add, contentDescription = "导入脚本")
                }
            }
        ) { innerPadding ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(innerPadding)
            ) {
                ScriptListContent(
                    scripts = scripts,
                    onSelect = { viewModel.selectScript(it) },
                    onRun = { viewModel.runScript(context, it) },
                    onEdit = { onNavigateToEditor(it) },
                    onDelete = { viewModel.deleteScript(it) }
                )
            }
        }
    }
}

@Composable
private fun ScriptListContent(
    scripts: List<ScriptEntity>,
    onSelect: (ScriptEntity) -> Unit,
    onRun: (Long) -> Unit,
    onEdit: (String) -> Unit,
    onDelete: (Long) -> Unit
) {
    if (scripts.isEmpty()) {
        EmptyScriptState(modifier = Modifier.fillMaxSize())
    } else {
        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(scripts, key = { it.id }) { script ->
                ScriptCard(
                    script = script,
                    onClick = { onSelect(script) },
                    onRun = { onRun(script.id) },
                    onEdit = { onEdit(script.filePath) },
                    onDelete = { onDelete(script.id) }
                )
            }
        }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun ScriptCard(
    script: ScriptEntity,
    onClick: () -> Unit,
    onRun: () -> Unit,
    onEdit: () -> Unit,
    onDelete: () -> Unit
) {
    var showMenu by remember { mutableStateOf(false) }

    Card(
        modifier = Modifier
            .fillMaxWidth()
            .combinedClickable(
                onClick = onClick,
                onLongClick = { showMenu = true }
            ),
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
    ) {
        Box {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    imageVector = Icons.Default.Code,
                    contentDescription = null,
                    modifier = Modifier.size(40.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
                Spacer(modifier = Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = script.name,
                        style = MaterialTheme.typography.titleMedium,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = script.description,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = "v${script.version}",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.outline
                    )
                }
                IconButton(onClick = onRun) {
                    Icon(
                        imageVector = Icons.Default.PlayArrow,
                        contentDescription = "运行",
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
            }

            DropdownMenu(
                expanded = showMenu,
                onDismissRequest = { showMenu = false }
            ) {
                DropdownMenuItem(
                    text = { Text("运行") },
                    onClick = { showMenu = false; onRun() },
                    leadingIcon = { Icon(Icons.Default.PlayArrow, contentDescription = null) }
                )
                DropdownMenuItem(
                    text = { Text("编辑") },
                    onClick = { showMenu = false; onEdit() },
                    leadingIcon = { Icon(Icons.Default.Edit, contentDescription = null) }
                )
                DropdownMenuItem(
                    text = { Text("删除") },
                    onClick = { showMenu = false; onDelete() },
                    leadingIcon = {
                        Icon(
                            Icons.Default.Delete,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.error
                        )
                    }
                )
            }
        }
    }
}

@Composable
private fun EmptyScriptState(modifier: Modifier = Modifier) {
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = Icons.Default.Code,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.outline
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "暂无脚本",
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = "点击 + 导入 Python 脚本",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.outline
        )
    }
}

@Preview(showBackground = true)
@Composable
private fun EmptyScriptStatePreview() {
    MapleAutoTheme {
        EmptyScriptState(modifier = Modifier.fillMaxSize())
    }
}

@Preview(showBackground = true)
@Composable
private fun ScriptCardPreview() {
    MapleAutoTheme {
        ScriptCard(
            script = ScriptEntity(
                id = 1,
                name = "Auto Farm",
                filePath = "/scripts/auto_farm.py",
                description = "Automatically farms resources in the game",
                version = "1.2"
            ),
            onClick = {},
            onRun = {},
            onEdit = {},
            onDelete = {}
        )
    }
}
