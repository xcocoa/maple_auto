package com.anythink.expressad.exoplayer.h;

import com.anythink.expressad.exoplayer.e.m;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    private static final int a = 1000;
    private int j;
    private int k;
    private int l;
    private int m;
    private com.anythink.expressad.exoplayer.m r;
    private int s;
    private int b = 1000;
    private int[] c = new int[1000];
    private long[] d = new long[1000];
    private long[] g = new long[1000];
    private int[] f = new int[1000];
    private int[] e = new int[1000];
    private m.a[] h = new m.a[1000];
    private com.anythink.expressad.exoplayer.m[] i = new com.anythink.expressad.exoplayer.m[1000];
    private long n = Long.MIN_VALUE;
    private long o = Long.MIN_VALUE;
    private boolean q = true;
    private boolean p = true;

    public static final class a {
        public int a;
        public long b;
        public m.a c;
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2 && this.g[i] <= j; i4++) {
            if (!z || (this.f[i] & 1) != 0) {
                i3 = i4;
            }
            i++;
            if (i == this.b) {
                i = 0;
            }
        }
        return i3;
    }

    private synchronized void b(long j) {
        this.o = Math.max(this.o, j);
    }

    private long d(int i) {
        this.n = Math.max(this.n, e(i));
        int i2 = this.j - i;
        this.j = i2;
        this.k += i;
        int i3 = this.l + i;
        this.l = i3;
        int i4 = this.b;
        if (i3 >= i4) {
            this.l = i3 - i4;
        }
        int i5 = this.m - i;
        this.m = i5;
        if (i5 < 0) {
            this.m = 0;
        }
        if (i2 != 0) {
            return this.d[this.l];
        }
        int i6 = this.l;
        if (i6 != 0) {
            i4 = i6;
        }
        int i7 = i4 - 1;
        return this.d[i7] + ((long) this.e[i7]);
    }

    private long e(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int iF = f(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.g[iF]);
            if ((this.f[iF] & 1) != 0) {
                break;
            }
            iF--;
            if (iF == -1) {
                iF = this.b - 1;
            }
        }
        return jMax;
    }

    private int f(int i) {
        int i2 = this.l + i;
        int i3 = this.b;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final synchronized int a(long j, boolean z) {
        int iF = f(this.m);
        if (f() && j >= this.g[iF] && (j <= this.o || z)) {
            int iA = a(iF, this.j - this.m, j, true);
            if (iA == -1) {
                return -1;
            }
            this.m += iA;
            return iA;
        }
        return -1;
    }

    public final synchronized int a(com.anythink.expressad.exoplayer.n nVar, com.anythink.expressad.exoplayer.c.e eVar, boolean z, boolean z3, com.anythink.expressad.exoplayer.m mVar, a aVar) {
        if (!f()) {
            if (z3) {
                eVar.a(4);
                return -4;
            }
            com.anythink.expressad.exoplayer.m mVar2 = this.r;
            if (mVar2 == null || (!z && mVar2 == mVar)) {
                return -3;
            }
            nVar.a = mVar2;
            return -5;
        }
        int iF = f(this.m);
        if (!z && this.i[iF] == mVar) {
            if (eVar.f()) {
                return -3;
            }
            eVar.f = this.g[iF];
            eVar.a(this.f[iF]);
            aVar.a = this.e[iF];
            aVar.b = this.d[iF];
            aVar.c = this.h[iF];
            this.m++;
            return -4;
        }
        nVar.a = this.i[iF];
        return -5;
    }

    public final long a(int i) {
        int iB = b() - i;
        com.anythink.expressad.exoplayer.k.a.a(iB >= 0 && iB <= this.j - this.m);
        int i2 = this.j - iB;
        this.j = i2;
        this.o = Math.max(this.n, e(i2));
        int i3 = this.j;
        if (i3 == 0) {
            return 0L;
        }
        int iF = f(i3 - 1);
        return this.d[iF] + ((long) this.e[iF]);
    }

    public final synchronized long a(long j, boolean z, boolean z3) {
        int i;
        int i2 = this.j;
        if (i2 != 0) {
            long[] jArr = this.g;
            int i3 = this.l;
            if (j >= jArr[i3]) {
                if (z3 && (i = this.m) != i2) {
                    i2 = i + 1;
                }
                int iA = a(i3, i2, j, z);
                if (iA == -1) {
                    return -1L;
                }
                return d(iA);
            }
        }
        return -1L;
    }

    public final void a() {
        this.j = 0;
        this.k = 0;
        this.l = 0;
        this.m = 0;
        this.p = true;
        this.n = Long.MIN_VALUE;
        this.o = Long.MIN_VALUE;
    }

    public final synchronized void a(long j, int i, long j2, int i2, m.a aVar) {
        if (this.p) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.p = false;
            }
        }
        com.anythink.expressad.exoplayer.k.a.b(!this.q);
        b(j);
        int iF = f(this.j);
        this.g[iF] = j;
        long[] jArr = this.d;
        jArr[iF] = j2;
        this.e[iF] = i2;
        this.f[iF] = i;
        this.h[iF] = aVar;
        this.i[iF] = this.r;
        this.c[iF] = this.s;
        int i3 = this.j + 1;
        this.j = i3;
        int i4 = this.b;
        if (i3 == i4) {
            int i5 = i4 + 1000;
            int[] iArr = new int[i5];
            long[] jArr2 = new long[i5];
            long[] jArr3 = new long[i5];
            int[] iArr2 = new int[i5];
            int[] iArr3 = new int[i5];
            m.a[] aVarArr = new m.a[i5];
            com.anythink.expressad.exoplayer.m[] mVarArr = new com.anythink.expressad.exoplayer.m[i5];
            int i6 = this.l;
            int i7 = i4 - i6;
            System.arraycopy(jArr, i6, jArr2, 0, i7);
            System.arraycopy(this.g, this.l, jArr3, 0, i7);
            System.arraycopy(this.f, this.l, iArr2, 0, i7);
            System.arraycopy(this.e, this.l, iArr3, 0, i7);
            System.arraycopy(this.h, this.l, aVarArr, 0, i7);
            System.arraycopy(this.i, this.l, mVarArr, 0, i7);
            System.arraycopy(this.c, this.l, iArr, 0, i7);
            int i8 = this.l;
            System.arraycopy(this.d, 0, jArr2, i7, i8);
            System.arraycopy(this.g, 0, jArr3, i7, i8);
            System.arraycopy(this.f, 0, iArr2, i7, i8);
            System.arraycopy(this.e, 0, iArr3, i7, i8);
            System.arraycopy(this.h, 0, aVarArr, i7, i8);
            System.arraycopy(this.i, 0, mVarArr, i7, i8);
            System.arraycopy(this.c, 0, iArr, i7, i8);
            this.d = jArr2;
            this.g = jArr3;
            this.f = iArr2;
            this.e = iArr3;
            this.h = aVarArr;
            this.i = mVarArr;
            this.c = iArr;
            this.l = 0;
            this.j = this.b;
            this.b = i5;
        }
    }

    public final synchronized boolean a(long j) {
        if (this.j == 0) {
            return j > this.n;
        }
        if (Math.max(this.n, e(this.m)) >= j) {
            return false;
        }
        int i = this.j;
        int iF = f(i - 1);
        while (i > this.m && this.g[iF] >= j) {
            i--;
            iF--;
            if (iF == -1) {
                iF = this.b - 1;
            }
        }
        a(this.k + i);
        return true;
    }

    public final synchronized boolean a(com.anythink.expressad.exoplayer.m mVar) {
        if (mVar == null) {
            this.q = true;
            return false;
        }
        this.q = false;
        if (com.anythink.expressad.exoplayer.k.af.a(mVar, this.r)) {
            return false;
        }
        this.r = mVar;
        return true;
    }

    public final int b() {
        return this.k + this.j;
    }

    public final void b(int i) {
        this.s = i;
    }

    public final int c() {
        return this.k;
    }

    public final synchronized boolean c(int i) {
        boolean z;
        int i2 = this.k;
        if (i2 > i || i > this.j + i2) {
            z = false;
        } else {
            this.m = i - i2;
            z = true;
        }
        return z;
    }

    public final int d() {
        return this.k + this.m;
    }

    public final int e() {
        return f() ? this.c[f(this.m)] : this.s;
    }

    public final synchronized boolean f() {
        return this.m != this.j;
    }

    public final synchronized com.anythink.expressad.exoplayer.m g() {
        if (this.q) {
            return null;
        }
        return this.r;
    }

    public final synchronized long h() {
        return this.o;
    }

    public final synchronized long i() {
        if (this.j == 0) {
            return Long.MIN_VALUE;
        }
        return this.g[this.l];
    }

    public final synchronized void j() {
        this.m = 0;
    }

    public final synchronized int k() {
        int i;
        int i2 = this.j;
        i = i2 - this.m;
        this.m = i2;
        return i;
    }

    public final synchronized long l() {
        int i = this.m;
        if (i == 0) {
            return -1L;
        }
        return d(i);
    }

    public final synchronized long m() {
        int i = this.j;
        if (i == 0) {
            return -1L;
        }
        return d(i);
    }
}
