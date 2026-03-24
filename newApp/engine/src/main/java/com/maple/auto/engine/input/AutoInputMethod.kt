package com.maple.auto.engine.input

import android.inputmethodservice.InputMethodService
import android.view.KeyEvent
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.FrameLayout

/**
 * Custom InputMethodService for programmatic text input and key events.
 *
 * This IME provides a minimal keyboard view and exposes static methods
 * for committing text, sending key events, and clearing input fields
 * from automation scripts.
 */
class AutoInputMethod : InputMethodService() {

    companion object {
        @Volatile
        var instance: AutoInputMethod? = null
            private set
    }

    override fun onCreate() {
        super.onCreate()
        instance = this
    }

    override fun onDestroy() {
        instance = null
        super.onDestroy()
    }

    override fun onCreateInputView(): View {
        // Return a minimal empty view - this IME is controlled programmatically
        return FrameLayout(this).apply {
            layoutParams = FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                1 // Minimal height
            )
        }
    }

    override fun onEvaluateFullscreenMode(): Boolean = false

    override fun onStartInput(attribute: EditorInfo?, restarting: Boolean) {
        super.onStartInput(attribute, restarting)
    }

    /**
     * Commit text to the currently focused input field.
     */
    fun commitText(text: String) {
        val ic = currentInputConnection ?: return
        ic.commitText(text, 1)
    }

    /**
     * Send a key event (DOWN + UP) for the given key code.
     */
    fun sendKeyEvent(keyCode: Int) {
        val ic = currentInputConnection ?: return
        ic.sendKeyEvent(KeyEvent(KeyEvent.ACTION_DOWN, keyCode))
        ic.sendKeyEvent(KeyEvent(KeyEvent.ACTION_UP, keyCode))
    }

    /**
     * Clear all text in the currently focused input field.
     * Selects all text then deletes.
     */
    fun clearText() {
        val ic = currentInputConnection ?: return
        // Select all text
        ic.performContextMenuAction(android.R.id.selectAll)
        // Delete selection
        ic.commitText("", 1)
    }
}
