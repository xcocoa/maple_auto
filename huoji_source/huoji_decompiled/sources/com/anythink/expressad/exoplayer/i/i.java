package com.anythink.expressad.exoplayer.i;

import com.anythink.expressad.exoplayer.aa;
import com.anythink.expressad.exoplayer.k.af;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public final int a;
    public final aa[] b;
    public final g c;
    public final Object d;

    public i(aa[] aaVarArr, f[] fVarArr, Object obj) {
        this.b = aaVarArr;
        this.c = new g(fVarArr);
        this.d = obj;
        this.a = aaVarArr.length;
    }

    public final boolean a(int i) {
        return this.b[i] != null;
    }

    public final boolean a(i iVar) {
        if (iVar == null || iVar.c.a != this.c.a) {
            return false;
        }
        for (int i = 0; i < this.c.a; i++) {
            if (!a(iVar, i)) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(i iVar, int i) {
        return iVar != null && af.a(this.b[i], iVar.b[i]) && af.a(this.c.a(i), iVar.c.a(i));
    }
}
