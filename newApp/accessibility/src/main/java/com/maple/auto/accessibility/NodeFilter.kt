package com.maple.auto.accessibility

import android.view.accessibility.AccessibilityNodeInfo

/**
 * Filter interface for matching [AccessibilityNodeInfo] nodes during tree traversal.
 *
 * Implementations define specific matching criteria. Multiple filters can be
 * combined using [CompositeFilter] for complex queries.
 */
interface NodeFilter {
    /**
     * Tests whether the given node matches this filter's criteria.
     *
     * @param node The accessibility node to test.
     * @return `true` if the node matches, `false` otherwise.
     */
    fun matches(node: AccessibilityNodeInfo): Boolean
}

/**
 * Matches nodes whose [text][AccessibilityNodeInfo.getText] or
 * [contentDescription][AccessibilityNodeInfo.getContentDescription] contains (or equals) the given string.
 *
 * @param text The text to match against.
 * @param exact If `true`, requires an exact match; otherwise uses `contains`.
 */
class TextFilter(
    private val text: String,
    private val exact: Boolean = false
) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        val nodeText = node.text?.toString()
        val nodeDesc = node.contentDescription?.toString()
        return matchesField(nodeText) || matchesField(nodeDesc)
    }

    private fun matchesField(value: String?): Boolean {
        if (value == null) return false
        return if (exact) value == text else value.contains(text, ignoreCase = true)
    }

    override fun toString(): String = "TextFilter(text='$text', exact=$exact)"
}

/**
 * Matches nodes whose [viewIdResourceName][AccessibilityNodeInfo.getViewIdResourceName]
 * equals the given id.
 *
 * @param viewId The view ID resource name to match (e.g. "com.example:id/button").
 */
class IdFilter(private val viewId: String) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        return node.viewIdResourceName == viewId
    }

    override fun toString(): String = "IdFilter(viewId='$viewId')"
}

/**
 * Matches nodes whose [className][AccessibilityNodeInfo.getClassName] equals the given class name.
 *
 * @param className Fully-qualified class name (e.g. "android.widget.Button").
 */
class ClassFilter(private val className: String) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        return node.className?.toString() == className
    }

    override fun toString(): String = "ClassFilter(className='$className')"
}

/**
 * Matches nodes whose [contentDescription][AccessibilityNodeInfo.getContentDescription]
 * contains (or equals) the given description.
 *
 * @param description The description text to match.
 * @param exact If `true`, requires an exact match; otherwise uses `contains`.
 */
class DescFilter(
    private val description: String,
    private val exact: Boolean = false
) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        val nodeDesc = node.contentDescription?.toString() ?: return false
        return if (exact) nodeDesc == description else nodeDesc.contains(description, ignoreCase = true)
    }

    override fun toString(): String = "DescFilter(description='$description', exact=$exact)"
}

/**
 * Matches nodes based on their [clickable][AccessibilityNodeInfo.isClickable] state.
 *
 * @param clickable Expected clickable state. Defaults to `true`.
 */
class ClickableFilter(private val clickable: Boolean = true) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        return node.isClickable == clickable
    }

    override fun toString(): String = "ClickableFilter(clickable=$clickable)"
}

/**
 * Matches nodes based on their [enabled][AccessibilityNodeInfo.isEnabled] state.
 *
 * @param enabled Expected enabled state. Defaults to `true`.
 */
class EnabledFilter(private val enabled: Boolean = true) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        return node.isEnabled == enabled
    }

    override fun toString(): String = "EnabledFilter(enabled=$enabled)"
}

/**
 * Matches nodes based on their [visibleToUser][AccessibilityNodeInfo.isVisibleToUser] state.
 *
 * @param visible Expected visibility state. Defaults to `true`.
 */
class VisibleFilter(private val visible: Boolean = true) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        return node.isVisibleToUser == visible
    }

    override fun toString(): String = "VisibleFilter(visible=$visible)"
}

/**
 * Matches nodes at a specific child index within their parent.
 *
 * This filter checks whether the node is the [index]-th child of its parent.
 *
 * @param index The zero-based child index to match.
 */
class IndexFilter(private val index: Int) : NodeFilter {

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        val parent = node.parent ?: return false
        try {
            if (index < 0 || index >= parent.childCount) return false
            val childAtIndex = parent.getChild(index) ?: return false
            val isMatch = childAtIndex == node
            childAtIndex.recycle()
            return isMatch
        } finally {
            parent.recycle()
        }
    }

    override fun toString(): String = "IndexFilter(index=$index)"
}

/**
 * Matches nodes using a regular expression against a specified field.
 *
 * @param pattern The regex pattern string.
 * @param field The node field to match against.
 */
class RegexFilter(
    pattern: String,
    private val field: Field
) : NodeFilter {

    /** Node fields that can be matched by [RegexFilter]. */
    enum class Field {
        TEXT,
        DESCRIPTION,
        ID
    }

    private val regex: Regex = pattern.toRegex()

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        val value = when (field) {
            Field.TEXT -> node.text?.toString()
            Field.DESCRIPTION -> node.contentDescription?.toString()
            Field.ID -> node.viewIdResourceName
        } ?: return false
        return regex.containsMatchIn(value)
    }

    override fun toString(): String = "RegexFilter(pattern='${regex.pattern}', field=$field)"
}

/**
 * Combines multiple [NodeFilter]s using AND or OR logic.
 *
 * @param filters The list of filters to combine.
 * @param mode The combination mode.
 */
class CompositeFilter(
    private val filters: List<NodeFilter>,
    private val mode: Mode
) : NodeFilter {

    /** Combination modes for [CompositeFilter]. */
    enum class Mode {
        /** All filters must match. */
        AND,
        /** At least one filter must match. */
        OR
    }

    override fun matches(node: AccessibilityNodeInfo): Boolean {
        return when (mode) {
            Mode.AND -> filters.all { it.matches(node) }
            Mode.OR -> filters.any { it.matches(node) }
        }
    }

    override fun toString(): String = "CompositeFilter(mode=$mode, filters=$filters)"
}
