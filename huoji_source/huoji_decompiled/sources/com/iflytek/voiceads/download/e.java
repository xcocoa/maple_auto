package com.iflytek.voiceads.download;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class e extends Handler {
    final /* synthetic */ d a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(d dVar, Looper looper) {
        super(looper);
        this.a = dVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 0) {
            try {
                this.a.c();
                com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "移除广播 end");
            } catch (Exception e) {
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "移除广播 end");
            }
        }
    }
}
