package com.octopus.ad.internal.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.octopus.ad.AdActivity;
import com.octopus.ad.R;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.i;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.utilities.HTTPGet;
import com.octopus.ad.internal.utilities.HTTPResponse;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.utilities.WebviewUtil;
import com.octopus.ad.internal.video.AdVideoView;
import com.octopus.ad.internal.view.AdViewImpl;
import com.octopus.ad.internal.view.e;
import java.util.HashMap;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ViewConstructor"})
public class AdWebView extends WebView implements com.octopus.ad.internal.view.b {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private long H;
    private float I;
    private float J;
    private boolean K;
    private final Runnable L;
    public boolean a;
    public ServerResponse ad;
    public AdViewImpl adViewImpl;
    public String b;
    private boolean c;
    private boolean d;
    private e e;
    private int f;
    private int g;
    public GestureDetector gestureDetector;
    private boolean h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    public AdVideoView mAdVideoView;
    private boolean n;
    private boolean o;
    private Handler p;
    private boolean q;
    private int r;
    private ProgressDialog s;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private int x;
    private boolean y;
    private boolean z;

    public class a extends WebViewClient {
        private a() {
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            if (str.startsWith("http")) {
                try {
                    WebView.HitTestResult hitTestResult = AdWebView.this.getHitTestResult();
                    if (hitTestResult == null || hitTestResult.getExtra() == null) {
                        return;
                    }
                    if (hitTestResult.getExtra().equals(str)) {
                        int type = hitTestResult.getType();
                        if (type == 1 || type == 6 || type == 7 || type == 8) {
                            AdWebView.this.b(str);
                            webView.stopLoading();
                            AdWebView.this.c();
                        }
                    }
                } catch (NullPointerException unused) {
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            AdWebView adWebView = AdWebView.this;
            if (adWebView.ad.mMediaType == l.SPLASH) {
                adWebView.visible();
            }
            if (AdWebView.this.h) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 19) {
                webView.evaluateJavascript("javascript:window.mraid.util.pageFinished()", null);
            } else {
                webView.loadUrl("javascript:window.mraid.util.pageFinished()");
            }
            if (AdWebView.this.d) {
                e eVar = AdWebView.this.e;
                AdWebView adWebView2 = AdWebView.this;
                eVar.a(adWebView2, adWebView2.b);
                AdWebView.this.i();
            }
            AdWebView.this.h = true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            HaoboLog.w(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.webview_received_error, i, str, str2));
            AdViewImpl adViewImpl = AdWebView.this.adViewImpl;
            if (adViewImpl == null || adViewImpl.getAdDispatcher() == null) {
                return;
            }
            AdWebView.this.adViewImpl.getAdDispatcher().a(2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            AdWebView.this.h();
            HaoboLog.w(HaoboLog.httpRespLogTag, HaoboLog.getString(R.string.webclient_error, sslError.getPrimaryError(), sslError.toString()));
            AdViewImpl adViewImpl = AdWebView.this.adViewImpl;
            if (adViewImpl == null || adViewImpl.getAdDispatcher() == null) {
                return;
            }
            AdWebView.this.adViewImpl.getAdDispatcher().a(2);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            AdViewImpl adViewImpl;
            HaoboLog.v(HaoboLog.baseLogTag, "Loading URL: " + str);
            com.octopus.ad.utils.b.f.a("octopus", "Loading:::::::::::::::::::::::" + str);
            if (str.startsWith("javascript:")) {
                return false;
            }
            if (str.startsWith("mraid://")) {
                HaoboLog.v(HaoboLog.mraidLogTag, str);
                if (!AdWebView.this.d) {
                    String host = Uri.parse(str).getHost();
                    if (host != null && host.equals("enable")) {
                        AdWebView.this.fireMRAIDEnabled();
                    } else if (host != null && host.equals("open")) {
                        AdWebView.this.e.a(str, AdWebView.this.u);
                    }
                }
                return true;
            }
            if (!str.startsWith("Octopus://")) {
                AdWebView.this.b(str);
                AdWebView.this.c();
                return true;
            }
            try {
                String host2 = Uri.parse(str).getHost();
                if (!TextUtils.isEmpty(host2) && !"ClosePage".equals(host2)) {
                    AdWebView adWebView = AdWebView.this;
                    if (adWebView.ad != null && (adViewImpl = adWebView.adViewImpl) != null && adViewImpl.getAdParameters() != null) {
                        AdWebView adWebView2 = AdWebView.this;
                        adWebView2.ad.handleClick(adWebView2, "", "", "", "", "", "", adWebView2.E, AdWebView.this.adViewImpl.getAdParameters().a(), AdWebView.this.G);
                        AdWebView.this.E = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            g.a(AdWebView.this, str);
            return true;
        }
    }

    public interface b {
        void a();
    }

    public class c extends WebView {
        @SuppressLint({"SetJavaScriptEnabled"})
        public c(Context context) {
            super(new MutableContextWrapper(context));
            WebviewUtil.setWebViewSettings(this);
            setWebViewClient(new WebViewClient() { // from class: com.octopus.ad.internal.view.AdWebView.c.1
                private boolean c = false;

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    HaoboLog.v(HaoboLog.browserLogTag, "Opening URL: " + str);
                    ViewUtil.removeChildFromParent(c.this);
                    if (AdWebView.this.s != null && AdWebView.this.s.isShowing()) {
                        AdWebView.this.s.dismiss();
                    }
                    if (this.c) {
                        this.c = false;
                        c.this.destroy();
                        AdWebView.this.k();
                    } else {
                        c.this.setVisibility(0);
                        c cVar = c.this;
                        AdWebView.this.a(cVar);
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    HaoboLog.v(HaoboLog.browserLogTag, "Redirecting to URL: " + str);
                    boolean zH = AdWebView.this.h(str);
                    this.c = zH;
                    if (zH && AdWebView.this.s != null && AdWebView.this.s.isShowing()) {
                        AdWebView.this.s.dismiss();
                    }
                    return this.c;
                }
            });
        }
    }

    public AdWebView(AdViewImpl adViewImpl) {
        super(new MutableContextWrapper(adViewImpl.getContext()));
        this.c = false;
        this.ad = null;
        this.mAdVideoView = null;
        this.a = false;
        this.n = false;
        this.o = false;
        this.p = new Handler();
        this.q = false;
        this.t = false;
        this.u = false;
        this.x = -1;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = 0;
        this.G = 0;
        this.L = new Runnable() { // from class: com.octopus.ad.internal.view.AdWebView.5
            @Override // java.lang.Runnable
            public void run() {
                if (AdWebView.this.q) {
                    return;
                }
                AdWebView.this.f();
                AdWebView.this.p.postDelayed(this, 1000L);
            }
        };
        setBackgroundColor(0);
        this.adViewImpl = adViewImpl;
        this.b = e.a[e.b.STARTING_DEFAULT.ordinal()];
        a();
        b();
        setVisibility(4);
        this.adViewImpl.setAdWebView(this);
    }

    private static float a(float f) {
        return f / m.a().o().density;
    }

    private static float a(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return a((float) Math.sqrt((f5 * f5) + (f6 * f6)));
    }

    private void a(int i, int i2) {
        if (i == 0 && i2 == 0) {
            WebviewUtil.onResume(this);
            this.o = true;
            if (this.d && this.h) {
                i();
            }
        } else {
            WebviewUtil.onPause(this);
            this.o = false;
            j();
        }
        e eVar = this.e;
        if (eVar != null) {
            eVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WebView webView) {
        Class clsA = AdActivity.a();
        Intent intent = new Intent(this.adViewImpl.getContext(), (Class<?>) clsA);
        intent.setFlags(268435456);
        intent.putExtra("ACTIVITY_TYPE", "BROWSER");
        com.octopus.ad.internal.a.a.a.add(webView);
        if (this.adViewImpl.getBrowserStyle() != null) {
            String str = "" + super.hashCode();
            intent.putExtra("bridgeid", str);
            AdViewImpl.c.a.add(new Pair<>(str, this.adViewImpl.getBrowserStyle()));
        }
        try {
            this.adViewImpl.getContext().startActivity(intent);
            k();
        } catch (ActivityNotFoundException unused) {
            HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adactivity_missing, clsA.getName()));
            com.octopus.ad.internal.a.a.a.remove();
        }
    }

    private void a(FrameLayout.LayoutParams layoutParams) {
        AdViewImpl adViewImpl = this.adViewImpl;
        if ((adViewImpl instanceof BannerAdViewImpl) && ((BannerAdViewImpl) adViewImpl).getResizeAdToFitContainer()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        }
        setLayoutParams(layoutParams);
    }

    private void a(HashMap map) {
        if (!map.isEmpty() && map.containsKey(ServerResponse.EXTRAS_KEY_MRAID)) {
            this.d = ((Boolean) map.get(ServerResponse.EXTRAS_KEY_MRAID)).booleanValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        if (StringUtil.isEmpty(str)) {
            return str;
        }
        str.trim();
        if (str.startsWith("<html>")) {
            return str;
        }
        return "<html><body style='padding:0;margin:0;'>" + str + "</body></html>";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str) {
        if (StringUtil.isEmpty(str)) {
            return str;
        }
        Resources resources = getResources();
        StringBuilder sb = new StringBuilder("<html><head><script>");
        if (resources != null && StringUtil.appendLocalStr(sb, StringUtil.octopusJSStr) && StringUtil.appendLocalStr(sb, StringUtil.octopusStr) && StringUtil.appendLocalStr(sb, StringUtil.mraidjsStr)) {
            sb.append("</script></head>");
            return str.replaceFirst("<html>", Matcher.quoteReplacement(sb.toString()));
        }
        HaoboLog.e(HaoboLog.baseLogTag, "Error reading SDK's raw resources.");
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(String str) {
        return !StringUtil.isEmpty(str) ? str.replaceFirst("<head>", Matcher.quoteReplacement(new StringBuilder("<head><link rel=\"icon\" href=\"data:;base64,=\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0,user-scalable=no\"/>").toString())) : str;
    }

    private boolean g(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        try {
            this.adViewImpl.getContext().startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            HaoboLog.w(HaoboLog.baseLogTag, HaoboLog.getString(R.string.opening_url_failed, str));
            if (this.d) {
                Toast.makeText(this.adViewImpl.getContext(), R.string.action_cant_be_completed, 0).show();
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.c = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(String str) {
        String strA = com.octopus.ad.utils.b.c.a("aHR0cDovL2Fib3V0OmJsYW5r");
        if (!str.contains("://play.google.com") && (str.startsWith("http") || str.startsWith(strA))) {
            return false;
        }
        HaoboLog.i(HaoboLog.baseLogTag, HaoboLog.getString(R.string.opening_app_store));
        return g(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.o) {
            this.q = false;
            this.p.removeCallbacks(this.L);
            this.p.post(this.L);
        }
    }

    private void j() {
        this.q = true;
        this.p.removeCallbacks(this.L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl == null || !(adViewImpl instanceof InterstitialAdViewImpl)) {
            return;
        }
        ((InterstitialAdViewImpl) adViewImpl).g();
    }

    private void setCreativeHeight(int i) {
        this.l = i;
    }

    private void setCreativeWidth(int i) {
        this.k = i;
    }

    public boolean IsVideoWifiOnly() {
        return this.D;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void a() {
        m.a().c(getSettings().getUserAgentString());
        getSettings().setJavaScriptEnabled(true);
        getSettings().setAllowFileAccess(true);
        getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getSettings().setBuiltInZoomControls(false);
        getSettings().setEnableSmoothTransition(true);
        getSettings().setLightTouchEnabled(false);
        getSettings().setPluginState(WebSettings.PluginState.ON);
        getSettings().setLoadsImagesAutomatically(true);
        getSettings().setSavePassword(false);
        getSettings().setSupportZoom(false);
        getSettings().setUseWideViewPort(false);
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        if (i >= 21) {
            getSettings().setMixedContentMode(0);
        }
        if (i >= 19) {
            WebView.setWebContentsDebuggingEnabled(false);
        }
        if (i >= 11 && i < 19) {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        if (i >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(false);
            getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
        if (i >= 21) {
            CookieManager cookieManager = CookieManager.getInstance();
            if (cookieManager != null) {
                cookieManager.setAcceptThirdPartyCookies(this, true);
            } else {
                HaoboLog.d(HaoboLog.baseLogTag, "Failed to set Webview to accept 3rd party cookie");
            }
        }
        setHorizontalScrollbarOverlay(false);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        if (this.A) {
            setBackgroundColor(0);
        }
        setScrollBarStyle(0);
    }

    public void a(int i, int i2, boolean z, final e eVar, final boolean z3, final AdActivity.b bVar) {
        int i3 = i;
        int i4 = i2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getLayoutParams());
        if (!this.e.d) {
            this.f = layoutParams.width;
            this.g = layoutParams.height;
        }
        if (i4 == -1 && i3 == -1 && this.adViewImpl != null) {
            this.a = true;
        }
        if (i4 != -1) {
            i4 = (int) (((double) (i4 * displayMetrics.density)) + 0.5d);
        }
        int i5 = i4;
        if (i3 != -1) {
            i3 = (int) (((double) (i3 * displayMetrics.density)) + 0.5d);
        }
        int i6 = i3;
        layoutParams.height = i5;
        layoutParams.width = i6;
        layoutParams.gravity = 17;
        b bVar2 = null;
        if (this.a) {
            bVar2 = new b() { // from class: com.octopus.ad.internal.view.AdWebView.4
                @Override // com.octopus.ad.internal.view.AdWebView.b
                public void a() {
                    e eVar2 = eVar;
                    if (eVar2 == null || eVar2.c() == null) {
                        return;
                    }
                    AdWebView.this.a(eVar.c(), z3, bVar);
                    AdViewImpl.setMRAIDFullscreenListener(null);
                }
            };
        }
        b bVar3 = bVar2;
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl != null) {
            adViewImpl.a(i6, i5, z, eVar, bVar3);
            this.adViewImpl.f();
        }
        setLayoutParams(layoutParams);
    }

    public void a(Activity activity, boolean z, AdActivity.b bVar) {
        AdActivity.b bVar2 = AdActivity.b.none;
        if (bVar != bVar2) {
            AdActivity.a(activity, bVar);
        }
        if (z) {
            AdActivity.b(activity);
        } else if (bVar == bVar2) {
            AdActivity.a(activity);
        }
    }

    public void a(final String str) {
        new HTTPGet(false) { // from class: com.octopus.ad.internal.view.AdWebView.1
            @Override // com.octopus.ad.internal.utilities.HTTPGet
            public String getUrl() {
                return str;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.octopus.ad.internal.utilities.HTTPGet, android.os.AsyncTask
            public void onPostExecute(HTTPResponse hTTPResponse) {
                if (hTTPResponse.getSucceeded()) {
                    AdWebView.this.loadDataWithBaseURL(m.a().i(), AdWebView.this.f(AdWebView.this.e(AdWebView.this.d(hTTPResponse.getResponseBody()))), "text/html", "UTF-8", null);
                    AdWebView.this.fireMRAIDEnabled();
                }
            }
        }.execute(new Void[0]);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void b() {
        this.e = new e(this);
        setWebChromeClient(new h(this));
        setWebViewClient(new a());
    }

    public void b(String str) {
        if (this.adViewImpl.getOpensNativeBrowser()) {
            HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.opening_native));
            g(str);
            k();
            return;
        }
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.opening_inapp));
        if (h(str)) {
            return;
        }
        try {
            if (this.adViewImpl.getLoadsInBackground()) {
                final c cVar = new c(getContext());
                cVar.loadUrl(str);
                cVar.setVisibility(8);
                this.adViewImpl.addView(cVar);
                if (this.adViewImpl.getShowLoadingIndicator()) {
                    ProgressDialog progressDialog = new ProgressDialog(getContextFromMutableContext());
                    this.s = progressDialog;
                    progressDialog.setCancelable(true);
                    this.s.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.octopus.ad.internal.view.AdWebView.2
                        @Override // android.content.DialogInterface.OnCancelListener
                        public void onCancel(DialogInterface dialogInterface) {
                            cVar.stopLoading();
                        }
                    });
                    this.s.setMessage(getContext().getResources().getString(R.string.loading));
                    this.s.setProgressStyle(0);
                    this.s.show();
                }
            } else {
                WebView webView = new WebView(new MutableContextWrapper(getContext()));
                WebviewUtil.setWebViewSettings(webView);
                webView.loadUrl(str);
                a(webView);
            }
        } catch (Exception e) {
            HaoboLog.e(HaoboLog.baseLogTag, "Exception initializing the redirect webview: " + e.getMessage());
        }
    }

    public void c() {
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl != null) {
            adViewImpl.f();
        }
    }

    public void c(String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            evaluateJavascript(str, null);
        } else {
            loadUrl(str);
        }
    }

    public void d() {
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl != null) {
            adViewImpl.c();
        }
    }

    @Override // android.webkit.WebView, com.octopus.ad.internal.view.b
    public void destroy() {
        setVisibility(4);
        ViewUtil.removeChildFromParent(this);
        super.destroy();
        removeAllViews();
        j();
    }

    public void e() {
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl != null) {
            adViewImpl.a(this.f, this.g, this.e);
        }
    }

    public void f() {
        if (getContextFromMutableContext() instanceof Activity) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            boolean z = false;
            int i = iArr[0];
            int width = iArr[0] + getWidth();
            int i2 = iArr[1];
            int height = iArr[1] + getHeight();
            int[] screenSizeAsPixels = ViewUtil.getScreenSizeAsPixels((Activity) getContextFromMutableContext());
            if (width > 0 && i < screenSizeAsPixels[0] && height > 0 && i2 < screenSizeAsPixels[1]) {
                z = true;
            }
            this.n = z;
            e eVar = this.e;
            if (eVar != null) {
                eVar.b();
                this.e.a(i, i2, getWidth(), getHeight());
                this.e.a(getContext().getResources().getConfiguration().orientation);
            }
        }
    }

    @Override // com.octopus.ad.internal.view.b
    public boolean failed() {
        return this.c;
    }

    public void fireMRAIDEnabled() {
        if (this.d) {
            return;
        }
        this.d = true;
        if (this.h) {
            this.e.a(this, this.b);
            i();
        }
    }

    public boolean g() {
        return this.n && this.o;
    }

    public HashMap<String, Object> getAdExtras() {
        ServerResponse serverResponse = this.ad;
        if (serverResponse == null) {
            return null;
        }
        return serverResponse.getExtras();
    }

    public int getAutoCloseTime() {
        return this.w;
    }

    public Context getContextFromMutableContext() {
        return getContext() instanceof MutableContextWrapper ? ((MutableContextWrapper) getContext()).getBaseContext() : getContext();
    }

    @Override // com.octopus.ad.internal.view.b
    public int getCreativeHeight() {
        return this.l;
    }

    public int getCreativeLeft() {
        return this.i;
    }

    public int getCreativeTop() {
        return this.j;
    }

    @Override // com.octopus.ad.internal.view.b
    public int getCreativeWidth() {
        return this.k;
    }

    public e getMRAIDImplementation() {
        return this.e;
    }

    public int getOrientation() {
        return this.r;
    }

    public com.octopus.ad.internal.view.b getRealDisplayable() {
        AdVideoView adVideoView;
        return (!this.C || (adVideoView = this.mAdVideoView) == null) ? this : adVideoView;
    }

    @Override // com.octopus.ad.internal.view.b
    public int getRefreshInterval() {
        return this.m;
    }

    public int getShowCloseBtnTime() {
        return this.v;
    }

    public boolean getUserInteraction() {
        return this.u;
    }

    @Override // com.octopus.ad.internal.view.b
    public View getView() {
        return this;
    }

    public void handleClickView(MotionEvent motionEvent, long j, long j2, int i) {
        AdWebView adWebView;
        String str;
        String str2;
        String str3;
        String str4;
        String strValueOf;
        String strValueOf2;
        boolean z;
        String strA;
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl == null || adViewImpl.getAdDispatcher() == null) {
            return;
        }
        this.F++;
        this.adViewImpl.getAdDispatcher().d();
        this.ad.setOpenInNativeBrowser(this.adViewImpl.getOpensNativeBrowser());
        ServerResponse serverResponse = this.ad;
        if (motionEvent == null) {
            strValueOf = String.valueOf(j);
            strValueOf2 = String.valueOf(j2);
            z = this.E;
            strA = this.adViewImpl.getAdParameters().a();
            str = "100";
            str2 = "200";
            str3 = "105";
            str4 = "206";
            adWebView = this;
        } else {
            String str5 = motionEvent.getX() + "";
            String str6 = motionEvent.getY() + "";
            String str7 = motionEvent.getRawX() + "";
            String str8 = motionEvent.getRawY() + "";
            String strValueOf3 = String.valueOf(j);
            String strValueOf4 = String.valueOf(j2);
            adWebView = this;
            str = str5;
            str2 = str6;
            str3 = str7;
            str4 = str8;
            strValueOf = strValueOf3;
            strValueOf2 = strValueOf4;
            z = this.E;
            strA = this.adViewImpl.getAdParameters().a();
        }
        serverResponse.handleClick(adWebView, str, str2, str3, str4, strValueOf, strValueOf2, z, strA, i);
        this.E = true;
    }

    public void handleClickView(com.octopus.ad.b.c cVar, long j, long j2, int i, int i2) {
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl == null || adViewImpl.getAdDispatcher() == null || this.adViewImpl.isRewardVideo()) {
            return;
        }
        this.F++;
        this.adViewImpl.getAdDispatcher().d();
        this.ad.setOpenInNativeBrowser(this.adViewImpl.getOpensNativeBrowser());
        this.ad.handleClick(this, cVar, String.valueOf(j), String.valueOf(j2), this.E, this.adViewImpl.getAdParameters().a(), i, i2);
        this.E = true;
    }

    public boolean isAutoPlay() {
        return this.y;
    }

    public boolean isBackgroundDim() {
        return this.B;
    }

    public boolean isMRAIDUseCustomClose() {
        return this.t;
    }

    public boolean isMuted() {
        return this.z;
    }

    public boolean isVideoFullScreen() {
        return this.A;
    }

    public void loadAd(ServerResponse serverResponse) {
        int i;
        if (serverResponse == null) {
            return;
        }
        this.ad = serverResponse;
        setCreativeHeight(serverResponse.getHeight());
        setCreativeWidth(serverResponse.getWidth());
        setCreativeLeft(serverResponse.getLeft());
        setCreativeTop(serverResponse.getTop());
        setRefreshInterval(serverResponse.getRefreshInterval());
        if (serverResponse.isManualClose()) {
            this.v = serverResponse.getMinTimer();
        } else {
            this.v = -1;
        }
        if (!serverResponse.isAutoClose() || serverResponse.getMaxTimer() == 0) {
            this.w = -1;
        } else {
            this.w = serverResponse.getMaxTimer();
        }
        if (this.v == -1 && this.w == -1 && serverResponse.getAdType() != e.a.ADP_IVIDEO) {
            this.v = 0;
        } else {
            int i2 = this.v;
            if (i2 != -1 && (i = this.w) != -1 && i2 > i) {
                this.v = i;
            }
        }
        this.y = serverResponse.isAutoPlay();
        this.z = serverResponse.isMuted();
        this.A = serverResponse.isFullScreen();
        this.B = serverResponse.isBackgroundDim();
        this.r = serverResponse.getAdOrientation();
        this.D = serverResponse.isWifiOnly();
        this.x = -1;
        setInitialScale((int) ((m.a().n() * 100.0f) + 0.5f));
        loadAdAt(0);
    }

    public boolean loadAdAt(int i) {
        int creativeHeight;
        int creativeWidth;
        FrameLayout.LayoutParams layoutParams;
        ServerResponse serverResponse = this.ad;
        if (serverResponse != null && this.x != i) {
            if (!serverResponse.getCreatives().isEmpty() && this.ad.getCreatives().size() > i) {
                Pair<i, String> pair = this.ad.getCreatives().get(i);
                if (StringUtil.isEmpty((String) pair.second)) {
                    h();
                    return false;
                }
                if (pair.first == i.VIDEO) {
                    if (this.mAdVideoView == null) {
                        this.mAdVideoView = new AdVideoView(this);
                    }
                    this.mAdVideoView.transferAd(this, (String) pair.second);
                    this.C = true;
                    String strA = com.octopus.ad.utils.b.c.a("aHR0cDovL2Fib3V0OmJsYW5r");
                    if (!TextUtils.isEmpty(strA)) {
                        loadUrl(strA);
                    }
                } else {
                    HaoboLog.v(HaoboLog.baseLogTag, HaoboLog.getString(R.string.webview_loading, (String) pair.second));
                    a(this.ad.getExtras());
                    String strF = f(e(d((String) pair.second)));
                    float fL = m.a().l();
                    float fM = m.a().m();
                    float fN = m.a().n();
                    if (getCreativeWidth() == -1 && getCreativeHeight() == -1) {
                        creativeWidth = -1;
                        creativeHeight = -1;
                    } else {
                        creativeHeight = (int) ((getCreativeHeight() * fN) + 0.5f);
                        creativeWidth = (int) ((getCreativeWidth() * fN) + 0.5f);
                    }
                    if (getCreativeLeft() == 0 && getCreativeTop() == 0) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(creativeWidth, creativeHeight, 17);
                        l lVar = this.ad.mMediaType;
                        if (lVar == l.SPLASH) {
                            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
                            setLayoutParams(layoutParams);
                            loadDataWithBaseURL(m.a().i(), strF, "text/html", "UTF-8", null);
                            this.C = false;
                        } else {
                            if (lVar == l.BANNER) {
                                layoutParams2 = new FrameLayout.LayoutParams(-2, -1, 17);
                            }
                            a(layoutParams2);
                            loadDataWithBaseURL(m.a().i(), strF, "text/html", "UTF-8", null);
                            this.C = false;
                        }
                    } else {
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(creativeWidth, creativeHeight, 8388659);
                        layoutParams3.setMargins((int) ((getCreativeLeft() * fL) + 0.5f), (int) ((getCreativeTop() * fM) + 0.5f), 0, 0);
                        if (this.ad.mMediaType == l.SPLASH) {
                            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
                            setLayoutParams(layoutParams);
                            loadDataWithBaseURL(m.a().i(), strF, "text/html", "UTF-8", null);
                            this.C = false;
                        } else {
                            a(layoutParams3);
                            loadDataWithBaseURL(m.a().i(), strF, "text/html", "UTF-8", null);
                            this.C = false;
                        }
                    }
                }
                this.x = i;
                return true;
            }
            h();
        }
        return false;
    }

    public boolean loadAdBy(int i) {
        return loadAdAt(this.x + i);
    }

    public void onAdShow() {
        Handler handler = this.p;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.octopus.ad.internal.view.AdWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    AdWebView.this.adViewImpl.getAdDispatcher().a();
                    AdWebView adWebView = AdWebView.this;
                    ServerResponse serverResponse = adWebView.ad;
                    if (serverResponse != null) {
                        serverResponse.handleView(adWebView, adWebView.adViewImpl.getAdParameters().a());
                    }
                }
            }, 50L);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        f();
    }

    @Override // com.octopus.ad.internal.view.b
    public void onDestroy() {
        destroy();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ProgressDialog progressDialog = this.s;
        if (progressDialog == null || !progressDialog.isShowing()) {
            return;
        }
        this.s.dismiss();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        this.u = true;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                z = (action == 2 && this.K && a(this.I, this.J, motionEvent.getX(), motionEvent.getY()) > 15.0f) ? false : true;
            } else {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = this.H;
                if (jCurrentTimeMillis - j < 1000 && this.K) {
                    handleClickView(motionEvent, j, jCurrentTimeMillis, this.G);
                }
            }
            return super.onTouchEvent(motionEvent);
        }
        this.H = System.currentTimeMillis();
        this.I = motionEvent.getX();
        this.J = motionEvent.getY();
        this.K = z;
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        a(getWindowVisibility(), i);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        a(i, getVisibility());
    }

    public void resize(int i, int i2, int i3, int i4, e.a aVar, boolean z) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(getLayoutParams());
        e eVar = this.e;
        if (!eVar.d) {
            this.f = layoutParams.width;
            this.g = layoutParams.height;
        }
        float f = displayMetrics.density;
        int i5 = (int) (((double) (i2 * f)) + 0.5d);
        int i6 = (int) (((double) (i * f)) + 0.5d);
        layoutParams.height = i5;
        layoutParams.width = i6;
        layoutParams.gravity = 17;
        AdViewImpl adViewImpl = this.adViewImpl;
        if (adViewImpl != null) {
            adViewImpl.a(i6, i5, i3, i4, aVar, z, eVar);
        }
        AdViewImpl adViewImpl2 = this.adViewImpl;
        if (adViewImpl2 != null) {
            adViewImpl2.f();
        }
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        super.scrollTo(0, 0);
    }

    public void setCreativeLeft(int i) {
        this.i = i;
    }

    public void setCreativeTop(int i) {
        this.j = i;
    }

    public void setMRAIDUseCustomClose(boolean z) {
        this.t = z;
    }

    public void setOpt(int i) {
        this.G = i;
    }

    public void setRefreshInterval(int i) {
        this.m = i;
    }

    public boolean shouldDisplayButton() {
        if (this.ad.getAdType() == e.a.ADP_IVIDEO) {
            if (this.ad.getCreatives().get(this.x).first == i.VIDEO) {
                return true;
            }
        } else if (this.x == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.octopus.ad.internal.view.b
    public void visible() {
        AdViewImpl adViewImpl;
        setVisibility(0);
        this.adViewImpl.showAdLogo(this);
        if (l.BANNER.equals(this.adViewImpl.getMediaType())) {
            AdViewImpl adViewImpl2 = this.adViewImpl;
            adViewImpl2.showBannerCloseBtn(adViewImpl2);
        }
        if (shouldDisplayButton() && (adViewImpl = this.adViewImpl) != null) {
            if (adViewImpl.getMediaType() == l.INTERSTITIAL) {
                this.adViewImpl.addInterstitialCloseButton(getShowCloseBtnTime(), getAutoCloseTime(), this, this.ad.getAdType() == e.a.ADP_IVIDEO);
            } else {
                this.adViewImpl.isLoadToShow(this);
            }
        }
        AdViewImpl adViewImpl3 = this.adViewImpl;
        if (adViewImpl3 == null || adViewImpl3.getAdDispatcher() == null || this.adViewImpl.getMediaType() != l.INTERSTITIAL) {
            return;
        }
        onAdShow();
    }
}
