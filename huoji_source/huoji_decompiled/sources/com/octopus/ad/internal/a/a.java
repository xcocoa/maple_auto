package com.octopus.ad.internal.a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.CookieSyncManager;
import android.webkit.DownloadListener;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.VideoView;
import com.octopus.ad.AdActivity;
import com.octopus.ad.R;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.view.AdViewImpl;
import com.octopus.ad.internal.view.h;
import com.octopus.ad.utils.b.f;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class a implements AdActivity.a {
    public static LinkedList<WebView> a = new LinkedList<>();
    private final Activity b;
    private WebView c;

    public a(Activity activity) {
        this.b = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        Uri uri = StringUtil.isEmpty(str) ? null : Uri.parse(str);
        if (uri == null) {
            HaoboLog.w(HaoboLog.browserLogTag, HaoboLog.getString(R.string.opening_url_failed, str));
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setFlags(268435456);
        try {
            this.b.startActivity(intent);
            c();
            g();
        } catch (Exception unused) {
            HaoboLog.w(HaoboLog.browserLogTag, HaoboLog.getString(R.string.opening_url_failed, str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        Activity activity = this.b;
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    @SuppressLint({"SetJavaScriptEnabled", "NewApi"})
    @TargetApi(17)
    public void a() {
        this.b.setTheme(R.style.OctopusTheme);
        this.b.setContentView(R.layout.oct_activity_in_app_browser);
        WebView webViewPoll = a.poll();
        this.c = webViewPoll;
        if (webViewPoll == null || webViewPoll.getSettings() == null) {
            g();
            return;
        }
        if (this.c.getContext() instanceof MutableContextWrapper) {
            ((MutableContextWrapper) this.c.getContext()).setBaseContext(this.b);
        }
        WebView webView = (WebView) this.b.findViewById(R.id.web_view);
        webView.getSettings().setSavePassword(false);
        ViewGroup.LayoutParams layoutParams = webView.getLayoutParams();
        ViewGroup viewGroup = (ViewGroup) webView.getParent();
        int iIndexOfChild = viewGroup.indexOfChild(webView);
        viewGroup.removeView(webView);
        ViewUtil.removeChildFromParent(this.c);
        this.c.setLayoutParams(layoutParams);
        this.c.getSettings().setUseWideViewPort(true);
        this.c.getSettings().setLoadWithOverviewMode(true);
        int i = Build.VERSION.SDK_INT;
        if (i < 19) {
            this.c.removeJavascriptInterface("searchBoxJavaBridge_");
            this.c.removeJavascriptInterface("accessibility");
            this.c.removeJavascriptInterface("accessibilityTraversal");
        }
        if (i >= 19) {
            WebView.setWebContentsDebuggingEnabled(false);
        }
        viewGroup.addView(this.c, iIndexOfChild);
        final ProgressBar progressBar = (ProgressBar) this.b.findViewById(R.id.progress_bar);
        String stringExtra = this.b.getIntent().getStringExtra("bridgeid");
        if (stringExtra != null) {
            for (Pair<String, AdViewImpl.c> pair : AdViewImpl.c.a) {
                if (((String) pair.first).equals(stringExtra)) {
                    AdViewImpl.c.a.remove(pair);
                }
            }
        }
        this.c.setDownloadListener(new DownloadListener() { // from class: com.octopus.ad.internal.a.a.1
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                a.this.c.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                a.this.g();
            }
        });
        this.c.setWebViewClient(new WebViewClient() { // from class: com.octopus.ad.internal.a.a.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                CookieSyncManager cookieSyncManager = CookieSyncManager.getInstance();
                if (cookieSyncManager != null) {
                    cookieSyncManager.sync();
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                HaoboLog.v(HaoboLog.browserLogTag, HaoboLog.getString(R.string.opening_url, str));
                if (str.startsWith("http")) {
                    return false;
                }
                a.this.a(str);
                return true;
            }
        });
        this.c.setWebChromeClient(new h(this.b) { // from class: com.octopus.ad.internal.a.a.3
            @Override // com.octopus.ad.internal.view.a, android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                HaoboLog.w(HaoboLog.browserLogTag, HaoboLog.getString(R.string.console_message, consoleMessage.message(), consoleMessage.lineNumber(), consoleMessage.sourceId()));
                return true;
            }

            @Override // com.octopus.ad.internal.view.a, android.webkit.WebChromeClient
            public boolean onJsAlert(WebView webView2, String str, String str2, JsResult jsResult) {
                HaoboLog.w(HaoboLog.browserLogTag, HaoboLog.getString(R.string.js_alert, str2, str));
                jsResult.confirm();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView2, int i2) {
                if (i2 < 100 && progressBar.getVisibility() == 8) {
                    progressBar.setVisibility(0);
                }
                progressBar.setProgress(i2);
                if (i2 == 100) {
                    progressBar.setVisibility(8);
                }
            }

            @Override // com.octopus.ad.internal.view.h, android.webkit.WebChromeClient
            public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
                if (view instanceof FrameLayout) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    if (frameLayout.getFocusedChild() instanceof VideoView) {
                        VideoView videoView = (VideoView) frameLayout.getFocusedChild();
                        frameLayout.removeView(videoView);
                        ((Activity) a.this.c.getContext()).setContentView(videoView);
                        videoView.start();
                    }
                }
            }
        });
        ((ImageView) this.b.findViewById(R.id.close_iv)).setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.a.a.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.g();
            }
        });
    }

    @Override // com.octopus.ad.AdActivity.a
    public void b() {
        f.a("octopus", "...........................backPressed...........................");
        if (!this.c.canGoBack()) {
            g();
        } else {
            this.c.goBack();
            f.a("octopus", " mWebView.goBack()");
        }
    }

    @Override // com.octopus.ad.AdActivity.a
    public void c() {
        WebView webView = this.c;
        if (webView == null) {
            return;
        }
        ViewUtil.removeChildFromParent(webView);
        this.c.destroy();
    }

    @Override // com.octopus.ad.AdActivity.a
    public void d() {
    }

    @Override // com.octopus.ad.AdActivity.a
    public void e() {
    }

    @Override // com.octopus.ad.AdActivity.a
    public WebView f() {
        return this.c;
    }
}
