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
import com.maple.auto.capture.MediaProjectionStore
import com.maple.auto.capture.ScreenCaptureRequestActivity
import com.maple.auto.capture.ScreenCaptureService
import com.maple.auto.diagnostics.DiagnosticTool
import com.maple.auto.engine.GameEngineManager
import com.maple.auto.service.FloatingWindowService
import com.maple.auto.service.GestureService
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * 主界面：权限引导 + 启动控制
 *
 * 优化体验：
 * - 已授权权限自动隐藏
 * - 自动请求截图权限
 * - 全部授权后可一键启动
 */
class MainActivity : AppCompatActivity() {

    companion object {
        private const val TAG = "MainActivity"
        private const val REQUEST_CAPTURE = 1001
    }

    private lateinit var permissionContainer: LinearLayout
    private lateinit var accessibilityCard: LinearLayout
    private lateinit var overlayCard: LinearLayout
    private lateinit var captureCard: LinearLayout
    private lateinit var captureBtn: Button
    private lateinit var startBtn: Button
    private lateinit var stopBtn: Button
    private lateinit var engineStatusView: TextView
    private var diagnosticTextView: TextView? = null

    private lateinit var diagnosticTool: DiagnosticTool

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        diagnosticTool = DiagnosticTool(this)
        buildUI()

        diagnosticTool.printReport()
    }

    override fun onDestroy() {
        // 引擎现在由单例管理，Activity 销毁时不需要处理
        super.onDestroy()
    }

    override fun onResume() {
        super.onResume()
        refreshPermissionStatus()
    }

    /**
     * 代码构建 UI
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

        // 权限容器（动态显示/隐藏）
        permissionContainer = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
        }
        container.addView(permissionContainer)

        // 无障碍权限卡片
        accessibilityCard = createPermissionCard(
            getString(R.string.accessibility_label),
            getString(R.string.accessibility_desc)
        ) { button ->
            button.setOnClickListener { openAccessibilitySettings() }
        }
        permissionContainer.addView(accessibilityCard)

        // 悬浮窗权限卡片
        overlayCard = createPermissionCard(
            getString(R.string.overlay_label),
            getString(R.string.overlay_desc)
        ) { button ->
            button.setOnClickListener { openOverlaySettings() }
        }
        permissionContainer.addView(overlayCard)

        // 截图权限卡片
        captureCard = createPermissionCard(
            getString(R.string.capture_label),
            getString(R.string.capture_desc)
        ) { button ->
            captureBtn = button
            button.setOnClickListener { requestCapturePermission() }
        }
        permissionContainer.addView(captureCard)

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

        // 测试按钮
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
                Log.d(TAG, "Test Gesture button clicked")
                GameEngineManager.testGesture { results ->
                    runOnUiThread { engineStatusView.text = "Gesture: $results" }
                }
            }
        })

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
                Log.d(TAG, "Test Screenshot button clicked")
                GameEngineManager.testScreenshot { results ->
                    runOnUiThread { engineStatusView.text = "Screenshot: $results" }
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
        buttonSetup: (Button) -> Unit
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
                text = getString(R.string.btn_granted)
                setTextColor(0xFF4CAF50.toInt())
                textSize = 12f
                setPadding(dp(8), 0, dp(8), 0)
                visibility = View.GONE
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
                tag = statusText  // 保存statusText引用以便更新
            }
            addView(button)
            buttonSetup(button)
        }
    }

    // === 权限检查 ===

    private fun refreshPermissionStatus() {
        val accessibility = isAccessibilityEnabled()
        val overlay = Settings.canDrawOverlays(this)
        // 检查截图服务是否运行，或者是否有保存的授权 token
        val capture = ScreenCaptureService.instance != null || MediaProjectionStore.hasToken()

        Log.d(TAG, "Permission status: accessibility=$accessibility, overlay=$overlay, capture=$capture")

        // 更新权限卡片显示状态
        updateCardVisibility(accessibilityCard, accessibility)
        updateCardVisibility(overlayCard, overlay)
        updateCardVisibility(captureCard, capture)

        // 所有权限就绪时才允许启动
        val allReady = accessibility && overlay && capture
        Log.d(TAG, "Start button enabled: $allReady")
        startBtn.isEnabled = allReady
        startBtn.alpha = if (allReady) 1f else 0.5f

        // 自动请求截图权限（如果其他权限已就绪）
        if (accessibility && overlay && !capture) {
            Log.d(TAG, "Auto-requesting capture permission")
            requestCapturePermission()
        }
    }

    private fun updateCardVisibility(card: LinearLayout, granted: Boolean) {
        // card 结构: [textColumn, statusText, button]
        if (card.childCount >= 3) {
            val statusText = card.getChildAt(1) as? TextView
            val button = card.getChildAt(2) as? Button
            if (granted) {
                button?.visibility = View.GONE
                statusText?.visibility = View.VISIBLE
            } else {
                button?.visibility = View.VISIBLE
                statusText?.visibility = View.GONE
            }
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
        startActivityForResult(ScreenCaptureRequestActivity.createIntent(this), REQUEST_CAPTURE)
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode == REQUEST_CAPTURE) {
            refreshPermissionStatus()
        }
    }

    // === 控制逻辑 ===

    private fun onStartClicked() {
        Log.d(TAG, "onStartClicked called")

        // 先确保截图服务运行
        if (ScreenCaptureService.instance == null) {
            if (MediaProjectionStore.hasToken()) {
                // 有保存的 token，直接启动截图服务
                Log.d(TAG, "Starting capture service with stored token")
                val serviceIntent = Intent(this, ScreenCaptureService::class.java)
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    startForegroundService(serviceIntent)
                } else {
                    startService(serviceIntent)
                }
            } else {
                Log.w(TAG, "No capture token, should request permission first")
            }
        }

        FloatingWindowService.start(this)

        GameEngineManager.onError = { error ->
            runOnUiThread {
                engineStatusView.text = getString(R.string.state_error)
                engineStatusView.setTextColor(0xFFF44336.toInt())
                Log.e(TAG, "Engine error: $error")
            }
        }
        GameEngineManager.start()

        // 延迟设置回调，等待服务创建完成
        // 使用轮询方式等待服务实例创建
        GlobalScope.launch(Dispatchers.Main) {
            var retries = 0
            while (retries < 20 && FloatingWindowService.instance == null) {
                delay(100)
                retries++
            }
            FloatingWindowService.instance?.let { fw ->
                fw.onStartClicked = {
                    Log.d(TAG, "Floating window play button clicked")
                    GameEngineManager.resume()
                }
                fw.onPauseClicked = {
                    Log.d(TAG, "Floating window pause button clicked")
                    GameEngineManager.pause()
                }
                fw.onStopClicked = {
                    Log.d(TAG, "Floating window stop button clicked")
                    onStopClicked()
                }
                Log.d(TAG, "Floating window callbacks set successfully")
            } ?: run {
                Log.e(TAG, "FloatingWindowService.instance is still null after ${retries * 100}ms")
            }
        }

        startBtn.isEnabled = false
        startBtn.alpha = 0.5f
        stopBtn.isEnabled = true
        stopBtn.alpha = 1f
        engineStatusView.text = getString(R.string.state_running)
        engineStatusView.setTextColor(0xFF4CAF50.toInt())
    }

    private fun onStopClicked() {
        Log.d(TAG, "Stop clicked")

        GameEngineManager.stop()
        FloatingWindowService.stop(this)

        startBtn.isEnabled = true
        startBtn.alpha = 1f
        stopBtn.isEnabled = false
        stopBtn.alpha = 0.5f
        engineStatusView.text = getString(R.string.state_idle)
        engineStatusView.setTextColor(0xFF999999.toInt())
    }
}