package com.iflytek.voiceads.bridge;

import android.content.Context;
import android.os.CountDownTimer;
import java.io.File;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b {
    private Context a;
    private DSBridgeWebView b;
    private com.iflytek.voiceads.a.a c;
    private a d;
    private boolean e;
    private String f;

    class a extends CountDownTimer {
        final /* synthetic */ b a;

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (this.a.e || this.a.b == null) {
                return;
            }
            this.a.b.a("voiceRecordEnd", (Object[]) null, (n) null);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public b(Context context, DSBridgeWebView dSBridgeWebView) {
        this.a = context;
        this.b = dSBridgeWebView;
        this.f = com.iflytek.voiceads.download.c.a(context) + File.separator + "voiceRecord.wav";
    }

    public void a() {
        try {
            this.e = true;
            if (this.d != null) {
                this.d = null;
            }
            if (this.c != null) {
                this.c.a();
                this.c = null;
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "stopRecordExcept:" + e.getMessage());
        }
    }
}
