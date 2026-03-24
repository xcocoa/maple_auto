package com.anythink.expressad.video.bt.module.b;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class e extends c {
    private static final String a = "ProxyShowRewardListener";
    private h b;
    private com.anythink.expressad.videocommon.e.d c;
    private String d;
    private String e;
    private boolean f;
    private Context g;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public e(Context context, boolean z, com.anythink.expressad.videocommon.e.d dVar, com.anythink.expressad.foundation.d.c cVar, h hVar, String str, String str2) {
        long jL;
        this.b = hVar;
        this.c = dVar;
        this.d = str2;
        this.e = str;
        this.f = z;
        this.g = context;
        try {
            if (!TextUtils.isEmpty(com.anythink.expressad.foundation.b.a.c().f())) {
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
                if (aVarB == null) {
                    com.anythink.expressad.d.b.a();
                    aVarB = com.anythink.expressad.d.b.c();
                }
                jL = aVarB != null ? aVarB.l() * 1000 : 0L;
            }
            com.anythink.expressad.videocommon.e.a aVarB2 = com.anythink.expressad.videocommon.e.c.a().b();
            long jC = aVarB2 != null ? aVarB2.c() : 0L;
            if (cVar != null) {
                if (!cVar.a(jC, jL)) {
                    cVar.e(0);
                    cVar.m(0);
                    return;
                }
                cVar.e(1);
                if (dVar.M() == 1) {
                    cVar.m(1);
                } else {
                    cVar.m(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(com.anythink.expressad.videocommon.e.d dVar, com.anythink.expressad.foundation.d.c cVar) {
        long jL;
        try {
            if (!TextUtils.isEmpty(com.anythink.expressad.foundation.b.a.c().f())) {
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
                if (aVarB == null) {
                    com.anythink.expressad.d.b.a();
                    aVarB = com.anythink.expressad.d.b.c();
                }
                jL = aVarB != null ? aVarB.l() * 1000 : 0L;
            }
            com.anythink.expressad.videocommon.e.a aVarB2 = com.anythink.expressad.videocommon.e.c.a().b();
            long jC = aVarB2 != null ? aVarB2.c() : 0L;
            if (cVar != null) {
                if (!cVar.a(jC, jL)) {
                    cVar.e(0);
                    cVar.m(0);
                    return;
                }
                cVar.e(1);
                if (dVar.M() == 1) {
                    cVar.m(1);
                } else {
                    cVar.m(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void a() {
        super.a();
        h hVar = this.b;
        if (hVar == null || this.h) {
            return;
        }
        this.h = true;
        hVar.a();
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        super.a(cVar);
        h hVar = this.b;
        if (hVar != null) {
            hVar.a(cVar);
        }
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void a(String str) {
        super.a(str);
        h hVar = this.b;
        if (hVar == null || this.i) {
            return;
        }
        this.i = true;
        hVar.a(str);
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void a(boolean z, int i) {
        super.a(z, i);
        h hVar = this.b;
        if (hVar == null || this.j) {
            return;
        }
        hVar.a(z, i);
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void a(boolean z, com.anythink.expressad.videocommon.c.c cVar) {
        super.a(z, cVar);
        h hVar = this.b;
        if (hVar == null || this.j) {
            return;
        }
        this.j = true;
        hVar.a(z, cVar);
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void b() {
        super.b();
        h hVar = this.b;
        if (hVar != null) {
            hVar.b();
        }
    }

    @Override // com.anythink.expressad.video.bt.module.b.c, com.anythink.expressad.video.bt.module.b.h
    public final void c() {
        super.c();
        h hVar = this.b;
        if (hVar != null) {
            hVar.c();
        }
    }
}
