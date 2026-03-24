package com.anythink.core.c.b;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.av;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c implements b {
    private static final String a = "PlacementStatRecWrapper";
    private final b c = new d();
    private final Handler b = com.anythink.core.common.o.b.b.a().a(11);

    private void a(Runnable runnable) {
        Handler handler = this.b;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    @Override // com.anythink.core.c.b.b
    public final com.anythink.core.c.a.d a(String str, int i, com.anythink.core.d.d dVar) {
        return this.c.a(str, i, dVar);
    }

    @Override // com.anythink.core.c.b.b
    public final List<com.anythink.core.c.a.a> a(int i, String str, int i2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.w(a, "The getStatisticsBeanList method cannot be called from the main thread.");
        }
        return this.c.a(i, str, i2);
    }

    @Override // com.anythink.core.c.b.b
    public final JSONObject a(String str) {
        return a(str, 0);
    }

    @Override // com.anythink.core.c.b.b
    public final JSONObject a(String str, int i) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.w(a, "The getUserValueParams method cannot be called from the main thread.");
        }
        return this.c.a(str, i);
    }

    @Override // com.anythink.core.c.b.b
    public final JSONObject a(String str, int i, int i2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.w(a, "The getUserValueParams with count method cannot be called from the main thread.");
        }
        return this.c.a(str, i, i2);
    }

    @Override // com.anythink.core.c.b.b
    public final void a(final au auVar, final av avVar) {
        a(new Runnable() { // from class: com.anythink.core.c.b.c.2
            @Override // java.lang.Runnable
            public final void run() {
                c.this.c.a(auVar, avVar);
            }
        });
    }

    @Override // com.anythink.core.c.b.b
    public final void a(final String str, final String str2, final int i, final av avVar) {
        a(new Runnable() { // from class: com.anythink.core.c.b.c.1
            @Override // java.lang.Runnable
            public final void run() {
                c.this.c.a(str, str2, i, avVar);
            }
        });
    }

    @Override // com.anythink.core.c.b.b
    public final void b(String str) {
        this.c.b(str);
    }
}
