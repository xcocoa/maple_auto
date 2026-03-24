package com.maple.auto.engine.floatwindow

import android.animation.ObjectAnimator
import android.content.Context
import android.graphics.PixelFormat
import android.util.Log
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.WindowManager
import android.widget.FrameLayout
import android.widget.TextView
import com.maple.auto.engine.R

/**
 * Drop zone shown at the bottom of screen when the user drags the float window.
 * Dropping the float window onto this zone closes it.
 */
class DragDeleteView(private val context: Context) {

    private val windowManager: WindowManager =
        context.getSystemService(Context.WINDOW_SERVICE) as WindowManager

    private var deleteView: View? = null
    private var deleteText: TextView? = null
    private var isShowing = false
    private var deleteZoneTop = 0

    private val layoutParams: WindowManager.LayoutParams
        get() = WindowManager.LayoutParams(
            WindowManager.LayoutParams.MATCH_PARENT,
            DELETE_ZONE_HEIGHT_PX,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE or
                    WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.BOTTOM or Gravity.CENTER_HORIZONTAL
        }

    fun show() {
        if (isShowing) return

        try {
            val inflater = LayoutInflater.from(context)
            deleteView = inflater.inflate(R.layout.float_delete_zone, null).also { view ->
                deleteText = view.findViewById(R.id.delete_zone_text)
                view.alpha = 0f
            }

            val params = layoutParams
            windowManager.addView(deleteView, params)
            isShowing = true

            // Calculate delete zone position
            val displayMetrics = context.resources.displayMetrics
            deleteZoneTop = displayMetrics.heightPixels - DELETE_ZONE_HEIGHT_PX

            // Animate in
            ObjectAnimator.ofFloat(deleteView!!, "alpha", 0f, 1f).apply {
                duration = 200
                start()
            }

            Log.d(TAG, "Delete zone shown, top=$deleteZoneTop")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to show delete zone", e)
        }
    }

    fun hide() {
        if (!isShowing) return

        try {
            val view = deleteView ?: return
            ObjectAnimator.ofFloat(view, "alpha", view.alpha, 0f).apply {
                duration = 150
                addListener(object : android.animation.AnimatorListenerAdapter() {
                    override fun onAnimationEnd(animation: android.animation.Animator) {
                        try {
                            windowManager.removeView(view)
                        } catch (e: Exception) {
                            Log.e(TAG, "Failed to remove delete zone view", e)
                        }
                        deleteView = null
                        deleteText = null
                        isShowing = false
                    }
                })
                start()
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to hide delete zone", e)
            // Fallback: try to remove immediately
            try {
                deleteView?.let { windowManager.removeView(it) }
            } catch (ignored: Exception) {}
            deleteView = null
            deleteText = null
            isShowing = false
        }
    }

    /**
     * Checks if the given raw screen coordinates are within the delete zone.
     */
    fun isInDeleteZone(x: Int, y: Int): Boolean {
        if (!isShowing) return false
        return y >= deleteZoneTop
    }

    /**
     * Sets the visual highlighted state when the float window hovers over the delete zone.
     */
    fun setHighlighted(highlighted: Boolean) {
        deleteText?.text = if (highlighted) {
            context.getString(R.string.float_release_to_close)
        } else {
            context.getString(R.string.float_release_to_close)
        }
        deleteView?.alpha = if (highlighted) 1.0f else 0.7f
    }

    companion object {
        private const val TAG = "DragDeleteView"
        private val DELETE_ZONE_HEIGHT_PX = (80 * android.content.res.Resources.getSystem()
            .displayMetrics.density).toInt()
    }
}
