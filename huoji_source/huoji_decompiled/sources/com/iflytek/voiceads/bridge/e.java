package com.iflytek.voiceads.bridge;

import java.util.ArrayList;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class e implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ DSBridgeWebView b;

    e(DSBridgeWebView dSBridgeWebView, String str) {
        this.b = dSBridgeWebView;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a != null && this.a.startsWith("javascript:")) {
            super/*android.webkit.WebView*/.loadUrl(this.a);
            return;
        }
        this.b.k = new ArrayList();
        super/*android.webkit.WebView*/.loadUrl(this.a);
    }
}
