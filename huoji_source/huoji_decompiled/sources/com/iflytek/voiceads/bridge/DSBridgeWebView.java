package com.iflytek.voiceads.bridge;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class DSBridgeWebView extends WebView {
    private static boolean c = false;
    Map<Integer, n> a;
    public WebViewClient b;
    private Map<String, Object> d;
    private String e;
    private int f;
    private WebChromeClient g;
    private o h;
    private volatile boolean i;
    private c j;
    private ArrayList<a> k;
    private b l;
    private Handler m;
    private WebChromeClient n;

    /* JADX INFO: Access modifiers changed from: private */
    static class a {
        private String a;
        private int b;
        private String c;

        a(String str, int i, Object[] objArr) {
            this.a = new JSONArray((Collection) Arrays.asList(objArr == null ? new Object[0] : objArr)).toString();
            this.b = i;
            this.c = str;
        }

        public String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("method", this.c);
                jSONObject.put("callbackId", this.b);
                jSONObject.put("data", this.a);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return jSONObject.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class b {
        private b() {
        }

        /* synthetic */ b(DSBridgeWebView dSBridgeWebView, com.iflytek.voiceads.bridge.c cVar) {
            this();
        }

        private void a(String str) {
            if (DSBridgeWebView.c) {
                DSBridgeWebView.this.a(String.format("alert('%s')", "DEBUG ERR MSG:\\n" + str.replaceAll("\\'", "\\\\'")));
            }
        }

        public String a(String str, String str2) throws NoSuchMethodException {
            Method method;
            boolean z;
            String string;
            String[] strArrB = DSBridgeWebView.this.b(str.trim());
            String str3 = strArrB[1];
            Object obj = DSBridgeWebView.this.d.get(strArrB[0]);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("code", -1);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (obj == null) {
                a("Js bridge  called, but can't find a corresponded JavascriptInterface object , please check your code!");
                return jSONObject.toString();
            }
            try {
                JSONObject jSONObject2 = new JSONObject(str2);
                String string2 = jSONObject2.has("_dscbstub") ? jSONObject2.getString("_dscbstub") : null;
                Object obj2 = jSONObject2.has("data") ? jSONObject2.get("data") : null;
                Class<?> cls = obj.getClass();
                try {
                    method = cls.getMethod(str3, Object.class, com.iflytek.voiceads.bridge.a.class);
                    z = true;
                } catch (Exception e2) {
                    try {
                        method = cls.getMethod(str3, Object.class);
                        z = false;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        method = null;
                        z = false;
                    }
                }
                if (method == null) {
                    a("Not find method \"" + str3 + "\" implementation! please check if the  signature or namespace of the method is right ");
                    return jSONObject.toString();
                }
                if (Build.VERSION.SDK_INT >= 17 && ((JavascriptInterface) method.getAnnotation(JavascriptInterface.class)) == null) {
                    a("Method " + str3 + " is not invoked, since  it is not declared with JavascriptInterface annotation! ");
                    return jSONObject.toString();
                }
                method.setAccessible(true);
                try {
                    if (z) {
                        method.invoke(obj, obj2, new m(this, string2));
                        string = jSONObject.toString();
                    } else {
                        Object objInvoke = method.invoke(obj, obj2);
                        jSONObject.put("code", 0);
                        jSONObject.put("data", objInvoke);
                        string = jSONObject.toString();
                    }
                    return string;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    a(String.format("Call failed：The parameter of \"%s\" in Java is invalid.", str3));
                    return jSONObject.toString();
                }
            } catch (JSONException e5) {
                a(String.format("The argument of \"%s\" must be a JSON object string!", str3));
                e5.printStackTrace();
                return jSONObject.toString();
            }
        }
    }

    public interface c {
    }

    public DSBridgeWebView(Context context) {
        super(context);
        this.d = new HashMap();
        this.f = 0;
        this.i = true;
        this.j = null;
        this.l = new b(this, null);
        this.m = new Handler(Looper.getMainLooper());
        this.a = new HashMap();
        this.n = new h(this);
        this.b = new l(this);
        b();
    }

    public DSBridgeWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new HashMap();
        this.f = 0;
        this.i = true;
        this.j = null;
        this.l = new b(this, null);
        this.m = new Handler(Looper.getMainLooper());
        this.a = new HashMap();
        this.n = new h(this);
        this.b = new l(this);
        b();
    }

    private void a(a aVar) {
        a(String.format("window._handleMessageFromNative(%s)", aVar.toString()));
    }

    private void a(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.m.post(runnable);
        }
    }

    private void b() {
        this.e = getContext().getFilesDir().getAbsolutePath() + "/webcache";
        WebSettings settings = getSettings();
        settings.setDomStorageEnabled(true);
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, true);
            settings.setMixedContentMode(0);
        }
        settings.setUserAgentString(settings.getUserAgentString() + " iflytek_webview");
        settings.setAllowFileAccess(false);
        settings.setAppCacheEnabled(false);
        settings.setCacheMode(2);
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setAppCachePath(this.e);
        settings.setUseWideViewPort(true);
        super.setWebChromeClient(this.n);
        super.setWebViewClient(this.b);
        c();
        if (Build.VERSION.SDK_INT > 16) {
            super.addJavascriptInterface(this.l, "_dsbridge");
        } else {
            settings.setUserAgentString(settings.getUserAgentString() + " _dsbridge");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] b(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        String strSubstring = "";
        if (iLastIndexOf != -1) {
            strSubstring = str.substring(0, iLastIndexOf);
            str = str.substring(iLastIndexOf + 1);
        }
        return new String[]{strSubstring, str};
    }

    private void c() {
        a(new com.iflytek.voiceads.bridge.c(this), "_dsb");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            super.evaluateJavascript(str, null);
        } else {
            super.loadUrl("javascript:" + str);
        }
    }

    public void a(o oVar) {
        this.h = oVar;
    }

    public void a(File file) {
        if (!file.exists()) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "delete file no exists " + file.getAbsolutePath());
            return;
        }
        if (file.isFile()) {
            file.delete();
        } else if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                a(file2);
            }
        }
        file.delete();
    }

    public void a(Object obj, String str) {
        if (str == null) {
            str = "";
        }
        if (obj != null) {
            this.d.put(str, obj);
        }
    }

    public void a(String str) {
        a(new d(this, str));
    }

    public synchronized <T> void a(String str, Object[] objArr, n<T> nVar) {
        int i = this.f + 1;
        this.f = i;
        a aVar = new a(str, i, objArr);
        if (nVar != null) {
            this.a.put(Integer.valueOf(aVar.b), nVar);
        }
        if (this.k != null) {
            this.k.add(aVar);
        } else {
            a(aVar);
        }
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z) {
        super.clearCache(z);
        CookieManager.getInstance().removeAllCookie();
        Context context = getContext();
        try {
            context.deleteDatabase("webview.db");
            context.deleteDatabase("webviewCache.db");
        } catch (Exception e) {
            e.printStackTrace();
        }
        File file = new File(this.e);
        File file2 = new File(context.getCacheDir().getAbsolutePath() + "/webviewCache");
        if (file2.exists()) {
            a(file2);
        }
        if (file.exists()) {
            a(file);
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        a(new e(this, str));
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        a(new f(this, str, map));
    }

    @Override // android.webkit.WebView
    public void reload() {
        a(new g(this));
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.g = webChromeClient;
    }
}
