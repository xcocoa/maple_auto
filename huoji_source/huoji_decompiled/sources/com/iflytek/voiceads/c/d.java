package com.iflytek.voiceads.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.conn.NativeDataRef;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.utils.g;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d extends Handler {
    private IFLYNativeListener a;

    public d() {
        super(Looper.getMainLooper());
    }

    public void a(int i, Object obj) {
        sendMessage(obtainMessage(i, obj));
    }

    public void a(IFLYNativeListener iFLYNativeListener) {
        this.a = iFLYNativeListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.a == null) {
            g.b("IFLY_AD_SDK", "native listener is null");
        }
        switch (message.what) {
            case 0:
                this.a.onAdLoaded((NativeDataRef) message.obj);
                break;
            case 1:
                this.a.onAdFailed((AdError) message.obj);
                break;
        }
    }
}
