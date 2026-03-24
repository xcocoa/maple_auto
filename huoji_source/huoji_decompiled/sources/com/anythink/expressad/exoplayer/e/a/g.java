package com.anythink.expressad.exoplayer.e.a;

import com.anythink.expressad.exoplayer.e.a.a;
import com.anythink.expressad.exoplayer.e.a.b;
import com.anythink.expressad.exoplayer.e.k;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.p;
import com.anythink.expressad.exoplayer.k.s;
import com.anythink.expressad.exoplayer.t;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class g implements com.anythink.expressad.exoplayer.e.e, com.anythink.expressad.exoplayer.e.k {
    public static final int e = 1;
    private static final int f = 0;
    private static final int g = 1;
    private static final int h = 2;
    private static final long j = 262144;
    private static final long k = 10485760;
    private long[][] A;
    private int B;
    private long C;
    private boolean D;
    private final int l;
    private final s m;
    private final s n;
    private final s o;
    private final ArrayDeque<a.C0113a> p;
    private int q;
    private int r;
    private long s;
    private int t;
    private s u;
    private int v;
    private int w;
    private int x;
    private com.anythink.expressad.exoplayer.e.g y;
    private b[] z;
    public static final com.anythink.expressad.exoplayer.e.h d = new com.anythink.expressad.exoplayer.e.h() { // from class: com.anythink.expressad.exoplayer.e.a.g.1
        @Override // com.anythink.expressad.exoplayer.e.h
        public final com.anythink.expressad.exoplayer.e.e[] a() {
            return new com.anythink.expressad.exoplayer.e.e[]{new g()};
        }
    };
    private static final int i = af.f("qt  ");

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public static final class b {
        public final j a;
        public final m b;
        public final com.anythink.expressad.exoplayer.e.m c;
        public int d;

        public b(j jVar, m mVar, com.anythink.expressad.exoplayer.e.m mVar2) {
            this.a = jVar;
            this.b = mVar;
            this.c = mVar2;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface c {
    }

    public g() {
        this(0);
    }

    public g(int i2) {
        this.l = i2;
        this.o = new s(16);
        this.p = new ArrayDeque<>();
        this.m = new s(p.a);
        this.n = new s(4);
        this.v = -1;
    }

    private static int a(m mVar, long j2) {
        int iA = mVar.a(j2);
        return iA == -1 ? mVar.b(j2) : iA;
    }

    private static long a(m mVar, long j2, long j3) {
        int iA = a(mVar, j2);
        return iA == -1 ? j3 : Math.min(mVar.c[iA], j3);
    }

    private ArrayList<m> a(a.C0113a c0113a, com.anythink.expressad.exoplayer.e.i iVar, boolean z) throws t {
        j jVarA;
        ArrayList<m> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < c0113a.aX.size(); i2++) {
            a.C0113a c0113a2 = c0113a.aX.get(i2);
            if (c0113a2.aU == com.anythink.expressad.exoplayer.e.a.a.I && (jVarA = com.anythink.expressad.exoplayer.e.a.b.a(c0113a2, c0113a.d(com.anythink.expressad.exoplayer.e.a.a.H), com.anythink.expressad.exoplayer.b.b, (com.anythink.expressad.exoplayer.d.e) null, z, this.D)) != null) {
                m mVarA = com.anythink.expressad.exoplayer.e.a.b.a(jVarA, c0113a2.e(com.anythink.expressad.exoplayer.e.a.a.J).e(com.anythink.expressad.exoplayer.e.a.a.K).e(com.anythink.expressad.exoplayer.e.a.a.L), iVar);
                if (mVarA.b != 0) {
                    arrayList.add(mVarA);
                }
            }
        }
        return arrayList;
    }

    private void a(a.C0113a c0113a) throws t {
        com.anythink.expressad.exoplayer.g.a aVarA;
        ArrayList<m> arrayListA;
        ArrayList arrayList = new ArrayList();
        com.anythink.expressad.exoplayer.e.i iVar = new com.anythink.expressad.exoplayer.e.i();
        a.b bVarD = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.aF);
        if (bVarD != null) {
            aVarA = com.anythink.expressad.exoplayer.e.a.b.a(bVarD, this.D);
            if (aVarA != null) {
                iVar.a(aVarA);
            }
        } else {
            aVarA = null;
        }
        int i2 = 1;
        int i3 = 0;
        try {
            arrayListA = a(c0113a, iVar, (this.l & 1) != 0);
        } catch (b.g unused) {
            iVar = new com.anythink.expressad.exoplayer.e.i();
            arrayListA = a(c0113a, iVar, true);
        }
        int size = arrayListA.size();
        int size2 = -1;
        long jMax = com.anythink.expressad.exoplayer.b.b;
        while (i3 < size) {
            m mVar = arrayListA.get(i3);
            j jVar = mVar.a;
            b bVar = new b(jVar, mVar, this.y.a(i3, jVar.d));
            com.anythink.expressad.exoplayer.m mVarA = jVar.h.a(mVar.e + 30);
            if (jVar.d == i2) {
                if (iVar.a()) {
                    mVarA = mVarA.a(iVar.b, iVar.c);
                }
                if (aVarA != null) {
                    mVarA = mVarA.a(aVarA);
                }
            }
            bVar.c.a(mVarA);
            long j2 = jVar.g;
            if (j2 == com.anythink.expressad.exoplayer.b.b) {
                j2 = mVar.h;
            }
            jMax = Math.max(jMax, j2);
            if (jVar.d == 2 && size2 == -1) {
                size2 = arrayList.size();
            }
            arrayList.add(bVar);
            i3++;
            i2 = 1;
        }
        this.B = size2;
        this.C = jMax;
        b[] bVarArr = (b[]) arrayList.toArray(new b[arrayList.size()]);
        this.z = bVarArr;
        this.A = a(bVarArr);
        this.y.c_();
        this.y.a(this);
    }

    private static boolean a(int i2) {
        return i2 == com.anythink.expressad.exoplayer.e.a.a.W || i2 == com.anythink.expressad.exoplayer.e.a.a.H || i2 == com.anythink.expressad.exoplayer.e.a.a.X || i2 == com.anythink.expressad.exoplayer.e.a.a.Y || i2 == com.anythink.expressad.exoplayer.e.a.a.ar || i2 == com.anythink.expressad.exoplayer.e.a.a.as || i2 == com.anythink.expressad.exoplayer.e.a.a.at || i2 == com.anythink.expressad.exoplayer.e.a.a.V || i2 == com.anythink.expressad.exoplayer.e.a.a.au || i2 == com.anythink.expressad.exoplayer.e.a.a.av || i2 == com.anythink.expressad.exoplayer.e.a.a.aw || i2 == com.anythink.expressad.exoplayer.e.a.a.ax || i2 == com.anythink.expressad.exoplayer.e.a.a.ay || i2 == com.anythink.expressad.exoplayer.e.a.a.T || i2 == com.anythink.expressad.exoplayer.e.a.a.f || i2 == com.anythink.expressad.exoplayer.e.a.a.aF;
    }

    private static boolean a(s sVar) {
        sVar.c(8);
        if (sVar.i() == i) {
            return true;
        }
        sVar.d(4);
        while (sVar.a() > 0) {
            if (sVar.i() == i) {
                return true;
            }
        }
        return false;
    }

    private static long[][] a(b[] bVarArr) {
        long[][] jArr = new long[bVarArr.length][];
        int[] iArr = new int[bVarArr.length];
        long[] jArr2 = new long[bVarArr.length];
        boolean[] zArr = new boolean[bVarArr.length];
        for (int i2 = 0; i2 < bVarArr.length; i2++) {
            jArr[i2] = new long[bVarArr[i2].b.b];
            jArr2[i2] = bVarArr[i2].b.f[0];
        }
        long j2 = 0;
        int i3 = 0;
        while (i3 < bVarArr.length) {
            long j3 = Long.MAX_VALUE;
            int i4 = -1;
            for (int i5 = 0; i5 < bVarArr.length; i5++) {
                if (!zArr[i5] && jArr2[i5] <= j3) {
                    j3 = jArr2[i5];
                    i4 = i5;
                }
            }
            int i6 = iArr[i4];
            jArr[i4][i6] = j2;
            j2 += (long) bVarArr[i4].b.d[i6];
            int i7 = i6 + 1;
            iArr[i4] = i7;
            if (i7 < jArr[i4].length) {
                jArr2[i4] = bVarArr[i4].b.f[i7];
            } else {
                zArr[i4] = true;
                i3++;
            }
        }
        return jArr;
    }

    private void b(long j2) throws t {
        while (!this.p.isEmpty() && this.p.peek().aV == j2) {
            a.C0113a c0113aPop = this.p.pop();
            if (c0113aPop.aU == com.anythink.expressad.exoplayer.e.a.a.G) {
                a(c0113aPop);
                this.p.clear();
                this.q = 2;
            } else if (!this.p.isEmpty()) {
                this.p.peek().a(c0113aPop);
            }
        }
        if (this.q != 2) {
            d();
        }
    }

    private static boolean b(int i2) {
        return i2 == com.anythink.expressad.exoplayer.e.a.a.G || i2 == com.anythink.expressad.exoplayer.e.a.a.I || i2 == com.anythink.expressad.exoplayer.e.a.a.J || i2 == com.anythink.expressad.exoplayer.e.a.a.K || i2 == com.anythink.expressad.exoplayer.e.a.a.L || i2 == com.anythink.expressad.exoplayer.e.a.a.U;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(com.anythink.expressad.exoplayer.e.f fVar) throws t {
        long jC;
        long j2;
        int i2;
        if (this.t == 0) {
            if (!fVar.a(this.o.a, 0, 8, true)) {
                return false;
            }
            this.t = 8;
            this.o.c(0);
            this.s = this.o.h();
            this.r = this.o.i();
        }
        long j3 = this.s;
        if (j3 != 1) {
            if (j3 == 0) {
                long jD = fVar.d();
                if (jD == -1 && !this.p.isEmpty()) {
                    jD = this.p.peek().aV;
                }
                if (jD != -1) {
                    jC = (jD - fVar.c()) + ((long) this.t);
                }
            }
            j2 = this.s;
            i2 = this.t;
            if (j2 >= i2) {
                throw new t("Atom size less than header length (unsupported).");
            }
            int i3 = this.r;
            if (i3 == com.anythink.expressad.exoplayer.e.a.a.G || i3 == com.anythink.expressad.exoplayer.e.a.a.I || i3 == com.anythink.expressad.exoplayer.e.a.a.J || i3 == com.anythink.expressad.exoplayer.e.a.a.K || i3 == com.anythink.expressad.exoplayer.e.a.a.L || i3 == com.anythink.expressad.exoplayer.e.a.a.U) {
                long jC2 = (fVar.c() + this.s) - ((long) this.t);
                this.p.push(new a.C0113a(this.r, jC2));
                if (this.s == this.t) {
                    b(jC2);
                } else {
                    d();
                }
            } else {
                if (i3 == com.anythink.expressad.exoplayer.e.a.a.W || i3 == com.anythink.expressad.exoplayer.e.a.a.H || i3 == com.anythink.expressad.exoplayer.e.a.a.X || i3 == com.anythink.expressad.exoplayer.e.a.a.Y || i3 == com.anythink.expressad.exoplayer.e.a.a.ar || i3 == com.anythink.expressad.exoplayer.e.a.a.as || i3 == com.anythink.expressad.exoplayer.e.a.a.at || i3 == com.anythink.expressad.exoplayer.e.a.a.V || i3 == com.anythink.expressad.exoplayer.e.a.a.au || i3 == com.anythink.expressad.exoplayer.e.a.a.av || i3 == com.anythink.expressad.exoplayer.e.a.a.aw || i3 == com.anythink.expressad.exoplayer.e.a.a.ax || i3 == com.anythink.expressad.exoplayer.e.a.a.ay || i3 == com.anythink.expressad.exoplayer.e.a.a.T || i3 == com.anythink.expressad.exoplayer.e.a.a.f || i3 == com.anythink.expressad.exoplayer.e.a.a.aF) {
                    com.anythink.expressad.exoplayer.k.a.b(i2 == 8);
                    com.anythink.expressad.exoplayer.k.a.b(this.s <= 2147483647L);
                    s sVar = new s((int) this.s);
                    this.u = sVar;
                    System.arraycopy(this.o.a, 0, sVar.a, 0, 8);
                } else {
                    this.u = null;
                }
                this.q = 1;
            }
            return true;
        }
        fVar.b(this.o.a, 8, 8);
        this.t += 8;
        jC = this.o.n();
        this.s = jC;
        j2 = this.s;
        i2 = this.t;
        if (j2 >= i2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(com.anythink.expressad.exoplayer.e.f fVar, com.anythink.expressad.exoplayer.e.j jVar) throws t {
        boolean z;
        boolean z3;
        long j2 = this.s - ((long) this.t);
        long jC = fVar.c() + j2;
        s sVar = this.u;
        if (sVar != null) {
            fVar.b(sVar.a, this.t, (int) j2);
            if (this.r == com.anythink.expressad.exoplayer.e.a.a.f) {
                s sVar2 = this.u;
                sVar2.c(8);
                if (sVar2.i() == i) {
                    z3 = true;
                    this.D = z3;
                } else {
                    sVar2.d(4);
                    while (sVar2.a() > 0) {
                        if (sVar2.i() == i) {
                            z3 = true;
                            break;
                        }
                    }
                    z3 = false;
                    this.D = z3;
                }
                b(jC);
                return (z || this.q == 2) ? false : true;
            }
            if (!this.p.isEmpty()) {
                this.p.peek().a(new a.b(this.r, this.u));
            }
        } else {
            if (j2 >= 262144) {
                jVar.a = fVar.c() + j2;
                z = true;
                b(jC);
                if (z) {
                }
            }
            fVar.c((int) j2);
        }
        z = false;
        b(jC);
        if (z) {
        }
    }

    private int c(long j2) {
        int i2 = -1;
        int i3 = -1;
        int i4 = 0;
        long j3 = Long.MAX_VALUE;
        boolean z = true;
        long j4 = Long.MAX_VALUE;
        boolean z3 = true;
        long j5 = Long.MAX_VALUE;
        while (true) {
            b[] bVarArr = this.z;
            if (i4 >= bVarArr.length) {
                break;
            }
            b bVar = bVarArr[i4];
            int i5 = bVar.d;
            m mVar = bVar.b;
            if (i5 != mVar.b) {
                long j6 = mVar.c[i5];
                long j7 = this.A[i4][i5];
                long j8 = j6 - j2;
                boolean z4 = j8 < 0 || j8 >= 262144;
                if ((!z4 && z3) || (z4 == z3 && j8 < j5)) {
                    z3 = z4;
                    j5 = j8;
                    i3 = i4;
                    j4 = j7;
                }
                if (j7 < j3) {
                    z = z4;
                    i2 = i4;
                    j3 = j7;
                }
            }
            i4++;
        }
        return (j3 == Long.MAX_VALUE || !z || j4 < j3 + k) ? i3 : i2;
    }

    private int c(com.anythink.expressad.exoplayer.e.f fVar, com.anythink.expressad.exoplayer.e.j jVar) {
        int i2;
        com.anythink.expressad.exoplayer.e.j jVar2;
        long jC = fVar.c();
        if (this.v == -1) {
            int i3 = 0;
            boolean z = true;
            long j2 = Long.MAX_VALUE;
            boolean z3 = true;
            long j3 = Long.MAX_VALUE;
            int i4 = -1;
            int i5 = -1;
            long j4 = Long.MAX_VALUE;
            while (true) {
                b[] bVarArr = this.z;
                if (i3 >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i3];
                int i6 = bVar.d;
                m mVar = bVar.b;
                if (i6 != mVar.b) {
                    long j5 = mVar.c[i6];
                    long j6 = this.A[i3][i6];
                    long j7 = j5 - jC;
                    boolean z4 = j7 < 0 || j7 >= 262144;
                    if ((!z4 && z) || (z4 == z && j7 < j4)) {
                        i5 = i3;
                        z = z4;
                        j4 = j7;
                        j3 = j6;
                    }
                    if (j6 < j2) {
                        i4 = i3;
                        z3 = z4;
                        j2 = j6;
                    }
                }
                i3++;
            }
            int i7 = (j2 == Long.MAX_VALUE || !z3 || j3 < j2 + k) ? i5 : i4;
            this.v = i7;
            if (i7 == -1) {
                return -1;
            }
        }
        b bVar2 = this.z[this.v];
        com.anythink.expressad.exoplayer.e.m mVar2 = bVar2.c;
        int i8 = bVar2.d;
        m mVar3 = bVar2.b;
        long j8 = mVar3.c[i8];
        int i9 = mVar3.d[i8];
        long j9 = (j8 - jC) + ((long) this.w);
        if (j9 < 0) {
            i2 = 1;
            jVar2 = jVar;
        } else {
            if (j9 < 262144) {
                if (bVar2.a.i == 1) {
                    j9 += 8;
                    i9 -= 8;
                }
                fVar.c((int) j9);
                int i10 = bVar2.a.l;
                if (i10 == 0) {
                    while (true) {
                        int i11 = this.w;
                        if (i11 >= i9) {
                            break;
                        }
                        int iA = mVar2.a(fVar, i9 - i11, false);
                        this.w += iA;
                        this.x -= iA;
                    }
                } else {
                    byte[] bArr = this.n.a;
                    bArr[0] = 0;
                    bArr[1] = 0;
                    bArr[2] = 0;
                    int i12 = 4 - i10;
                    while (this.w < i9) {
                        int i13 = this.x;
                        if (i13 == 0) {
                            fVar.b(this.n.a, i12, i10);
                            this.n.c(0);
                            this.x = this.n.m();
                            this.m.c(0);
                            mVar2.a(this.m, 4);
                            this.w += 4;
                            i9 += i12;
                        } else {
                            int iA2 = mVar2.a(fVar, i13, false);
                            this.w += iA2;
                            this.x -= iA2;
                        }
                    }
                }
                m mVar4 = bVar2.b;
                mVar2.a(mVar4.f[i8], mVar4.g[i8], i9, 0, null);
                bVar2.d++;
                this.v = -1;
                this.w = 0;
                this.x = 0;
                return 0;
            }
            jVar2 = jVar;
            i2 = 1;
        }
        jVar2.a = j8;
        return i2;
    }

    private void d() {
        this.q = 0;
        this.t = 0;
    }

    private void d(long j2) {
        for (b bVar : this.z) {
            m mVar = bVar.b;
            int iA = mVar.a(j2);
            if (iA == -1) {
                iA = mVar.b(j2);
            }
            bVar.d = iA;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x01ef A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0336 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ec  */
    @Override // com.anythink.expressad.exoplayer.e.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(com.anythink.expressad.exoplayer.e.f fVar, com.anythink.expressad.exoplayer.e.j jVar) throws t {
        com.anythink.expressad.exoplayer.e.m mVar;
        boolean z;
        boolean z3;
        long j2;
        long jC;
        long j3;
        int i2;
        int i3;
        while (true) {
            int i4 = this.q;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        throw new IllegalStateException();
                    }
                    long jC2 = fVar.c();
                    if (this.v == -1) {
                        long j4 = Long.MAX_VALUE;
                        long j5 = Long.MAX_VALUE;
                        long j6 = Long.MAX_VALUE;
                        int i5 = 0;
                        boolean z4 = true;
                        boolean z5 = true;
                        int i6 = -1;
                        int i7 = -1;
                        while (true) {
                            b[] bVarArr = this.z;
                            if (i5 >= bVarArr.length) {
                                break;
                            }
                            b bVar = bVarArr[i5];
                            int i8 = bVar.d;
                            m mVar2 = bVar.b;
                            if (i8 != mVar2.b) {
                                long j7 = mVar2.c[i8];
                                long j8 = this.A[i5][i8];
                                long j9 = j7 - jC2;
                                boolean z6 = j9 < 0 || j9 >= 262144;
                                if ((!z6 && z5) || (z6 == z5 && j9 < j6)) {
                                    i7 = i5;
                                    z5 = z6;
                                    j6 = j9;
                                    j5 = j8;
                                }
                                if (j8 < j4) {
                                    i6 = i5;
                                    z4 = z6;
                                    j4 = j8;
                                }
                            }
                            i5++;
                        }
                        int i9 = (j4 == Long.MAX_VALUE || !z4 || j5 < j4 + k) ? i7 : i6;
                        this.v = i9;
                        if (i9 == -1) {
                            return -1;
                        }
                    }
                    b bVar2 = this.z[this.v];
                    com.anythink.expressad.exoplayer.e.m mVar3 = bVar2.c;
                    int i10 = bVar2.d;
                    m mVar4 = bVar2.b;
                    long j10 = mVar4.c[i10];
                    int i11 = mVar4.d[i10];
                    long j11 = (j10 - jC2) + ((long) this.w);
                    if (j11 < 0 || j11 >= 262144) {
                        jVar.a = j10;
                        return 1;
                    }
                    if (bVar2.a.i == 1) {
                        j11 += 8;
                        i11 -= 8;
                    }
                    fVar.c((int) j11);
                    int i12 = bVar2.a.l;
                    if (i12 == 0) {
                        mVar = mVar3;
                        while (true) {
                            int i13 = this.w;
                            if (i13 >= i11) {
                                break;
                            }
                            int iA = mVar.a(fVar, i11 - i13, false);
                            this.w += iA;
                            this.x -= iA;
                        }
                    } else {
                        byte[] bArr = this.n.a;
                        bArr[0] = 0;
                        bArr[1] = 0;
                        bArr[2] = 0;
                        int i14 = 4 - i12;
                        while (this.w < i11) {
                            int i15 = this.x;
                            if (i15 == 0) {
                                fVar.b(this.n.a, i14, i12);
                                this.n.c(0);
                                this.x = this.n.m();
                                this.m.c(0);
                                mVar3.a(this.m, 4);
                                this.w += 4;
                                i11 += i14;
                            } else {
                                int iA2 = mVar3.a(fVar, i15, false);
                                this.w += iA2;
                                this.x -= iA2;
                            }
                        }
                        mVar = mVar3;
                    }
                    m mVar5 = bVar2.b;
                    mVar.a(mVar5.f[i10], mVar5.g[i10], i11, 0, null);
                    bVar2.d++;
                    this.v = -1;
                    this.w = 0;
                    this.x = 0;
                    return 0;
                }
                long j12 = this.s - ((long) this.t);
                long jC3 = fVar.c() + j12;
                s sVar = this.u;
                if (sVar != null) {
                    fVar.b(sVar.a, this.t, (int) j12);
                    if (this.r == com.anythink.expressad.exoplayer.e.a.a.f) {
                        s sVar2 = this.u;
                        sVar2.c(8);
                        if (sVar2.i() == i) {
                            z3 = true;
                            this.D = z3;
                        } else {
                            sVar2.d(4);
                            while (sVar2.a() > 0) {
                                if (sVar2.i() == i) {
                                    z3 = true;
                                    break;
                                }
                            }
                            z3 = false;
                            this.D = z3;
                        }
                    } else if (!this.p.isEmpty()) {
                        this.p.peek().a(new a.b(this.r, this.u));
                    }
                } else if (j12 < 262144) {
                    fVar.c((int) j12);
                } else {
                    jVar.a = fVar.c() + j12;
                    z = true;
                    b(jC3);
                    if (!((z || this.q == 2) ? false : true)) {
                        return 1;
                    }
                }
                z = false;
                b(jC3);
                if (z) {
                    if (!((z || this.q == 2) ? false : true)) {
                    }
                }
            } else if (this.t == 0) {
                boolean z7 = false;
                if (fVar.a(this.o.a, 0, 8, true)) {
                    this.t = 8;
                    this.o.c(0);
                    this.s = this.o.h();
                    this.r = this.o.i();
                    j2 = this.s;
                    if (j2 != 1) {
                        fVar.b(this.o.a, 8, 8);
                        this.t += 8;
                        jC = this.o.n();
                    } else {
                        if (j2 == 0) {
                            long jD = fVar.d();
                            if (jD == -1 && !this.p.isEmpty()) {
                                jD = this.p.peek().aV;
                            }
                            if (jD != -1) {
                                jC = (jD - fVar.c()) + ((long) this.t);
                            }
                        }
                        j3 = this.s;
                        i2 = this.t;
                        if (j3 < i2) {
                            throw new t("Atom size less than header length (unsupported).");
                        }
                        int i16 = this.r;
                        if (i16 == com.anythink.expressad.exoplayer.e.a.a.G || i16 == com.anythink.expressad.exoplayer.e.a.a.I || i16 == com.anythink.expressad.exoplayer.e.a.a.J || i16 == com.anythink.expressad.exoplayer.e.a.a.K || i16 == com.anythink.expressad.exoplayer.e.a.a.L || i16 == com.anythink.expressad.exoplayer.e.a.a.U) {
                            long jC4 = (fVar.c() + this.s) - ((long) this.t);
                            this.p.push(new a.C0113a(this.r, jC4));
                            if (this.s == this.t) {
                                b(jC4);
                            } else {
                                d();
                            }
                        } else {
                            if (i16 == com.anythink.expressad.exoplayer.e.a.a.W || i16 == com.anythink.expressad.exoplayer.e.a.a.H || i16 == com.anythink.expressad.exoplayer.e.a.a.X || i16 == com.anythink.expressad.exoplayer.e.a.a.Y || i16 == com.anythink.expressad.exoplayer.e.a.a.ar || i16 == com.anythink.expressad.exoplayer.e.a.a.as || i16 == com.anythink.expressad.exoplayer.e.a.a.at || i16 == com.anythink.expressad.exoplayer.e.a.a.V || i16 == com.anythink.expressad.exoplayer.e.a.a.au || i16 == com.anythink.expressad.exoplayer.e.a.a.av || i16 == com.anythink.expressad.exoplayer.e.a.a.aw || i16 == com.anythink.expressad.exoplayer.e.a.a.ax || i16 == com.anythink.expressad.exoplayer.e.a.a.ay || i16 == com.anythink.expressad.exoplayer.e.a.a.T || i16 == com.anythink.expressad.exoplayer.e.a.a.f || i16 == com.anythink.expressad.exoplayer.e.a.a.aF) {
                                com.anythink.expressad.exoplayer.k.a.b(i2 == 8);
                                com.anythink.expressad.exoplayer.k.a.b(this.s <= 2147483647L);
                                s sVar3 = new s((int) this.s);
                                this.u = sVar3;
                                System.arraycopy(this.o.a, 0, sVar3.a, 0, 8);
                                i3 = 1;
                            } else {
                                i3 = 1;
                                this.u = null;
                            }
                            this.q = i3;
                        }
                        z7 = true;
                    }
                    this.s = jC;
                    j3 = this.s;
                    i2 = this.t;
                    if (j3 < i2) {
                    }
                }
                if (!z7) {
                    return -1;
                }
            } else {
                j2 = this.s;
                if (j2 != 1) {
                }
                this.s = jC;
                j3 = this.s;
                i2 = this.t;
                if (j3 < i2) {
                }
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.e.k
    public final k.a a(long j2) {
        long j3;
        long jA;
        long j4;
        long j5;
        int iB;
        b[] bVarArr = this.z;
        if (bVarArr.length == 0) {
            return new k.a(com.anythink.expressad.exoplayer.e.l.a);
        }
        int i2 = this.B;
        if (i2 != -1) {
            m mVar = bVarArr[i2].b;
            int iA = a(mVar, j2);
            if (iA == -1) {
                return new k.a(com.anythink.expressad.exoplayer.e.l.a);
            }
            long j6 = mVar.f[iA];
            j3 = mVar.c[iA];
            if (j6 >= j2 || iA >= mVar.b - 1 || (iB = mVar.b(j2)) == -1 || iB == iA) {
                j5 = -1;
                j4 = -9223372036854775807L;
            } else {
                j4 = mVar.f[iB];
                j5 = mVar.c[iB];
            }
            jA = j5;
            j2 = j6;
        } else {
            j3 = Long.MAX_VALUE;
            jA = -1;
            j4 = -9223372036854775807L;
        }
        int i3 = 0;
        while (true) {
            b[] bVarArr2 = this.z;
            if (i3 >= bVarArr2.length) {
                break;
            }
            if (i3 != this.B) {
                m mVar2 = bVarArr2[i3].b;
                long jA2 = a(mVar2, j2, j3);
                if (j4 != com.anythink.expressad.exoplayer.b.b) {
                    jA = a(mVar2, j4, jA);
                }
                j3 = jA2;
            }
            i3++;
        }
        com.anythink.expressad.exoplayer.e.l lVar = new com.anythink.expressad.exoplayer.e.l(j2, j3);
        return j4 == com.anythink.expressad.exoplayer.b.b ? new k.a(lVar) : new k.a(lVar, new com.anythink.expressad.exoplayer.e.l(j4, jA));
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final void a(long j2, long j3) {
        this.p.clear();
        this.t = 0;
        this.v = -1;
        this.w = 0;
        this.x = 0;
        if (j2 == 0) {
            d();
            return;
        }
        b[] bVarArr = this.z;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                m mVar = bVar.b;
                int iA = mVar.a(j3);
                if (iA == -1) {
                    iA = mVar.b(j3);
                }
                bVar.d = iA;
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final void a(com.anythink.expressad.exoplayer.e.g gVar) {
        this.y = gVar;
    }

    @Override // com.anythink.expressad.exoplayer.e.k
    public final boolean a() {
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final boolean a(com.anythink.expressad.exoplayer.e.f fVar) {
        return i.b(fVar);
    }

    @Override // com.anythink.expressad.exoplayer.e.k
    public final long b() {
        return this.C;
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final void c() {
    }
}
