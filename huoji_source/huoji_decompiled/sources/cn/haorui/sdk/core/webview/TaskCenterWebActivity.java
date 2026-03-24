package cn.haorui.sdk.core.webview;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import cn.haorui.sdk.R;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.taskcenter.TrackBean;
import cn.haorui.sdk.core.webview.TaskCenterJs;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TaskCenterWebActivity extends AppCompatActivity {
    public WebView a;
    public RelativeLayout b;
    public TaskCenterJs c;
    public boolean d;
    public RelativeLayout e;

    public class a implements ValueCallback<String> {
        public a(TaskCenterWebActivity taskCenterWebActivity) {
        }

        @Override // android.webkit.ValueCallback
        public void onReceiveValue(String str) {
        }
    }

    public class b implements ValueCallback<String> {
        public b(TaskCenterWebActivity taskCenterWebActivity) {
        }

        @Override // android.webkit.ValueCallback
        public void onReceiveValue(String str) {
        }
    }

    public class c extends WebViewClient {
        public c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            TaskCenterWebActivity.this.e.setVisibility(8);
            Log.e("TaskCenterWebActivity", "onPageFinished: ");
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            Log.e("TaskCenterWebActivity", "onPageStarted: ");
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str);
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.adsail_activity_task_center_web);
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().getDecorView().setSystemUiVisibility(9472);
            getWindow().setStatusBarColor(-1);
        }
        this.b = (RelativeLayout) findViewById(R.id.adsail_task_center_rootview);
        this.a = (WebView) findViewById(R.id.adsail_task_center_webview);
        this.e = (RelativeLayout) findViewById(R.id.adsail_progressBarRL);
        WebSettings settings = this.a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setCacheMode(2);
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setLoadsImagesAutomatically(true);
        settings.setDefaultTextEncodingName("utf-8");
        TaskCenterJs taskCenterJs = new TaskCenterJs(this, this.a);
        this.c = taskCenterJs;
        this.a.addJavascriptInterface(taskCenterJs, "MsBusiness");
        this.a.setWebChromeClient(new WebChromeClient());
        this.a.setWebViewClient(new c());
        if (getIntent().hasExtra(com.anythink.expressad.foundation.d.c.am)) {
            String stringExtra = getIntent().getStringExtra(com.anythink.expressad.foundation.d.c.am);
            if (getIntent().hasExtra("userId")) {
                String stringExtra2 = getIntent().getStringExtra("userId");
                if (!TextUtils.isEmpty(stringExtra2)) {
                    stringExtra = stringExtra.replace("__UID__", stringExtra2);
                }
            }
            if (AdSdk.getOaid() != null) {
                stringExtra = stringExtra.replace("__DEVICE__", Base64.encodeToString(AdSdk.getOaid().getBytes(), 2));
            }
            this.a.loadUrl(stringExtra);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        TaskCenterJs.InstallReceiver installReceiver;
        TaskCenterWebActivity taskCenterWebActivity;
        super.onDestroy();
        WebView webView = this.a;
        if (webView != null) {
            this.b.removeView(webView);
            this.a.destroy();
            this.a = null;
        }
        TaskCenterJs taskCenterJs = this.c;
        if (taskCenterJs == null || (installReceiver = taskCenterJs.d) == null || (taskCenterWebActivity = taskCenterJs.a) == null) {
            return;
        }
        taskCenterWebActivity.unregisterReceiver(installReceiver);
        Map<String, TrackBean> map = taskCenterJs.c;
        if (map != null) {
            map.clear();
        }
        taskCenterJs.a = null;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.a == null || Build.VERSION.SDK_INT < 19) {
            return true;
        }
        Log.e("TaskCenterWebActivity", "onKeyDown: ");
        this.a.evaluateJavascript("javascript:reportAndroidBack()", new b(this));
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.d = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        WebView webView = this.a;
        if (webView == null || !this.d) {
            return;
        }
        this.d = false;
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript("javascript:windowsResume()", new a(this));
        }
    }
}
