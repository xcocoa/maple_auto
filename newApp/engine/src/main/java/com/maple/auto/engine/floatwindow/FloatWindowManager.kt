package com.maple.auto.engine.floatwindow

import android.content.Context
import android.content.res.Configuration
import android.graphics.PixelFormat
import android.os.CountDownTimer
import android.util.Log
import android.view.Gravity
import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import com.maple.auto.common.model.ScriptState
import com.maple.auto.engine.R

/**
 * Manages the floating window overlay lifecycle including show/hide,
 * drag behavior, auto-collapse, and drag-to-delete.
 */
class FloatWindowManager(private val context: Context) {

    private val windowManager: WindowManager =
        context.getSystemService(Context.WINDOW_SERVICE) as WindowManager

    private var floatView: FloatWindowView? = null
    private var dragDeleteView: DragDeleteView? = null
    private var isShowing = false
    private var actionCallback: FloatWindowView.OnFloatActionListener? = null

    private var autoHideTimer: CountDownTimer? = null
    private var isCollapsed = false

    // Drag tracking
    private var initialX = 0
    private var initialY = 0
    private var initialTouchX = 0f
    private var initialTouchY = 0f
    private var isDragging = false

    private val layoutParams: WindowManager.LayoutParams
        get() = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            x = 0
            y = 200
        }

    fun setActionCallback(callback: FloatWindowView.OnFloatActionListener) {
        this.actionCallback = callback
        floatView?.setOnFloatActionListener(callback)
    }

    fun show() {
        if (isShowing) return

        try {
            val inflater = LayoutInflater.from(context)
            floatView = FloatWindowView(context).also { view ->
                actionCallback?.let { view.setOnFloatActionListener(it) }
                setupTouchListener(view)
            }

            dragDeleteView = DragDeleteView(context)

            val params = layoutParams
            windowManager.addView(floatView, params)
            isShowing = true
            isCollapsed = false
            resetAutoHideTimer()

            Log.d(TAG, "Float window shown")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to show float window", e)
        }
    }

    fun hide() {
        if (!isShowing) return

        try {
            cancelAutoHideTimer()
            floatView?.let { windowManager.removeView(it) }
            floatView = null
            dragDeleteView?.hide()
            dragDeleteView = null
            isShowing = false
            Log.d(TAG, "Float window hidden")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to hide float window", e)
        }
    }

    fun updateState(state: ScriptState) {
        floatView?.setState(state)
        if (isCollapsed) {
            expandView()
        }
        resetAutoHideTimer()
    }

    fun setScriptName(name: String) {
        floatView?.setScriptName(name)
    }

    fun showSettings(configJson: String) {
        ScriptSettingsPanel.show(context, configJson, object : ScriptSettingsPanel.OnSettingsSavedCallback {
            override fun onSaved(settings: Map<String, Any>) {
                Log.d(TAG, "Settings saved: $settings")
            }

            override fun onCancelled() {
                Log.d(TAG, "Settings cancelled")
            }
        })
    }

    fun destroy() {
        hide()
        actionCallback = null
    }

    fun onConfigurationChanged(newConfig: Configuration) {
        if (!isShowing) return
        // Re-position the float window within new screen bounds
        try {
            val view = floatView ?: return
            val params = view.layoutParams as? WindowManager.LayoutParams ?: return
            val displayMetrics = context.resources.displayMetrics
            val screenWidth = displayMetrics.widthPixels
            val screenHeight = displayMetrics.heightPixels

            if (params.x > screenWidth - view.width) {
                params.x = screenWidth - view.width
            }
            if (params.y > screenHeight - view.height) {
                params.y = screenHeight - view.height
            }
            params.x = params.x.coerceAtLeast(0)
            params.y = params.y.coerceAtLeast(0)

            windowManager.updateViewLayout(view, params)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to handle configuration change", e)
        }
    }

    private fun setupTouchListener(view: FloatWindowView) {
        view.setOnTouchListener(object : View.OnTouchListener {
            override fun onTouch(v: View, event: MotionEvent): Boolean {
                val params = v.layoutParams as WindowManager.LayoutParams

                when (event.action) {
                    MotionEvent.ACTION_DOWN -> {
                        initialX = params.x
                        initialY = params.y
                        initialTouchX = event.rawX
                        initialTouchY = event.rawY
                        isDragging = false
                        cancelAutoHideTimer()
                        return false // Allow child views to receive events initially
                    }

                    MotionEvent.ACTION_MOVE -> {
                        val dx = event.rawX - initialTouchX
                        val dy = event.rawY - initialTouchY

                        if (!isDragging && (Math.abs(dx) > CLICK_THRESHOLD || Math.abs(dy) > CLICK_THRESHOLD)) {
                            isDragging = true
                            dragDeleteView?.show()
                        }

                        if (isDragging) {
                            params.x = (initialX + dx).toInt()
                            params.y = (initialY + dy).toInt()
                            try {
                                windowManager.updateViewLayout(v, params)
                            } catch (e: Exception) {
                                Log.e(TAG, "Failed to update view layout", e)
                            }

                            // Highlight delete zone if hovering over it
                            dragDeleteView?.setHighlighted(
                                dragDeleteView?.isInDeleteZone(
                                    event.rawX.toInt(),
                                    event.rawY.toInt()
                                ) == true
                            )
                            return true
                        }
                        return false
                    }

                    MotionEvent.ACTION_UP -> {
                        if (isDragging) {
                            dragDeleteView?.hide()

                            if (dragDeleteView?.isInDeleteZone(
                                    event.rawX.toInt(),
                                    event.rawY.toInt()
                                ) == true
                            ) {
                                // User dropped in delete zone — close
                                actionCallback?.onClose()
                                return true
                            }

                            isDragging = false
                            resetAutoHideTimer()
                            return true
                        }

                        // It was a tap (not a drag)
                        if (isCollapsed) {
                            expandView()
                            resetAutoHideTimer()
                            return true
                        }

                        resetAutoHideTimer()
                        return false // Let click propagate to child buttons
                    }

                    MotionEvent.ACTION_CANCEL -> {
                        isDragging = false
                        dragDeleteView?.hide()
                        resetAutoHideTimer()
                        return false
                    }
                }
                return false
            }
        })
    }

    private fun collapseView() {
        if (isCollapsed) return
        isCollapsed = true
        floatView?.setCollapsed(true)
        try {
            floatView?.let { windowManager.updateViewLayout(it, it.layoutParams) }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to collapse view", e)
        }
    }

    private fun expandView() {
        if (!isCollapsed) return
        isCollapsed = false
        floatView?.setCollapsed(false)
        try {
            floatView?.let { windowManager.updateViewLayout(it, it.layoutParams) }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to expand view", e)
        }
    }

    private fun resetAutoHideTimer() {
        cancelAutoHideTimer()
        autoHideTimer = object : CountDownTimer(AUTO_HIDE_DELAY, AUTO_HIDE_DELAY) {
            override fun onTick(millisUntilFinished: Long) {}
            override fun onFinish() {
                collapseView()
            }
        }.start()
    }

    private fun cancelAutoHideTimer() {
        autoHideTimer?.cancel()
        autoHideTimer = null
    }

    companion object {
        private const val TAG = "FloatWindowManager"
        private const val AUTO_HIDE_DELAY = 5000L
        private const val CLICK_THRESHOLD = 10f
    }
}
