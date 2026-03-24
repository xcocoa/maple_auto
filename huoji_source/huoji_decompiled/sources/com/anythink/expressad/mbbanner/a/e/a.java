package com.anythink.expressad.mbbanner.a.e;

import android.os.Handler;
import android.os.Looper;
import com.anythink.expressad.foundation.d.d;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String a = "a";
    private final Handler b = new Handler(Looper.getMainLooper());
    private boolean c;

    private void a(final com.anythink.expressad.mbbanner.a.c.b bVar, final d dVar, final String str) {
        this.b.post(new Runnable() { // from class: com.anythink.expressad.mbbanner.a.e.a.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.expressad.mbbanner.a.c.b bVar2 = bVar;
                if (bVar2 != null) {
                    d dVar2 = dVar;
                    boolean unused = a.this.c;
                    bVar2.a(dVar2);
                }
            }
        });
    }

    private void a(boolean z) {
        this.c = z;
    }

    public final void a(final com.anythink.expressad.mbbanner.a.c.b bVar, final String str) {
        this.b.post(new Runnable() { // from class: com.anythink.expressad.mbbanner.a.e.a.3
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.expressad.mbbanner.a.c.b bVar2 = bVar;
                if (bVar2 != null) {
                    boolean unused = a.this.c;
                    bVar2.a();
                }
            }
        });
    }

    public final void a(final com.anythink.expressad.mbbanner.a.c.b bVar, final String str, final String str2) {
        StringBuilder sb = new StringBuilder("postCampaignFail errorMsg=");
        sb.append(str);
        sb.append(" unitId=");
        sb.append(str2);
        this.b.post(new Runnable() { // from class: com.anythink.expressad.mbbanner.a.e.a.2
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.expressad.mbbanner.a.c.b bVar2 = bVar;
                if (bVar2 != null) {
                    String str3 = str;
                    boolean unused = a.this.c;
                    bVar2.a(str3);
                }
            }
        });
    }

    public final void b(final com.anythink.expressad.mbbanner.a.c.b bVar, final String str) {
        this.b.post(new Runnable() { // from class: com.anythink.expressad.mbbanner.a.e.a.4
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.expressad.mbbanner.a.c.b bVar2 = bVar;
                if (bVar2 != null) {
                    boolean unused = a.this.c;
                    bVar2.b();
                }
            }
        });
    }
}
