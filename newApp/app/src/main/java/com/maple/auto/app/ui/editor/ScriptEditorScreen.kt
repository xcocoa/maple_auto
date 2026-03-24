package com.maple.auto.app.ui.editor

import androidx.compose.foundation.background
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.BasicTextField
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.Redo
import androidx.compose.material.icons.automirrored.filled.Undo
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.Save
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.hilt.navigation.compose.hiltViewModel
import com.maple.auto.app.ui.theme.MapleAutoTheme
import kotlinx.coroutines.launch

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ScriptEditorScreen(
    filePath: String,
    viewModel: ScriptEditorViewModel = hiltViewModel(),
    onBack: () -> Unit = {}
) {
    val content by viewModel.content.collectAsState()
    val canUndo by viewModel.canUndo.collectAsState()
    val canRedo by viewModel.canRedo.collectAsState()
    val snackbarHostState = remember { SnackbarHostState() }
    val scope = rememberCoroutineScope()

    LaunchedEffect(filePath) {
        viewModel.loadFile(filePath)
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Column {
                        Text("编辑器", style = MaterialTheme.typography.titleMedium)
                        Text(
                            text = filePath.substringAfterLast("/"),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.outline
                        )
                    }
                },
                navigationIcon = {
                    IconButton(onClick = onBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "返回")
                    }
                },
                actions = {
                    IconButton(onClick = { viewModel.undo() }, enabled = canUndo) {
                        Icon(Icons.AutoMirrored.Filled.Undo, contentDescription = "撤销")
                    }
                    IconButton(onClick = { viewModel.redo() }, enabled = canRedo) {
                        Icon(Icons.AutoMirrored.Filled.Redo, contentDescription = "重做")
                    }
                    IconButton(onClick = {
                        viewModel.save()
                        scope.launch { snackbarHostState.showSnackbar("已保存") }
                    }) {
                        Icon(Icons.Default.Save, contentDescription = "保存")
                    }
                    IconButton(onClick = {
                        viewModel.save()
                        viewModel.run()
                        scope.launch { snackbarHostState.showSnackbar("已保存并运行...") }
                    }) {
                        Icon(Icons.Default.PlayArrow, contentDescription = "运行")
                    }
                }
            )
        },
        snackbarHost = { SnackbarHost(snackbarHostState) }
    ) { innerPadding ->
        val verticalScroll = rememberScrollState()
        val horizontalScroll = rememberScrollState()

        Row(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
        ) {
            // Line numbers
            val lineCount = content.text.count { it == '\n' } + 1
            Column(
                modifier = Modifier
                    .width(48.dp)
                    .verticalScroll(verticalScroll)
                    .background(MaterialTheme.colorScheme.surfaceVariant)
                    .padding(horizontal = 8.dp, vertical = 8.dp)
            ) {
                for (i in 1..lineCount) {
                    Text(
                        text = i.toString(),
                        style = TextStyle(
                            fontFamily = FontFamily.Monospace,
                            fontSize = 13.sp,
                            color = MaterialTheme.colorScheme.outline
                        )
                    )
                }
            }

            // Editor content
            Box(
                modifier = Modifier
                    .weight(1f)
                    .verticalScroll(verticalScroll)
                    .horizontalScroll(horizontalScroll)
                    .padding(8.dp)
            ) {
                BasicTextField(
                    value = content,
                    onValueChange = { viewModel.onContentChange(it) },
                    textStyle = TextStyle(
                        fontFamily = FontFamily.Monospace,
                        fontSize = 13.sp,
                        color = MaterialTheme.colorScheme.onSurface
                    ),
                    cursorBrush = SolidColor(MaterialTheme.colorScheme.primary),
                    modifier = Modifier.fillMaxWidth(),
                    visualTransformation = PythonSyntaxTransformation()
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ScriptEditorPreview() {
    MapleAutoTheme {
        Text(
            text = highlightPython("import time\n# comment\ndef main():\n    print(\"hello\")\n    x = 42"),
            fontFamily = FontFamily.Monospace,
            fontSize = 13.sp,
            modifier = Modifier.padding(16.dp)
        )
    }
}

private val pythonKeywords = setOf(
    "False", "None", "True", "and", "as", "assert", "async", "await",
    "break", "class", "continue", "def", "del", "elif", "else", "except",
    "finally", "for", "from", "global", "if", "import", "in", "is",
    "lambda", "nonlocal", "not", "or", "pass", "raise", "return",
    "try", "while", "with", "yield"
)

fun highlightPython(code: String): AnnotatedString {
    return buildAnnotatedString {
        val keywordColor = SpanStyle(color = androidx.compose.ui.graphics.Color(0xFF569CD6))
        val stringColor = SpanStyle(color = androidx.compose.ui.graphics.Color(0xFFCE9178))
        val commentColor = SpanStyle(color = androidx.compose.ui.graphics.Color(0xFF6A9955))
        val numberColor = SpanStyle(color = androidx.compose.ui.graphics.Color(0xFFB5CEA8))
        val defaultStyle = SpanStyle()

        var i = 0
        while (i < code.length) {
            when {
                // Comments
                code[i] == '#' -> {
                    val end = code.indexOf('\n', i).let { if (it == -1) code.length else it }
                    withStyle(commentColor) { append(code.substring(i, end)) }
                    i = end
                }
                // Strings
                code[i] == '"' || code[i] == '\'' -> {
                    val quote = code[i]
                    val start = i
                    i++
                    while (i < code.length && code[i] != quote) {
                        if (code[i] == '\\') i++ // skip escaped
                        i++
                    }
                    if (i < code.length) i++ // closing quote
                    withStyle(stringColor) { append(code.substring(start, i)) }
                }
                // Numbers
                code[i].isDigit() -> {
                    val start = i
                    while (i < code.length && (code[i].isDigit() || code[i] == '.')) i++
                    withStyle(numberColor) { append(code.substring(start, i)) }
                }
                // Keywords/identifiers
                code[i].isLetter() || code[i] == '_' -> {
                    val start = i
                    while (i < code.length && (code[i].isLetterOrDigit() || code[i] == '_')) i++
                    val word = code.substring(start, i)
                    if (word in pythonKeywords) {
                        withStyle(keywordColor) { append(word) }
                    } else {
                        withStyle(defaultStyle) { append(word) }
                    }
                }
                else -> {
                    append(code[i])
                    i++
                }
            }
        }
    }
}
