package com.maple.auto.accessibility

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.AccessibilityServiceInfo
import android.accessibilityservice.GestureDescription
import android.os.Build
import android.util.Log
import android.view.accessibility.AccessibilityEvent
import android.view.accessibility.AccessibilityNodeInfo
import androidx.annotation.RequiresApi
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel

/**
 * Main accessibility service for MapleAuto.
 *
 * Provides a singleton [instance] for accessing the running service, gesture dispatch,
 * node tree querying, and global actions. This is the central coordination point
 * between the accessibility framework and the automation engine.
 *
 * Declare in AndroidManifest.xml:
 * ```xml
 * <service
 *     android:name=".accessibility.AutoAccessibilityService"
 *     android:exported="false"
 *     android:permission="android.permission.BIND_ACCESSIBILITY_SERVICE">
 *     <intent-filter>
 *         <action android:name="android.accessibilityservice.AccessibilityService" />
 *     </intent-filter>
 *     <meta-data
 *         android:name="android.accessibilityservice"
 *         android:resource="@xml/accessibility_service_config" />
 * </service>
 * ```
 */
class AutoAccessibilityService : AccessibilityService() {

    companion object {
        private const val TAG = "AutoA11yService"

        /**
         * The currently running service instance, or `null` if the service is not connected.
         */
        @Volatile
        var instance: AutoAccessibilityService? = null
            private set

        /**
         * Returns whether the accessibility service is currently running and connected.
         */
        fun isRunning(): Boolean = instance != null
    }

    /**
     * Listener interface for receiving accessibility events from this service.
     */
    interface AccessibilityEventListener {
        /**
         * Called when an accessibility event is received.
         *
         * @param event The accessibility event.
         */
        fun onAccessibilityEvent(event: AccessibilityEvent)
    }

    private val listeners = mutableListOf<AccessibilityEventListener>()
    private var currentPackageName: String? = null
    private lateinit var serviceScope: CoroutineScope

    // --- Lifecycle ---

    override fun onServiceConnected() {
        super.onServiceConnected()
        instance = this
        serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)

        serviceInfo = serviceInfo?.apply {
            eventTypes = AccessibilityEvent.TYPES_ALL_MASK
            feedbackType = AccessibilityServiceInfo.FEEDBACK_GENERIC
            flags = flags or
                AccessibilityServiceInfo.FLAG_REPORT_VIEW_IDS or
                AccessibilityServiceInfo.FLAG_RETRIEVE_INTERACTIVE_WINDOWS or
                AccessibilityServiceInfo.FLAG_INCLUDE_NOT_IMPORTANT_VIEWS or
                AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE
            notificationTimeout = 100L
        } ?: run {
            Log.w(TAG, "serviceInfo was null in onServiceConnected, configuring new instance")
            AccessibilityServiceInfo().apply {
                eventTypes = AccessibilityEvent.TYPES_ALL_MASK
                feedbackType = AccessibilityServiceInfo.FEEDBACK_GENERIC
                flags = AccessibilityServiceInfo.FLAG_REPORT_VIEW_IDS or
                    AccessibilityServiceInfo.FLAG_RETRIEVE_INTERACTIVE_WINDOWS or
                    AccessibilityServiceInfo.FLAG_INCLUDE_NOT_IMPORTANT_VIEWS or
                    AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE
                notificationTimeout = 100L
            }
        }

        Log.i(TAG, "Accessibility service connected")
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        if (event == null) return

        // Track current foreground package
        event.packageName?.toString()?.let { pkg ->
            if (pkg != currentPackageName) {
                currentPackageName = pkg
            }
        }

        // Notify all registered listeners
        synchronized(listeners) {
            for (listener in listeners) {
                try {
                    listener.onAccessibilityEvent(event)
                } catch (e: Exception) {
                    Log.e(TAG, "Error in accessibility event listener", e)
                }
            }
        }
    }

    override fun onInterrupt() {
        Log.w(TAG, "Accessibility service interrupted")
    }

    override fun onDestroy() {
        super.onDestroy()
        instance = null
        if (::serviceScope.isInitialized) {
            serviceScope.cancel()
        }
        synchronized(listeners) {
            listeners.clear()
        }
        Log.i(TAG, "Accessibility service destroyed")
    }

    // --- Event Listeners ---

    /**
     * Registers a listener to receive accessibility events.
     *
     * @param listener The listener to register.
     */
    fun addListener(listener: AccessibilityEventListener) {
        synchronized(listeners) {
            if (!listeners.contains(listener)) {
                listeners.add(listener)
            }
        }
    }

    /**
     * Unregisters a previously registered accessibility event listener.
     *
     * @param listener The listener to remove.
     */
    fun removeListener(listener: AccessibilityEventListener) {
        synchronized(listeners) {
            listeners.remove(listener)
        }
    }

    // --- Gesture Actions ---

    /**
     * Performs a click gesture at the given screen coordinates.
     *
     * @param x The X coordinate.
     * @param y The Y coordinate.
     * @param durationMs Duration of the click in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun performClick(x: Float, y: Float, durationMs: Long = 100L): Boolean {
        return GestureDispatcher.click(this, x, y, durationMs)
    }

    /**
     * Performs a swipe gesture between two screen coordinates.
     *
     * @param x1 Start X coordinate.
     * @param y1 Start Y coordinate.
     * @param x2 End X coordinate.
     * @param y2 End Y coordinate.
     * @param durationMs Duration of the swipe in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun performSwipe(
        x1: Float,
        y1: Float,
        x2: Float,
        y2: Float,
        durationMs: Long = 500L
    ): Boolean {
        return GestureDispatcher.swipe(this, x1, y1, x2, y2, durationMs)
    }

    /**
     * Performs a long-press gesture at the given screen coordinates.
     *
     * @param x The X coordinate.
     * @param y The Y coordinate.
     * @param durationMs Duration of the long press in milliseconds.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun performLongPress(x: Float, y: Float, durationMs: Long = 1000L): Boolean {
        return GestureDispatcher.longPress(this, x, y, durationMs)
    }

    /**
     * Performs a multi-finger gesture by dispatching multiple strokes simultaneously.
     *
     * @param gestures A list of [GestureDescription.StrokeDescription]s to dispatch together.
     * @return `true` if the gesture completed successfully.
     */
    @RequiresApi(Build.VERSION_CODES.N)
    suspend fun performMultiFingerGesture(
        gestures: List<GestureDescription.StrokeDescription>
    ): Boolean {
        if (gestures.isEmpty()) {
            Log.w(TAG, "performMultiFingerGesture called with empty gesture list")
            return false
        }
        val builder = GestureDescription.Builder()
        for (stroke in gestures) {
            builder.addStroke(stroke)
        }
        return GestureDispatcher.dispatchGesture(this, builder.build())
    }

    // --- Node Query ---

    /**
     * Finds the first node in the active window matching all given filters.
     *
     * @param filters One or more [NodeFilter]s combined with AND logic.
     * @return The first matching [AccessibilityNodeInfo], or `null` if none found.
     *         The caller is responsible for recycling the returned node.
     */
    fun findNode(vararg filters: NodeFilter): AccessibilityNodeInfo? {
        val root = rootInActiveWindow ?: run {
            Log.w(TAG, "findNode: rootInActiveWindow is null")
            return null
        }
        return try {
            NodeQuery.findFirst(root, filters.toList())
        } finally {
            root.recycle()
        }
    }

    /**
     * Finds all nodes in the active window matching all given filters.
     *
     * @param filters One or more [NodeFilter]s combined with AND logic.
     * @return A list of matching [AccessibilityNodeInfo] nodes. The caller is
     *         responsible for recycling them via [NodeQuery.recycleNodes].
     */
    fun findAllNodes(vararg filters: NodeFilter): List<AccessibilityNodeInfo> {
        val root = rootInActiveWindow ?: run {
            Log.w(TAG, "findAllNodes: rootInActiveWindow is null")
            return emptyList()
        }
        return try {
            NodeQuery.findAll(root, filters.toList())
        } finally {
            root.recycle()
        }
    }

    // --- Info ---

    /**
     * Returns the package name of the currently focused application.
     *
     * @return The current foreground package name, or `null` if unknown.
     */
    fun getCurrentPackageName(): String? = currentPackageName

    // --- Global Actions ---

    /**
     * Presses the Home button.
     *
     * @return `true` if the action was performed.
     */
    fun pressHome(): Boolean {
        return performGlobalAction(GLOBAL_ACTION_HOME)
    }

    /**
     * Presses the Back button.
     *
     * @return `true` if the action was performed.
     */
    fun pressBack(): Boolean {
        return performGlobalAction(GLOBAL_ACTION_BACK)
    }

    /**
     * Opens the Recents / Overview screen.
     *
     * @return `true` if the action was performed.
     */
    fun pressRecents(): Boolean {
        return performGlobalAction(GLOBAL_ACTION_RECENTS)
    }

    /**
     * Opens the notification shade.
     *
     * @return `true` if the action was performed.
     */
    fun openNotifications(): Boolean {
        return performGlobalAction(GLOBAL_ACTION_NOTIFICATIONS)
    }

    /**
     * Opens the Quick Settings panel.
     *
     * @return `true` if the action was performed.
     */
    fun openQuickSettings(): Boolean {
        return performGlobalAction(GLOBAL_ACTION_QUICK_SETTINGS)
    }
}
