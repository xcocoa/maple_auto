package com.maple.auto.service

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Path
import android.util.Log
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import kotlinx.coroutines.*

/**
 * 手势注入服务（AccessibilityService）
 * 参考 huoji Cservice.java 实现
 * 
 * 功能：
 * - 点击（tap）
 * - 滑动（swipe）
 * - 长按（longPress）
 * - UI 元素搜索和交互
 */
class GestureService : AccessibilityService() {

    companion object {
        private const val TAG = "GestureService"

        @JvmStatic
        @Volatile
        var instance: GestureService? = null
            private set
    }

    private val scope = CoroutineScope(Dispatchers.Main + Job())

    override fun onServiceConnected() {
        super.onServiceConnected()
        instance = this
        Log.d(TAG, "GestureService connected")
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent) {
        // 暂不处理事件
    }

    override fun onInterrupt() {
        Log.d(TAG, "Accessibility service interrupted")
    }

    override fun onDestroy() {
        instance = null
        scope.cancel()
        super.onDestroy()
        Log.d(TAG, "GestureService destroyed")
    }

    /**
     * 点击操作
     * 参考 huoji：创建最小 2x2 像素的对角线路径
     */
    fun tap(x: Float, y: Float, duration: Long = 100): Boolean {
        return try {
            val path = Path().apply {
                moveTo(x, y)
                lineTo(x + 1, y + 1)
            }
            dispatchGesture(
                GestureDescription.Builder()
                    .addStroke(GestureDescription.StrokeDescription(path, 0, duration))
                    .build(),
                object : GestureResultCallback() {
                    override fun onCompleted(gestureDescription: GestureDescription) {
                        Log.d(TAG, "Tap completed at ($x, $y)")
                    }
                    override fun onCancelled(gestureDescription: GestureDescription) {
                        Log.w(TAG, "Tap cancelled at ($x, $y)")
                    }
                },
                null
            )
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error dispatching tap", e)
            false
        }
    }

    /**
     * 滑动操作
     * 从 (startX, startY) 滑到 (endX, endY)
     */
    fun swipe(startX: Float, startY: Float, endX: Float, endY: Float, duration: Long = 300): Boolean {
        return try {
            val path = Path().apply {
                moveTo(startX, startY)
                lineTo(endX, endY)
            }
            dispatchGesture(
                GestureDescription.Builder()
                    .addStroke(GestureDescription.StrokeDescription(path, 0, duration))
                    .build(),
                object : GestureResultCallback() {
                    override fun onCompleted(gestureDescription: GestureDescription) {
                        Log.d(TAG, "Swipe completed")
                    }
                    override fun onCancelled(gestureDescription: GestureDescription) {
                        Log.w(TAG, "Swipe cancelled")
                    }
                },
                null
            )
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error dispatching swipe", e)
            false
        }
    }

    /**
     * 长按操作
     */
    fun longPress(x: Float, y: Float, duration: Long = 1000): Boolean {
        return try {
            val path = Path().apply {
                moveTo(x, y)
                lineTo(x + 1, y + 1)
            }
            dispatchGesture(
                GestureDescription.Builder()
                    .addStroke(GestureDescription.StrokeDescription(path, 0, duration))
                    .build(),
                object : GestureResultCallback() {
                    override fun onCompleted(gestureDescription: GestureDescription) {
                        Log.d(TAG, "LongPress completed at ($x, $y)")
                    }
                    override fun onCancelled(gestureDescription: GestureDescription) {
                        Log.w(TAG, "LongPress cancelled at ($x, $y)")
                    }
                },
                null
            )
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error dispatching longPress", e)
            false
        }
    }

    /**
     * 系统按键
     */
    fun pressBack(): Boolean {
        return try {
            performGlobalAction(GLOBAL_ACTION_BACK)
        } catch (e: Exception) {
            Log.e(TAG, "Error pressing back", e)
            false
        }
    }

    fun pressHome(): Boolean {
        return try {
            performGlobalAction(GLOBAL_ACTION_HOME)
        } catch (e: Exception) {
            Log.e(TAG, "Error pressing home", e)
            false
        }
    }

    /**
     * 在 UI 树中查找第一个满足条件的节点
     * 深度优先搜索
     */
    fun findNode(
        text: String? = null,
        contentDesc: String? = null,
        className: String? = null,
        viewIdResourceName: String? = null
    ): AccessibilityNodeInfo? {
        return try {
            val root = rootInActiveWindow ?: return null
            findNodeRecursive(root, text, contentDesc, className, viewIdResourceName).also {
                if (it != null) {
                    Log.d(TAG, "Found node: $it")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error finding node", e)
            null
        }
    }

    private fun findNodeRecursive(
        node: AccessibilityNodeInfo,
        text: String?,
        contentDesc: String?,
        className: String?,
        viewIdResourceName: String?
    ): AccessibilityNodeInfo? {
        // 检查当前节点
        if (matches(node, text, contentDesc, className, viewIdResourceName)) {
            return AccessibilityNodeInfo.obtain(node)
        }

        // 递归检查子节点
        val childCount = node.childCount
        for (i in 0 until childCount) {
            val child = node.getChild(i) ?: continue
            val result = findNodeRecursive(child, text, contentDesc, className, viewIdResourceName)
            if (result != null) {
                return result
            }
        }

        return null
    }

    private fun matches(
        node: AccessibilityNodeInfo,
        text: String?,
        contentDesc: String?,
        className: String?,
        viewIdResourceName: String?
    ): Boolean {
        if (text != null && node.text?.contains(text) != true) return false
        if (contentDesc != null && node.contentDescription?.contains(contentDesc) != true) return false
        if (className != null && node.className?.toString() != className) return false
        if (viewIdResourceName != null && node.viewIdResourceName?.contains(viewIdResourceName) != true) return false
        return true
    }

    /**
     * 点击指定节点
     */
    fun clickNode(node: AccessibilityNodeInfo?): Boolean {
        return try {
            node?.performAction(AccessibilityNodeInfo.ACTION_CLICK)
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error clicking node", e)
            false
        }
    }

    /**
     * 在 EditText 中输入文本（通过剪贴板）
     */
    fun inputText(node: AccessibilityNodeInfo?, text: String): Boolean {
        return try {
            // 获取系统剪贴板
            val clipboard = getSystemService(android.content.Context.CLIPBOARD_SERVICE) as android.content.ClipboardManager
            val clip = android.content.ClipData.newPlainText("text", text)
            clipboard.setPrimaryClip(clip)

            // 焦点转移到节点
            node?.performAction(AccessibilityNodeInfo.ACTION_FOCUS)

            // 粘贴文本
            node?.performAction(AccessibilityNodeInfo.ACTION_PASTE)
            true
        } catch (e: Exception) {
            Log.e(TAG, "Error inputting text", e)
            false
        }
    }
}
