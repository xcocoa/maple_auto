package com.anythink.expressad.exoplayer;

import com.anythink.expressad.exoplayer.h.s;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public final s.a a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final boolean f;
    public final boolean g;

    public r(s.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z3) {
        this.a = aVar;
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = z;
        this.g = z3;
    }

    private r a(long j) {
        return new r(this.a, j, this.c, this.d, this.e, this.f, this.g);
    }

    public final r a() {
        return new r(this.a.a(-1), this.b, this.c, this.d, this.e, this.f, this.g);
    }
}
