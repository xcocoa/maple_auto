package z2;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Picture;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
public class o00O00o0 extends WebViewClient {
    private static final String OooO = "double_tap_toast_count";
    private static String OooO0oO = null;
    private static final String OooO0oo = "WebViewSettings";
    private Object OooO00o;
    private WebView OooO0O0;
    private String OooO0OO;
    private boolean OooO0Oo;
    private int OooO0o;
    private boolean OooO0o0;

    public class OooO00o implements WebView.PictureListener {
        public OooO00o() {
        }

        @Override // android.webkit.WebView.PictureListener
        public void onNewPicture(WebView webView, Picture picture) {
            o00O00o0.this.OooO0O0.setPictureListener(null);
            o00O00o0.this.OooO();
        }
    }

    public o00O00o0(WebView webView, String str, Object obj, boolean z, boolean z3, int i) {
        this.OooO0O0 = webView;
        this.OooO0OO = str;
        this.OooO00o = obj;
        this.OooO0Oo = z;
        this.OooO0o0 = z3;
        this.OooO0o = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO() {
        String strReplace = OooO0oO(this.OooO0O0.getContext()).replace("@src", this.OooO0OO).replace("@color", Integer.toHexString(this.OooO0o));
        this.OooO0O0.setWebViewClient(this);
        this.OooO0O0.loadDataWithBaseURL(null, strReplace, "text/html", "utf-8", null);
        this.OooO0O0.setBackgroundColor(this.OooO0o);
    }

    private void OooO0OO() {
        this.OooO0O0.setPictureListener(new OooO00o());
        this.OooO0O0.loadData("<html></html>", "text/html", "utf-8");
        this.OooO0O0.setBackgroundColor(this.OooO0o);
    }

    private static void OooO0Oo(WebView webView) {
        if (Build.VERSION.SDK_INT < 11) {
            return;
        }
        o00O000.OooOooO(webView.getSettings(), "setDisplayZoomControls", false, false, new Class[]{Boolean.TYPE}, Boolean.FALSE);
    }

    private static void OooO0o(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(OooO0oo, 0);
        if (sharedPreferences.getInt(OooO, 1) > 0) {
            sharedPreferences.edit().putInt(OooO, 0).commit();
        }
    }

    private void OooO0o0(WebView webView) {
        if (this.OooO00o != null) {
            webView.setVisibility(0);
            o00O000o.OooOOOO(this.OooO00o, this.OooO0OO, false);
        }
        webView.setWebViewClient(null);
    }

    private static String OooO0oO(Context context) {
        if (OooO0oO == null) {
            try {
                OooO0oO = new String(o00O000.OooooO0(context.getClassLoader().getResourceAsStream("com/androidquery/util/web_image.html")));
            } catch (Exception e) {
                o00O000.OooOO0O(e);
            }
        }
        return OooO0oO;
    }

    public void OooO0oo() {
        if (this.OooO0OO.equals(this.OooO0O0.getTag(o00O00.OooOo0O))) {
            return;
        }
        this.OooO0O0.setTag(o00O00.OooOo0O, this.OooO0OO);
        if (Build.VERSION.SDK_INT <= 10) {
            this.OooO0O0.setDrawingCacheEnabled(true);
        }
        OooO0o(this.OooO0O0.getContext());
        WebSettings settings = this.OooO0O0.getSettings();
        settings.setSupportZoom(this.OooO0Oo);
        settings.setBuiltInZoomControls(this.OooO0Oo);
        if (!this.OooO0o0) {
            OooO0Oo(this.OooO0O0);
        }
        settings.setJavaScriptEnabled(true);
        this.OooO0O0.setBackgroundColor(this.OooO0o);
        Object obj = this.OooO00o;
        if (obj != null) {
            o00O000o.OooOOOO(obj, this.OooO0OO, true);
        }
        if (this.OooO0O0.getWidth() > 0) {
            OooO();
        } else {
            OooO0OO();
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        OooO0o0(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        OooO0o0(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onScaleChanged(WebView webView, float f, float f2) {
    }
}
