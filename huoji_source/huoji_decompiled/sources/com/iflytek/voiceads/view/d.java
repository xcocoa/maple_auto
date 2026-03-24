package com.iflytek.voiceads.view;

import android.webkit.WebView;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class d implements com.iflytek.voiceads.f.d {
    final /* synthetic */ AdView a;

    d(AdView adView) {
        this.a = adView;
    }

    @Override // com.iflytek.voiceads.f.d
    public void a() {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "onPageStarted");
        this.a.l.a(this.a.l.obtainMessage(4), 15000);
    }

    @Override // com.iflytek.voiceads.f.d
    public void a(int i, String str) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "WebViewClientCallback onLoadError");
        this.a.l.a(5, 71006);
    }

    @Override // com.iflytek.voiceads.f.d
    public void a(WebView webView, String str) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "shouldOverrideUrlLoading： height:" + this.a.getContentHeight() + ", progress:" + this.a.d.a());
        this.a.a(str);
    }

    @Override // com.iflytek.voiceads.f.d
    public void b() {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "onPageFinished： height:" + this.a.getContentHeight() + ", progress:" + this.a.d.a());
        this.a.m();
    }
}
