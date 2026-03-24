package com.anythink.expressad.exoplayer.e.a;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.d.e;
import com.anythink.expressad.exoplayer.e.a.a;
import com.anythink.expressad.exoplayer.e.k;
import com.anythink.expressad.exoplayer.e.m;
import com.anythink.expressad.exoplayer.k.ac;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.exoplayer.k.p;
import com.anythink.expressad.exoplayer.k.s;
import com.anythink.expressad.exoplayer.t;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class e implements com.anythink.expressad.exoplayer.e.e {
    public static final int e = 1;
    public static final int f = 2;
    public static final int g = 4;
    public static final int h = 16;
    private static final int i = 8;
    private static final String j = "FragmentedMp4Extractor";
    private static final int n = 0;
    private static final int o = 1;
    private static final int p = 2;
    private static final int q = 3;
    private static final int r = 4;

    @Nullable
    private final ac A;
    private final s B;
    private final byte[] C;
    private final ArrayDeque<a.C0113a> D;
    private final ArrayDeque<b> E;

    @Nullable
    private final com.anythink.expressad.exoplayer.e.m F;
    private int G;
    private int H;
    private long I;
    private int J;
    private s K;
    private long L;
    private int M;
    private long N;
    private long O;
    private long P;
    private c Q;
    private int R;
    private int S;
    private int T;
    private boolean U;
    private com.anythink.expressad.exoplayer.e.g V;
    private com.anythink.expressad.exoplayer.e.m[] W;
    private com.anythink.expressad.exoplayer.e.m[] X;
    private boolean Y;
    private final int s;

    @Nullable
    private final j t;
    private final List<com.anythink.expressad.exoplayer.m> u;

    @Nullable
    private final com.anythink.expressad.exoplayer.d.e v;
    private final SparseArray<c> w;
    private final s x;
    private final s y;
    private final s z;
    public static final com.anythink.expressad.exoplayer.e.h d = new com.anythink.expressad.exoplayer.e.h() { // from class: com.anythink.expressad.exoplayer.e.a.e.1
        @Override // com.anythink.expressad.exoplayer.e.h
        public final com.anythink.expressad.exoplayer.e.e[] a() {
            return new com.anythink.expressad.exoplayer.e.e[]{new e()};
        }
    };
    private static final int k = af.f("seig");
    private static final byte[] l = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final com.anythink.expressad.exoplayer.m m = com.anythink.expressad.exoplayer.m.a((String) null, o.ai);

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public static final class b {
        public final long a;
        public final int b;

        public b(long j, int i) {
            this.a = j;
            this.b = i;
        }
    }

    public static final class c {
        public final com.anythink.expressad.exoplayer.e.m a;
        public j c;
        public com.anythink.expressad.exoplayer.e.a.c d;
        public int e;
        public int f;
        public int g;
        public int h;
        public final l b = new l();
        private final s i = new s(1);
        private final s j = new s();

        public c(com.anythink.expressad.exoplayer.e.m mVar) {
            this.a = mVar;
        }

        public static /* synthetic */ void a(c cVar) {
            l lVar = cVar.b;
            if (lVar.m) {
                s sVar = lVar.q;
                int i = cVar.e().d;
                if (i != 0) {
                    sVar.d(i);
                }
                if (cVar.b.n[cVar.e]) {
                    sVar.d(sVar.e() * 6);
                }
            }
        }

        private void d() {
            l lVar = this.b;
            if (lVar.m) {
                s sVar = lVar.q;
                int i = e().d;
                if (i != 0) {
                    sVar.d(i);
                }
                if (this.b.n[this.e]) {
                    sVar.d(sVar.e() * 6);
                }
            }
        }

        private k e() {
            l lVar = this.b;
            int i = lVar.a.a;
            k kVar = lVar.o;
            return kVar != null ? kVar : this.c.a(i);
        }

        public final void a() {
            this.b.a();
            this.e = 0;
            this.g = 0;
            this.f = 0;
            this.h = 0;
        }

        public final void a(long j) {
            long jA = com.anythink.expressad.exoplayer.b.a(j);
            int i = this.e;
            while (true) {
                l lVar = this.b;
                if (i >= lVar.f || lVar.b(i) >= jA) {
                    return;
                }
                if (this.b.l[i]) {
                    this.h = i;
                }
                i++;
            }
        }

        public final void a(com.anythink.expressad.exoplayer.d.e eVar) {
            k kVarA = this.c.a(this.b.a.a);
            this.a.a(this.c.h.a(eVar.a(kVarA != null ? kVarA.b : null)));
        }

        public final void a(j jVar, com.anythink.expressad.exoplayer.e.a.c cVar) {
            this.c = (j) com.anythink.expressad.exoplayer.k.a.a(jVar);
            this.d = (com.anythink.expressad.exoplayer.e.a.c) com.anythink.expressad.exoplayer.k.a.a(cVar);
            this.a.a(jVar.h);
            a();
        }

        public final boolean b() {
            this.e++;
            int i = this.f + 1;
            this.f = i;
            int[] iArr = this.b.h;
            int i2 = this.g;
            if (i != iArr[i2]) {
                return true;
            }
            this.g = i2 + 1;
            this.f = 0;
            return false;
        }

        public final int c() {
            s sVar;
            if (!this.b.m) {
                return 0;
            }
            k kVarE = e();
            int length = kVarE.d;
            if (length != 0) {
                sVar = this.b.q;
            } else {
                byte[] bArr = kVarE.e;
                this.j.a(bArr, bArr.length);
                s sVar2 = this.j;
                length = bArr.length;
                sVar = sVar2;
            }
            boolean z = this.b.n[this.e];
            s sVar3 = this.i;
            sVar3.a[0] = (byte) ((z ? 128 : 0) | length);
            sVar3.c(0);
            this.a.a(this.i, 1);
            this.a.a(sVar, length);
            if (!z) {
                return length + 1;
            }
            s sVar4 = this.b.q;
            int iE = sVar4.e();
            sVar4.d(-2);
            int i = (iE * 6) + 2;
            this.a.a(sVar4, i);
            return length + 1 + i;
        }
    }

    public e() {
        this(0);
    }

    public e(int i2) {
        this(i2, null);
    }

    private e(int i2, @Nullable ac acVar) {
        this(i2, acVar, null, null);
    }

    private e(int i2, @Nullable ac acVar, @Nullable j jVar, @Nullable com.anythink.expressad.exoplayer.d.e eVar) {
        this(i2, acVar, jVar, eVar, Collections.emptyList());
    }

    private e(int i2, @Nullable ac acVar, @Nullable j jVar, @Nullable com.anythink.expressad.exoplayer.d.e eVar, List<com.anythink.expressad.exoplayer.m> list) {
        this(i2, acVar, jVar, eVar, list, null);
    }

    private e(int i2, @Nullable ac acVar, @Nullable j jVar, @Nullable com.anythink.expressad.exoplayer.d.e eVar, List<com.anythink.expressad.exoplayer.m> list, @Nullable com.anythink.expressad.exoplayer.e.m mVar) {
        this.s = i2 | (jVar != null ? 8 : 0);
        this.A = acVar;
        this.t = jVar;
        this.v = eVar;
        this.u = Collections.unmodifiableList(list);
        this.F = mVar;
        this.B = new s(16);
        this.x = new s(p.a);
        this.y = new s(5);
        this.z = new s();
        this.C = new byte[16];
        this.D = new ArrayDeque<>();
        this.E = new ArrayDeque<>();
        this.w = new SparseArray<>();
        this.O = com.anythink.expressad.exoplayer.b.b;
        this.N = com.anythink.expressad.exoplayer.b.b;
        this.P = com.anythink.expressad.exoplayer.b.b;
        a();
    }

    private static int a(c cVar, int i2, long j2, int i3, s sVar, int i4) {
        boolean z;
        int iM;
        boolean z3;
        int i5;
        boolean z4;
        boolean z5;
        sVar.c(8);
        int iB = com.anythink.expressad.exoplayer.e.a.a.b(sVar.i());
        j jVar = cVar.c;
        l lVar = cVar.b;
        com.anythink.expressad.exoplayer.e.a.c cVar2 = lVar.a;
        lVar.h[i2] = sVar.m();
        long[] jArr = lVar.g;
        jArr[i2] = lVar.c;
        if ((iB & 1) != 0) {
            jArr[i2] = jArr[i2] + ((long) sVar.i());
        }
        boolean z6 = (iB & 4) != 0;
        int iM2 = cVar2.d;
        if (z6) {
            iM2 = sVar.m();
        }
        boolean z7 = (iB & 256) != 0;
        boolean z8 = (iB & 512) != 0;
        boolean z9 = (iB & 1024) != 0;
        boolean z10 = (iB & 2048) != 0;
        long[] jArr2 = jVar.j;
        long jA = 0;
        if (jArr2 != null && jArr2.length == 1 && jArr2[0] == 0) {
            jA = af.a(jVar.k[0], 1000L, jVar.e);
        }
        int[] iArr = lVar.i;
        int[] iArr2 = lVar.j;
        long[] jArr3 = lVar.k;
        boolean[] zArr = lVar.l;
        int i6 = iM2;
        boolean z11 = jVar.d == 2 && (i3 & 1) != 0;
        int i7 = i4 + lVar.h[i2];
        long j3 = jVar.e;
        long j4 = jA;
        long j5 = i2 > 0 ? lVar.s : j2;
        int i8 = i4;
        while (i8 < i7) {
            int iM3 = z7 ? sVar.m() : cVar2.b;
            if (z8) {
                z = z7;
                iM = sVar.m();
            } else {
                z = z7;
                iM = cVar2.c;
            }
            if (i8 == 0 && z6) {
                z3 = z6;
                i5 = i6;
            } else if (z9) {
                z3 = z6;
                i5 = sVar.i();
            } else {
                z3 = z6;
                i5 = cVar2.d;
            }
            boolean z12 = z10;
            if (z10) {
                z4 = z8;
                z5 = z9;
                iArr2[i8] = (int) ((((long) sVar.i()) * 1000) / j3);
            } else {
                z4 = z8;
                z5 = z9;
                iArr2[i8] = 0;
            }
            jArr3[i8] = af.a(j5, 1000L, j3) - j4;
            iArr[i8] = iM;
            zArr[i8] = ((i5 >> 16) & 1) == 0 && (!z11 || i8 == 0);
            i8++;
            j5 += (long) iM3;
            j3 = j3;
            z7 = z;
            z6 = z3;
            z10 = z12;
            z8 = z4;
            z9 = z5;
        }
        lVar.s = j5;
        return i7;
    }

    private static Pair<Long, com.anythink.expressad.exoplayer.e.a> a(s sVar, long j2) throws t {
        long jN;
        long jN2;
        sVar.c(8);
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar.i());
        sVar.d(4);
        long jH = sVar.h();
        if (iA == 0) {
            jN = sVar.h();
            jN2 = sVar.h();
        } else {
            jN = sVar.n();
            jN2 = sVar.n();
        }
        long j3 = jN;
        long j4 = j2 + jN2;
        long jA = af.a(j3, 1000000L, jH);
        sVar.d(2);
        int iE = sVar.e();
        int[] iArr = new int[iE];
        long[] jArr = new long[iE];
        long[] jArr2 = new long[iE];
        long[] jArr3 = new long[iE];
        long j5 = j3;
        long j6 = jA;
        int i2 = 0;
        while (i2 < iE) {
            int i3 = sVar.i();
            if ((i3 & Integer.MIN_VALUE) != 0) {
                throw new t("Unhandled indirect reference");
            }
            long jH2 = sVar.h();
            iArr[i2] = i3 & Integer.MAX_VALUE;
            jArr[i2] = j4;
            jArr3[i2] = j6;
            long j7 = j5 + jH2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i4 = iE;
            int[] iArr2 = iArr;
            long jA2 = af.a(j7, 1000000L, jH);
            jArr4[i2] = jA2 - jArr5[i2];
            sVar.d(4);
            j4 += (long) iArr2[i2];
            i2++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iE = i4;
            j5 = j7;
            j6 = jA2;
        }
        return Pair.create(Long.valueOf(jA), new com.anythink.expressad.exoplayer.e.a(iArr, jArr, jArr2, jArr3));
    }

    private static com.anythink.expressad.exoplayer.d.e a(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            a.b bVar = list.get(i2);
            if (bVar.aU == com.anythink.expressad.exoplayer.e.a.a.Z) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.aV.a;
                UUID uuidA = h.a(bArr);
                if (uuidA == null) {
                    Log.w(j, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new e.a(uuidA, o.e, bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new com.anythink.expressad.exoplayer.d.e(arrayList);
    }

    private static com.anythink.expressad.exoplayer.e.a.c a(SparseArray<com.anythink.expressad.exoplayer.e.a.c> sparseArray, int i2) {
        return (com.anythink.expressad.exoplayer.e.a.c) (sparseArray.size() == 1 ? sparseArray.valueAt(0) : com.anythink.expressad.exoplayer.k.a.a(sparseArray.get(i2)));
    }

    private static c a(SparseArray<c> sparseArray) {
        int size = sparseArray.size();
        c cVar = null;
        long j2 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            c cVarValueAt = sparseArray.valueAt(i2);
            int i3 = cVarValueAt.g;
            l lVar = cVarValueAt.b;
            if (i3 != lVar.e) {
                long j3 = lVar.g[i3];
                if (j3 < j2) {
                    cVar = cVarValueAt;
                    j2 = j3;
                }
            }
        }
        return cVar;
    }

    private static c a(s sVar, SparseArray<c> sparseArray) {
        sVar.c(8);
        int iB = com.anythink.expressad.exoplayer.e.a.a.b(sVar.i());
        c cVarB = b(sparseArray, sVar.i());
        if (cVarB == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jN = sVar.n();
            l lVar = cVarB.b;
            lVar.c = jN;
            lVar.d = jN;
        }
        com.anythink.expressad.exoplayer.e.a.c cVar = cVarB.d;
        cVarB.b.a = new com.anythink.expressad.exoplayer.e.a.c((iB & 2) != 0 ? sVar.m() - 1 : cVar.a, (iB & 8) != 0 ? sVar.m() : cVar.b, (iB & 16) != 0 ? sVar.m() : cVar.c, (iB & 32) != 0 ? sVar.m() : cVar.d);
        return cVarB;
    }

    private void a() {
        this.G = 0;
        this.J = 0;
    }

    private void a(long j2) throws t {
        while (!this.D.isEmpty() && this.D.peek().aV == j2) {
            a(this.D.pop());
        }
        a();
    }

    private void a(a.C0113a c0113a) throws t {
        int i2 = c0113a.aU;
        if (i2 == com.anythink.expressad.exoplayer.e.a.a.G) {
            b(c0113a);
        } else if (i2 == com.anythink.expressad.exoplayer.e.a.a.P) {
            c(c0113a);
        } else {
            if (this.D.isEmpty()) {
                return;
            }
            this.D.peek().a(c0113a);
        }
    }

    private static void a(a.C0113a c0113a, SparseArray<c> sparseArray, int i2, byte[] bArr) throws t {
        int size = c0113a.aX.size();
        for (int i3 = 0; i3 < size; i3++) {
            a.C0113a c0113a2 = c0113a.aX.get(i3);
            if (c0113a2.aU == com.anythink.expressad.exoplayer.e.a.a.Q) {
                b(c0113a2, sparseArray, i2, bArr);
            }
        }
    }

    private static void a(a.C0113a c0113a, c cVar, long j2, int i2) {
        List<a.b> list = c0113a.aW;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            a.b bVar = list.get(i5);
            if (bVar.aU == com.anythink.expressad.exoplayer.e.a.a.E) {
                s sVar = bVar.aV;
                sVar.c(12);
                int iM = sVar.m();
                if (iM > 0) {
                    i4 += iM;
                    i3++;
                }
            }
        }
        cVar.g = 0;
        cVar.f = 0;
        cVar.e = 0;
        cVar.b.a(i3, i4);
        int i6 = 0;
        int iA = 0;
        for (int i7 = 0; i7 < size; i7++) {
            a.b bVar2 = list.get(i7);
            if (bVar2.aU == com.anythink.expressad.exoplayer.e.a.a.E) {
                iA = a(cVar, i6, j2, i2, bVar2.aV, iA);
                i6++;
            }
        }
    }

    private void a(a.b bVar, long j2) throws t {
        long jN;
        long jN2;
        if (!this.D.isEmpty()) {
            this.D.peek().a(bVar);
            return;
        }
        int i2 = bVar.aU;
        int i3 = 0;
        if (i2 != com.anythink.expressad.exoplayer.e.a.a.F) {
            if (i2 == com.anythink.expressad.exoplayer.e.a.a.aL) {
                s sVar = bVar.aV;
                com.anythink.expressad.exoplayer.e.m[] mVarArr = this.W;
                if (mVarArr == null || mVarArr.length == 0) {
                    return;
                }
                sVar.c(12);
                int iA = sVar.a();
                sVar.p();
                sVar.p();
                long jA = af.a(sVar.h(), 1000000L, sVar.h());
                for (com.anythink.expressad.exoplayer.e.m mVar : this.W) {
                    sVar.c(12);
                    mVar.a(sVar, iA);
                }
                long j3 = this.P;
                if (j3 == com.anythink.expressad.exoplayer.b.b) {
                    this.E.addLast(new b(jA, iA));
                    this.M += iA;
                    return;
                }
                long jB = j3 + jA;
                ac acVar = this.A;
                if (acVar != null) {
                    jB = acVar.b(jB);
                }
                com.anythink.expressad.exoplayer.e.m[] mVarArr2 = this.W;
                int length = mVarArr2.length;
                while (i3 < length) {
                    mVarArr2[i3].a(jB, 1, iA, 0, null);
                    i3++;
                }
                return;
            }
            return;
        }
        s sVar2 = bVar.aV;
        sVar2.c(8);
        int iA2 = com.anythink.expressad.exoplayer.e.a.a.a(sVar2.i());
        sVar2.d(4);
        long jH = sVar2.h();
        if (iA2 == 0) {
            jN = sVar2.h();
            jN2 = sVar2.h();
        } else {
            jN = sVar2.n();
            jN2 = sVar2.n();
        }
        long j4 = jN;
        long j5 = j2 + jN2;
        long jA2 = af.a(j4, 1000000L, jH);
        sVar2.d(2);
        int iE = sVar2.e();
        int[] iArr = new int[iE];
        long[] jArr = new long[iE];
        long[] jArr2 = new long[iE];
        long[] jArr3 = new long[iE];
        long jA3 = jA2;
        while (i3 < iE) {
            int i4 = sVar2.i();
            if ((i4 & Integer.MIN_VALUE) != 0) {
                throw new t("Unhandled indirect reference");
            }
            long jH2 = sVar2.h();
            iArr[i3] = i4 & Integer.MAX_VALUE;
            jArr[i3] = j5;
            jArr3[i3] = jA3;
            long j6 = j4 + jH2;
            int i5 = iE;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int[] iArr2 = iArr;
            jA3 = af.a(j6, 1000000L, jH);
            jArr4[i3] = jA3 - jArr5[i3];
            sVar2.d(4);
            j5 += (long) iArr2[i3];
            i3++;
            jArr3 = jArr5;
            jArr2 = jArr4;
            iArr = iArr2;
            jArr = jArr;
            j4 = j6;
            iE = i5;
        }
        Pair pairCreate = Pair.create(Long.valueOf(jA2), new com.anythink.expressad.exoplayer.e.a(iArr, jArr, jArr2, jArr3));
        this.P = ((Long) pairCreate.first).longValue();
        this.V.a((com.anythink.expressad.exoplayer.e.k) pairCreate.second);
        this.Y = true;
    }

    private static void a(k kVar, s sVar, l lVar) throws t {
        int i2;
        int i3 = kVar.d;
        sVar.c(8);
        if ((com.anythink.expressad.exoplayer.e.a.a.b(sVar.i()) & 1) == 1) {
            sVar.d(8);
        }
        int iD = sVar.d();
        int iM = sVar.m();
        if (iM != lVar.f) {
            throw new t("Length mismatch: " + iM + ", " + lVar.f);
        }
        if (iD == 0) {
            boolean[] zArr = lVar.n;
            i2 = 0;
            for (int i4 = 0; i4 < iM; i4++) {
                int iD2 = sVar.d();
                i2 += iD2;
                zArr[i4] = iD2 > i3;
            }
        } else {
            i2 = (iD * iM) + 0;
            Arrays.fill(lVar.n, 0, iM, iD > i3);
        }
        lVar.a(i2);
    }

    private void a(s sVar) {
        com.anythink.expressad.exoplayer.e.m[] mVarArr = this.W;
        if (mVarArr == null || mVarArr.length == 0) {
            return;
        }
        sVar.c(12);
        int iA = sVar.a();
        sVar.p();
        sVar.p();
        long jA = af.a(sVar.h(), 1000000L, sVar.h());
        for (com.anythink.expressad.exoplayer.e.m mVar : this.W) {
            sVar.c(12);
            mVar.a(sVar, iA);
        }
        long j2 = this.P;
        if (j2 == com.anythink.expressad.exoplayer.b.b) {
            this.E.addLast(new b(jA, iA));
            this.M += iA;
            return;
        }
        long jB = j2 + jA;
        ac acVar = this.A;
        if (acVar != null) {
            jB = acVar.b(jB);
        }
        long j3 = jB;
        for (com.anythink.expressad.exoplayer.e.m mVar2 : this.W) {
            mVar2.a(j3, 1, iA, 0, null);
        }
    }

    private static void a(s sVar, int i2, l lVar) throws t {
        sVar.c(i2 + 8);
        int iB = com.anythink.expressad.exoplayer.e.a.a.b(sVar.i());
        if ((iB & 1) != 0) {
            throw new t("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iB & 2) != 0;
        int iM = sVar.m();
        if (iM == lVar.f) {
            Arrays.fill(lVar.n, 0, iM, z);
            lVar.a(sVar.a());
            lVar.a(sVar);
        } else {
            throw new t("Length mismatch: " + iM + ", " + lVar.f);
        }
    }

    private static void a(s sVar, l lVar) throws t {
        sVar.c(8);
        int i2 = sVar.i();
        if ((com.anythink.expressad.exoplayer.e.a.a.b(i2) & 1) == 1) {
            sVar.d(8);
        }
        int iM = sVar.m();
        if (iM != 1) {
            throw new t("Unexpected saio entry count: ".concat(String.valueOf(iM)));
        }
        lVar.d += com.anythink.expressad.exoplayer.e.a.a.a(i2) == 0 ? sVar.h() : sVar.n();
    }

    private static void a(s sVar, l lVar, byte[] bArr) throws t {
        sVar.c(8);
        sVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, l)) {
            a(sVar, 16, lVar);
        }
    }

    private static void a(s sVar, s sVar2, String str, l lVar) throws t {
        byte[] bArr;
        sVar.c(8);
        int i2 = sVar.i();
        int i3 = sVar.i();
        int i4 = k;
        if (i3 != i4) {
            return;
        }
        if (com.anythink.expressad.exoplayer.e.a.a.a(i2) == 1) {
            sVar.d(4);
        }
        if (sVar.i() != 1) {
            throw new t("Entry count in sbgp != 1 (unsupported).");
        }
        sVar2.c(8);
        int i5 = sVar2.i();
        if (sVar2.i() != i4) {
            return;
        }
        int iA = com.anythink.expressad.exoplayer.e.a.a.a(i5);
        if (iA == 1) {
            if (sVar2.h() == 0) {
                throw new t("Variable length description in sgpd found (unsupported)");
            }
        } else if (iA >= 2) {
            sVar2.d(4);
        }
        if (sVar2.h() != 1) {
            throw new t("Entry count in sgpd != 1 (unsupported).");
        }
        sVar2.d(1);
        int iD = sVar2.d();
        int i6 = (iD & 240) >> 4;
        int i7 = iD & 15;
        if (sVar2.d() == 1) {
            int iD2 = sVar2.d();
            byte[] bArr2 = new byte[16];
            sVar2.a(bArr2, 0, 16);
            if (iD2 == 0) {
                int iD3 = sVar2.d();
                byte[] bArr3 = new byte[iD3];
                sVar2.a(bArr3, 0, iD3);
                bArr = bArr3;
            } else {
                bArr = null;
            }
            lVar.m = true;
            lVar.o = new k(true, str, iD2, bArr2, i6, i7, bArr);
        }
    }

    private static boolean a(int i2) {
        return i2 == com.anythink.expressad.exoplayer.e.a.a.X || i2 == com.anythink.expressad.exoplayer.e.a.a.W || i2 == com.anythink.expressad.exoplayer.e.a.a.H || i2 == com.anythink.expressad.exoplayer.e.a.a.F || i2 == com.anythink.expressad.exoplayer.e.a.a.Y || i2 == com.anythink.expressad.exoplayer.e.a.a.B || i2 == com.anythink.expressad.exoplayer.e.a.a.C || i2 == com.anythink.expressad.exoplayer.e.a.a.T || i2 == com.anythink.expressad.exoplayer.e.a.a.D || i2 == com.anythink.expressad.exoplayer.e.a.a.E || i2 == com.anythink.expressad.exoplayer.e.a.a.Z || i2 == com.anythink.expressad.exoplayer.e.a.a.ah || i2 == com.anythink.expressad.exoplayer.e.a.a.ai || i2 == com.anythink.expressad.exoplayer.e.a.a.am || i2 == com.anythink.expressad.exoplayer.e.a.a.al || i2 == com.anythink.expressad.exoplayer.e.a.a.aj || i2 == com.anythink.expressad.exoplayer.e.a.a.ak || i2 == com.anythink.expressad.exoplayer.e.a.a.V || i2 == com.anythink.expressad.exoplayer.e.a.a.S || i2 == com.anythink.expressad.exoplayer.e.a.a.aL;
    }

    private static Pair<Integer, com.anythink.expressad.exoplayer.e.a.c> b(s sVar) {
        sVar.c(12);
        return Pair.create(Integer.valueOf(sVar.i()), new com.anythink.expressad.exoplayer.e.a.c(sVar.m() - 1, sVar.m(), sVar.m(), sVar.i()));
    }

    @Nullable
    private static c b(SparseArray<c> sparseArray, int i2) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i2);
    }

    private void b() {
        int i2;
        if (this.W == null) {
            com.anythink.expressad.exoplayer.e.m[] mVarArr = new com.anythink.expressad.exoplayer.e.m[2];
            this.W = mVarArr;
            com.anythink.expressad.exoplayer.e.m mVar = this.F;
            if (mVar != null) {
                mVarArr[0] = mVar;
                i2 = 1;
            } else {
                i2 = 0;
            }
            if ((this.s & 4) != 0) {
                mVarArr[i2] = this.V.a(this.w.size(), 4);
                i2++;
            }
            com.anythink.expressad.exoplayer.e.m[] mVarArr2 = (com.anythink.expressad.exoplayer.e.m[]) Arrays.copyOf(this.W, i2);
            this.W = mVarArr2;
            for (com.anythink.expressad.exoplayer.e.m mVar2 : mVarArr2) {
                mVar2.a(m);
            }
        }
        if (this.X == null) {
            this.X = new com.anythink.expressad.exoplayer.e.m[this.u.size()];
            for (int i3 = 0; i3 < this.X.length; i3++) {
                com.anythink.expressad.exoplayer.e.m mVarA = this.V.a(this.w.size() + 1 + i3, 3);
                mVarA.a(this.u.get(i3));
                this.X[i3] = mVarA;
            }
        }
    }

    private void b(long j2) {
        while (!this.E.isEmpty()) {
            b bVarRemoveFirst = this.E.removeFirst();
            this.M -= bVarRemoveFirst.b;
            long jB = bVarRemoveFirst.a + j2;
            ac acVar = this.A;
            if (acVar != null) {
                jB = acVar.b(jB);
            }
            for (com.anythink.expressad.exoplayer.e.m mVar : this.W) {
                mVar.a(jB, 1, bVarRemoveFirst.b, this.M, null);
            }
        }
    }

    private void b(a.C0113a c0113a) throws t {
        int i2;
        int i3;
        int i4 = 0;
        com.anythink.expressad.exoplayer.k.a.b(this.t == null, "Unexpected moov box.");
        com.anythink.expressad.exoplayer.d.e eVarA = this.v;
        if (eVarA == null) {
            eVarA = a(c0113a.aW);
        }
        a.C0113a c0113aE = c0113a.e(com.anythink.expressad.exoplayer.e.a.a.R);
        SparseArray sparseArray = new SparseArray();
        int size = c0113aE.aW.size();
        long jC = -9223372036854775807L;
        for (int i5 = 0; i5 < size; i5++) {
            a.b bVar = c0113aE.aW.get(i5);
            int i6 = bVar.aU;
            if (i6 == com.anythink.expressad.exoplayer.e.a.a.D) {
                Pair<Integer, com.anythink.expressad.exoplayer.e.a.c> pairB = b(bVar.aV);
                sparseArray.put(((Integer) pairB.first).intValue(), (com.anythink.expressad.exoplayer.e.a.c) pairB.second);
            } else if (i6 == com.anythink.expressad.exoplayer.e.a.a.S) {
                jC = c(bVar.aV);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c0113a.aX.size();
        int i7 = 0;
        while (i7 < size2) {
            a.C0113a c0113a2 = c0113a.aX.get(i7);
            if (c0113a2.aU == com.anythink.expressad.exoplayer.e.a.a.I) {
                i2 = i7;
                i3 = size2;
                j jVarA = com.anythink.expressad.exoplayer.e.a.b.a(c0113a2, c0113a.d(com.anythink.expressad.exoplayer.e.a.a.H), jC, eVarA, (this.s & 16) != 0, false);
                if (jVarA != null) {
                    sparseArray2.put(jVarA.c, jVarA);
                }
            } else {
                i2 = i7;
                i3 = size2;
            }
            i7 = i2 + 1;
            size2 = i3;
        }
        int size3 = sparseArray2.size();
        if (this.w.size() != 0) {
            com.anythink.expressad.exoplayer.k.a.b(this.w.size() == size3);
            while (i4 < size3) {
                j jVar = (j) sparseArray2.valueAt(i4);
                this.w.get(jVar.c).a(jVar, a((SparseArray<com.anythink.expressad.exoplayer.e.a.c>) sparseArray, jVar.c));
                i4++;
            }
            return;
        }
        while (i4 < size3) {
            j jVar2 = (j) sparseArray2.valueAt(i4);
            c cVar = new c(this.V.a(i4, jVar2.d));
            cVar.a(jVar2, a((SparseArray<com.anythink.expressad.exoplayer.e.a.c>) sparseArray, jVar2.c));
            this.w.put(jVar2.c, cVar);
            this.O = Math.max(this.O, jVar2.g);
            i4++;
        }
        b();
        this.V.c_();
    }

    private static void b(a.C0113a c0113a, SparseArray<c> sparseArray, int i2, byte[] bArr) throws t {
        c cVarA = a(c0113a.d(com.anythink.expressad.exoplayer.e.a.a.C).aV, sparseArray);
        if (cVarA == null) {
            return;
        }
        l lVar = cVarA.b;
        long jD = lVar.s;
        cVarA.a();
        int i3 = com.anythink.expressad.exoplayer.e.a.a.B;
        if (c0113a.d(i3) != null && (i2 & 2) == 0) {
            jD = d(c0113a.d(i3).aV);
        }
        a(c0113a, cVarA, jD, i2);
        k kVarA = cVarA.c.a(lVar.a.a);
        a.b bVarD = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.ah);
        if (bVarD != null) {
            a(kVarA, bVarD.aV, lVar);
        }
        a.b bVarD2 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.ai);
        if (bVarD2 != null) {
            a(bVarD2.aV, lVar);
        }
        a.b bVarD3 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.am);
        if (bVarD3 != null) {
            a(bVarD3.aV, 0, lVar);
        }
        a.b bVarD4 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.aj);
        a.b bVarD5 = c0113a.d(com.anythink.expressad.exoplayer.e.a.a.ak);
        if (bVarD4 != null && bVarD5 != null) {
            a(bVarD4.aV, bVarD5.aV, kVarA != null ? kVarA.b : null, lVar);
        }
        int size = c0113a.aW.size();
        for (int i4 = 0; i4 < size; i4++) {
            a.b bVar = c0113a.aW.get(i4);
            if (bVar.aU == com.anythink.expressad.exoplayer.e.a.a.al) {
                a(bVar.aV, lVar, bArr);
            }
        }
    }

    private static void b(s sVar, l lVar) throws t {
        a(sVar, 0, lVar);
    }

    private static boolean b(int i2) {
        return i2 == com.anythink.expressad.exoplayer.e.a.a.G || i2 == com.anythink.expressad.exoplayer.e.a.a.I || i2 == com.anythink.expressad.exoplayer.e.a.a.J || i2 == com.anythink.expressad.exoplayer.e.a.a.K || i2 == com.anythink.expressad.exoplayer.e.a.a.L || i2 == com.anythink.expressad.exoplayer.e.a.a.P || i2 == com.anythink.expressad.exoplayer.e.a.a.Q || i2 == com.anythink.expressad.exoplayer.e.a.a.R || i2 == com.anythink.expressad.exoplayer.e.a.a.U;
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(com.anythink.expressad.exoplayer.e.f fVar) throws t {
        long jC;
        if (this.J == 0) {
            if (!fVar.a(this.B.a, 0, 8, true)) {
                return false;
            }
            this.J = 8;
            this.B.c(0);
            this.I = this.B.h();
            this.H = this.B.i();
        }
        long j2 = this.I;
        if (j2 != 1) {
            if (j2 == 0) {
                long jD = fVar.d();
                if (jD == -1 && !this.D.isEmpty()) {
                    jD = this.D.peek().aV;
                }
                if (jD != -1) {
                    jC = (jD - fVar.c()) + ((long) this.J);
                }
            }
            if (this.I >= this.J) {
                throw new t("Atom size less than header length (unsupported).");
            }
            long jC2 = fVar.c() - ((long) this.J);
            if (this.H == com.anythink.expressad.exoplayer.e.a.a.P) {
                int size = this.w.size();
                for (int i2 = 0; i2 < size; i2++) {
                    l lVar = this.w.valueAt(i2).b;
                    lVar.b = jC2;
                    lVar.d = jC2;
                    lVar.c = jC2;
                }
            }
            int i3 = this.H;
            if (i3 == com.anythink.expressad.exoplayer.e.a.a.m) {
                this.Q = null;
                this.L = this.I + jC2;
                if (!this.Y) {
                    this.V.a(new k.b(this.O, jC2));
                    this.Y = true;
                }
                this.G = 2;
                return true;
            }
            if (i3 == com.anythink.expressad.exoplayer.e.a.a.G || i3 == com.anythink.expressad.exoplayer.e.a.a.I || i3 == com.anythink.expressad.exoplayer.e.a.a.J || i3 == com.anythink.expressad.exoplayer.e.a.a.K || i3 == com.anythink.expressad.exoplayer.e.a.a.L || i3 == com.anythink.expressad.exoplayer.e.a.a.P || i3 == com.anythink.expressad.exoplayer.e.a.a.Q || i3 == com.anythink.expressad.exoplayer.e.a.a.R || i3 == com.anythink.expressad.exoplayer.e.a.a.U) {
                long jC3 = (fVar.c() + this.I) - 8;
                this.D.push(new a.C0113a(this.H, jC3));
                if (this.I == this.J) {
                    a(jC3);
                } else {
                    a();
                }
            } else {
                if (i3 == com.anythink.expressad.exoplayer.e.a.a.X || i3 == com.anythink.expressad.exoplayer.e.a.a.W || i3 == com.anythink.expressad.exoplayer.e.a.a.H || i3 == com.anythink.expressad.exoplayer.e.a.a.F || i3 == com.anythink.expressad.exoplayer.e.a.a.Y || i3 == com.anythink.expressad.exoplayer.e.a.a.B || i3 == com.anythink.expressad.exoplayer.e.a.a.C || i3 == com.anythink.expressad.exoplayer.e.a.a.T || i3 == com.anythink.expressad.exoplayer.e.a.a.D || i3 == com.anythink.expressad.exoplayer.e.a.a.E || i3 == com.anythink.expressad.exoplayer.e.a.a.Z || i3 == com.anythink.expressad.exoplayer.e.a.a.ah || i3 == com.anythink.expressad.exoplayer.e.a.a.ai || i3 == com.anythink.expressad.exoplayer.e.a.a.am || i3 == com.anythink.expressad.exoplayer.e.a.a.al || i3 == com.anythink.expressad.exoplayer.e.a.a.aj || i3 == com.anythink.expressad.exoplayer.e.a.a.ak || i3 == com.anythink.expressad.exoplayer.e.a.a.V || i3 == com.anythink.expressad.exoplayer.e.a.a.S || i3 == com.anythink.expressad.exoplayer.e.a.a.aL) {
                    if (this.J != 8) {
                        throw new t("Leaf atom defines extended atom size (unsupported).");
                    }
                    long j3 = this.I;
                    if (j3 > 2147483647L) {
                        throw new t("Leaf atom with length > 2147483647 (unsupported).");
                    }
                    s sVar = new s((int) j3);
                    this.K = sVar;
                    System.arraycopy(this.B.a, 0, sVar.a, 0, 8);
                } else {
                    if (this.I > 2147483647L) {
                        throw new t("Skipping atom with length > 2147483647 (unsupported).");
                    }
                    this.K = null;
                }
                this.G = 1;
            }
            return true;
        }
        fVar.b(this.B.a, 8, 8);
        this.J += 8;
        jC = this.B.n();
        this.I = jC;
        if (this.I >= this.J) {
        }
    }

    private static long c(s sVar) {
        sVar.c(8);
        return com.anythink.expressad.exoplayer.e.a.a.a(sVar.i()) == 0 ? sVar.h() : sVar.n();
    }

    private void c(a.C0113a c0113a) throws t {
        a(c0113a, this.w, this.s, this.C);
        com.anythink.expressad.exoplayer.d.e eVarA = this.v != null ? null : a(c0113a.aW);
        if (eVarA != null) {
            int size = this.w.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.w.valueAt(i2).a(eVarA);
            }
        }
        if (this.N != com.anythink.expressad.exoplayer.b.b) {
            int size2 = this.w.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.w.valueAt(i3).a(this.N);
            }
            this.N = com.anythink.expressad.exoplayer.b.b;
        }
    }

    private void c(com.anythink.expressad.exoplayer.e.f fVar) throws t {
        long jN;
        long jN2;
        int i2 = ((int) this.I) - this.J;
        s sVar = this.K;
        if (sVar != null) {
            fVar.b(sVar.a, 8, i2);
            a.b bVar = new a.b(this.H, this.K);
            long jC = fVar.c();
            if (this.D.isEmpty()) {
                int i3 = bVar.aU;
                int i4 = 0;
                if (i3 == com.anythink.expressad.exoplayer.e.a.a.F) {
                    s sVar2 = bVar.aV;
                    sVar2.c(8);
                    int iA = com.anythink.expressad.exoplayer.e.a.a.a(sVar2.i());
                    sVar2.d(4);
                    long jH = sVar2.h();
                    if (iA == 0) {
                        jN = sVar2.h();
                        jN2 = sVar2.h();
                    } else {
                        jN = sVar2.n();
                        jN2 = sVar2.n();
                    }
                    long j2 = jC + jN2;
                    long j3 = jN;
                    long jA = af.a(j3, 1000000L, jH);
                    sVar2.d(2);
                    int iE = sVar2.e();
                    int[] iArr = new int[iE];
                    long[] jArr = new long[iE];
                    long[] jArr2 = new long[iE];
                    long[] jArr3 = new long[iE];
                    long jA2 = jA;
                    while (i4 < iE) {
                        int i5 = sVar2.i();
                        if ((i5 & Integer.MIN_VALUE) != 0) {
                            throw new t("Unhandled indirect reference");
                        }
                        long jH2 = sVar2.h();
                        iArr[i4] = i5 & Integer.MAX_VALUE;
                        jArr[i4] = j2;
                        jArr3[i4] = jA2;
                        j3 += jH2;
                        long[] jArr4 = jArr3;
                        long[] jArr5 = jArr2;
                        jA2 = af.a(j3, 1000000L, jH);
                        jArr5[i4] = jA2 - jArr4[i4];
                        sVar2.d(4);
                        j2 += (long) iArr[i4];
                        i4++;
                        jArr2 = jArr5;
                        jArr = jArr;
                        jArr3 = jArr4;
                        iE = iE;
                    }
                    Pair pairCreate = Pair.create(Long.valueOf(jA), new com.anythink.expressad.exoplayer.e.a(iArr, jArr, jArr2, jArr3));
                    this.P = ((Long) pairCreate.first).longValue();
                    this.V.a((com.anythink.expressad.exoplayer.e.k) pairCreate.second);
                    this.Y = true;
                } else if (i3 == com.anythink.expressad.exoplayer.e.a.a.aL) {
                    s sVar3 = bVar.aV;
                    com.anythink.expressad.exoplayer.e.m[] mVarArr = this.W;
                    if (mVarArr != null && mVarArr.length != 0) {
                        sVar3.c(12);
                        int iA2 = sVar3.a();
                        sVar3.p();
                        sVar3.p();
                        long jA3 = af.a(sVar3.h(), 1000000L, sVar3.h());
                        for (com.anythink.expressad.exoplayer.e.m mVar : this.W) {
                            sVar3.c(12);
                            mVar.a(sVar3, iA2);
                        }
                        long j4 = this.P;
                        if (j4 != com.anythink.expressad.exoplayer.b.b) {
                            long jB = j4 + jA3;
                            ac acVar = this.A;
                            if (acVar != null) {
                                jB = acVar.b(jB);
                            }
                            com.anythink.expressad.exoplayer.e.m[] mVarArr2 = this.W;
                            int length = mVarArr2.length;
                            while (i4 < length) {
                                mVarArr2[i4].a(jB, 1, iA2, 0, null);
                                i4++;
                            }
                        } else {
                            this.E.addLast(new b(jA3, iA2));
                            this.M += iA2;
                        }
                    }
                }
            } else {
                this.D.peek().a(bVar);
            }
        } else {
            fVar.c(i2);
        }
        a(fVar.c());
    }

    private static long d(s sVar) {
        sVar.c(8);
        return com.anythink.expressad.exoplayer.e.a.a.a(sVar.i()) == 1 ? sVar.n() : sVar.h();
    }

    private void d(com.anythink.expressad.exoplayer.e.f fVar) throws t {
        int size = this.w.size();
        c cVarValueAt = null;
        long j2 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.w.valueAt(i2).b;
            if (lVar.r) {
                long j3 = lVar.d;
                if (j3 < j2) {
                    cVarValueAt = this.w.valueAt(i2);
                    j2 = j3;
                }
            }
        }
        if (cVarValueAt == null) {
            this.G = 3;
            return;
        }
        int iC = (int) (j2 - fVar.c());
        if (iC < 0) {
            throw new t("Offset to encryption data was negative.");
        }
        fVar.c(iC);
        l lVar2 = cVarValueAt.b;
        fVar.b(lVar2.q.a, 0, lVar2.p);
        lVar2.q.c(0);
        lVar2.r = false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean e(com.anythink.expressad.exoplayer.e.f fVar) throws t {
        int i2;
        m.a aVar;
        int iA;
        int i3 = 1;
        if (this.G == 3) {
            if (this.Q == null) {
                SparseArray<c> sparseArray = this.w;
                long j2 = Long.MAX_VALUE;
                int size = sparseArray.size();
                c cVar = null;
                for (int i4 = 0; i4 < size; i4++) {
                    c cVarValueAt = sparseArray.valueAt(i4);
                    int i5 = cVarValueAt.g;
                    l lVar = cVarValueAt.b;
                    if (i5 != lVar.e) {
                        long j3 = lVar.g[i5];
                        if (j3 < j2) {
                            cVar = cVarValueAt;
                            j2 = j3;
                        }
                    }
                }
                if (cVar == null) {
                    int iC = (int) (this.L - fVar.c());
                    if (iC < 0) {
                        throw new t("Offset to end of mdat was negative.");
                    }
                    fVar.c(iC);
                    a();
                    return false;
                }
                int iC2 = (int) (cVar.b.g[cVar.g] - fVar.c());
                if (iC2 < 0) {
                    Log.w(j, "Ignoring negative offset to sample data.");
                    iC2 = 0;
                }
                fVar.c(iC2);
                this.Q = cVar;
            }
            c cVar2 = this.Q;
            int[] iArr = cVar2.b.i;
            int i6 = cVar2.e;
            int i7 = iArr[i6];
            this.R = i7;
            if (i6 < cVar2.h) {
                fVar.c(i7);
                c.a(this.Q);
                if (!this.Q.b()) {
                    this.Q = null;
                }
                this.G = 3;
                return true;
            }
            if (cVar2.c.i == 1) {
                this.R = i7 - 8;
                fVar.c(8);
            }
            int iC3 = this.Q.c();
            this.S = iC3;
            this.R += iC3;
            this.G = 4;
            this.T = 0;
        }
        c cVar3 = this.Q;
        l lVar2 = cVar3.b;
        j jVar = cVar3.c;
        com.anythink.expressad.exoplayer.e.m mVar = cVar3.a;
        int i8 = cVar3.e;
        long jB = lVar2.b(i8) * 1000;
        ac acVar = this.A;
        if (acVar != null) {
            jB = acVar.b(jB);
        }
        long j4 = jB;
        int i9 = jVar.l;
        if (i9 == 0) {
            while (true) {
                int i10 = this.S;
                int i11 = this.R;
                if (i10 >= i11) {
                    break;
                }
                this.S += mVar.a(fVar, i11 - i10, false);
            }
        } else {
            byte[] bArr = this.y.a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i12 = i9 + 1;
            int i13 = 4 - i9;
            while (this.S < this.R) {
                int i14 = this.T;
                if (i14 == 0) {
                    fVar.b(bArr, i13, i12);
                    this.y.c(0);
                    this.T = this.y.m() - i3;
                    this.x.c(0);
                    mVar.a(this.x, 4);
                    mVar.a(this.y, i3);
                    this.U = this.X.length > 0 && p.a(jVar.h.h, bArr[4]);
                    this.S += 5;
                    this.R += i13;
                } else {
                    if (this.U) {
                        this.z.a(i14);
                        fVar.b(this.z.a, 0, this.T);
                        mVar.a(this.z, this.T);
                        iA = this.T;
                        s sVar = this.z;
                        int iA2 = p.a(sVar.a, sVar.b());
                        this.z.c(o.i.equals(jVar.h.h) ? 1 : 0);
                        this.z.b(iA2);
                    } else {
                        iA = mVar.a(fVar, i14, false);
                    }
                    this.S += iA;
                    this.T -= iA;
                    i3 = 1;
                }
            }
        }
        boolean z = lVar2.l[i8];
        if (lVar2.m) {
            int i15 = (z ? 1 : 0) | 1073741824;
            k kVarA = lVar2.o;
            if (kVarA == null) {
                kVarA = jVar.a(lVar2.a.a);
            }
            i2 = i15;
            aVar = kVarA.c;
        } else {
            i2 = z ? 1 : 0;
            aVar = null;
        }
        mVar.a(j4, i2, this.R, 0, aVar);
        while (!this.E.isEmpty()) {
            b bVarRemoveFirst = this.E.removeFirst();
            this.M -= bVarRemoveFirst.b;
            long jB2 = j4 + bVarRemoveFirst.a;
            ac acVar2 = this.A;
            if (acVar2 != null) {
                jB2 = acVar2.b(jB2);
            }
            for (com.anythink.expressad.exoplayer.e.m mVar2 : this.W) {
                mVar2.a(jB2, 1, bVarRemoveFirst.b, this.M, null);
            }
        }
        if (!this.Q.b()) {
            this.Q = null;
        }
        this.G = 3;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0223 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x05b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x05bc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0004 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x0004 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0192 A[LOOP:10: B:61:0x0192->B:63:0x0198, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021a  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.anythink.expressad.exoplayer.e.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(com.anythink.expressad.exoplayer.e.f fVar, com.anythink.expressad.exoplayer.e.j jVar) throws t {
        l lVar;
        ac acVar;
        int i2;
        int i3;
        m.a aVar;
        int iA;
        c cVar;
        int i4;
        long jN;
        long jN2;
        long j2;
        long jC;
        boolean z;
        com.anythink.expressad.exoplayer.e.f fVar2 = fVar;
        while (true) {
            int i5 = this.G;
            int i6 = 1;
            if (i5 != 0) {
                if (i5 != 1) {
                    long j3 = Long.MAX_VALUE;
                    if (i5 == 2) {
                        int size = this.w.size();
                        c cVarValueAt = null;
                        for (int i7 = 0; i7 < size; i7++) {
                            l lVar2 = this.w.valueAt(i7).b;
                            if (lVar2.r) {
                                long j4 = lVar2.d;
                                if (j4 < j3) {
                                    cVarValueAt = this.w.valueAt(i7);
                                    j3 = j4;
                                }
                            }
                        }
                        if (cVarValueAt == null) {
                            this.G = 3;
                        } else {
                            int iC = (int) (j3 - fVar.c());
                            if (iC < 0) {
                                throw new t("Offset to encryption data was negative.");
                            }
                            fVar2.c(iC);
                            l lVar3 = cVarValueAt.b;
                            fVar2.b(lVar3.q.a, 0, lVar3.p);
                            lVar3.q.c(0);
                            lVar3.r = false;
                        }
                    } else if (i5 != 3) {
                        c cVar2 = this.Q;
                        lVar = cVar2.b;
                        j jVar2 = cVar2.c;
                        com.anythink.expressad.exoplayer.e.m mVar = cVar2.a;
                        int i8 = cVar2.e;
                        long jB = lVar.b(i8) * 1000;
                        acVar = this.A;
                        if (acVar != null) {
                            jB = acVar.b(jB);
                        }
                        i2 = jVar2.l;
                        if (i2 != 0) {
                            while (true) {
                                int i9 = this.S;
                                int i10 = this.R;
                                if (i9 >= i10) {
                                    break;
                                }
                                this.S += mVar.a(fVar2, i10 - i9, false);
                            }
                        } else {
                            byte[] bArr = this.y.a;
                            bArr[0] = 0;
                            bArr[1] = 0;
                            bArr[2] = 0;
                            int i11 = i2 + 1;
                            int i12 = 4 - i2;
                            while (this.S < this.R) {
                                int i13 = this.T;
                                if (i13 == 0) {
                                    fVar2.b(bArr, i12, i11);
                                    this.y.c(0);
                                    this.T = this.y.m() - i6;
                                    this.x.c(0);
                                    mVar.a(this.x, 4);
                                    mVar.a(this.y, i6);
                                    this.U = this.X.length > 0 && p.a(jVar2.h.h, bArr[4]);
                                    this.S += 5;
                                    this.R += i12;
                                    i6 = 1;
                                } else {
                                    if (this.U) {
                                        this.z.a(i13);
                                        fVar2.b(this.z.a, 0, this.T);
                                        mVar.a(this.z, this.T);
                                        iA = this.T;
                                        s sVar = this.z;
                                        int iA2 = p.a(sVar.a, sVar.b());
                                        this.z.c(o.i.equals(jVar2.h.h) ? 1 : 0);
                                        this.z.b(iA2);
                                    } else {
                                        iA = mVar.a(fVar2, i13, false);
                                    }
                                    this.S += iA;
                                    this.T -= iA;
                                    i6 = 1;
                                }
                            }
                        }
                        boolean z3 = lVar.l[i8];
                        if (lVar.m) {
                            i3 = z3 ? 1 : 0;
                            aVar = null;
                        } else {
                            int i14 = (z3 ? 1 : 0) | 1073741824;
                            k kVarA = lVar.o;
                            if (kVarA == null) {
                                kVarA = jVar2.a(lVar.a.a);
                            }
                            i3 = i14;
                            aVar = kVarA.c;
                        }
                        mVar.a(jB, i3, this.R, 0, aVar);
                        while (!this.E.isEmpty()) {
                            b bVarRemoveFirst = this.E.removeFirst();
                            this.M -= bVarRemoveFirst.b;
                            long jB2 = bVarRemoveFirst.a + jB;
                            ac acVar2 = this.A;
                            if (acVar2 != null) {
                                jB2 = acVar2.b(jB2);
                            }
                            for (com.anythink.expressad.exoplayer.e.m mVar2 : this.W) {
                                mVar2.a(jB2, 1, bVarRemoveFirst.b, this.M, null);
                            }
                        }
                        if (!this.Q.b()) {
                            this.Q = null;
                        }
                        this.G = 3;
                        i6 = 1;
                        if (i6 == 0) {
                            return 0;
                        }
                    } else if (this.Q == null) {
                        SparseArray<c> sparseArray = this.w;
                        int size2 = sparseArray.size();
                        c cVar3 = null;
                        for (int i15 = 0; i15 < size2; i15++) {
                            c cVarValueAt2 = sparseArray.valueAt(i15);
                            int i16 = cVarValueAt2.g;
                            l lVar4 = cVarValueAt2.b;
                            if (i16 != lVar4.e) {
                                long j5 = lVar4.g[i16];
                                if (j5 < j3) {
                                    cVar3 = cVarValueAt2;
                                    j3 = j5;
                                }
                            }
                        }
                        if (cVar3 == null) {
                            int iC2 = (int) (this.L - fVar.c());
                            if (iC2 < 0) {
                                throw new t("Offset to end of mdat was negative.");
                            }
                            fVar2.c(iC2);
                            a();
                            i6 = 0;
                            if (i6 == 0) {
                            }
                        } else {
                            int iC3 = (int) (cVar3.b.g[cVar3.g] - fVar.c());
                            if (iC3 < 0) {
                                Log.w(j, "Ignoring negative offset to sample data.");
                                iC3 = 0;
                            }
                            fVar2.c(iC3);
                            this.Q = cVar3;
                            cVar = this.Q;
                            int[] iArr = cVar.b.i;
                            i4 = cVar.e;
                            int i17 = iArr[i4];
                            this.R = i17;
                            if (i4 >= cVar.h) {
                                fVar2.c(i17);
                                c.a(this.Q);
                                if (!this.Q.b()) {
                                    this.Q = null;
                                }
                                this.G = 3;
                                if (i6 == 0) {
                                }
                            } else {
                                if (cVar.c.i == 1) {
                                    this.R = i17 - 8;
                                    fVar2.c(8);
                                }
                                int iC4 = this.Q.c();
                                this.S = iC4;
                                this.R += iC4;
                                this.G = 4;
                                this.T = 0;
                                c cVar22 = this.Q;
                                lVar = cVar22.b;
                                j jVar22 = cVar22.c;
                                com.anythink.expressad.exoplayer.e.m mVar3 = cVar22.a;
                                int i82 = cVar22.e;
                                long jB3 = lVar.b(i82) * 1000;
                                acVar = this.A;
                                if (acVar != null) {
                                }
                                i2 = jVar22.l;
                                if (i2 != 0) {
                                }
                                boolean z32 = lVar.l[i82];
                                if (lVar.m) {
                                }
                                mVar3.a(jB3, i3, this.R, 0, aVar);
                                while (!this.E.isEmpty()) {
                                }
                                if (!this.Q.b()) {
                                }
                                this.G = 3;
                                i6 = 1;
                                if (i6 == 0) {
                                }
                            }
                        }
                    } else {
                        cVar = this.Q;
                        int[] iArr2 = cVar.b.i;
                        i4 = cVar.e;
                        int i172 = iArr2[i4];
                        this.R = i172;
                        if (i4 >= cVar.h) {
                        }
                    }
                } else {
                    int i18 = ((int) this.I) - this.J;
                    s sVar2 = this.K;
                    if (sVar2 != null) {
                        fVar2.b(sVar2.a, 8, i18);
                        a.b bVar = new a.b(this.H, this.K);
                        long jC2 = fVar.c();
                        if (this.D.isEmpty()) {
                            int i19 = bVar.aU;
                            if (i19 == com.anythink.expressad.exoplayer.e.a.a.F) {
                                s sVar3 = bVar.aV;
                                sVar3.c(8);
                                int iA3 = com.anythink.expressad.exoplayer.e.a.a.a(sVar3.i());
                                sVar3.d(4);
                                long jH = sVar3.h();
                                if (iA3 == 0) {
                                    jN = sVar3.h();
                                    jN2 = sVar3.h();
                                } else {
                                    jN = sVar3.n();
                                    jN2 = sVar3.n();
                                }
                                long j6 = jC2 + jN2;
                                long jA = af.a(jN, 1000000L, jH);
                                sVar3.d(2);
                                int iE = sVar3.e();
                                int[] iArr3 = new int[iE];
                                long[] jArr = new long[iE];
                                long[] jArr2 = new long[iE];
                                long[] jArr3 = new long[iE];
                                long jA2 = jA;
                                int i20 = 0;
                                while (i20 < iE) {
                                    int i21 = sVar3.i();
                                    if ((i21 & Integer.MIN_VALUE) != 0) {
                                        throw new t("Unhandled indirect reference");
                                    }
                                    long jH2 = sVar3.h();
                                    iArr3[i20] = i21 & Integer.MAX_VALUE;
                                    jArr[i20] = j6;
                                    jArr3[i20] = jA2;
                                    long j7 = jN + jH2;
                                    int i22 = i20;
                                    long[] jArr4 = jArr2;
                                    long[] jArr5 = jArr3;
                                    int i23 = iE;
                                    int[] iArr4 = iArr3;
                                    jA2 = af.a(j7, 1000000L, jH);
                                    jArr4[i22] = jA2 - jArr5[i22];
                                    sVar3.d(4);
                                    j6 += (long) iArr4[i22];
                                    jArr = jArr;
                                    jArr2 = jArr4;
                                    jArr3 = jArr5;
                                    i20 = i22 + 1;
                                    iArr3 = iArr4;
                                    jN = j7;
                                    iE = i23;
                                }
                                Pair pairCreate = Pair.create(Long.valueOf(jA), new com.anythink.expressad.exoplayer.e.a(iArr3, jArr, jArr2, jArr3));
                                this.P = ((Long) pairCreate.first).longValue();
                                this.V.a((com.anythink.expressad.exoplayer.e.k) pairCreate.second);
                                this.Y = true;
                            } else if (i19 == com.anythink.expressad.exoplayer.e.a.a.aL) {
                                s sVar4 = bVar.aV;
                                com.anythink.expressad.exoplayer.e.m[] mVarArr = this.W;
                                if (mVarArr != null && mVarArr.length != 0) {
                                    sVar4.c(12);
                                    int iA4 = sVar4.a();
                                    sVar4.p();
                                    sVar4.p();
                                    long jA3 = af.a(sVar4.h(), 1000000L, sVar4.h());
                                    for (com.anythink.expressad.exoplayer.e.m mVar4 : this.W) {
                                        sVar4.c(12);
                                        mVar4.a(sVar4, iA4);
                                    }
                                    long j8 = this.P;
                                    if (j8 != com.anythink.expressad.exoplayer.b.b) {
                                        long jB4 = j8 + jA3;
                                        ac acVar3 = this.A;
                                        if (acVar3 != null) {
                                            jB4 = acVar3.b(jB4);
                                        }
                                        for (com.anythink.expressad.exoplayer.e.m mVar5 : this.W) {
                                            mVar5.a(jB4, 1, iA4, 0, null);
                                        }
                                    } else {
                                        this.E.addLast(new b(jA3, iA4));
                                        this.M += iA4;
                                    }
                                }
                            }
                            fVar2 = fVar;
                        } else {
                            this.D.peek().a(bVar);
                        }
                    } else {
                        fVar2.c(i18);
                    }
                    a(fVar.c());
                }
            } else if (this.J != 0) {
                j2 = this.I;
                if (j2 != 1) {
                    fVar2.b(this.B.a, 8, 8);
                    this.J += 8;
                    jC = this.B.n();
                } else {
                    if (j2 == 0) {
                        long jD = fVar.d();
                        if (jD == -1 && !this.D.isEmpty()) {
                            jD = this.D.peek().aV;
                        }
                        if (jD != -1) {
                            jC = (jD - fVar.c()) + ((long) this.J);
                        }
                    }
                    if (this.I < this.J) {
                        throw new t("Atom size less than header length (unsupported).");
                    }
                    long jC3 = fVar.c() - ((long) this.J);
                    if (this.H == com.anythink.expressad.exoplayer.e.a.a.P) {
                        int size3 = this.w.size();
                        for (int i24 = 0; i24 < size3; i24++) {
                            l lVar5 = this.w.valueAt(i24).b;
                            lVar5.b = jC3;
                            lVar5.d = jC3;
                            lVar5.c = jC3;
                        }
                    }
                    int i25 = this.H;
                    if (i25 == com.anythink.expressad.exoplayer.e.a.a.m) {
                        this.Q = null;
                        this.L = this.I + jC3;
                        if (!this.Y) {
                            this.V.a(new k.b(this.O, jC3));
                            this.Y = true;
                        }
                        this.G = 2;
                    } else if (i25 == com.anythink.expressad.exoplayer.e.a.a.G || i25 == com.anythink.expressad.exoplayer.e.a.a.I || i25 == com.anythink.expressad.exoplayer.e.a.a.J || i25 == com.anythink.expressad.exoplayer.e.a.a.K || i25 == com.anythink.expressad.exoplayer.e.a.a.L || i25 == com.anythink.expressad.exoplayer.e.a.a.P || i25 == com.anythink.expressad.exoplayer.e.a.a.Q || i25 == com.anythink.expressad.exoplayer.e.a.a.R || i25 == com.anythink.expressad.exoplayer.e.a.a.U) {
                        long jC4 = (fVar.c() + this.I) - 8;
                        this.D.push(new a.C0113a(this.H, jC4));
                        if (this.I == this.J) {
                            a(jC4);
                        } else {
                            a();
                        }
                    } else {
                        if (i25 == com.anythink.expressad.exoplayer.e.a.a.X || i25 == com.anythink.expressad.exoplayer.e.a.a.W || i25 == com.anythink.expressad.exoplayer.e.a.a.H || i25 == com.anythink.expressad.exoplayer.e.a.a.F || i25 == com.anythink.expressad.exoplayer.e.a.a.Y || i25 == com.anythink.expressad.exoplayer.e.a.a.B || i25 == com.anythink.expressad.exoplayer.e.a.a.C || i25 == com.anythink.expressad.exoplayer.e.a.a.T || i25 == com.anythink.expressad.exoplayer.e.a.a.D || i25 == com.anythink.expressad.exoplayer.e.a.a.E || i25 == com.anythink.expressad.exoplayer.e.a.a.Z || i25 == com.anythink.expressad.exoplayer.e.a.a.ah || i25 == com.anythink.expressad.exoplayer.e.a.a.ai || i25 == com.anythink.expressad.exoplayer.e.a.a.am || i25 == com.anythink.expressad.exoplayer.e.a.a.al || i25 == com.anythink.expressad.exoplayer.e.a.a.aj || i25 == com.anythink.expressad.exoplayer.e.a.a.ak || i25 == com.anythink.expressad.exoplayer.e.a.a.V || i25 == com.anythink.expressad.exoplayer.e.a.a.S || i25 == com.anythink.expressad.exoplayer.e.a.a.aL) {
                            if (this.J != 8) {
                                throw new t("Leaf atom defines extended atom size (unsupported).");
                            }
                            long j9 = this.I;
                            if (j9 > 2147483647L) {
                                throw new t("Leaf atom with length > 2147483647 (unsupported).");
                            }
                            s sVar5 = new s((int) j9);
                            this.K = sVar5;
                            System.arraycopy(this.B.a, 0, sVar5.a, 0, 8);
                        } else {
                            if (this.I > 2147483647L) {
                                throw new t("Skipping atom with length > 2147483647 (unsupported).");
                            }
                            this.K = null;
                        }
                        this.G = 1;
                        z = true;
                        if (!z) {
                            return -1;
                        }
                    }
                    z = true;
                    if (!z) {
                    }
                }
                this.I = jC;
                if (this.I < this.J) {
                }
            } else if (fVar2.a(this.B.a, 0, 8, true)) {
                this.J = 8;
                this.B.c(0);
                this.I = this.B.h();
                this.H = this.B.i();
                j2 = this.I;
                if (j2 != 1) {
                }
                this.I = jC;
                if (this.I < this.J) {
                }
            } else {
                z = false;
                if (!z) {
                }
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final void a(long j2, long j3) {
        int size = this.w.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.w.valueAt(i2).a();
        }
        this.E.clear();
        this.M = 0;
        this.N = j3;
        this.D.clear();
        a();
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final void a(com.anythink.expressad.exoplayer.e.g gVar) {
        this.V = gVar;
        j jVar = this.t;
        if (jVar != null) {
            c cVar = new c(gVar.a(0, jVar.d));
            cVar.a(this.t, new com.anythink.expressad.exoplayer.e.a.c(0, 0, 0, 0));
            this.w.put(0, cVar);
            b();
            this.V.c_();
        }
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final boolean a(com.anythink.expressad.exoplayer.e.f fVar) {
        return i.a(fVar);
    }

    @Override // com.anythink.expressad.exoplayer.e.e
    public final void c() {
    }
}
