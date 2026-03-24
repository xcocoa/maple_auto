package com.iflytek.voiceads.e;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.conn.VideoDataRef;
import com.iflytek.voiceads.listener.IFLYVideoListener;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class f extends Handler {
    private IFLYVideoListener a;

    public f() {
        super(Looper.getMainLooper());
    }

    public void a(int i, Object obj) {
        sendMessage(obtainMessage(i, obj));
    }

    public void a(IFLYVideoListener iFLYVideoListener) {
        this.a = iFLYVideoListener;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.a.onAdLoaded((VideoDataRef) message.obj);
                break;
            case 1:
                this.a.onAdFailed((AdError) message.obj);
                break;
        }
    }
}
