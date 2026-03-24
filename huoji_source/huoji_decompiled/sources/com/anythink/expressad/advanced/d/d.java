package com.anythink.expressad.advanced.d;

import com.anythink.expressad.out.o;
import java.util.Random;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class d implements com.anythink.expressad.advanced.b.b {
    private static final String a = "NativeAdvancedShowListenerImpl";
    private o b;
    private com.anythink.expressad.foundation.d.c c;
    private boolean d;
    private c e;

    public d(c cVar, o oVar, double d, com.anythink.expressad.foundation.d.c cVar2) {
        this.e = cVar;
        this.b = oVar;
        this.c = cVar2;
        this.d = a(d, cVar2);
    }

    private static boolean a(double d, com.anythink.expressad.foundation.d.c cVar) {
        try {
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.a aVarC = com.anythink.expressad.d.b.c();
            long jL = aVarC.l() * 1000;
            long jX = aVarC.x() * 1000;
            StringBuilder sb = new StringBuilder("cbp : ");
            sb.append(d);
            sb.append(" plct : ");
            sb.append(jX);
            sb.append(" plctb : ");
            sb.append(jL);
            if (cVar != null) {
                if (cVar.a(jX, jL)) {
                    cVar.e(1);
                    return true;
                }
                cVar.e(0);
            }
        } catch (Exception unused) {
        }
        if (cVar == null || cVar.A() || d == 1.0d) {
            return false;
        }
        double dNextDouble = new Random().nextDouble();
        StringBuilder sb2 = new StringBuilder("hit : ");
        sb2.append(dNextDouble);
        sb2.append(o4.OooO00o.OooO0Oo);
        sb2.append(dNextDouble > d);
        return dNextDouble > d;
    }

    private void g() {
        if (this.b != null) {
            this.b = null;
        }
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void a() {
        c cVar = this.e;
        if (cVar != null) {
            cVar.d = true;
        }
        StringBuffer stringBuffer = new StringBuffer("load_to=0&allow_skip=");
        stringBuffer.append(this.e.d());
        stringBuffer.append("&");
        o oVar = this.b;
        if (oVar == null || this.d) {
            return;
        }
        oVar.b();
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        o oVar = this.b;
        if (oVar == null || this.d) {
            return;
        }
        oVar.a(cVar);
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void b() {
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void c() {
        o oVar = this.b;
        if (oVar != null) {
            oVar.f();
            c cVar = this.e;
            if (cVar != null) {
                cVar.d = false;
            }
        }
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void d() {
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void e() {
    }

    @Override // com.anythink.expressad.advanced.b.b
    public final void f() {
    }
}
