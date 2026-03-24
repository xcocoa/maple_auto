package com.maple.auto.engine.input

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import android.view.KeyEvent
import android.view.accessibility.AccessibilityNodeInfo

/**
 * Bridge for sending input commands to [AutoInputMethod].
 *
 * Provides static methods callable from the engine process.
 * Falls back to accessibility-based paste if the IME is not available.
 */
object InputBridge {

    /**
     * Input text into the currently focused field.
     *
     * Uses AutoInputMethod if available, otherwise falls back to
     * accessibility-based clipboard paste.
     */
    fun inputText(text: String) {
        val ime = AutoInputMethod.instance
        if (ime != null) {
            ime.commitText(text)
        } else {
            // Fallback will be handled by the caller with an AccessibilityNodeInfo
            // This is a no-op when neither IME nor accessibility is available
        }
    }

    /**
     * Input text into a specific accessibility node via clipboard paste.
     *
     * @param context application context for clipboard access
     * @param node the target input field node
     * @param text the text to input
     */
    fun inputTextViaAccessibility(context: Context, node: AccessibilityNodeInfo, text: String) {
        val ime = AutoInputMethod.instance
        if (ime != null) {
            ime.commitText(text)
            return
        }

        // Fallback: use clipboard paste via accessibility
        val clipboard = context.getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val previousClip = clipboard.primaryClip

        // Set our text to clipboard
        clipboard.setPrimaryClip(ClipData.newPlainText("maple_auto", text))

        // Focus and paste
        node.performAction(AccessibilityNodeInfo.ACTION_FOCUS)
        node.performAction(AccessibilityNodeInfo.ACTION_PASTE)

        // Restore previous clipboard content
        if (previousClip != null) {
            clipboard.setPrimaryClip(previousClip)
        }
    }

    /**
     * Send a key event to the currently focused field.
     */
    fun sendKey(keyCode: Int) {
        val ime = AutoInputMethod.instance
        if (ime != null) {
            ime.sendKeyEvent(keyCode)
        }
    }

    /**
     * Clear the text in the currently focused input field.
     */
    fun clearInput() {
        val ime = AutoInputMethod.instance
        if (ime != null) {
            ime.clearText()
        }
    }
}
