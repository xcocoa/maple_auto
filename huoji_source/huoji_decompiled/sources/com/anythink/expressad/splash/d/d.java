package com.anythink.expressad.splash.d;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.expressad.out.e;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.Random;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.anythink.expressad.splash.b.d {
    private static final String a = "SplashShowListenerImpl";
    private e b;
    private com.anythink.expressad.foundation.d.c c;
    private boolean d;
    private c e;
    private Runnable f = new Runnable() { // from class: com.anythink.expressad.splash.d.d.1
        @Override // java.lang.Runnable
        public final void run() {
            d.this.a("show timeout!");
        }
    };

    public d(c cVar, e eVar, double d, com.anythink.expressad.foundation.d.c cVar2) {
        this.e = cVar;
        this.b = eVar;
        this.c = cVar2;
        this.d = a(d, cVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean a(double d, com.anythink.expressad.foundation.d.c cVar) {
        long j;
        try {
            long jX = 0;
            if (!TextUtils.isEmpty(com.anythink.expressad.foundation.b.a.c().f())) {
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
                if (aVarB != null) {
                    long jL = aVarB.l() * 1000;
                    jX = 1000 * aVarB.x();
                    j = jL;
                } else {
                    j = 0;
                }
                StringBuilder sb = new StringBuilder("cbp : ");
                sb.append(d);
                sb.append(" plct : ");
                sb.append(jX);
                sb.append(" plctb : ");
                sb.append(j);
                if (cVar != null) {
                    if (cVar.a(jX, j)) {
                        cVar.e(1);
                        return true;
                    }
                    cVar.e(0);
                }
                if (cVar == null || cVar.A() || d == 1.0d) {
                    return false;
                }
                double dNextDouble = new Random().nextDouble();
                StringBuilder sb2 = new StringBuilder("hit : ");
                sb2.append(dNextDouble);
                sb2.append(o4.OooO00o.OooO0Oo);
                sb2.append(dNextDouble > d);
                if (dNextDouble > d) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private static void d() {
    }

    private static void e() {
    }

    private void f() {
        if (this.b != null) {
            this.b = null;
        }
    }

    @Override // com.anythink.expressad.splash.b.d
    public final void a() {
        if (this.f != null) {
            n.a().d(this.f);
        }
        c cVar = this.e;
        if (cVar != null) {
            cVar.a = true;
        }
        StringBuffer stringBuffer = new StringBuffer("load_to=");
        stringBuffer.append(this.e.c());
        stringBuffer.append("&allow_skip=");
        stringBuffer.append(this.e.d() ? 1 : 0);
        stringBuffer.append("&countdown=");
        stringBuffer.append(this.e.e());
        stringBuffer.append("&");
        e eVar = this.b;
        if (eVar == null || this.d) {
            return;
        }
        eVar.a();
    }

    @Override // com.anythink.expressad.splash.b.d
    public final void a(int i) {
        e eVar = this.b;
        if (eVar != null) {
            eVar.a(i);
        }
        c cVar = this.e;
        if (cVar != null) {
            cVar.a = false;
        }
    }

    @Override // com.anythink.expressad.splash.b.d
    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        e eVar = this.b;
        if (eVar == null || this.d) {
            return;
        }
        eVar.a(cVar);
    }

    @Override // com.anythink.expressad.splash.b.d
    public final void a(String str) {
        c cVar = this.e;
        if (cVar != null) {
            cVar.a = false;
        }
        e eVar = this.b;
        if (eVar != null) {
            eVar.a(str);
        }
    }

    @Override // com.anythink.expressad.splash.b.d
    public final void b() {
    }

    public final void c() {
        n.a().a(this.f, UMAmapConfig.AMAP_CACHE_WRITE_TIME);
    }
}
