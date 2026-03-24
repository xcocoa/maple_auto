package com.anythink.expressad.exoplayer.h.b;

import com.anythink.expressad.exoplayer.j.k;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.m;

/* JADX INFO: loaded from: classes.dex */
public final class h extends a {
    private final int k;
    private final long l;
    private final d m;
    private volatile int n;
    private volatile boolean o;
    private volatile boolean p;

    private h(com.anythink.expressad.exoplayer.j.h hVar, k kVar, m mVar, int i, Object obj, long j, long j2, long j3, long j4, int i2, long j5, d dVar) {
        super(hVar, kVar, mVar, i, obj, j, j2, j3, j4);
        this.k = i2;
        this.l = j5;
        this.m = dVar;
    }

    @Override // com.anythink.expressad.exoplayer.j.t.c
    public final void a() {
        this.o = true;
    }

    @Override // com.anythink.expressad.exoplayer.j.t.c
    public final void b() {
        k kVarA = this.b.a(this.n);
        try {
            com.anythink.expressad.exoplayer.j.h hVar = this.i;
            com.anythink.expressad.exoplayer.e.b bVar = new com.anythink.expressad.exoplayer.e.b(hVar, kVarA.e, hVar.a(kVarA));
            if (this.n == 0) {
                b bVarC = c();
                bVarC.a(this.l);
                d dVar = this.m;
                long j = this.a;
                dVar.a(bVarC, j == com.anythink.expressad.exoplayer.b.b ? 0L : j - this.l);
            }
            try {
                com.anythink.expressad.exoplayer.e.e eVar = this.m.a;
                int iA = 0;
                while (iA == 0 && !this.o) {
                    iA = eVar.a(bVar, (com.anythink.expressad.exoplayer.e.j) null);
                }
                com.anythink.expressad.exoplayer.k.a.b(iA != 1);
                af.a(this.i);
                this.p = true;
            } finally {
                this.n = (int) (bVar.c() - this.b.e);
            }
        } catch (Throwable th) {
            af.a(this.i);
            throw th;
        }
    }

    @Override // com.anythink.expressad.exoplayer.h.b.c
    public final long d() {
        return this.n;
    }

    @Override // com.anythink.expressad.exoplayer.h.b.i
    public final long e() {
        return this.j + ((long) this.k);
    }

    @Override // com.anythink.expressad.exoplayer.h.b.i
    public final boolean f() {
        return this.p;
    }
}
