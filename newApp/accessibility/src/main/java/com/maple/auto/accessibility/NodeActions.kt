package com.maple.auto.accessibility

import android.graphics.Rect
import android.os.Bundle
import android.util.Log
import android.view.accessibility.AccessibilityNodeInfo

/**
 * Utility object for performing actions on [AccessibilityNodeInfo] nodes.
 *
 * Wraps standard [AccessibilityNodeInfo.performAction] calls with logging
 * and error handling.
 */
object NodeActions {

    private const val TAG = "NodeActions"

    /**
     * Performs a click action on the given node.
     *
     * @param node The node to click.
     * @return `true` if the action was performed successfully.
     */
    fun click(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_CLICK, "click")
    }

    /**
     * Performs a long-click action on the given node.
     *
     * @param node The node to long-click.
     * @return `true` if the action was performed successfully.
     */
    fun longClick(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_LONG_CLICK, "longClick")
    }

    /**
     * Sets the text content of an editable node.
     *
     * @param node The editable node.
     * @param text The text to set.
     * @return `true` if the action was performed successfully.
     */
    fun setText(node: AccessibilityNodeInfo, text: String): Boolean {
        val args = Bundle().apply {
            putCharSequence(AccessibilityNodeInfo.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE, text)
        }
        return try {
            val result = node.performAction(AccessibilityNodeInfo.ACTION_SET_TEXT, args)
            if (!result) {
                Log.w(TAG, "setText failed on node: ${node.className}")
            }
            result
        } catch (e: Exception) {
            Log.e(TAG, "setText threw exception", e)
            false
        }
    }

    /**
     * Performs a paste action on the given node.
     *
     * The clipboard content will be pasted into the node.
     *
     * @param node The node to paste into.
     * @return `true` if the action was performed successfully.
     */
    fun paste(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_PASTE, "paste")
    }

    /**
     * Scrolls the node forward (down or right depending on orientation).
     *
     * @param node The scrollable node.
     * @return `true` if the action was performed successfully.
     */
    fun scrollForward(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_SCROLL_FORWARD, "scrollForward")
    }

    /**
     * Scrolls the node backward (up or left depending on orientation).
     *
     * @param node The scrollable node.
     * @return `true` if the action was performed successfully.
     */
    fun scrollBackward(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_SCROLL_BACKWARD, "scrollBackward")
    }

    /**
     * Gives input focus to the node.
     *
     * @param node The node to focus.
     * @return `true` if the action was performed successfully.
     */
    fun focus(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_FOCUS, "focus")
    }

    /**
     * Selects the node.
     *
     * @param node The node to select.
     * @return `true` if the action was performed successfully.
     */
    fun select(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_SELECT, "select")
    }

    /**
     * Collapses an expandable node (e.g., a dropdown).
     *
     * @param node The node to collapse.
     * @return `true` if the action was performed successfully.
     */
    fun collapse(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_COLLAPSE, "collapse")
    }

    /**
     * Expands a collapsible node (e.g., a dropdown).
     *
     * @param node The node to expand.
     * @return `true` if the action was performed successfully.
     */
    fun expand(node: AccessibilityNodeInfo): Boolean {
        return performAction(node, AccessibilityNodeInfo.ACTION_EXPAND, "expand")
    }

    /**
     * Returns the screen-space bounding rectangle of the node.
     *
     * @param node The node to get bounds for.
     * @return The [Rect] representing the node's screen bounds.
     */
    fun getBounds(node: AccessibilityNodeInfo): Rect {
        val rect = Rect()
        node.getBoundsInScreen(rect)
        return rect
    }

    /**
     * Returns a map of debug information about the node.
     *
     * Useful for logging and diagnostics.
     *
     * @param node The node to inspect.
     * @return A map containing node properties.
     */
    fun getNodeInfo(node: AccessibilityNodeInfo): Map<String, Any?> {
        val bounds = Rect()
        node.getBoundsInScreen(bounds)
        return mapOf(
            "className" to node.className?.toString(),
            "text" to node.text?.toString(),
            "contentDescription" to node.contentDescription?.toString(),
            "viewIdResourceName" to node.viewIdResourceName,
            "isClickable" to node.isClickable,
            "isEnabled" to node.isEnabled,
            "isVisibleToUser" to node.isVisibleToUser,
            "isFocusable" to node.isFocusable,
            "isFocused" to node.isFocused,
            "isScrollable" to node.isScrollable,
            "isCheckable" to node.isCheckable,
            "isChecked" to node.isChecked,
            "isSelected" to node.isSelected,
            "childCount" to node.childCount,
            "bounds" to bounds.toShortString(),
            "packageName" to node.packageName?.toString()
        )
    }

    private fun performAction(
        node: AccessibilityNodeInfo,
        action: Int,
        actionName: String
    ): Boolean {
        return try {
            val result = node.performAction(action)
            if (!result) {
                Log.w(TAG, "$actionName failed on node: ${node.className}")
            }
            result
        } catch (e: Exception) {
            Log.e(TAG, "$actionName threw exception", e)
            false
        }
    }
}
