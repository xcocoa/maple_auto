package com.anythink.expressad.exoplayer;

import com.anythink.expressad.exoplayer.k.af;

/* JADX INFO: loaded from: classes.dex */
public final class d implements p {
    public static final int a = 15000;
    public static final int b = 50000;
    public static final int c = 2500;
    public static final int d = 5000;
    public static final int e = -1;
    public static final boolean f = true;
    private final com.anythink.expressad.exoplayer.j.l g;
    private final long h;
    private final long i;
    private final long j;
    private final long k;
    private final int l;
    private final boolean m;
    private final com.anythink.expressad.exoplayer.k.v n;
    private int o;
    private boolean p;

    public static final class a {
        private com.anythink.expressad.exoplayer.j.l a = null;
        private int b = 15000;
        private int c = d.b;
        private int d = 2500;
        private int e = 5000;
        private int f = -1;
        private boolean g = true;
        private com.anythink.expressad.exoplayer.k.v h = null;

        private a a(int i) {
            this.f = i;
            return this;
        }

        private a a(int i, int i2, int i3, int i4) {
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            return this;
        }

        private a a(com.anythink.expressad.exoplayer.j.l lVar) {
            this.a = lVar;
            return this;
        }

        private a a(com.anythink.expressad.exoplayer.k.v vVar) {
            this.h = vVar;
            return this;
        }

        private a a(boolean z) {
            this.g = z;
            return this;
        }

        private d a() {
            if (this.a == null) {
                this.a = new com.anythink.expressad.exoplayer.j.l((byte) 0);
            }
            return new d(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }
    }

    public d() {
        this(new com.anythink.expressad.exoplayer.j.l((byte) 0));
    }

    @Deprecated
    private d(com.anythink.expressad.exoplayer.j.l lVar) {
        this(lVar, (byte) 0);
    }

    @Deprecated
    private d(com.anythink.expressad.exoplayer.j.l lVar, byte b2) {
        this(lVar, 15000, b, 2500, 5000, -1, true, null);
    }

    @Deprecated
    public d(com.anythink.expressad.exoplayer.j.l lVar, int i, int i2, int i3, int i4, int i5, boolean z, com.anythink.expressad.exoplayer.k.v vVar) {
        a(i3, 0, "bufferForPlaybackMs", "0");
        a(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(i, i3, "minBufferMs", "bufferForPlaybackMs");
        a(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        a(i2, i, "maxBufferMs", "minBufferMs");
        this.g = lVar;
        this.h = ((long) i) * 1000;
        this.i = ((long) i2) * 1000;
        this.j = ((long) i3) * 1000;
        this.k = ((long) i4) * 1000;
        this.l = i5;
        this.m = z;
        this.n = vVar;
    }

    private static void a(int i, int i2, String str, String str2) {
        com.anythink.expressad.exoplayer.k.a.a(i >= i2, str + " cannot be less than " + str2);
    }

    private void a(boolean z) {
        this.o = 0;
        com.anythink.expressad.exoplayer.k.v vVar = this.n;
        if (vVar != null && this.p) {
            vVar.c();
        }
        this.p = false;
        if (z) {
            this.g.e();
        }
    }

    private static int b(y[] yVarArr, com.anythink.expressad.exoplayer.i.g gVar) {
        int iG = 0;
        for (int i = 0; i < yVarArr.length; i++) {
            if (gVar.a(i) != null) {
                iG += af.g(yVarArr[i].a());
            }
        }
        return iG;
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final void a() {
        a(false);
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final void a(y[] yVarArr, com.anythink.expressad.exoplayer.i.g gVar) {
        int i = this.l;
        if (i == -1) {
            int iG = 0;
            for (int i2 = 0; i2 < yVarArr.length; i2++) {
                if (gVar.a(i2) != null) {
                    iG += af.g(yVarArr[i2].a());
                }
            }
            i = iG;
        }
        this.o = i;
        this.g.a(i);
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final boolean a(long j, float f2) {
        boolean z;
        boolean z3 = true;
        boolean z4 = this.g.c() >= this.o;
        boolean z5 = this.p;
        long jMin = this.h;
        if (f2 > 1.0f) {
            jMin = Math.min(af.a(jMin, f2), this.i);
        }
        if (j < jMin) {
            if (!this.m && z4) {
                z3 = false;
            }
            this.p = z3;
        } else if (j > this.i || z4) {
            this.p = false;
        }
        com.anythink.expressad.exoplayer.k.v vVar = this.n;
        if (vVar != null && (z = this.p) != z5) {
            if (z) {
                vVar.a();
            } else {
                vVar.c();
            }
        }
        return this.p;
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final boolean a(long j, float f2, boolean z) {
        long jB = af.b(j, f2);
        long j2 = z ? this.k : this.j;
        if (j2 <= 0 || jB >= j2) {
            return true;
        }
        return !this.m && this.g.c() >= this.o;
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final void b() {
        a(true);
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final void c() {
        a(true);
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final com.anythink.expressad.exoplayer.j.b d() {
        return this.g;
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final long e() {
        return 0L;
    }

    @Override // com.anythink.expressad.exoplayer.p
    public final boolean f() {
        return false;
    }
}
