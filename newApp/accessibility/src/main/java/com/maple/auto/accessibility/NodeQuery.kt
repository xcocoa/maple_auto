package com.maple.auto.accessibility

import android.util.Log
import android.view.accessibility.AccessibilityNodeInfo

/**
 * Provides depth-first search (DFS) traversal of the [AccessibilityNodeInfo] tree
 * with filter-based matching.
 *
 * All search methods accept a list of [NodeFilter]s that are combined with AND logic:
 * a node must match **all** filters to be included in results.
 */
object NodeQuery {

    private const val TAG = "NodeQuery"

    /**
     * Finds the first node in the tree that matches all given filters using DFS.
     *
     * @param root The root node to start traversal from.
     * @param filters The list of filters; all must match (AND logic).
     * @return The first matching node, or `null` if none found.
     *         The caller is responsible for recycling the returned node.
     */
    fun findFirst(root: AccessibilityNodeInfo, filters: List<NodeFilter>): AccessibilityNodeInfo? {
        if (filters.isEmpty()) {
            Log.w(TAG, "findFirst called with empty filters")
            return null
        }
        return dfsFirst(root, filters)
    }

    /**
     * Finds all nodes in the tree that match all given filters using DFS.
     *
     * @param root The root node to start traversal from.
     * @param filters The list of filters; all must match (AND logic).
     * @return A list of all matching nodes. The caller is responsible for recycling them.
     */
    fun findAll(root: AccessibilityNodeInfo, filters: List<NodeFilter>): List<AccessibilityNodeInfo> {
        if (filters.isEmpty()) {
            Log.w(TAG, "findAll called with empty filters")
            return emptyList()
        }
        val results = mutableListOf<AccessibilityNodeInfo>()
        dfsAll(root, filters, results)
        return results
    }

    /**
     * Finds a node by its view ID resource name.
     *
     * Uses the system's [AccessibilityNodeInfo.findAccessibilityNodeInfosByViewId] for
     * optimized lookup when available, falling back to DFS with [IdFilter].
     *
     * @param root The root node to search from.
     * @param viewId The view ID resource name (e.g. "com.example:id/button").
     * @return The first matching node, or `null` if not found.
     */
    fun findById(root: AccessibilityNodeInfo, viewId: String): AccessibilityNodeInfo? {
        return try {
            val nodes = root.findAccessibilityNodeInfosByViewId(viewId)
            if (nodes.isNullOrEmpty()) null else nodes[0]
        } catch (e: Exception) {
            Log.w(TAG, "findById system lookup failed, falling back to DFS", e)
            findFirst(root, listOf(IdFilter(viewId)))
        }
    }

    /**
     * Finds all nodes whose text matches the given string.
     *
     * Uses the system's [AccessibilityNodeInfo.findAccessibilityNodeInfosByText] for
     * optimized lookup.
     *
     * @param root The root node to search from.
     * @param text The text to search for.
     * @return A list of matching nodes.
     */
    fun findByText(root: AccessibilityNodeInfo, text: String): List<AccessibilityNodeInfo> {
        return try {
            root.findAccessibilityNodeInfosByText(text) ?: emptyList()
        } catch (e: Exception) {
            Log.w(TAG, "findByText system lookup failed, falling back to DFS", e)
            findAll(root, listOf(TextFilter(text)))
        }
    }

    /**
     * Finds all nodes with the specified class name using DFS.
     *
     * @param root The root node to search from.
     * @param className Fully-qualified class name (e.g. "android.widget.Button").
     * @return A list of matching nodes.
     */
    fun findByClassName(root: AccessibilityNodeInfo, className: String): List<AccessibilityNodeInfo> {
        return findAll(root, listOf(ClassFilter(className)))
    }

    /**
     * Generates a string representation of the accessibility node tree for debugging.
     *
     * @param root The root node of the tree.
     * @return A formatted string showing the tree hierarchy.
     */
    fun getNodeTree(root: AccessibilityNodeInfo): String {
        val sb = StringBuilder()
        buildTreeString(root, 0, sb)
        return sb.toString()
    }

    /**
     * Recycles a list of [AccessibilityNodeInfo] nodes.
     *
     * @param nodes The nodes to recycle.
     */
    fun recycleNodes(nodes: List<AccessibilityNodeInfo>) {
        for (node in nodes) {
            try {
                node.recycle()
            } catch (e: Exception) {
                Log.w(TAG, "Failed to recycle node", e)
            }
        }
    }

    // --- Private helpers ---

    private fun dfsFirst(
        node: AccessibilityNodeInfo,
        filters: List<NodeFilter>
    ): AccessibilityNodeInfo? {
        for (i in 0 until node.childCount) {
            val child = node.getChild(i) ?: continue
            if (matchesAll(child, filters)) {
                return child
            }
            val found = dfsFirst(child, filters)
            child.recycle()
            if (found != null) {
                return found
            }
        }
        return null
    }

    private fun dfsAll(
        node: AccessibilityNodeInfo,
        filters: List<NodeFilter>,
        results: MutableList<AccessibilityNodeInfo>
    ) {
        for (i in 0 until node.childCount) {
            val child = node.getChild(i) ?: continue
            if (matchesAll(child, filters)) {
                results.add(child)
            } else {
                dfsAll(child, filters, results)
                child.recycle()
            }
        }
    }

    private fun matchesAll(node: AccessibilityNodeInfo, filters: List<NodeFilter>): Boolean {
        for (filter in filters) {
            if (!filter.matches(node)) {
                return false
            }
        }
        return true
    }

    private fun buildTreeString(node: AccessibilityNodeInfo, depth: Int, sb: StringBuilder) {
        val indent = "  ".repeat(depth)
        val text = node.text?.toString()?.take(50) ?: ""
        val desc = node.contentDescription?.toString()?.take(50) ?: ""
        val id = node.viewIdResourceName ?: ""

        sb.append(indent)
        sb.append("[${node.className}]")
        if (text.isNotEmpty()) sb.append(" text='$text'")
        if (desc.isNotEmpty()) sb.append(" desc='$desc'")
        if (id.isNotEmpty()) sb.append(" id='$id'")
        if (node.isClickable) sb.append(" clickable")
        if (node.isScrollable) sb.append(" scrollable")
        sb.append('\n')

        for (i in 0 until node.childCount) {
            val child = node.getChild(i) ?: continue
            buildTreeString(child, depth + 1, sb)
            child.recycle()
        }
    }
}
