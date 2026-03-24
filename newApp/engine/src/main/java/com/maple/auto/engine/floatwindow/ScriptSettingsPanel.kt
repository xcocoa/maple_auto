package com.maple.auto.engine.floatwindow

import android.content.Context
import android.graphics.Color
import android.graphics.PixelFormat
import android.graphics.drawable.GradientDrawable
import android.os.Build
import android.text.InputType
import android.util.Log
import android.util.TypedValue
import android.view.Gravity
import android.view.LayoutInflater
import android.view.View
import android.view.WindowManager
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.CheckBox
import android.widget.EditText
import android.widget.FrameLayout
import android.widget.HorizontalScrollView
import android.widget.ImageButton
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.SeekBar
import android.widget.Spinner
import android.widget.Switch
import android.widget.TextView
import com.maple.auto.engine.R
import org.json.JSONArray
import org.json.JSONObject

/**
 * JSON-driven dynamic settings panel for script configuration.
 * Displayed as an overlay that slides up from the bottom of the screen.
 */
class ScriptSettingsPanel private constructor(
    private val context: Context,
    private val configJson: String,
    private val callback: OnSettingsSavedCallback
) {

    interface OnSettingsSavedCallback {
        fun onSaved(settings: Map<String, Any>)
        fun onCancelled()
    }

    private val windowManager: WindowManager =
        context.getSystemService(Context.WINDOW_SERVICE) as WindowManager

    private var panelView: View? = null
    private val valueHolders = mutableMapOf<String, ValueHolder>()
    private var isShowing = false

    private sealed class ValueHolder {
        class CheckBoxHolder(val checkBox: CheckBox) : ValueHolder()
        class EditTextHolder(val editText: EditText) : ValueHolder()
        class SpinnerHolder(val spinner: Spinner) : ValueHolder()
        class SeekBarHolder(val seekBar: SeekBar, val min: Int) : ValueHolder()
        class SwitchHolder(val switch: Switch) : ValueHolder()
    }

    private fun showPanel() {
        if (isShowing) return

        try {
            val config = JSONObject(configJson)
            panelView = LayoutInflater.from(context).inflate(R.layout.float_settings_panel, null)

            val titleText = panelView!!.findViewById<TextView>(R.id.settings_title)
            val btnClose = panelView!!.findViewById<ImageButton>(R.id.settings_btn_close)
            val contentContainer = panelView!!.findViewById<LinearLayout>(R.id.settings_content_container)
            val btnSave = panelView!!.findViewById<Button>(R.id.settings_btn_save)

            titleText.text = config.optString("title", "设置")

            btnClose.setOnClickListener { dismiss(cancelled = true) }
            btnSave.setOnClickListener { dismiss(cancelled = false) }

            // Build UI from JSON
            if (config.has("tabs")) {
                buildTabbedUI(config.getJSONArray("tabs"), contentContainer)
            } else if (config.has("items")) {
                buildItemList(config.getJSONArray("items"), contentContainer)
            }

            val params = WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or
                        WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
                PixelFormat.TRANSLUCENT
            ).apply {
                gravity = Gravity.BOTTOM
                windowAnimations = android.R.style.Animation_InputMethod
            }

            windowManager.addView(panelView, params)
            isShowing = true

            Log.d(TAG, "Settings panel shown")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to show settings panel", e)
            callback.onCancelled()
        }
    }

    private fun dismiss(cancelled: Boolean) {
        if (!isShowing) return

        try {
            if (cancelled) {
                callback.onCancelled()
            } else {
                callback.onSaved(collectValues())
            }

            panelView?.let { windowManager.removeView(it) }
            panelView = null
            isShowing = false
            valueHolders.clear()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to dismiss settings panel", e)
        }
    }

    private fun buildTabbedUI(tabs: JSONArray, container: LinearLayout) {
        // Create tab bar
        val tabBar = HorizontalScrollView(context).apply {
            isHorizontalScrollBarEnabled = false
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }

        val tabLayout = LinearLayout(context).apply {
            orientation = LinearLayout.HORIZONTAL
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }

        // Content area for each tab
        val contentPages = mutableListOf<LinearLayout>()
        val tabButtons = mutableListOf<TextView>()

        for (i in 0 until tabs.length()) {
            val tab = tabs.getJSONObject(i)
            val tabName = tab.optString("name", "选项卡 ${i + 1}")
            val items = tab.optJSONArray("items") ?: JSONArray()

            // Tab button
            val tabBtn = TextView(context).apply {
                text = tabName
                setPadding(dpToPx(16), dpToPx(12), dpToPx(16), dpToPx(12))
                setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f)
                setTextColor(if (i == 0) Color.parseColor("#2196F3") else Color.GRAY)
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.WRAP_CONTENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                )
            }
            tabButtons.add(tabBtn)
            tabLayout.addView(tabBtn)

            // Tab content
            val page = LinearLayout(context).apply {
                orientation = LinearLayout.VERTICAL
                visibility = if (i == 0) View.VISIBLE else View.GONE
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                )
            }
            buildItemList(items, page)
            contentPages.add(page)
        }

        // Wire up tab clicks
        for (i in tabButtons.indices) {
            tabButtons[i].setOnClickListener {
                for (j in tabButtons.indices) {
                    tabButtons[j].setTextColor(if (j == i) Color.parseColor("#2196F3") else Color.GRAY)
                    contentPages[j].visibility = if (j == i) View.VISIBLE else View.GONE
                }
            }
        }

        tabBar.addView(tabLayout)
        container.addView(tabBar)

        // Add divider
        container.addView(View(context).apply {
            setBackgroundColor(Color.parseColor("#E0E0E0"))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, dpToPx(1)
            ).apply {
                bottomMargin = dpToPx(8)
            }
        })

        for (page in contentPages) {
            container.addView(page)
        }
    }

    private fun buildItemList(items: JSONArray, container: LinearLayout) {
        for (i in 0 until items.length()) {
            val item = items.getJSONObject(i)
            val type = item.optString("type", "")
            val key = item.optString("key", "")
            val label = item.optString("label", key)

            when (type) {
                "checkbox" -> addCheckbox(container, key, label, item.optBoolean("default", false))
                "edittext" -> addEditText(container, key, label, item.optString("default", ""), item.optString("inputType", "text"))
                "spinner" -> addSpinner(container, key, label, item.optJSONArray("options"), item.optString("default", ""))
                "slider" -> addSlider(container, key, label, item.optInt("min", 0), item.optInt("max", 100), item.optInt("default", 50))
                "switch" -> addSwitch(container, key, label, item.optBoolean("default", false))
                "label" -> addLabel(container, label)
                else -> Log.w(TAG, "Unknown item type: $type")
            }
        }
    }

    private fun addCheckbox(container: LinearLayout, key: String, label: String, default: Boolean) {
        val checkBox = CheckBox(context).apply {
            text = label
            isChecked = default
            setPadding(dpToPx(16), dpToPx(8), dpToPx(16), dpToPx(8))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }
        container.addView(checkBox)
        if (key.isNotEmpty()) {
            valueHolders[key] = ValueHolder.CheckBoxHolder(checkBox)
        }
    }

    private fun addEditText(container: LinearLayout, key: String, label: String, default: String, inputTypeStr: String) {
        val wrapper = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(16), dpToPx(8), dpToPx(16), dpToPx(8))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }

        wrapper.addView(TextView(context).apply {
            text = label
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f)
            setTextColor(Color.DKGRAY)
        })

        val editText = EditText(context).apply {
            setText(default)
            this.inputType = when (inputTypeStr) {
                "number" -> InputType.TYPE_CLASS_NUMBER
                "numberDecimal" -> InputType.TYPE_CLASS_NUMBER or InputType.TYPE_NUMBER_FLAG_DECIMAL
                "phone" -> InputType.TYPE_CLASS_PHONE
                "textPassword" -> InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD
                else -> InputType.TYPE_CLASS_TEXT
            }
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }
        wrapper.addView(editText)
        container.addView(wrapper)

        if (key.isNotEmpty()) {
            valueHolders[key] = ValueHolder.EditTextHolder(editText)
        }
    }

    private fun addSpinner(container: LinearLayout, key: String, label: String, options: JSONArray?, default: String) {
        val wrapper = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(16), dpToPx(8), dpToPx(16), dpToPx(8))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }

        wrapper.addView(TextView(context).apply {
            text = label
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f)
            setTextColor(Color.DKGRAY)
        })

        val items = mutableListOf<String>()
        if (options != null) {
            for (i in 0 until options.length()) {
                items.add(options.getString(i))
            }
        }

        val spinner = Spinner(context).apply {
            adapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, items)
            val defaultIdx = items.indexOf(default)
            if (defaultIdx >= 0) setSelection(defaultIdx)
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }
        wrapper.addView(spinner)
        container.addView(wrapper)

        if (key.isNotEmpty()) {
            valueHolders[key] = ValueHolder.SpinnerHolder(spinner)
        }
    }

    private fun addSlider(container: LinearLayout, key: String, label: String, min: Int, max: Int, default: Int) {
        val wrapper = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(16), dpToPx(8), dpToPx(16), dpToPx(8))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }

        val valueLabel = TextView(context).apply {
            text = "$label: $default"
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f)
            setTextColor(Color.DKGRAY)
        }
        wrapper.addView(valueLabel)

        val seekBar = SeekBar(context).apply {
            this.max = max - min
            progress = default - min
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                this.min = 0
            }
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
            setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
                override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                    valueLabel.text = "$label: ${progress + min}"
                }
                override fun onStartTrackingTouch(seekBar: SeekBar?) {}
                override fun onStopTrackingTouch(seekBar: SeekBar?) {}
            })
        }
        wrapper.addView(seekBar)
        container.addView(wrapper)

        if (key.isNotEmpty()) {
            valueHolders[key] = ValueHolder.SeekBarHolder(seekBar, min)
        }
    }

    private fun addSwitch(container: LinearLayout, key: String, label: String, default: Boolean) {
        val switch = Switch(context).apply {
            text = label
            isChecked = default
            setPadding(dpToPx(16), dpToPx(8), dpToPx(16), dpToPx(8))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }
        container.addView(switch)
        if (key.isNotEmpty()) {
            valueHolders[key] = ValueHolder.SwitchHolder(switch)
        }
    }

    private fun addLabel(container: LinearLayout, label: String) {
        container.addView(TextView(context).apply {
            text = label
            setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f)
            setTextColor(Color.BLACK)
            setPadding(dpToPx(16), dpToPx(12), dpToPx(16), dpToPx(4))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        })
    }

    private fun collectValues(): Map<String, Any> {
        val result = mutableMapOf<String, Any>()
        for ((key, holder) in valueHolders) {
            result[key] = when (holder) {
                is ValueHolder.CheckBoxHolder -> holder.checkBox.isChecked
                is ValueHolder.EditTextHolder -> holder.editText.text.toString()
                is ValueHolder.SpinnerHolder -> holder.spinner.selectedItem?.toString() ?: ""
                is ValueHolder.SeekBarHolder -> holder.seekBar.progress + holder.min
                is ValueHolder.SwitchHolder -> holder.switch.isChecked
            }
        }
        return result
    }

    private fun dpToPx(dp: Int): Int {
        return TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP,
            dp.toFloat(),
            context.resources.displayMetrics
        ).toInt()
    }

    companion object {
        private const val TAG = "ScriptSettingsPanel"

        /**
         * Shows the settings panel overlay with dynamically generated UI from JSON config.
         *
         * @param context Application context
         * @param configJson JSON string defining the settings structure
         * @param callback Callback for save/cancel actions
         */
        fun show(context: Context, configJson: String, callback: OnSettingsSavedCallback) {
            ScriptSettingsPanel(context, configJson, callback).showPanel()
        }
    }
}
