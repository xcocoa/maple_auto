package com.maple.auto.service

import android.annotation.SuppressLint
import android.app.Notification
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.graphics.PixelFormat
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.util.Log
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.app.NotificationCompat
import com.maple.auto.MainActivity
import com.maple.auto.MapleAutoApp
import com.maple.auto.R

/**
 * 悬浮窗服务
 * 参考 huoji FloatingWindowService.java 实现
 *
 * 提供一个可拖动的悬浮操作面板，包含：
 * - 运行/暂停/停止按钮
 * - 当前状态、FPS、运行时长、击杀数、错误数等实时信息
 * - 迷你化/展开切换
 * - 可折叠的详细信息面板
 */
class FloatingWindowService : Service() {

    companion object {
        private const val TAG = "FloatingWindow"
        private const val NOTIFICATION_ID = 2002

        @Volatile
        var instance: FloatingWindowService? = null
            private set

        fun start(context: Context) {
            val intent = Intent(context, FloatingWindowService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(intent)
            } else {
                context.startService(intent)
            }
        }

        fun stop(context: Context) {
            context.stopService(Intent(context, FloatingWindowService::class.java))
        }
    }

    private lateinit var windowManager: WindowManager
    private var floatingView: View? = null
    private var miniView: View? = null
    private lateinit var layoutParams: WindowManager.LayoutParams

    // 状态显示
    private var statusTextView: TextView? = null
    private var fpsTextView: TextView? = null
    private var runtimeTextView: TextView? = null
    private var statsTextView: TextView? = null
    private var screenInfoTextView: TextView? = null
    private var detailsContainer: LinearLayout? = null

    private var isExpanded = true
    private var isDetailsExpanded = false

    // 拖动相关
    private var initialX = 0
    private var initialY = 0
    private var initialTouchX = 0f
    private var initialTouchY = 0f

    // 主线程 Handler
    private val mainHandler = Handler(Looper.getMainLooper())

    // 状态回调
    var onStartClicked: (() -> Unit)? = null
    var onPauseClicked: (() -> Unit)? = null
    var onStopClicked: (() -> Unit)? = null

    override fun onCreate() {
        super.onCreate()
        instance = this
        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        startForeground(NOTIFICATION_ID, createNotification())
        createFloatingPanel()
        Log.d(TAG, "FloatingWindowService created")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        removeFloatingViews()
        instance = null
        super.onDestroy()
        Log.d(TAG, "FloatingWindowService destroyed")
    }

    /**
     * 更新状态文字（简单状态）
     */
    fun updateStatus(status: String) {
        mainHandler.post {
            statusTextView?.text = status
        }
    }

    /**
     * 更新完整引擎统计信息
     * 由 GameEngineManager 周期性调用
     */
    fun updateStats(stats: Map<String, Any>) {
        mainHandler.post {
            try {
                // 当前状态
                val state = stats["state"] as? String ?: "unknown"
                val paused = stats["paused"] as? Boolean ?: false
                val statusText = if (paused) "$state (paused)" else state
                statusTextView?.text = statusText

                // FPS
                val fps = stats["fps"] as? Number ?: 0
                fpsTextView?.text = "FPS: $fps"

                // 运行时长
                val elapsed = (stats["elapsed"] as? Number)?.toDouble() ?: 0.0
                runtimeTextView?.text = "Runtime: ${formatDuration(elapsed)}"

                // 详细统计
                @Suppress("UNCHECKED_CAST")
                val gameStats = stats["stats"] as? Map<String, Any>
                if (gameStats != null) {
                    val kills = gameStats["monsters_defeated"] ?: 0
                    val npcs = gameStats["npcs_interacted"] ?: 0
                    val stages = gameStats["stages_cleared"] ?: 0
                    val deaths = gameStats["deaths"] ?: 0
                    val stuck = gameStats["stuck_recoveries"] ?: 0
                    statsTextView?.text = "K:$kills N:$npcs S:$stages D:$deaths R:$stuck"
                }

                // 屏幕信息
                @Suppress("UNCHECKED_CAST")
                val screen = stats["screen"] as? Map<String, Any>
                if (screen != null) {
                    val w = screen["width"] ?: "?"
                    val h = screen["height"] ?: "?"
                    screenInfoTextView?.text = "${w}x${h}"
                }
            } catch (e: Exception) {
                Log.w(TAG, "Failed to update stats: ${e.message}")
            }
        }
    }

    private fun formatDuration(seconds: Double): String {
        val totalSec = seconds.toInt()
        val h = totalSec / 3600
        val m = (totalSec % 3600) / 60
        val s = totalSec % 60
        return if (h > 0) "${h}h${m}m${s}s" else "${m}m${s}s"
    }

    /**
     * 创建悬浮面板（代码构建，无需 layout XML）
     */
    @SuppressLint("ClickableViewAccessibility")
    private fun createFloatingPanel() {
        // === 展开面板 ===
        floatingView = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(0xCC000000.toInt())
            setPadding(dp(12), dp(8), dp(12), dp(8))

            // 标题栏 + 最小化按钮
            addView(LinearLayout(this@FloatingWindowService).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL

                addView(TextView(this@FloatingWindowService).apply {
                    text = "MapleAuto"
                    setTextColor(0xFFFF6B35.toInt())
                    textSize = 14f
                    layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                })

                addView(TextView(this@FloatingWindowService).apply {
                    text = "—"
                    setTextColor(0xFFFFFFFF.toInt())
                    textSize = 16f
                    setPadding(dp(8), 0, 0, 0)
                    setOnClickListener { togglePanel() }
                })
            })

            // 状态行：状态 + FPS
            addView(LinearLayout(this@FloatingWindowService).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER_VERTICAL
                setPadding(0, dp(4), 0, dp(2))

                addView(TextView(this@FloatingWindowService).apply {
                    statusTextView = this
                    text = getString(R.string.state_idle)
                    setTextColor(0xFF4CAF50.toInt())
                    textSize = 12f
                    layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                })

                addView(TextView(this@FloatingWindowService).apply {
                    fpsTextView = this
                    text = "FPS: --"
                    setTextColor(0xAAFFFFFF.toInt())
                    textSize = 10f
                })
            })

            // 运行时长
            addView(TextView(this@FloatingWindowService).apply {
                runtimeTextView = this
                text = "Runtime: 0m0s"
                setTextColor(0xAAFFFFFF.toInt())
                textSize = 10f
                setPadding(0, 0, 0, dp(2))
            })

            // 统计摘要行（击杀/NPC/关卡/死亡/恢复）
            addView(TextView(this@FloatingWindowService).apply {
                statsTextView = this
                text = "K:0 N:0 S:0 D:0 R:0"
                setTextColor(0x99FFFFFF.toInt())
                textSize = 10f
                setPadding(0, 0, 0, dp(4))
            })

            // 可折叠详细信息面板
            addView(LinearLayout(this@FloatingWindowService).apply {
                detailsContainer = this
                orientation = LinearLayout.VERTICAL
                visibility = View.GONE

                // 分隔线
                addView(View(this@FloatingWindowService).apply {
                    setBackgroundColor(0x33FFFFFF)
                    layoutParams = LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, dp(1)
                    )
                })

                // 屏幕信息
                addView(TextView(this@FloatingWindowService).apply {
                    screenInfoTextView = this
                    text = "Resolution: --"
                    setTextColor(0x88FFFFFF.toInt())
                    textSize = 9f
                    setPadding(0, dp(4), 0, dp(2))
                })
            })

            // 详情展开/折叠按钮
            addView(TextView(this@FloatingWindowService).apply {
                text = "▼ Details"
                setTextColor(0x88FFFFFF.toInt())
                textSize = 9f
                gravity = Gravity.CENTER
                setPadding(0, dp(2), 0, dp(4))
                setOnClickListener {
                    isDetailsExpanded = !isDetailsExpanded
                    detailsContainer?.visibility = if (isDetailsExpanded) View.VISIBLE else View.GONE
                    this.text = if (isDetailsExpanded) "▲ Details" else "▼ Details"
                }
            })

            // 按钮行
            addView(LinearLayout(this@FloatingWindowService).apply {
                orientation = LinearLayout.HORIZONTAL
                gravity = Gravity.CENTER

                // 运行按钮
                addView(createButton("▶", 0xFF4CAF50.toInt()) { onStartClicked?.invoke() })

                // 暂停按钮
                addView(createButton("⏸", 0xFFFFC107.toInt()) { onPauseClicked?.invoke() }.apply {
                    (layoutParams as LinearLayout.LayoutParams).leftMargin = dp(8)
                })

                // 停止按钮
                addView(createButton("⏹", 0xFFF44336.toInt()) { onStopClicked?.invoke() }.apply {
                    (layoutParams as LinearLayout.LayoutParams).leftMargin = dp(8)
                })
            })
        }

        // === 迷你面板（收起状态）===
        miniView = TextView(this).apply {
            text = "M"
            setTextColor(0xFFFFFFFF.toInt())
            setBackgroundColor(0xCCFF6B35.toInt())
            textSize = 16f
            gravity = Gravity.CENTER
            setPadding(dp(10), dp(10), dp(10), dp(10))
            setOnClickListener { togglePanel() }
            visibility = View.GONE
        }

        // 窗口参数
        val windowType = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
        } else {
            @Suppress("DEPRECATION")
            WindowManager.LayoutParams.TYPE_PHONE
        }

        layoutParams = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            windowType,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            x = dp(16)
            y = dp(100)
        }

        // 添加拖动
        setupDrag(floatingView!!)
        setupDrag(miniView!!)

        // 添加到窗口
        windowManager.addView(floatingView, layoutParams)
        val miniParams = WindowManager.LayoutParams(
            WindowManager.LayoutParams.WRAP_CONTENT,
            WindowManager.LayoutParams.WRAP_CONTENT,
            layoutParams!!.type,
            layoutParams!!.flags,
            layoutParams!!.format
        ).apply {
            gravity = layoutParams!!.gravity
            x = layoutParams!!.x
            y = layoutParams!!.y
        }
        windowManager.addView(miniView, miniParams)
    }

    private fun createButton(text: String, color: Int, onClick: () -> Unit): TextView {
        return TextView(this).apply {
            this.text = text
            setTextColor(0xFFFFFFFF.toInt())
            setBackgroundColor(color)
            textSize = 18f
            gravity = Gravity.CENTER
            setPadding(dp(12), dp(6), dp(12), dp(6))
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
            setOnClickListener { onClick() }
        }
    }

    private fun togglePanel() {
        isExpanded = !isExpanded
        if (isExpanded) {
            floatingView?.visibility = View.VISIBLE
            miniView?.visibility = View.GONE
        } else {
            floatingView?.visibility = View.GONE
            miniView?.visibility = View.VISIBLE
        }
    }

    @SuppressLint("ClickableViewAccessibility")
    private fun setupDrag(view: View) {
        view.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    initialX = layoutParams.x
                    initialY = layoutParams.y
                    initialTouchX = event.rawX
                    initialTouchY = event.rawY
                    false
                }
                MotionEvent.ACTION_MOVE -> {
                    layoutParams.x = initialX + (event.rawX - initialTouchX).toInt()
                    layoutParams.y = initialY + (event.rawY - initialTouchY).toInt()
                    try {
                        windowManager.updateViewLayout(floatingView, layoutParams)
                        windowManager.updateViewLayout(miniView, layoutParams)
                    } catch (_: Exception) { }
                    true
                }
                else -> false
            }
        }
    }

    private fun removeFloatingViews() {
        try {
            floatingView?.let { windowManager.removeView(it) }
            miniView?.let { windowManager.removeView(it) }
        } catch (_: Exception) { }
        floatingView = null
        miniView = null
    }

    private fun dp(value: Int): Int {
        return (value * resources.displayMetrics.density).toInt()
    }

    private fun createNotification(): Notification {
        val pendingIntent = PendingIntent.getActivity(
            this, 0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, MapleAutoApp.CHANNEL_FLOATING)
            .setContentTitle(getString(R.string.floating_notification_title))
            .setContentText(getString(R.string.floating_notification_text))
            .setSmallIcon(android.R.drawable.ic_menu_compass)
            .setContentIntent(pendingIntent)
            .setOngoing(true)
            .build()
    }
}
