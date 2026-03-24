package com.iflytek.voiceads.bridge;

import java.util.ArrayList;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class g implements Runnable {
    final /* synthetic */ DSBridgeWebView a;

    g(DSBridgeWebView dSBridgeWebView) {
        this.a = dSBridgeWebView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.k = new ArrayList();
        super/*android.webkit.WebView*/.reload();
    }
}
