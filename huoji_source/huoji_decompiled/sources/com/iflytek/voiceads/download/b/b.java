package com.iflytek.voiceads.download.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b implements a {
    private Handler a = new c(this, Looper.getMainLooper());
    private com.iflytek.voiceads.download.c.a b;

    public b(com.iflytek.voiceads.download.c.a aVar) {
        this.b = aVar;
    }

    @Override // com.iflytek.voiceads.download.b.a
    public void a(com.iflytek.voiceads.download.d.a aVar) {
        if (aVar == null) {
            return;
        }
        Message messageObtainMessage = this.a.obtainMessage(aVar.h());
        messageObtainMessage.obj = aVar;
        messageObtainMessage.sendToTarget();
        if (aVar.g() == 4) {
            this.b.a(aVar);
        }
    }
}
