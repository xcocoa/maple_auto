package com.iflytek.voiceads.bridge;

import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class f implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Map b;
    final /* synthetic */ DSBridgeWebView c;

    f(DSBridgeWebView dSBridgeWebView, String str, Map map) {
        this.c = dSBridgeWebView;
        this.a = str;
        this.b = map;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a != null && this.a.startsWith("javascript:")) {
            super/*android.webkit.WebView*/.loadUrl(this.a, this.b);
            return;
        }
        this.c.k = new ArrayList();
        super/*android.webkit.WebView*/.loadUrl(this.a, this.b);
    }
}
