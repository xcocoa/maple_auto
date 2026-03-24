package com.iflytek.voiceads.request;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import com.iflytek.voiceads.bridge.o;
import com.iflytek.voiceads.utils.j;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class b implements o {
    final /* synthetic */ IFLYBrowser a;

    b(IFLYBrowser iFLYBrowser) {
        this.a = iFLYBrowser;
    }

    @Override // com.iflytek.voiceads.bridge.o
    public void a() {
    }

    @Override // com.iflytek.voiceads.bridge.o
    public void a(int i, String str) {
    }

    @Override // com.iflytek.voiceads.bridge.o
    public boolean a(WebView webView, String str) {
        com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "IFLYBrowser shouldOverrideUrlLoading:" + str);
        if (!com.iflytek.voiceads.utils.b.a(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if (!com.iflytek.voiceads.utils.b.a(this.a.getApplicationContext(), intent)) {
            j.b(com.iflytek.voiceads.param.c.b + "type=H5NotInstall&sid=" + this.a.h);
            return true;
        }
        try {
            intent.addFlags(32768);
            intent.addFlags(268435456);
            this.a.startActivity(intent);
            j.b(com.iflytek.voiceads.param.c.b + "type=H5DeepLink&sid=" + this.a.h);
            return true;
        } catch (Exception e) {
            j.b(com.iflytek.voiceads.param.c.b + "type=H5DeepFail&sid=" + this.a.h);
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return true;
        }
    }

    @Override // com.iflytek.voiceads.bridge.o
    public void b() {
    }
}
