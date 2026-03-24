package com.iflytek.voiceads.view;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.listener.InternalListener;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a extends Handler {
    private IFLYAdListener a;
    private InternalListener b;

    public a() {
        super(Looper.getMainLooper());
    }

    public void a(int i, int i2) {
        sendMessageDelayed(obtainMessage(i), i2);
    }

    public void a(int i, Object obj) {
        sendMessage(obtainMessage(i, obj));
    }

    public void a(IFLYAdListener iFLYAdListener) {
        this.a = iFLYAdListener;
    }

    public void a(InternalListener internalListener) {
        this.b = internalListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (this.a == null) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "htmlAd listener is null");
        }
        switch (message.what) {
            case 0:
                this.a.onAdReceive();
                break;
            case 1:
                this.a.onAdFailed((AdError) message.obj);
                break;
            case 2:
                this.a.onAdClick();
                break;
            case 3:
                this.a.onAdClose();
                break;
            case 4:
                this.b.onAdDestroy();
                break;
        }
    }
}
