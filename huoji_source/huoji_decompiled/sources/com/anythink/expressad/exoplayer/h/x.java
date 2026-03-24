package com.anythink.expressad.exoplayer.h;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.e.m;
import com.anythink.expressad.exoplayer.h.w;
import java.io.EOFException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class x implements com.anythink.expressad.exoplayer.e.m {
    public static final int a = -1;
    private static final int b = 32;
    private final com.anythink.expressad.exoplayer.j.b c;
    private final int d;
    private final w e;
    private final w.a f;
    private final com.anythink.expressad.exoplayer.k.s g;
    private a h;
    private a i;
    private a j;
    private com.anythink.expressad.exoplayer.m k;
    private boolean l;
    private com.anythink.expressad.exoplayer.m m;
    private long n;
    private long o;
    private boolean p;
    private b q;

    public static final class a {
        public final long a;
        public final long b;
        public boolean c;

        @Nullable
        public com.anythink.expressad.exoplayer.j.a d;

        @Nullable
        public a e;

        public a(long j, int i) {
            this.a = j;
            this.b = j + ((long) i);
        }

        public final int a(long j) {
            return ((int) (j - this.a)) + this.d.b;
        }

        public final a a() {
            this.d = null;
            a aVar = this.e;
            this.e = null;
            return aVar;
        }

        public final void a(com.anythink.expressad.exoplayer.j.a aVar, a aVar2) {
            this.d = aVar;
            this.e = aVar2;
            this.c = true;
        }
    }

    public interface b {
        void i();
    }

    public x(com.anythink.expressad.exoplayer.j.b bVar) {
        this.c = bVar;
        int iD = bVar.d();
        this.d = iD;
        this.e = new w();
        this.f = new w.a();
        this.g = new com.anythink.expressad.exoplayer.k.s(32);
        a aVar = new a(0L, iD);
        this.h = aVar;
        this.i = aVar;
        this.j = aVar;
    }

    private static com.anythink.expressad.exoplayer.m a(com.anythink.expressad.exoplayer.m mVar, long j) {
        if (mVar == null) {
            return null;
        }
        if (j == 0) {
            return mVar;
        }
        long j2 = mVar.l;
        return j2 != Long.MAX_VALUE ? mVar.a(j2 + j) : mVar;
    }

    private void a(long j, ByteBuffer byteBuffer, int i) {
        b(j);
        while (i > 0) {
            int iMin = Math.min(i, (int) (this.i.b - j));
            a aVar = this.i;
            byteBuffer.put(aVar.d.a, aVar.a(j), iMin);
            i -= iMin;
            j += (long) iMin;
            a aVar2 = this.i;
            if (j == aVar2.b) {
                this.i = aVar2.e;
            }
        }
    }

    private void a(long j, byte[] bArr, int i) {
        b(j);
        int i2 = i;
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (this.i.b - j));
            a aVar = this.i;
            System.arraycopy(aVar.d.a, aVar.a(j), bArr, i - i2, iMin);
            i2 -= iMin;
            j += (long) iMin;
            a aVar2 = this.i;
            if (j == aVar2.b) {
                this.i = aVar2.e;
            }
        }
    }

    private void a(com.anythink.expressad.exoplayer.c.e eVar, w.a aVar) {
        int iE;
        long j = aVar.b;
        this.g.a(1);
        a(j, this.g.a, 1);
        long j2 = j + 1;
        byte b2 = this.g.a[0];
        boolean z = (b2 & 128) != 0;
        int i = b2 & 127;
        com.anythink.expressad.exoplayer.c.b bVar = eVar.d;
        if (bVar.a == null) {
            bVar.a = new byte[16];
        }
        a(j2, bVar.a, i);
        long j3 = j2 + ((long) i);
        if (z) {
            this.g.a(2);
            a(j3, this.g.a, 2);
            j3 += 2;
            iE = this.g.e();
        } else {
            iE = 1;
        }
        com.anythink.expressad.exoplayer.c.b bVar2 = eVar.d;
        int[] iArr = bVar2.d;
        if (iArr == null || iArr.length < iE) {
            iArr = new int[iE];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = bVar2.e;
        if (iArr3 == null || iArr3.length < iE) {
            iArr3 = new int[iE];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i2 = iE * 6;
            this.g.a(i2);
            a(j3, this.g.a, i2);
            j3 += (long) i2;
            this.g.c(0);
            for (int i3 = 0; i3 < iE; i3++) {
                iArr2[i3] = this.g.e();
                iArr4[i3] = this.g.m();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = aVar.a - ((int) (j3 - aVar.b));
        }
        m.a aVar2 = aVar.c;
        com.anythink.expressad.exoplayer.c.b bVar3 = eVar.d;
        bVar3.a(iE, iArr2, iArr4, aVar2.b, bVar3.a, aVar2.a, aVar2.c, aVar2.d);
        long j4 = aVar.b;
        int i4 = (int) (j3 - j4);
        aVar.b = j4 + ((long) i4);
        aVar.a -= i4;
    }

    private void a(a aVar) {
        if (aVar.c) {
            a aVar2 = this.j;
            boolean z = aVar2.c;
            int i = (z ? 1 : 0) + (((int) (aVar2.a - aVar.a)) / this.d);
            com.anythink.expressad.exoplayer.j.a[] aVarArr = new com.anythink.expressad.exoplayer.j.a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = aVar.d;
                aVar = aVar.a();
            }
            this.c.a(aVarArr);
        }
    }

    private void b(long j) {
        while (true) {
            a aVar = this.i;
            if (j < aVar.b) {
                return;
            } else {
                this.i = aVar.e;
            }
        }
    }

    private void c(int i) {
        this.e.b(i);
    }

    private void c(long j) {
        a aVar;
        if (j == -1) {
            return;
        }
        while (true) {
            aVar = this.h;
            if (j < aVar.b) {
                break;
            }
            this.c.a(aVar.d);
            this.h = this.h.a();
        }
        if (this.i.a < aVar.a) {
            this.i = aVar;
        }
    }

    private int d(int i) {
        a aVar = this.j;
        if (!aVar.c) {
            aVar.a(this.c.a(), new a(this.j.b, this.d));
        }
        return Math.min(i, (int) (this.j.b - this.o));
    }

    private void e(int i) {
        long j = this.o + ((long) i);
        this.o = j;
        a aVar = this.j;
        if (j == aVar.b) {
            this.j = aVar.e;
        }
    }

    private void l() {
        this.e.a();
        a(this.h);
        a aVar = new a(0L, this.d);
        this.h = aVar;
        this.i = aVar;
        this.j = aVar;
        this.o = 0L;
        this.c.b();
    }

    private void m() {
        this.p = true;
    }

    private int n() {
        return this.e.e();
    }

    private void o() {
        c(this.e.l());
    }

    public final int a(long j, boolean z) {
        return this.e.a(j, z);
    }

    @Override // com.anythink.expressad.exoplayer.e.m
    public final int a(com.anythink.expressad.exoplayer.e.f fVar, int i, boolean z) throws EOFException {
        int iD = d(i);
        a aVar = this.j;
        int iA = fVar.a(aVar.d.a, aVar.a(this.o), iD);
        if (iA != -1) {
            e(iA);
            return iA;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public final int a(com.anythink.expressad.exoplayer.n nVar, com.anythink.expressad.exoplayer.c.e eVar, boolean z, boolean z3, long j) {
        int iE;
        int iA = this.e.a(nVar, eVar, z, z3, this.k, this.f);
        if (iA == -5) {
            this.k = nVar.a;
            return -5;
        }
        if (iA != -4) {
            if (iA == -3) {
                return -3;
            }
            throw new IllegalStateException();
        }
        if (!eVar.c()) {
            if (eVar.f < j) {
                eVar.b(Integer.MIN_VALUE);
            }
            if (eVar.g()) {
                w.a aVar = this.f;
                long j2 = aVar.b;
                this.g.a(1);
                a(j2, this.g.a, 1);
                long j3 = j2 + 1;
                byte b2 = this.g.a[0];
                boolean z4 = (b2 & 128) != 0;
                int i = b2 & 127;
                com.anythink.expressad.exoplayer.c.b bVar = eVar.d;
                if (bVar.a == null) {
                    bVar.a = new byte[16];
                }
                a(j3, bVar.a, i);
                long j4 = j3 + ((long) i);
                if (z4) {
                    this.g.a(2);
                    a(j4, this.g.a, 2);
                    j4 += 2;
                    iE = this.g.e();
                } else {
                    iE = 1;
                }
                com.anythink.expressad.exoplayer.c.b bVar2 = eVar.d;
                int[] iArr = bVar2.d;
                if (iArr == null || iArr.length < iE) {
                    iArr = new int[iE];
                }
                int[] iArr2 = iArr;
                int[] iArr3 = bVar2.e;
                if (iArr3 == null || iArr3.length < iE) {
                    iArr3 = new int[iE];
                }
                int[] iArr4 = iArr3;
                if (z4) {
                    int i2 = iE * 6;
                    this.g.a(i2);
                    a(j4, this.g.a, i2);
                    j4 += (long) i2;
                    this.g.c(0);
                    for (int i3 = 0; i3 < iE; i3++) {
                        iArr2[i3] = this.g.e();
                        iArr4[i3] = this.g.m();
                    }
                } else {
                    iArr2[0] = 0;
                    iArr4[0] = aVar.a - ((int) (j4 - aVar.b));
                }
                m.a aVar2 = aVar.c;
                com.anythink.expressad.exoplayer.c.b bVar3 = eVar.d;
                bVar3.a(iE, iArr2, iArr4, aVar2.b, bVar3.a, aVar2.a, aVar2.c, aVar2.d);
                long j5 = aVar.b;
                int i4 = (int) (j4 - j5);
                aVar.b = j5 + ((long) i4);
                aVar.a -= i4;
            }
            eVar.d(this.f.a);
            w.a aVar3 = this.f;
            long j6 = aVar3.b;
            ByteBuffer byteBuffer = eVar.e;
            int i5 = aVar3.a;
            b(j6);
            while (i5 > 0) {
                int iMin = Math.min(i5, (int) (this.i.b - j6));
                a aVar4 = this.i;
                byteBuffer.put(aVar4.d.a, aVar4.a(j6), iMin);
                i5 -= iMin;
                j6 += (long) iMin;
                a aVar5 = this.i;
                if (j6 == aVar5.b) {
                    this.i = aVar5.e;
                }
            }
        }
        return -4;
    }

    public final void a() {
        this.e.a();
        a(this.h);
        a aVar = new a(0L, this.d);
        this.h = aVar;
        this.i = aVar;
        this.j = aVar;
        this.o = 0L;
        this.c.b();
    }

    public final void a(int i) {
        long jA = this.e.a(i);
        this.o = jA;
        if (jA != 0) {
            a aVar = this.h;
            if (jA != aVar.a) {
                while (this.o > aVar.b) {
                    aVar = aVar.e;
                }
                a aVar2 = aVar.e;
                a(aVar2);
                a aVar3 = new a(aVar.b, this.d);
                aVar.e = aVar3;
                if (this.o == aVar.b) {
                    aVar = aVar3;
                }
                this.j = aVar;
                if (this.i == aVar2) {
                    this.i = aVar3;
                    return;
                }
                return;
            }
        }
        a(this.h);
        a aVar4 = new a(this.o, this.d);
        this.h = aVar4;
        this.i = aVar4;
        this.j = aVar4;
    }

    public final void a(long j) {
        if (this.n != j) {
            this.n = j;
            this.l = true;
        }
    }

    @Override // com.anythink.expressad.exoplayer.e.m
    public final void a(long j, int i, int i2, int i3, m.a aVar) {
        if (this.l) {
            a(this.m);
        }
        if (this.p) {
            if ((i & 1) == 0 || !this.e.a(j)) {
                return;
            } else {
                this.p = false;
            }
        }
        this.e.a(j + this.n, i, (this.o - ((long) i2)) - ((long) i3), i2, aVar);
    }

    public final void a(long j, boolean z, boolean z3) {
        c(this.e.a(j, z, z3));
    }

    public final void a(b bVar) {
        this.q = bVar;
    }

    @Override // com.anythink.expressad.exoplayer.e.m
    public final void a(com.anythink.expressad.exoplayer.k.s sVar, int i) {
        while (i > 0) {
            int iD = d(i);
            a aVar = this.j;
            sVar.a(aVar.d.a, aVar.a(this.o), iD);
            i -= iD;
            e(iD);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    @Override // com.anythink.expressad.exoplayer.e.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(com.anythink.expressad.exoplayer.m mVar) {
        com.anythink.expressad.exoplayer.m mVarA;
        long j = this.n;
        if (mVar == null) {
            mVarA = null;
        } else if (j != 0) {
            long j2 = mVar.l;
            mVarA = j2 != Long.MAX_VALUE ? mVar.a(j2 + j) : mVar;
        }
        boolean zA = this.e.a(mVarA);
        this.m = mVar;
        this.l = false;
        b bVar = this.q;
        if (bVar == null || !zA) {
            return;
        }
        bVar.i();
    }

    public final int b() {
        return this.e.b();
    }

    public final boolean b(int i) {
        return this.e.c(i);
    }

    public final boolean c() {
        return this.e.f();
    }

    public final int d() {
        return this.e.c();
    }

    public final int e() {
        return this.e.d();
    }

    public final com.anythink.expressad.exoplayer.m f() {
        return this.e.g();
    }

    public final long g() {
        return this.e.h();
    }

    public final long h() {
        return this.e.i();
    }

    public final void i() {
        this.e.j();
        this.i = this.h;
    }

    public final void j() {
        c(this.e.m());
    }

    public final int k() {
        return this.e.k();
    }
}
