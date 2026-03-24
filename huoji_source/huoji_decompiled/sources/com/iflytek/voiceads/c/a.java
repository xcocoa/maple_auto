package com.iflytek.voiceads.c;

import android.content.Context;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.listener.IFLYNativeListener;
import com.iflytek.voiceads.request.a;
import com.iflytek.voiceads.request.f;
import com.iflytek.voiceads.utils.g;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a {
    private com.iflytek.voiceads.param.a b;
    private Context c;
    private com.iflytek.voiceads.d.b d;
    private IFLYNativeListener e;
    a.InterfaceC0184a a = new b(this);
    private d f = new d();

    public a(Context context, String str, IFLYNativeListener iFLYNativeListener) {
        this.c = context;
        this.e = iFLYNativeListener;
        this.b = new com.iflytek.voiceads.param.a(str);
        this.d = new com.iflytek.voiceads.d.b(this.c.getApplicationContext());
        this.f.a(this.e);
    }

    public synchronized void a() {
        try {
            try {
                f.a(this.c.getApplicationContext(), this.b, this.a);
            } catch (AdError e) {
                this.f.a(1, e);
                g.a("IFLY_AD_SDK", e.getErrorDescription());
            }
        } catch (Exception e2) {
            g.b("IFLY_AD_SDK", e2.getMessage());
        }
    }

    public void a(String str, Object obj) {
        this.b.a(str, obj);
    }
}
