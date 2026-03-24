package com.maple.auto.engine.floatwindow

import android.content.Context
import android.util.AttributeSet
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.widget.ImageButton
import android.widget.LinearLayout
import android.widget.TextView
import com.maple.auto.common.model.ScriptState
import com.maple.auto.engine.R

/**
 * Custom view for the floating window toolbar.
 * Supports full mode (toolbar with buttons) and collapsed/mini mode (small circle).
 */
class FloatWindowView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : LinearLayout(context, attrs, defStyleAttr) {

    private val btnPlayPause: ImageButton
    private val btnStop: ImageButton
    private val btnSettings: ImageButton
    private val btnClose: ImageButton
    private val tvScriptName: TextView
    private val toolbarContainer: LinearLayout
    private val miniIndicator: View
    private val stateIndicator: View

    private var listener: OnFloatActionListener? = null
    private var currentState: ScriptState = ScriptState.FREE

    interface OnFloatActionListener {
        fun onPlay()
        fun onPause()
        fun onStop()
        fun onSettings()
        fun onClose()
    }

    init {
        LayoutInflater.from(context).inflate(R.layout.float_window, this, true)

        toolbarContainer = findViewById(R.id.float_toolbar_container)
        miniIndicator = findViewById(R.id.float_mini_indicator)
        stateIndicator = findViewById(R.id.float_state_indicator)
        btnPlayPause = findViewById(R.id.float_btn_play_pause)
        btnStop = findViewById(R.id.float_btn_stop)
        btnSettings = findViewById(R.id.float_btn_settings)
        btnClose = findViewById(R.id.float_btn_close)
        tvScriptName = findViewById(R.id.float_tv_script_name)

        setupClickListeners()
        setState(ScriptState.FREE)
    }

    fun setOnFloatActionListener(listener: OnFloatActionListener) {
        this.listener = listener
    }

    fun setState(state: ScriptState) {
        currentState = state
        when (state) {
            ScriptState.FREE -> {
                btnPlayPause.setImageResource(R.drawable.ic_baseline_play_arrow_24)
                btnPlayPause.contentDescription = context.getString(R.string.float_play)
                stateIndicator.setBackgroundColor(0xFF888888.toInt())
            }
            ScriptState.LOAD -> {
                btnPlayPause.setImageResource(R.drawable.ic_baseline_play_arrow_24)
                btnPlayPause.contentDescription = context.getString(R.string.float_play)
                stateIndicator.setBackgroundColor(0xFF2196F3.toInt()) // Blue
            }
            ScriptState.RUNNING -> {
                btnPlayPause.setImageResource(R.drawable.ic_baseline_pause_24)
                btnPlayPause.contentDescription = context.getString(R.string.float_pause)
                stateIndicator.setBackgroundColor(0xFF4CAF50.toInt()) // Green
            }
            ScriptState.PAUSE -> {
                btnPlayPause.setImageResource(R.drawable.ic_baseline_play_arrow_24)
                btnPlayPause.contentDescription = context.getString(R.string.float_play)
                stateIndicator.setBackgroundColor(0xFFFFC107.toInt()) // Yellow
            }
            ScriptState.ERROR -> {
                btnPlayPause.setImageResource(R.drawable.ic_baseline_play_arrow_24)
                btnPlayPause.contentDescription = context.getString(R.string.float_play)
                stateIndicator.setBackgroundColor(0xFFF44336.toInt()) // Red
            }
        }
    }

    fun setScriptName(name: String) {
        tvScriptName.text = name
        tvScriptName.visibility = if (name.isNotBlank()) View.VISIBLE else View.GONE
    }

    fun setCollapsed(collapsed: Boolean) {
        if (collapsed) {
            toolbarContainer.visibility = View.GONE
            tvScriptName.visibility = View.GONE
            miniIndicator.visibility = View.VISIBLE
            // Set mini indicator color based on current state
            when (currentState) {
                ScriptState.RUNNING -> miniIndicator.setBackgroundColor(0xFF4CAF50.toInt())
                ScriptState.PAUSE -> miniIndicator.setBackgroundColor(0xFFFFC107.toInt())
                ScriptState.ERROR -> miniIndicator.setBackgroundColor(0xFFF44336.toInt())
                else -> miniIndicator.setBackgroundColor(0xFF888888.toInt())
            }
        } else {
            toolbarContainer.visibility = View.VISIBLE
            miniIndicator.visibility = View.GONE
            // Restore script name visibility
            if (tvScriptName.text.isNotBlank()) {
                tvScriptName.visibility = View.VISIBLE
            }
        }
    }

    private fun setupClickListeners() {
        btnPlayPause.setOnClickListener {
            when (currentState) {
                ScriptState.RUNNING -> listener?.onPause()
                else -> listener?.onPlay()
            }
        }

        btnStop.setOnClickListener {
            listener?.onStop()
        }

        btnSettings.setOnClickListener {
            listener?.onSettings()
        }

        btnClose.setOnClickListener {
            listener?.onClose()
        }
    }

    companion object {
        private const val TAG = "FloatWindowView"
    }
}
