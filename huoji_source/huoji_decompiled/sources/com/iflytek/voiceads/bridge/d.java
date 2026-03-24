package com.iflytek.voiceads.bridge;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class d implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ DSBridgeWebView b;

    d(DSBridgeWebView dSBridgeWebView, String str) {
        this.b = dSBridgeWebView;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.c(this.a);
    }
}
