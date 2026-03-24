package com.maple.auto.engine.python

import android.content.Context
import android.graphics.Rect
import android.util.Log
import com.maple.auto.engine.automation.GestureExecutor
import com.maple.auto.engine.automation.KeyEventExecutor
import com.maple.auto.engine.automation.NodeFinder
import com.maple.auto.engine.automation.RootCommandExecutor
import com.maple.auto.engine.screenshot.ImageMatcher
import com.maple.auto.engine.screenshot.ScreenCaptureManager

/**
 * Bridge between Python scripts and Kotlin automation APIs.
 *
 * Registers all automation functions that Python scripts can call via Chaquopy.
 * Each method delegates to the appropriate executor (GestureExecutor, NodeFinder, etc.)
 * and handles type conversion between Python and Kotlin types.
 *
 * TODO: Chaquopy integration - findNode returns Any? instead of PyObject since
 * Chaquopy is only available in the app module.
 */
class PythonApiModule(private val context: Context) {

    companion object {
        private const val TAG = "PythonApiModule"
    }

    private val gestureExecutor = GestureExecutor()
    private val nodeFinder = NodeFinder()
    private val keyEventExecutor = KeyEventExecutor(context)
    private val rootCommandExecutor = RootCommandExecutor()
    private val imageMatcher = ImageMatcher()

    private var screenCaptureManager: ScreenCaptureManager? = null
    private var pythonEngine: PythonEngine? = null
    private val configMap = mutableMapOf<String, Any>()

    fun setScreenCaptureManager(manager: ScreenCaptureManager) {
        this.screenCaptureManager = manager
    }

    fun setPythonEngine(engine: PythonEngine) {
        this.pythonEngine = engine
    }

    fun setConfig(config: Map<String, Any>) {
        configMap.clear()
        configMap.putAll(config)
    }

    // ---- Gesture APIs ----

    fun click(x: Int, y: Int, durationMs: Int = 100): Boolean {
        return gestureExecutor.click(x, y, durationMs.toLong())
    }

    fun longPress(x: Int, y: Int, durationMs: Int = 1000): Boolean {
        return gestureExecutor.longPress(x, y, durationMs.toLong())
    }

    fun swipe(x1: Int, y1: Int, x2: Int, y2: Int, durationMs: Int = 500): Boolean {
        return gestureExecutor.swipe(x1, y1, x2, y2, durationMs.toLong())
    }

    // ---- Screenshot APIs ----

    fun screenshot(): ByteArray? {
        val manager = screenCaptureManager ?: run {
            Log.w(TAG, "ScreenCaptureManager not initialized")
            return null
        }
        val image = manager.captureScreenshot() ?: return null
        return image.data
    }

    fun screenshotWidth(): Int {
        return screenCaptureManager?.captureScreenshot()?.width ?: 0
    }

    fun screenshotHeight(): Int {
        return screenCaptureManager?.captureScreenshot()?.height ?: 0
    }

    // ---- Image Recognition APIs ----

    fun findImage(templatePath: String, threshold: Double = 0.9): ImageMatcher.MatchResult? {
        val manager = screenCaptureManager ?: return null
        val image = manager.captureScreenshot() ?: return null
        return imageMatcher.findImage(image, templatePath, threshold)
    }

    fun findColor(color: Int, left: Int, top: Int, right: Int, bottom: Int, threshold: Int = 10): IntArray? {
        val manager = screenCaptureManager ?: return null
        val image = manager.captureScreenshot() ?: return null
        val region = if (left == 0 && top == 0 && right == 0 && bottom == 0) {
            null
        } else {
            Rect(left, top, right, bottom)
        }
        val point = imageMatcher.findColor(image, color, region, threshold) ?: return null
        return intArrayOf(point.x, point.y)
    }

    fun getPixel(x: Int, y: Int): Int {
        val manager = screenCaptureManager ?: return 0
        val image = manager.captureScreenshot() ?: return 0
        return imageMatcher.getPixel(image, x, y)
    }

    // ---- Node APIs ----

    /**
     * Finds a node and returns it as a Map.
     * TODO: Chaquopy integration - originally returned PyObject (dict), now returns Map for compilation.
     */
    fun findNode(text: String?, id: String?, cls: String?, desc: String?): Map<String, Any?>? {
        val node = nodeFinder.findNode(text, id, cls, desc) ?: return null
        val rect = android.graphics.Rect()
        node.getBoundsInScreen(rect)
        return mapOf(
            "text" to node.text?.toString(),
            "id" to node.viewIdResourceName,
            "className" to node.className?.toString(),
            "description" to node.contentDescription?.toString(),
            "clickable" to node.isClickable,
            "enabled" to node.isEnabled,
            "left" to rect.left,
            "top" to rect.top,
            "right" to rect.right,
            "bottom" to rect.bottom
        )
    }

    fun findAllNodes(text: String?, id: String?, cls: String?, desc: String?): List<Map<String, Any?>> {
        val nodes = nodeFinder.findAllNodes(text, id, cls, desc)
        return nodes.map { node ->
            val rect = android.graphics.Rect()
            node.getBoundsInScreen(rect)
            mapOf(
                "text" to node.text?.toString(),
                "id" to node.viewIdResourceName,
                "className" to node.className?.toString(),
                "description" to node.contentDescription?.toString(),
                "clickable" to node.isClickable,
                "enabled" to node.isEnabled,
                "left" to rect.left,
                "top" to rect.top,
                "right" to rect.right,
                "bottom" to rect.bottom
            )
        }
    }

    fun clickNode(text: String?, id: String?, cls: String?, desc: String?): Boolean {
        return nodeFinder.clickNode(text, id, cls, desc)
    }

    // ---- System APIs ----

    fun pressHome(): Boolean = keyEventExecutor.pressHome()

    fun pressBack(): Boolean = keyEventExecutor.pressBack()

    fun pressRecents(): Boolean = keyEventExecutor.pressRecents()

    fun openApp(packageName: String) = keyEventExecutor.openApp(packageName)

    fun inputText(text: String): Boolean {
        // Delegates to accessibility service setText or IME
        val node = nodeFinder.findFocusedNode() ?: return false
        return com.maple.auto.accessibility.NodeActions.setText(node, text)
    }

    fun shell(command: String): String {
        val result = rootCommandExecutor.execute(command)
        return result.stdout
    }

    // ---- Utility APIs ----

    fun sleep(ms: Long) {
        try {
            Thread.sleep(ms)
        } catch (e: InterruptedException) {
            Thread.currentThread().interrupt()
            throw e
        }
    }

    fun log(message: String) {
        Log.i("Script", message)
        pythonEngine?.appendLog(message)
    }

    fun toast(message: String) {
        android.os.Handler(context.mainLooper).post {
            android.widget.Toast.makeText(context, message, android.widget.Toast.LENGTH_SHORT).show()
        }
    }

    fun getConfig(key: String): Any? = configMap[key]

    fun setConfig(key: String, value: Any) {
        configMap[key] = value
    }

    fun screenWidth(): Int {
        val dm = context.resources.displayMetrics
        return dm.widthPixels
    }

    fun screenHeight(): Int {
        val dm = context.resources.displayMetrics
        return dm.heightPixels
    }
}
