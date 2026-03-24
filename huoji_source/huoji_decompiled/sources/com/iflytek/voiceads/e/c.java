package com.iflytek.voiceads.e;

import android.os.Looper;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.download.p;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class c implements p.a {
    final /* synthetic */ a a;

    c(a aVar) {
        this.a = aVar;
    }

    @Override // com.iflytek.voiceads.download.p.a
    public void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Looper.prepare();
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "not main thread");
        }
        this.a.g.onAdFailed(new AdError(71008));
    }

    @Override // com.iflytek.voiceads.download.p.a
    public void a(String str) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Looper.prepare();
            com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "not main thread");
        }
        this.a.k = str;
        this.a.g.onVideoCached();
    }
}
