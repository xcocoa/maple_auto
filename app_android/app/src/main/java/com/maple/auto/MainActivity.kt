package com.maple.auto

import android.accessibilityservice.AccessibilityServiceInfo
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.util.Log
import android.view.Gravity
import android.view.View
import android.view.accessibility.AccessibilityManager
import android.widget.Button
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.maple.auto.capture.ScreenCaptureRequestActivity
import com.maple.auto.capture.ScreenCaptureService
import com.maple.auto.diagnostics.DiagnosticTool
import com.maple.auto.engine.GameEngineManager
import com.maple.auto.service.FloatingWindowService
import com.maple.auto.service.GestureService

/**
 * 主界面：权限引导 + 启动控制
 *
 * 引导用户开启三项权限：
 * 1. 无障碍服务（手势注入）
 * 2. 悬浮窗权限（操作面板）
 * 3. 截图权限（画面识别）
 */
class MainActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "MainActivity"
    }

    private lateinit var accessibilityStatusView: TextView
    private lateinit var accessibilityBtn: Button
    private lateinit var overlayStatusView: TextView
    private lateinit var overlayBtn: Button
    private lateinit var captureStatusView: TextView
    private lateinit var captureBtn: Button
    private lateinit var startBtn: Button
    private lateinit var stopBtn: Button
    private lateinit var engineStatusView: TextView
    private var diagnosticTextView: TextView? = null

    private val engineManager = GameEngineManager()
    private lateinit var diagnosticTool: DiagnosticTool

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        diagnosticTool = DiagnosticTool(this)
        buildUI()

        // 输出诊断信息到 Logcat
        diagnosticTool.printReport()
    }

    override fun onDestroy() {
        engineManager.destroy()
        super.onDestroy()
    }

    override fun onResume() {
        super.onResume()
        refreshPermissionStatus()
    }

    /**
     * 代码构建 UI（避免 layout XML 依赖，简化骨架阶段）
     */
    private fun buildUI() {
        val density = resources.displayMetrics.density
        fun dp(v: Int) = (v * density).toInt()

        val root = ScrollView(this).apply {
            setBackgroundColor(0xFFFAFAFA.toInt())
        }

        val container = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(24), dp(32), dp(24), dp(24))
        }

        // 标题
        container.addView(TextView(this).apply {
            text = getString(R.string.app_name)
            setTextColor(0xFFFF6B35.toInt())
            textSize = 28f
            gravity = Gravity.CENTER
            setPadding(0, 0, 0, dp(8))
        })

        container.addView(TextView(this).apply {
            text = getString(R.string.permission_title)
            setTextColor(0xFF666666.toInt())
            textSize = 14f
            gravity = Gravity.CENTER
            setPadding(0, 0, 0, dp(24))
        })

        // 权限卡片：无障碍
        container.addView(createPermissionCard(
            getString(R.string.accessibility_label),
            getString(R.string.accessibility_desc)
        ) { views ->
            accessibilityStatusView = views.first
            accessibilityBtn = views.second
            accessibilityBtn.setOnClickListener { openAccessibilitySettings() }
        })

        // 权限卡片：悬浮窗
        container.addView(createPermissionCard(
            getString(R.string.overlay_label),
            getString(R.string.overlay_desc)
        ) { views ->
            overlayStatusView = views.first
            overlayBtn = views.second
            overlayBtn.setOnClickListener { openOverlaySettings() }
        })

        // 权限卡片：截图
        container.addView(createPermissionCard(
            getString(R.string.capture_label),
            getString(R.string.capture_desc)
        ) { views ->
            captureStatusView = views.first
            captureBtn = views.second
            captureBtn.setOnClickListener { requestCapturePermission() }
        })

        // 分隔
        container.addView(View(this).apply {
            setBackgroundColor(0xFFDDDDDD.toInt())
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, (1 * density).toInt()
            ).apply { topMargin = dp(16); bottomMargin = dp(16) }
        })

        // 引擎状态
        engineStatusView = TextView(this).apply {
            text = getString(R.string.state_idle)
            setTextColor(0xFF999999.toInt())
            textSize = 14f
            gravity = Gravity.CENTER
            setPadding(0, 0, 0, dp(16))
        }
        container.addView(engineStatusView)

        // 启动按钮
        startBtn = Button(this).apply {
            text = getString(R.string.btn_start)
            setBackgroundColor(0xFF4CAF50.toInt())
            setTextColor(0xFFFFFFFF.toInt())
            textSize = 18f
            setPadding(0, dp(12), 0, dp(12))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }
            setOnClickListener { onStartClicked() }
        }
        container.addView(startBtn)

        // 停止按钮
        stopBtn = Button(this).apply {
            text = getString(R.string.btn_stop)
            setBackgroundColor(0xFFF44336.toInt())
            setTextColor(0xFFFFFFFF.toInt())
            textSize = 18f
            setPadding(0, dp(12), 0, dp(12))
            isEnabled = false
            alpha = 0.5f
            setOnClickListener { onStopClicked() }
        }
        container.addView(stopBtn)

        // 测试手势按钮
        container.addView(Button(this).apply {
            text = "Test Gesture"
            setBackgroundColor(0xFF2196F3.toInt())
            setTextColor(0xFFFFFFFF.toInt())
            textSize = 16f
            setPadding(0, dp(10), 0, dp(10))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { topMargin = dp(8) }
            setOnClickListener {
                Log.d(TAG, "Test Gesture clicked")
                engineManager.testGesture { results ->
                    Log.d(TAG, "Gesture test results: $results")
                    engineStatusView.text = "Gesture: $results"
                }
            }
        })

        // 测试截图按钮
        container.addView(Button(this).apply {
            text = "Test Screenshot"
            setBackgroundColor(0xFFFF9800.toInt())
            setTextColor(0xFFFFFFFF.toInt())
            textSize = 16f
            setPadding(0, dp(10), 0, dp(10))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { topMargin = dp(8) }
            setOnClickListener {
                Log.d(TAG, "Test Screenshot clicked")
                engineManager.testScreenshot { results ->
                    Log.d(TAG, "Screenshot test results: $results")
                    engineStatusView.text = "Screenshot: $results"
                }
            }
        })

        // 分隔
        container.addView(View(this).apply {
            setBackgroundColor(0xFFDDDDDD.toInt())
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, (1 * density).toInt()
            ).apply { topMargin = dp(16); bottomMargin = dp(16) }
        })

        // 诊断信息
        diagnosticTextView = TextView(this).apply {
            text = diagnosticTool.getSummary()
            setTextColor(0xFF888888.toInt())
            textSize = 10f
            typeface = android.graphics.Typeface.MONOSPACE
            setPadding(0, 0, 0, dp(8))
        }
        container.addView(diagnosticTextView)

        root.addView(container)
        setContentView(root)
    }

    private fun createPermissionCard(
        title: String,
        desc: String,
        viewProvider: (Pair<TextView, Button>) -> Unit
    ): LinearLayout {
        val density = resources.displayMetrics.density
        fun dp(v: Int) = (v * density).toInt()

        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            setBackgroundColor(0xFFFFFFFF.toInt())
            setPadding(dp(16), dp(12), dp(16), dp(12))
            gravity = Gravity.CENTER_VERTICAL
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply { bottomMargin = dp(8) }

            val textColumn = LinearLayout(this@MainActivity).apply {
                orientation = LinearLayout.VERTICAL
                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)

                addView(TextView(this@MainActivity).apply {
                    text = title
                    setTextColor(0xFF333333.toInt())
                    textSize = 16f
                })

                addView(TextView(this@MainActivity).apply {
                    text = desc
                    setTextColor(0xFF999999.toInt())
                    textSize = 12f
                })
            }
            addView(textColumn)

            val statusText = TextView(this@MainActivity).apply {
                setTextColor(0xFFFF6B35.toInt())
                textSize = 12f
                setPadding(dp(8), 0, dp(8), 0)
            }
            addView(statusText)

            val button = Button(this@MainActivity).apply {
                text = getString(R.string.btn_grant)
                setBackgroundColor(0xFFFF6B35.toInt())
                setTextColor(0xFFFFFFFF.toInt())
                textSize = 13f
                setPadding(dp(12), dp(4), dp(12), dp(4))
                minWidth = 0
                minimumWidth = 0
            }
            addView(button)

            viewProvider(Pair(statusText, button))
        }
    }

    // === 权限检查 ===

    private fun refreshPermissionStatus() {
        val accessibility = isAccessibilityEnabled()
        val overlay = Settings.canDrawOverlays(this)
        val capture = ScreenCaptureService.instance != null

        updatePermissionUI(accessibilityStatusView, accessibilityBtn, accessibility)
        updatePermissionUI(overlayStatusView, overlayBtn, overlay)
        updatePermissionUI(captureStatusView, captureBtn, capture)

        // 所有权限就绪时才允许启动
        val allReady = accessibility && overlay && capture
        startBtn.isEnabled = allReady
        startBtn.alpha = if (allReady) 1f else 0.5f
    }

    private fun updatePermissionUI(statusView: TextView, button: Button, granted: Boolean) {
        if (granted) {
            statusView.text = getString(R.string.btn_granted)
            statusView.setTextColor(0xFF4CAF50.toInt())
            button.visibility = View.GONE
        } else {
            statusView.text = ""
            button.visibility = View.VISIBLE
        }
    }

    private fun isAccessibilityEnabled(): Boolean {
        val am = getSystemService(Context.ACCESSIBILITY_SERVICE) as AccessibilityManager
        val enabledServices = am.getEnabledAccessibilityServiceList(AccessibilityServiceInfo.FEEDBACK_ALL_MASK)
        return enabledServices.any {
            it.resolveInfo?.serviceInfo?.let { si ->
                "${si.packageName}/${si.name}" == "$packageName/${GestureService::class.java.name}"
            } ?: false
        }
    }

    // === 权限跳转 ===

    private fun openAccessibilitySettings() {
        startActivity(Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS))
    }

    private fun openOverlaySettings() {
        startActivity(Intent(
            Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
            Uri.parse("package:$packageName")
        ))
    }

    private fun requestCapturePermission() {
        startActivity(ScreenCaptureRequestActivity.createIntent(this))
    }

    // === 控制逻辑 ===

    private fun onStartClicked() {
        Log.d(TAG, "Start clicked")

        // 启动浮窗服务
        FloatingWindowService.start(this)

        // 启动游戏引擎
        engineManager.onError = { error ->
            runOnUiThread {
                engineStatusView.text = getString(R.string.state_error)
                engineStatusView.setTextColor(0xFFF44336.toInt())
                Log.e(TAG, "Engine error: $error")
            }
        }
        engineManager.start()

        // 连接浮窗按钮回调
        FloatingWindowService.instance?.let { fw ->
            fw.onStartClicked = { engineManager.resume() }
            fw.onPauseClicked = { engineManager.pause() }
            fw.onStopClicked = { onStopClicked() }
        }

        // 更新 UI
        startBtn.isEnabled = false
        startBtn.alpha = 0.5f
        stopBtn.isEnabled = true
        stopBtn.alpha = 1f
        engineStatusView.text = getString(R.string.state_running)
        engineStatusView.setTextColor(0xFF4CAF50.toInt())
    }

    private fun onStopClicked() {
        Log.d(TAG, "Stop clicked")

        // 停止游戏引擎
        engineManager.stop()

        // 停止浮窗
        FloatingWindowService.stop(this)

        startBtn.isEnabled = true
        startBtn.alpha = 1f
        stopBtn.isEnabled = false
        stopBtn.alpha = 0.5f
        engineStatusView.text = getString(R.string.state_idle)
        engineStatusView.setTextColor(0xFF999999.toInt())
    }
}
