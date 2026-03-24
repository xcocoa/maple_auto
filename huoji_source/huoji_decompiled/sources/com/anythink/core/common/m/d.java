package com.anythink.core.common.m;

import android.os.Handler;
import android.os.Looper;
import com.anythink.expressad.video.module.a.a.m;

/* JADX INFO: loaded from: classes.dex */
public class d implements a {
    private static final String a = "TimeOutHandlerImpl";
    private static volatile d b;
    private final Handler d = com.anythink.core.common.o.b.b.a().a(12);
    private final Handler c = new Handler(Looper.getMainLooper());

    private d() {
    }

    private Handler a(boolean z) {
        return z ? this.c : this.d;
    }

    public static a a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    @Override // com.anythink.core.common.m.a
    public final void a(b bVar) {
        a(bVar, m.ag, true);
    }

    @Override // com.anythink.core.common.m.a
    public final void a(b bVar, long j, boolean z) {
        StringBuilder sb = new StringBuilder("sendTimeOutMsg() >>> delayMillis=");
        sb.append(j);
        sb.append(" isMainThread=");
        sb.append(z);
        Handler handlerA = a(z);
        if (handlerA == null) {
            return;
        }
        handlerA.postDelayed(bVar, j);
    }

    @Override // com.anythink.core.common.m.a
    public final void b(b bVar) {
        Handler handler = this.c;
        if (handler != null && bVar != null) {
            handler.removeCallbacks(bVar);
        }
        Handler handler2 = this.d;
        if (handler2 == null || bVar == null) {
            return;
        }
        handler2.removeCallbacks(bVar);
    }
}
