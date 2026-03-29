package com.maple.auto.capture

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.media.projection.MediaProjectionManager
import android.os.Build
import android.os.Bundle
import android.util.Log

/**
 * 透明 Activity，仅用于触发 MediaProjection 系统授权弹窗
 *
 * 使用流程:
 * 1. startActivity(ScreenCaptureRequestActivity.createIntent(context))
 * 2. 用户同意后，自动启动 ScreenCaptureService
 * 3. 本 Activity 自动 finish()
 */
class ScreenCaptureRequestActivity : Activity() {

    companion object {
        private const val TAG = "CaptureRequest"
        private const val REQUEST_CODE_CAPTURE = 1001

        fun createIntent(context: Context): Intent {
            return Intent(context, ScreenCaptureRequestActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
        }
    }

    private var projectionManager: MediaProjectionManager? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        projectionManager = getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager

        // 触发系统截屏授权弹窗
        startActivityForResult(
            projectionManager!!.createScreenCaptureIntent(),
            REQUEST_CODE_CAPTURE
        )
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)

        if (requestCode == REQUEST_CODE_CAPTURE) {
            if (resultCode == RESULT_OK && data != null) {
                Log.d(TAG, "Screen capture permission granted")

                // 持久化保存授权 token
                MediaProjectionStore.save(resultCode, data)

                // 启动截图服务
                val serviceIntent = Intent(this, ScreenCaptureService::class.java).apply {
                    putExtra(ScreenCaptureService.EXTRA_RESULT_CODE, resultCode)
                    putExtra(ScreenCaptureService.EXTRA_RESULT_DATA, data)
                }
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    startForegroundService(serviceIntent)
                } else {
                    startService(serviceIntent)
                }
            } else {
                Log.w(TAG, "Screen capture permission denied")
            }
        }

        finish()
    }
}
