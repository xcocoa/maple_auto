package com.maple.auto.engine.automation

import android.util.Log
import android.view.accessibility.AccessibilityNodeInfo
import com.maple.auto.accessibility.AutoAccessibilityService
import com.maple.auto.accessibility.NodeActions
import com.maple.auto.accessibility.NodeFilter
import com.maple.auto.accessibility.NodeQuery
import com.maple.auto.accessibility.TextFilter
import com.maple.auto.accessibility.IdFilter
import com.maple.auto.accessibility.ClassFilter
import com.maple.auto.accessibility.DescFilter

/**
 * Engine-level proxy for finding and interacting with UI nodes.
 *
 * Delegates to [NodeQuery] and [NodeActions] through the [AutoAccessibilityService].
 * Builds [NodeFilter] lists from simple string parameters for easy use from Python scripts.
 */
class NodeFinder {

    companion object {
        private const val TAG = "NodeFinder"
    }

    /**
     * Finds the first node matching the given criteria.
     *
     * @param text Match by visible text (contains match).
     * @param id Match by resource ID (e.g., "com.example:id/button").
     * @param cls Match by class name (e.g., "android.widget.Button").
     * @param desc Match by content description (contains match).
     * @return The matching node, or `null` if not found. Caller must recycle.
     */
    fun findNode(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): AccessibilityNodeInfo? {
        val service = getService() ?: return null
        val filters = buildFilters(text, id, cls, desc)
        if (filters.isEmpty()) {
            Log.w(TAG, "findNode called with no filters")
            return null
        }
        return service.findNode(*filters.toTypedArray())
    }

    /**
     * Finds all nodes matching the given criteria.
     *
     * @param text Match by visible text.
     * @param id Match by resource ID.
     * @param cls Match by class name.
     * @param desc Match by content description.
     * @return List of matching nodes. Caller must recycle each node.
     */
    fun findAllNodes(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): List<AccessibilityNodeInfo> {
        val service = getService() ?: return emptyList()
        val filters = buildFilters(text, id, cls, desc)
        if (filters.isEmpty()) {
            Log.w(TAG, "findAllNodes called with no filters")
            return emptyList()
        }
        return service.findAllNodes(*filters.toTypedArray())
    }

    /**
     * Finds a node matching the criteria and clicks it.
     *
     * @param text Match by visible text.
     * @param id Match by resource ID.
     * @param cls Match by class name.
     * @param desc Match by content description.
     * @return `true` if a matching node was found and clicked.
     */
    fun clickNode(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): Boolean {
        val node = findNode(text, id, cls, desc) ?: return false
        return try {
            NodeActions.click(node)
        } finally {
            node.recycle()
        }
    }

    /**
     * Finds a node matching the criteria and long-clicks it.
     *
     * @param text Match by visible text.
     * @param id Match by resource ID.
     * @param cls Match by class name.
     * @param desc Match by content description.
     * @return `true` if a matching node was found and long-clicked.
     */
    fun longClickNode(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): Boolean {
        val node = findNode(text, id, cls, desc) ?: return false
        return try {
            NodeActions.longClick(node)
        } finally {
            node.recycle()
        }
    }

    /**
     * Finds a node matching the criteria and sets its text content.
     *
     * @param text Match by visible text.
     * @param id Match by resource ID.
     * @param cls Match by class name.
     * @param desc Match by content description.
     * @param newText The text to set on the node.
     * @return `true` if a matching node was found and text was set.
     */
    fun setNodeText(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null,
        newText: String
    ): Boolean {
        val node = findNode(text, id, cls, desc) ?: return false
        return try {
            NodeActions.setText(node, newText)
        } finally {
            node.recycle()
        }
    }

    /**
     * Finds the currently focused input node.
     *
     * @return The focused node, or `null` if none is focused.
     */
    fun findFocusedNode(): AccessibilityNodeInfo? {
        val service = getService() ?: return null
        val root = service.rootInActiveWindow ?: return null
        return try {
            root.findFocus(AccessibilityNodeInfo.FOCUS_INPUT)
        } catch (e: Exception) {
            Log.e(TAG, "findFocusedNode failed", e)
            null
        }
    }

    /**
     * Scrolls forward in a scrollable node matching the criteria.
     *
     * @param text Match by visible text.
     * @param id Match by resource ID.
     * @param cls Match by class name.
     * @param desc Match by content description.
     * @return `true` if a matching scrollable node was found and scrolled.
     */
    fun scrollForward(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): Boolean {
        val node = findNode(text, id, cls, desc) ?: return false
        return try {
            NodeActions.scrollForward(node)
        } finally {
            node.recycle()
        }
    }

    /**
     * Scrolls backward in a scrollable node matching the criteria.
     *
     * @param text Match by visible text.
     * @param id Match by resource ID.
     * @param cls Match by class name.
     * @param desc Match by content description.
     * @return `true` if a matching scrollable node was found and scrolled.
     */
    fun scrollBackward(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): Boolean {
        val node = findNode(text, id, cls, desc) ?: return false
        return try {
            NodeActions.scrollBackward(node)
        } finally {
            node.recycle()
        }
    }

    /**
     * Gets detailed info about a node matching the criteria.
     *
     * @return A map of node properties, or `null` if no match found.
     */
    fun getNodeInfo(
        text: String? = null,
        id: String? = null,
        cls: String? = null,
        desc: String? = null
    ): Map<String, Any?>? {
        val node = findNode(text, id, cls, desc) ?: return null
        return try {
            NodeActions.getNodeInfo(node)
        } finally {
            node.recycle()
        }
    }

    private fun buildFilters(
        text: String?,
        id: String?,
        cls: String?,
        desc: String?
    ): List<NodeFilter> {
        val filters = mutableListOf<NodeFilter>()
        if (!text.isNullOrEmpty()) filters.add(TextFilter(text))
        if (!id.isNullOrEmpty()) filters.add(IdFilter(id))
        if (!cls.isNullOrEmpty()) filters.add(ClassFilter(cls))
        if (!desc.isNullOrEmpty()) filters.add(DescFilter(desc))
        return filters
    }

    private fun getService(): AutoAccessibilityService? {
        val service = AutoAccessibilityService.instance
        if (service == null) {
            Log.w(TAG, "AccessibilityService not running")
        }
        return service
    }
}
