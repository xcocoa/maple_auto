package com.iflytek.voiceads.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.iflytek.voiceads.b.e;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a {
    private d c;
    private String d;
    private InterfaceC0180a e;
    e.b a = new b(this);
    private final int f = 1;
    Handler b = new c(this, Looper.getMainLooper());

    /* JADX INFO: renamed from: com.iflytek.voiceads.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0180a {
        void a(Bitmap bitmap);
    }

    public a(Context context, String str) {
        this.d = str;
        this.c = new d(context, str);
    }

    public void a(InterfaceC0180a interfaceC0180a) {
        this.e = interfaceC0180a;
        if (TextUtils.isEmpty(this.d)) {
            interfaceC0180a.a(null);
            return;
        }
        Bitmap bitmapA = this.c.a();
        if (bitmapA != null) {
            interfaceC0180a.a(bitmapA);
        } else {
            new e(this.d, this.a).a();
        }
    }
}
