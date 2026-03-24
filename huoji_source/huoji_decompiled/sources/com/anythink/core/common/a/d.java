package com.anythink.core.common.a;

import com.anythink.core.common.b.n;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static volatile d b;
    public final String a = d.class.getName();
    private com.anythink.core.common.c.f c;
    private com.anythink.core.common.c.e d;

    private d() {
        if (n.a().f() != null) {
            this.c = com.anythink.core.common.c.f.a(com.anythink.core.common.c.c.a(n.a().f()));
            this.d = com.anythink.core.common.c.e.a(com.anythink.core.common.c.c.a(n.a().f()));
        }
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    public final List<f> a(int i) {
        return this.c.a(i);
    }

    public final void a(final com.anythink.core.common.f.j jVar) {
        new StringBuilder("insertDspOfferShowRecord dspOfferId:").append(jVar.ae());
        n.a();
        n.c(new Runnable() { // from class: com.anythink.core.common.a.d.1
            @Override // java.lang.Runnable
            public final void run() {
                h hVar = new h();
                hVar.a = jVar.ad();
                hVar.b = jVar.ae();
                hVar.c = jVar.af();
                hVar.d = 0;
                d.this.c.a(hVar);
            }
        });
    }

    public final List<f> b(int i) {
        return this.d.a(i);
    }

    public final void b() {
        n.a();
        n.c(new Runnable() { // from class: com.anythink.core.common.a.d.3
            @Override // java.lang.Runnable
            public final void run() {
                d.this.c.c();
            }
        });
    }

    public final void b(final com.anythink.core.common.f.j jVar) {
        new StringBuilder("updateDspOfferShowRecord dspOfferId:").append(jVar.ae());
        n.a();
        n.c(new Runnable() { // from class: com.anythink.core.common.a.d.2
            @Override // java.lang.Runnable
            public final void run() {
                h hVar = new h();
                hVar.a = jVar.ad();
                hVar.b = jVar.ae();
                hVar.c = jVar.af();
                hVar.d = 1;
                d.this.c.b(hVar);
            }
        });
    }

    public final void c(final com.anythink.core.common.f.j jVar) {
        if (jVar.ag() != 1) {
            StringBuilder sb = new StringBuilder("adxOffer.getDspInstallIdUploadSwitch() = ");
            sb.append(jVar.ag());
            sb.append(",not need to record install");
        } else if (jVar.H() == 1 || jVar.H() == 4) {
            n.a();
            n.c(new Runnable() { // from class: com.anythink.core.common.a.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    new StringBuilder("insertDspOfferInstallRecord dspOfferId:").append(jVar.ae());
                    g gVar = new g();
                    gVar.a = jVar.ad();
                    gVar.b = jVar.ae();
                    gVar.c = jVar.F();
                    d.this.d.a(gVar);
                }
            });
        } else {
            StringBuilder sb2 = new StringBuilder("adxOffer.getClickType = ");
            sb2.append(jVar.H());
            sb2.append(",not need to record install");
        }
    }
}
