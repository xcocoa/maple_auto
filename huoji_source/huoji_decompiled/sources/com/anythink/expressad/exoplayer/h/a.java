package com.anythink.expressad.exoplayer.h;

import android.util.Pair;
import com.anythink.expressad.exoplayer.ae;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends com.anythink.expressad.exoplayer.ae {
    private final int b;
    private final aa c;
    private final boolean d;

    public a(boolean z, aa aaVar) {
        this.d = z;
        this.c = aaVar;
        this.b = aaVar.a();
    }

    private int a(int i, boolean z) {
        if (z) {
            return this.c.a(i);
        }
        if (i < this.b - 1) {
            return i + 1;
        }
        return -1;
    }

    private int b(int i, boolean z) {
        if (z) {
            return this.c.b(i);
        }
        if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    public abstract int a(int i);

    @Override // com.anythink.expressad.exoplayer.ae
    public final int a(int i, int i2, boolean z) {
        if (this.d) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iB = b(i);
        int iE = e(iB);
        int iA = c(iB).a(i - iE, i2 != 2 ? i2 : 0, z);
        if (iA != -1) {
            return iE + iA;
        }
        int iA2 = a(iB, z);
        while (iA2 != -1 && c(iA2).a()) {
            iA2 = a(iA2, z);
        }
        if (iA2 != -1) {
            return e(iA2) + c(iA2).b(z);
        }
        if (i2 == 2) {
            return b(z);
        }
        return -1;
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final int a(Object obj) {
        int iA;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int iB = b(obj2);
        if (iB == -1 || (iA = c(iB).a(obj3)) == -1) {
            return -1;
        }
        return d(iB) + iA;
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final int a(boolean z) {
        int i = this.b;
        if (i == 0) {
            return -1;
        }
        if (this.d) {
            z = false;
        }
        int iB = z ? this.c.b() : i - 1;
        while (c(iB).a()) {
            iB = b(iB, z);
            if (iB == -1) {
                return -1;
            }
        }
        return e(iB) + c(iB).a(z);
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final ae.a a(int i, ae.a aVar, boolean z) {
        int iA = a(i);
        int iE = e(iA);
        c(iA).a(i - d(iA), aVar, z);
        aVar.c += iE;
        if (z) {
            aVar.b = Pair.create(f(iA), aVar.b);
        }
        return aVar;
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final ae.b a(int i, ae.b bVar, boolean z, long j) {
        int iB = b(i);
        int iE = e(iB);
        int iD = d(iB);
        c(iB).a(i - iE, bVar, z, j);
        bVar.f += iD;
        bVar.g += iD;
        return bVar;
    }

    public abstract int b(int i);

    @Override // com.anythink.expressad.exoplayer.ae
    public final int b(int i, int i2, boolean z) {
        if (this.d) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iB = b(i);
        int iE = e(iB);
        int iB2 = c(iB).b(i - iE, i2 != 2 ? i2 : 0, z);
        if (iB2 != -1) {
            return iE + iB2;
        }
        int iB3 = b(iB, z);
        while (iB3 != -1 && c(iB3).a()) {
            iB3 = b(iB3, z);
        }
        if (iB3 != -1) {
            return e(iB3) + c(iB3).a(z);
        }
        if (i2 == 2) {
            return a(z);
        }
        return -1;
    }

    public abstract int b(Object obj);

    @Override // com.anythink.expressad.exoplayer.ae
    public final int b(boolean z) {
        if (this.b == 0) {
            return -1;
        }
        if (this.d) {
            z = false;
        }
        int iC = z ? this.c.c() : 0;
        while (c(iC).a()) {
            iC = a(iC, z);
            if (iC == -1) {
                return -1;
            }
        }
        return e(iC) + c(iC).b(z);
    }

    public abstract com.anythink.expressad.exoplayer.ae c(int i);

    public abstract int d(int i);

    public abstract int e(int i);

    public abstract Object f(int i);
}
