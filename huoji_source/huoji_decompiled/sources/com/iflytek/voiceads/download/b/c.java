package com.iflytek.voiceads.download.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class c extends Handler {
    final /* synthetic */ b a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    c(b bVar, Looper looper) {
        super(looper);
        this.a = bVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        com.iflytek.voiceads.download.d.a aVar = (com.iflytek.voiceads.download.d.a) message.obj;
        if (aVar == null || aVar.f() == null) {
            return;
        }
        com.iflytek.voiceads.download.a.a aVarF = aVar.f();
        switch (aVar.g()) {
            case 1:
                aVarF.a(aVar.h());
                break;
            case 2:
                aVarF.a(aVar.e(), aVar.d(), aVar.h());
                break;
            case 4:
                aVarF.b(aVar.h());
                break;
            case 5:
                aVarF.a(aVar.a(), aVar.h());
                break;
        }
    }
}
