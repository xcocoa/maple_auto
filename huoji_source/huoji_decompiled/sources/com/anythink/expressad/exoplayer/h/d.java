package com.anythink.expressad.exoplayer.h;

import com.anythink.expressad.exoplayer.h.r;

/* JADX INFO: loaded from: classes.dex */
public final class d implements r, r.a {
    public final r a;
    public long b;
    public long c;
    private r.a d;
    private a[] e = new a[0];
    private long f;

    public final class a implements y {
        public final y a;
        private boolean c;

        public a(y yVar) {
            this.a = yVar;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final int a(long j) {
            if (d.this.f()) {
                return -3;
            }
            return this.a.a(j);
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final int a(com.anythink.expressad.exoplayer.n nVar, com.anythink.expressad.exoplayer.c.e eVar, boolean z) {
            if (d.this.f()) {
                return -3;
            }
            if (this.c) {
                eVar.a(4);
                return -4;
            }
            int iA = this.a.a(nVar, eVar, z);
            if (iA == -5) {
                com.anythink.expressad.exoplayer.m mVar = nVar.a;
                int i = mVar.x;
                if (i != 0 || mVar.y != 0) {
                    d dVar = d.this;
                    if (dVar.b != 0) {
                        i = 0;
                    }
                    nVar.a = mVar.a(i, dVar.c == Long.MIN_VALUE ? mVar.y : 0);
                }
                return -5;
            }
            d dVar2 = d.this;
            long j = dVar2.c;
            if (j == Long.MIN_VALUE || ((iA != -4 || eVar.f < j) && !(iA == -3 && dVar2.d() == Long.MIN_VALUE))) {
                return iA;
            }
            eVar.a();
            eVar.a(4);
            this.c = true;
            return -4;
        }

        public final void a() {
            this.c = false;
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final boolean b() {
            return !d.this.f() && this.a.b();
        }

        @Override // com.anythink.expressad.exoplayer.h.y
        public final void c() {
            this.a.c();
        }
    }

    public d(r rVar, boolean z, long j, long j2) {
        this.a = rVar;
        this.f = z ? j : com.anythink.expressad.exoplayer.b.b;
        this.b = j;
        this.c = j2;
    }

    private static boolean a(long j, com.anythink.expressad.exoplayer.i.f[] fVarArr) {
        if (j != 0) {
            for (com.anythink.expressad.exoplayer.i.f fVar : fVarArr) {
                if (fVar != null && !com.anythink.expressad.exoplayer.k.o.a(fVar.h().h)) {
                    return true;
                }
            }
        }
        return false;
    }

    private com.anythink.expressad.exoplayer.ac b(long j, com.anythink.expressad.exoplayer.ac acVar) {
        long jA = com.anythink.expressad.exoplayer.k.af.a(acVar.f, j - this.b);
        long j2 = acVar.g;
        long j3 = this.c;
        long jA2 = com.anythink.expressad.exoplayer.k.af.a(j2, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (jA == acVar.f && jA2 == acVar.g) ? acVar : new com.anythink.expressad.exoplayer.ac(jA, jA2);
    }

    private void g() {
        this.d.a(this);
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long a(long j, com.anythink.expressad.exoplayer.ac acVar) {
        long j2 = this.b;
        if (j == j2) {
            return j2;
        }
        long jA = com.anythink.expressad.exoplayer.k.af.a(acVar.f, j - j2);
        long j3 = acVar.g;
        long j4 = this.c;
        long jA2 = com.anythink.expressad.exoplayer.k.af.a(j3, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j);
        if (jA != acVar.f || jA2 != acVar.g) {
            acVar = new com.anythink.expressad.exoplayer.ac(jA, jA2);
        }
        return this.a.a(j, acVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0086  */
    @Override // com.anythink.expressad.exoplayer.h.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(com.anythink.expressad.exoplayer.i.f[] fVarArr, boolean[] zArr, y[] yVarArr, boolean[] zArr2, long j) {
        long j2;
        boolean z;
        this.e = new a[yVarArr.length];
        y[] yVarArr2 = new y[yVarArr.length];
        int i = 0;
        while (true) {
            y yVar = null;
            if (i >= yVarArr.length) {
                break;
            }
            a[] aVarArr = this.e;
            aVarArr[i] = (a) yVarArr[i];
            if (aVarArr[i] != null) {
                yVar = aVarArr[i].a;
            }
            yVarArr2[i] = yVar;
            i++;
        }
        long jA = this.a.a(fVarArr, zArr, yVarArr2, zArr2, j);
        boolean z3 = true;
        if (f()) {
            long j3 = this.b;
            if (j != j3) {
                j2 = com.anythink.expressad.exoplayer.b.b;
            } else if (j3 != 0) {
                for (com.anythink.expressad.exoplayer.i.f fVar : fVarArr) {
                    if (fVar != null && !com.anythink.expressad.exoplayer.k.o.a(fVar.h().h)) {
                        z = true;
                        break;
                    }
                }
                z = false;
                if (!z) {
                    j2 = jA;
                }
            } else {
                z = false;
                if (!z) {
                }
            }
        }
        this.f = j2;
        if (jA != j) {
            if (jA >= this.b) {
                long j4 = this.c;
                if (j4 != Long.MIN_VALUE && jA > j4) {
                    z3 = false;
                }
            }
        }
        com.anythink.expressad.exoplayer.k.a.b(z3);
        for (int i2 = 0; i2 < yVarArr.length; i2++) {
            if (yVarArr2[i2] == null) {
                this.e[i2] = null;
            } else if (yVarArr[i2] == null || this.e[i2].a != yVarArr2[i2]) {
                this.e[i2] = new a(yVarArr2[i2]);
            }
            yVarArr[i2] = this.e[i2];
        }
        return jA;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a() {
        this.a.a();
    }

    public final void a(long j, long j2) {
        this.b = j;
        this.c = j2;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a(long j, boolean z) {
        this.a.a(j, z);
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final void a(r.a aVar, long j) {
        this.d = aVar;
        this.a.a(this, j);
    }

    @Override // com.anythink.expressad.exoplayer.h.r.a
    public final void a(r rVar) {
        this.d.a((r) this);
    }

    @Override // com.anythink.expressad.exoplayer.h.z.a
    public final /* bridge */ /* synthetic */ void a(z zVar) {
        this.d.a(this);
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final void a_(long j) {
        this.a.a_(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0034  */
    @Override // com.anythink.expressad.exoplayer.h.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long b(long j) {
        this.f = com.anythink.expressad.exoplayer.b.b;
        boolean z = false;
        for (a aVar : this.e) {
            if (aVar != null) {
                aVar.a();
            }
        }
        long jB = this.a.b(j);
        if (jB == j) {
            z = true;
        } else if (jB >= this.b) {
            long j2 = this.c;
            if (j2 == Long.MIN_VALUE || jB <= j2) {
            }
        }
        com.anythink.expressad.exoplayer.k.a.b(z);
        return jB;
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final af b() {
        return this.a.b();
    }

    @Override // com.anythink.expressad.exoplayer.h.r
    public final long c() {
        if (f()) {
            long j = this.f;
            this.f = com.anythink.expressad.exoplayer.b.b;
            long jC = c();
            return jC != com.anythink.expressad.exoplayer.b.b ? jC : j;
        }
        long jC2 = this.a.c();
        if (jC2 == com.anythink.expressad.exoplayer.b.b) {
            return com.anythink.expressad.exoplayer.b.b;
        }
        boolean z = true;
        com.anythink.expressad.exoplayer.k.a.b(jC2 >= this.b);
        long j2 = this.c;
        if (j2 != Long.MIN_VALUE && jC2 > j2) {
            z = false;
        }
        com.anythink.expressad.exoplayer.k.a.b(z);
        return jC2;
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final boolean c(long j) {
        return this.a.c(j);
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final long d() {
        long jD = this.a.d();
        if (jD != Long.MIN_VALUE) {
            long j = this.c;
            if (j == Long.MIN_VALUE || jD < j) {
                return jD;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.anythink.expressad.exoplayer.h.r, com.anythink.expressad.exoplayer.h.z
    public final long e() {
        long jE = this.a.e();
        if (jE != Long.MIN_VALUE) {
            long j = this.c;
            if (j == Long.MIN_VALUE || jE < j) {
                return jE;
            }
        }
        return Long.MIN_VALUE;
    }

    public final boolean f() {
        return this.f != com.anythink.expressad.exoplayer.b.b;
    }
}
