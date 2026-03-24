package com.maple.auto.app.ui.editor

import android.util.Log
import androidx.compose.ui.text.input.TextFieldValue
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

@HiltViewModel
class ScriptEditorViewModel @Inject constructor() : ViewModel() {

    private val _content = MutableStateFlow(TextFieldValue(""))
    val content: StateFlow<TextFieldValue> = _content.asStateFlow()

    private val _canUndo = MutableStateFlow(false)
    val canUndo: StateFlow<Boolean> = _canUndo.asStateFlow()

    private val _canRedo = MutableStateFlow(false)
    val canRedo: StateFlow<Boolean> = _canRedo.asStateFlow()

    private var filePath: String = ""
    private val undoStack = ArrayDeque<String>()
    private val redoStack = ArrayDeque<String>()
    private var lastSavedContent = ""

    fun loadFile(path: String) {
        filePath = path
        viewModelScope.launch {
            val text = withContext(Dispatchers.IO) {
                try {
                    File(path).readText()
                } catch (e: Exception) {
                    Log.w(TAG, "Failed to read file: $path", e)
                    "# New Script\n"
                }
            }
            lastSavedContent = text
            _content.value = TextFieldValue(text)
            undoStack.clear()
            redoStack.clear()
            updateUndoRedoState()
        }
    }

    fun onContentChange(newValue: TextFieldValue) {
        val oldText = _content.value.text
        if (oldText != newValue.text) {
            undoStack.addLast(oldText)
            if (undoStack.size > MAX_UNDO_SIZE) undoStack.removeFirst()
            redoStack.clear()
            updateUndoRedoState()
        }
        _content.value = newValue
    }

    fun undo() {
        if (undoStack.isEmpty()) return
        val current = _content.value.text
        redoStack.addLast(current)
        val previous = undoStack.removeLast()
        _content.value = TextFieldValue(previous)
        updateUndoRedoState()
    }

    fun redo() {
        if (redoStack.isEmpty()) return
        val current = _content.value.text
        undoStack.addLast(current)
        val next = redoStack.removeLast()
        _content.value = TextFieldValue(next)
        updateUndoRedoState()
    }

    fun save() {
        viewModelScope.launch {
            withContext(Dispatchers.IO) {
                try {
                    File(filePath).writeText(_content.value.text)
                    lastSavedContent = _content.value.text
                    Log.i(TAG, "File saved: $filePath")
                } catch (e: Exception) {
                    Log.e(TAG, "Failed to save file: $filePath", e)
                }
            }
        }
    }

    fun run() {
        // Running is delegated to MainViewModel via IPC
        Log.d(TAG, "Run requested for: $filePath")
    }

    private fun updateUndoRedoState() {
        _canUndo.value = undoStack.isNotEmpty()
        _canRedo.value = redoStack.isNotEmpty()
    }

    companion object {
        private const val TAG = "ScriptEditorVM"
        private const val MAX_UNDO_SIZE = 100
    }
}
