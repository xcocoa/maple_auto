package com.anythink.expressad.exoplayer.h.b;

import android.util.Log;
import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.b.g;
import com.anythink.expressad.exoplayer.h.t;
import com.anythink.expressad.exoplayer.h.x;
import com.anythink.expressad.exoplayer.h.y;
import com.anythink.expressad.exoplayer.h.z;
import com.anythink.expressad.exoplayer.j.t;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.m;
import com.anythink.expressad.exoplayer.n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f<T extends g> implements y, z, t.a<c>, t.d {
    private static final String d = "ChunkSampleStream";
    public final int a;
    public long b;
    public boolean c;
    private final int[] e;
    private final m[] f;
    private final boolean[] g;
    private final T h;
    private final z.a<f<T>> i;
    private final t.a j;
    private final int k;
    private final com.anythink.expressad.exoplayer.j.t l = new com.anythink.expressad.exoplayer.j.t("Loader:ChunkSampleStream");
    private final e m = new e();
    private final ArrayList<com.anythink.expressad.exoplayer.h.b.a> n;
    private final List<com.anythink.expressad.exoplayer.h.b.a> o;
    private final x p;
    private final x[] q;
    private final com.anythink.expressad.exoplayer.h.b.b r;
    private m s;

    @Nullable
    private b<T> t;
    private long u;
    private long v;

    public final class a implements y {
        public final f<T> a;
        private final x c;
        private final int d;
        private boolean e;

        public a(f<T> fVar, x xVar, int i) {
            this.a = fVar;
            this.c = xVar;
            this.d = i;
        }

        private void a() {
            com.anythink.expressad.exoplayer.k.a.b(f.this.g[this.d]);
            f.this.g[this.d] = false;
        }

        private void d() {
            if (this.e) {
                return;
            }
            f.this.j.a(f.this.e[this.d], f.this.f[this.d], 0, (Object) null, f.this.v);
            this.e = true;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final int a(long j) {
            int iA;
            if (!f.this.c || j <= this.c.g()) {
                iA = this.c.a(j, true);
                if (iA == -1) {
                    iA = 0;
                }
            } else {
                iA = this.c.k();
            }
            if (iA > 0) {
                d();
            }
            return iA;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final int a(n nVar, com.anythink.expressad.exoplayer.c.e eVar, boolean z) {
            if (f.this.a()) {
                return -3;
            }
            x xVar = this.c;
            f fVar = f.this;
            int iA = xVar.a(nVar, eVar, z, fVar.c, fVar.b);
            if (iA == -4) {
                d();
            }
            return iA;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final boolean b() {
            f fVar = f.this;
            if (fVar.c) {
                return true;
            }
            return !fVar.a() && this.c.c();
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final void c() {
        }
    }

    public interface b<T extends g> {
        void a();
    }

    private f(int i, int[] iArr, m[] mVarArr, T t, z.a<f<T>> aVar, com.anythink.expressad.exoplayer.j.b bVar, long j, int i2, t.a aVar2) {
        this.a = i;
        this.e = iArr;
        this.f = mVarArr;
        this.h = t;
        this.i = aVar;
        this.j = aVar2;
        this.k = i2;
        ArrayList<com.anythink.expressad.exoplayer.h.b.a> arrayList = new ArrayList<>();
        this.n = arrayList;
        this.o = Collections.unmodifiableList(arrayList);
        int i3 = 0;
        int length = iArr == null ? 0 : iArr.length;
        this.q = new x[length];
        this.g = new boolean[length];
        int i4 = length + 1;
        int[] iArr2 = new int[i4];
        x[] xVarArr = new x[i4];
        x xVar = new x(bVar);
        this.p = xVar;
        iArr2[0] = i;
        xVarArr[0] = xVar;
        while (i3 < length) {
            x xVar2 = new x(bVar);
            this.q[i3] = xVar2;
            int i5 = i3 + 1;
            xVarArr[i5] = xVar2;
            iArr2[i5] = iArr[i3];
            i3 = i5;
        }
        this.r = new com.anythink.expressad.exoplayer.h.b.b(iArr2, xVarArr);
        this.u = j;
        this.v = j;
    }

    private int a(c cVar, long j, long j2, IOException iOException) {
        boolean z;
        long jD = cVar.d();
        boolean z3 = cVar instanceof com.anythink.expressad.exoplayer.h.b.a;
        int size = this.n.size() - 1;
        boolean z4 = (jD != 0 && z3 && a(size)) ? false : true;
        if (!this.h.f()) {
            z = false;
        } else if (z4) {
            if (z3) {
                com.anythink.expressad.exoplayer.k.a.b(d(size) == cVar);
                if (this.n.isEmpty()) {
                    this.u = this.v;
                }
            }
            z = true;
        } else {
            Log.w(d, "Ignoring attempt to cancel non-cancelable load.");
            z = false;
        }
        this.j.a(cVar.b, cVar.c, this.a, cVar.d, cVar.e, cVar.f, cVar.g, cVar.h, j, j2, jD, iOException, z);
        if (!z) {
            return 0;
        }
        this.i.a(this);
        return 2;
    }

    private f<T>.a a(long j, int i) {
        for (int i2 = 0; i2 < this.q.length; i2++) {
            if (this.e[i2] == i) {
                com.anythink.expressad.exoplayer.k.a.b(!this.g[i2]);
                this.g[i2] = true;
                this.q[i2].i();
                this.q[i2].a(j, true);
                return new a(this, this.q[i2], i2);
            }
        }
        throw new IllegalStateException();
    }

    private void a(int i, int i2) {
        int iB = b(i - i2, 0);
        int iB2 = i2 == 1 ? iB : b(i - 1, iB);
        while (iB <= iB2) {
            c(iB);
            iB++;
        }
    }

    private void a(long j, boolean z) {
        int iD = this.p.d();
        this.p.a(j, z, true);
        int iD2 = this.p.d();
        if (iD2 > iD) {
            long jH = this.p.h();
            int i = 0;
            while (true) {
                x[] xVarArr = this.q;
                if (i >= xVarArr.length) {
                    break;
                }
                xVarArr[i].a(jH, z, this.g[i]);
                i++;
            }
            int iB = b(iD2, 0);
            if (iB > 0) {
                af.a((List) this.n, 0, iB);
            }
        }
    }

    private void a(c cVar, long j, long j2) {
        this.j.a(cVar.b, cVar.c, this.a, cVar.d, cVar.e, cVar.f, cVar.g, cVar.h, j, j2, cVar.d());
        this.i.a(this);
    }

    private void a(c cVar, long j, long j2, boolean z) {
        this.j.b(cVar.b, cVar.c, this.a, cVar.d, cVar.e, cVar.f, cVar.g, cVar.h, j, j2, cVar.d());
        if (z) {
            return;
        }
        this.p.a();
        for (x xVar : this.q) {
            xVar.a();
        }
        this.i.a(this);
    }

    private void a(@Nullable b<T> bVar) {
        this.t = bVar;
        this.p.j();
        for (x xVar : this.q) {
            xVar.j();
        }
        this.l.a(this);
    }

    private boolean a(int i) {
        int iE;
        com.anythink.expressad.exoplayer.h.b.a aVar = this.n.get(i);
        if (this.p.e() > aVar.a(0)) {
            return true;
        }
        int i2 = 0;
        do {
            x[] xVarArr = this.q;
            if (i2 >= xVarArr.length) {
                return false;
            }
            iE = xVarArr[i2].e();
            i2++;
        } while (iE <= aVar.a(i2));
        return true;
    }

    private static boolean a(c cVar) {
        return cVar instanceof com.anythink.expressad.exoplayer.h.b.a;
    }

    private int b(int i, int i2) {
        do {
            i2++;
            if (i2 >= this.n.size()) {
                return this.n.size() - 1;
            }
        } while (this.n.get(i2).a(0) <= i);
        return i2 - 1;
    }

    private void b(int i) {
        int iB = b(i, 0);
        if (iB > 0) {
            af.a((List) this.n, 0, iB);
        }
    }

    private void b(long j) {
        boolean zB;
        long j2;
        this.v = j;
        this.p.i();
        if (a()) {
            zB = false;
        } else {
            com.anythink.expressad.exoplayer.h.b.a aVar = null;
            int i = 0;
            while (true) {
                if (i >= this.n.size()) {
                    break;
                }
                com.anythink.expressad.exoplayer.h.b.a aVar2 = this.n.get(i);
                long j3 = aVar2.g;
                if (j3 == j && aVar2.a == com.anythink.expressad.exoplayer.b.b) {
                    aVar = aVar2;
                    break;
                } else if (j3 > j) {
                    break;
                } else {
                    i++;
                }
            }
            if (aVar != null) {
                zB = this.p.b(aVar.a(0));
                j2 = Long.MIN_VALUE;
            } else {
                zB = this.p.a(j, (j > e() ? 1 : (j == e() ? 0 : -1)) < 0) != -1;
                j2 = this.v;
            }
            this.b = j2;
        }
        if (zB) {
            for (x xVar : this.q) {
                xVar.i();
                xVar.a(j, false);
            }
            return;
        }
        this.u = j;
        this.c = false;
        this.n.clear();
        if (this.l.a()) {
            this.l.b();
            return;
        }
        this.p.a();
        for (x xVar2 : this.q) {
            xVar2.a();
        }
    }

    private void c(int i) {
        com.anythink.expressad.exoplayer.h.b.a aVar = this.n.get(i);
        m mVar = aVar.d;
        if (!mVar.equals(this.s)) {
            this.j.a(this.a, mVar, aVar.e, aVar.f, aVar.g);
        }
        this.s = mVar;
    }

    private com.anythink.expressad.exoplayer.h.b.a d(int i) {
        com.anythink.expressad.exoplayer.h.b.a aVar = this.n.get(i);
        ArrayList<com.anythink.expressad.exoplayer.h.b.a> arrayList = this.n;
        af.a((List) arrayList, i, arrayList.size());
        x xVar = this.p;
        int i2 = 0;
        while (true) {
            xVar.a(aVar.a(i2));
            x[] xVarArr = this.q;
            if (i2 >= xVarArr.length) {
                return aVar;
            }
            xVar = xVarArr[i2];
            i2++;
        }
    }

    private T f() {
        return this.h;
    }

    private long h() {
        return this.h.a();
    }

    private void i() {
        this.t = null;
        this.p.j();
        for (x xVar : this.q) {
            xVar.j();
        }
        this.l.a(this);
    }

    private com.anythink.expressad.exoplayer.h.b.a j() {
        return this.n.get(r0.size() - 1);
    }

    @Override // com.anythink.expressad.exoplayer.h.y
    public final int a(long j) {
        int iK = 0;
        if (a()) {
            return 0;
        }
        if (!this.c || j <= this.p.g()) {
            int iA = this.p.a(j, true);
            if (iA != -1) {
                iK = iA;
            }
        } else {
            iK = this.p.k();
        }
        if (iK > 0) {
            a(this.p.e(), iK);
        }
        return iK;
    }

    @Override // com.anythink.expressad.exoplayer.j.t.a
    public final /* synthetic */ int a(t.c cVar, long j, long j2, IOException iOException) {
        boolean z;
        c cVar2 = (c) cVar;
        long jD = cVar2.d();
        boolean z3 = cVar2 instanceof com.anythink.expressad.exoplayer.h.b.a;
        int size = this.n.size() - 1;
        boolean z4 = (jD != 0 && z3 && a(size)) ? false : true;
        if (!this.h.f()) {
            z = false;
        } else if (z4) {
            if (z3) {
                com.anythink.expressad.exoplayer.k.a.b(d(size) == cVar2);
                if (this.n.isEmpty()) {
                    this.u = this.v;
                }
            }
            z = true;
        } else {
            Log.w(d, "Ignoring attempt to cancel non-cancelable load.");
            z = false;
        }
        this.j.a(cVar2.b, cVar2.c, this.a, cVar2.d, cVar2.e, cVar2.f, cVar2.g, cVar2.h, j, j2, jD, iOException, z);
        if (!z) {
            return 0;
        }
        this.i.a(this);
        return 2;
    }

    @Override // com.anythink.expressad.exoplayer.h.y
    public final int a(n nVar, com.anythink.expressad.exoplayer.c.e eVar, boolean z) {
        if (a()) {
            return -3;
        }
        int iA = this.p.a(nVar, eVar, z, this.c, this.b);
        if (iA == -4) {
            a(this.p.e(), 1);
        }
        return iA;
    }

    @Override // com.anythink.expressad.exoplayer.j.t.a
    public final /* synthetic */ void a(t.c cVar, long j, long j2) {
        c cVar2 = (c) cVar;
        this.j.a(cVar2.b, cVar2.c, this.a, cVar2.d, cVar2.e, cVar2.f, cVar2.g, cVar2.h, j, j2, cVar2.d());
        this.i.a(this);
    }

    @Override // com.anythink.expressad.exoplayer.j.t.a
    public final /* synthetic */ void a(t.c cVar, long j, long j2, boolean z) {
        c cVar2 = (c) cVar;
        this.j.b(cVar2.b, cVar2.c, this.a, cVar2.d, cVar2.e, cVar2.f, cVar2.g, cVar2.h, j, j2, cVar2.d());
        if (z) {
            return;
        }
        this.p.a();
        for (x xVar : this.q) {
            xVar.a();
        }
        this.i.a(this);
    }

    public final boolean a() {
        return this.u != com.anythink.expressad.exoplayer.b.b;
    }

    @Override // com.anythink.expressad.exoplayer.h.z
    public final void a_(long j) {
        int size;
        int iC;
        if (this.l.a() || a() || (size = this.n.size()) <= (iC = this.h.c())) {
            return;
        }
        while (true) {
            if (iC >= size) {
                iC = size;
                break;
            } else if (!a(iC)) {
                break;
            } else {
                iC++;
            }
        }
        if (iC == size) {
            return;
        }
        long j2 = j().h;
        com.anythink.expressad.exoplayer.h.b.a aVarD = d(iC);
        if (this.n.isEmpty()) {
            this.u = this.v;
        }
        this.c = false;
        this.j.a(this.a, aVarD.g, j2);
    }

    @Override // com.anythink.expressad.exoplayer.h.y
    public final boolean b() {
        if (this.c) {
            return true;
        }
        return !a() && this.p.c();
    }

    @Override // com.anythink.expressad.exoplayer.h.y
    public final void c() throws IOException {
        this.l.c();
        this.l.a();
    }

    @Override // com.anythink.expressad.exoplayer.h.z
    public final boolean c(long j) {
        if (this.c || this.l.a()) {
            return false;
        }
        boolean zA = a();
        if (!zA) {
            j();
        }
        e eVar = this.m;
        boolean z = eVar.b;
        c cVar = eVar.a;
        eVar.a = null;
        eVar.b = false;
        if (z) {
            this.u = com.anythink.expressad.exoplayer.b.b;
            this.c = true;
            return true;
        }
        if (cVar == null) {
            return false;
        }
        if (cVar instanceof com.anythink.expressad.exoplayer.h.b.a) {
            com.anythink.expressad.exoplayer.h.b.a aVar = (com.anythink.expressad.exoplayer.h.b.a) cVar;
            if (zA) {
                long j2 = aVar.g;
                long j3 = this.u;
                if (j2 == j3) {
                    j3 = Long.MIN_VALUE;
                }
                this.b = j3;
                this.u = com.anythink.expressad.exoplayer.b.b;
            }
            aVar.a(this.r);
            this.n.add(aVar);
        }
        this.j.a(cVar.b, cVar.c, this.a, cVar.d, cVar.e, cVar.f, cVar.g, cVar.h, this.l.a(cVar, this, this.k));
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.h.z
    public final long d() {
        if (this.c) {
            return Long.MIN_VALUE;
        }
        if (a()) {
            return this.u;
        }
        long jMax = this.v;
        com.anythink.expressad.exoplayer.h.b.a aVarJ = j();
        if (!aVarJ.f()) {
            if (this.n.size() > 1) {
                aVarJ = this.n.get(r2.size() - 2);
            } else {
                aVarJ = null;
            }
        }
        if (aVarJ != null) {
            jMax = Math.max(jMax, aVarJ.h);
        }
        return Math.max(jMax, this.p.g());
    }

    @Override // com.anythink.expressad.exoplayer.h.z
    public final long e() {
        if (a()) {
            return this.u;
        }
        if (this.c) {
            return Long.MIN_VALUE;
        }
        return j().h;
    }

    @Override // com.anythink.expressad.exoplayer.j.t.d
    public final void g() {
        this.p.a();
        for (x xVar : this.q) {
            xVar.a();
        }
    }
}
