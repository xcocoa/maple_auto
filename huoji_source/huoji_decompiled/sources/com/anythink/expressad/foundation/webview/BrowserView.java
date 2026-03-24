package com.anythink.expressad.foundation.webview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import com.anythink.core.common.o.d;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.t;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class BrowserView extends LinearLayout {
    private static final String a = "BrowserView";
    private String b;
    private ProgressBar c;
    private WebView d;
    private ToolBar e;
    private a f;
    private c g;

    public static final class DownloadListener implements android.webkit.DownloadListener {
        private c campaignEx;
        private String title;

        public DownloadListener() {
        }

        public DownloadListener(c cVar) {
            this.campaignEx = cVar;
        }

        @Override // android.webkit.DownloadListener
        public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        }

        public final void setTitle(String str) {
            this.title = str;
        }
    }

    public interface a {
        void a();

        boolean a(WebView webView, String str);

        void b();
    }

    public BrowserView(Context context) {
        super(context);
        init();
    }

    public BrowserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public BrowserView(Context context, c cVar) {
        super(context);
        this.g = cVar;
        init();
    }

    private void a() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.c = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        try {
            if (this.d == null) {
                this.d = b();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            this.d.setLayoutParams(layoutParams);
        } catch (Throwable unused) {
        }
        this.e = new ToolBar(getContext());
        this.e.setLayoutParams(new LinearLayout.LayoutParams(-1, t.b(getContext(), 40.0f)));
        this.e.setBackgroundColor(-1);
        addView(this.c);
        WebView webView = this.d;
        if (webView != null) {
            addView(webView);
        }
        addView(this.e);
    }

    private WebView b() {
        Class cls = Boolean.TYPE;
        int i = Build.VERSION.SDK_INT;
        WebView webView = new WebView(getContext());
        try {
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setCacheMode(-1);
            settings.setAllowFileAccess(true);
            settings.setBuiltInZoomControls(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setDomStorageEnabled(true);
            settings.setSupportZoom(false);
            settings.setSavePassword(false);
            settings.setDatabaseEnabled(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            if (i >= 26) {
                try {
                    settings.setSafeBrowsingEnabled(false);
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
            if (i >= 17) {
                settings.setMediaPlaybackRequiresUserGesture(false);
            }
            if (i >= 16) {
                try {
                    settings.setAllowUniversalAccessFromFileURLs(false);
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
            if (i >= 21) {
                try {
                    settings.setMixedContentMode(1);
                } catch (Exception e) {
                    e.getMessage();
                }
            }
            if (i >= 21) {
                try {
                    Method declaredMethod = WebSettings.class.getDeclaredMethod(d.b("c2V0TWl4ZWRDb250ZW50TW9kZQ=="), Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(settings, 0);
                } catch (Throwable unused) {
                }
            }
            settings.setDatabaseEnabled(true);
            String path = getContext().getDir("database", 0).getPath();
            settings.setDatabasePath(path);
            settings.setGeolocationEnabled(true);
            settings.setGeolocationDatabasePath(path);
            try {
                Method declaredMethod2 = WebSettings.class.getDeclaredMethod("setDisplayZoomControls", cls);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(settings, Boolean.FALSE);
            } catch (Exception e2) {
                e2.getMessage();
            }
            try {
                Method declaredMethod3 = WebSettings.class.getDeclaredMethod(d.b("c2V0QWxsb3dVbml2ZXJzYWxBY2Nlc3NGcm9tRmlsZVVSTHM="), cls);
                declaredMethod3.setAccessible(true);
                declaredMethod3.invoke(settings, Boolean.TRUE);
            } catch (Throwable unused2) {
            }
        } catch (Throwable th3) {
            th3.getMessage();
        }
        webView.setDownloadListener(new DownloadListener(this.g));
        webView.setWebViewClient(new WebViewClient() { // from class: com.anythink.expressad.foundation.webview.BrowserView.2
            @Override // android.webkit.WebViewClient
            public final void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                BrowserView.this.b = str;
                if (BrowserView.this.f != null) {
                    a unused3 = BrowserView.this.f;
                }
                BrowserView.this.c.setVisible(true);
                BrowserView.this.c.setProgressState(5);
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                BrowserView.this.e.getItem("backward").setEnabled(true);
                BrowserView.this.e.getItem("forward").setEnabled(false);
                if (BrowserView.this.f != null) {
                    BrowserView.this.f.a(webView2, str);
                }
                return false;
            }
        });
        webView.setWebChromeClient(k.d() <= 10 ? new WebChromeClient() { // from class: com.anythink.expressad.foundation.webview.BrowserView.3
            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView2, String str, String str2, JsResult jsResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsConfirm(WebView webView2, String str, String str2, JsResult jsResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsPrompt(WebView webView2, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView2, int i2) {
                if (i2 == 100) {
                    BrowserView.this.c.setProgressState(7);
                    new Handler().postDelayed(new Runnable() { // from class: com.anythink.expressad.foundation.webview.BrowserView.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BrowserView.this.c.setVisible(false);
                        }
                    }, 200L);
                }
            }
        } : new WebChromeClient() { // from class: com.anythink.expressad.foundation.webview.BrowserView.4
            @Override // android.webkit.WebChromeClient
            public final void onProgressChanged(WebView webView2, int i2) {
                if (i2 == 100) {
                    BrowserView.this.c.setProgressState(7);
                    new Handler().postDelayed(new Runnable() { // from class: com.anythink.expressad.foundation.webview.BrowserView.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BrowserView.this.c.setVisible(false);
                        }
                    }, 200L);
                }
            }
        });
        return webView;
    }

    public void destroy() {
        WebView webView = this.d;
        if (webView != null) {
            webView.stopLoading();
            this.d.setWebViewClient(null);
            this.d.destroy();
            removeAllViews();
        }
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        ProgressBar progressBar = new ProgressBar(getContext());
        this.c = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        try {
            if (this.d == null) {
                this.d = b();
            }
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            this.d.setLayoutParams(layoutParams);
        } catch (Throwable unused) {
        }
        this.e = new ToolBar(getContext());
        this.e.setLayoutParams(new LinearLayout.LayoutParams(-1, t.b(getContext(), 40.0f)));
        this.e.setBackgroundColor(-1);
        addView(this.c);
        WebView webView = this.d;
        if (webView != null) {
            addView(webView);
        }
        addView(this.e);
        this.c.initResource(true);
        this.e.getItem("backward").setEnabled(false);
        this.e.getItem("forward").setEnabled(false);
        this.e.setOnItemClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.foundation.webview.BrowserView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BrowserView.this.d != null) {
                    BrowserView.this.d.stopLoading();
                }
                String str = (String) view.getTag();
                boolean z = false;
                if (TextUtils.equals(str, "backward")) {
                    BrowserView.this.e.getItem("forward").setEnabled(true);
                    if (BrowserView.this.d != null && BrowserView.this.d.canGoBack()) {
                        BrowserView.this.d.goBack();
                    }
                    View item = BrowserView.this.e.getItem("backward");
                    if (BrowserView.this.d != null && BrowserView.this.d.canGoBack()) {
                        z = true;
                    }
                    item.setEnabled(z);
                    return;
                }
                if (TextUtils.equals(str, "forward")) {
                    BrowserView.this.e.getItem("backward").setEnabled(true);
                    if (BrowserView.this.d != null && BrowserView.this.d.canGoForward()) {
                        BrowserView.this.d.goForward();
                    }
                    View item2 = BrowserView.this.e.getItem("forward");
                    if (BrowserView.this.d != null && BrowserView.this.d.canGoForward()) {
                        z = true;
                    }
                    item2.setEnabled(z);
                    return;
                }
                if (!TextUtils.equals(str, "refresh")) {
                    if (!TextUtils.equals(str, "exits") || BrowserView.this.f == null) {
                        return;
                    }
                    BrowserView.this.f.a();
                    return;
                }
                BrowserView.this.e.getItem("backward").setEnabled(BrowserView.this.d != null && BrowserView.this.d.canGoBack());
                View item3 = BrowserView.this.e.getItem("forward");
                if (BrowserView.this.d != null && BrowserView.this.d.canGoForward()) {
                    z = true;
                }
                item3.setEnabled(z);
                if (BrowserView.this.d != null) {
                    BrowserView.this.d.loadUrl(BrowserView.this.b);
                }
            }
        });
    }

    public void loadUrl(String str) {
        WebView webView = this.d;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    public void setListener(a aVar) {
        this.f = aVar;
    }

    public void setWebView(WebView webView) {
        this.d = webView;
    }
}
