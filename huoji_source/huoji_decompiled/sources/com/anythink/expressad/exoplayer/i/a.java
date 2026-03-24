package com.anythink.expressad.exoplayer.i;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.h.ae;
import com.anythink.expressad.exoplayer.i.f;
import com.anythink.expressad.exoplayer.k.af;
import com.anythink.expressad.exoplayer.m;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    public static final int a = 10000;
    public static final int b = 25000;
    public static final int c = 25000;
    public static final float d = 0.75f;
    public static final float e = 0.75f;
    public static final long f = 2000;
    private final com.anythink.expressad.exoplayer.j.d j;
    private final long k;
    private final long l;
    private final long m;
    private final float n;
    private final float o;
    private final long p;
    private final com.anythink.expressad.exoplayer.k.c q;
    private float r;
    private int s;
    private int t;
    private long u;

    /* JADX INFO: renamed from: com.anythink.expressad.exoplayer.i.a$a, reason: collision with other inner class name */
    public static final class C0123a implements f.a {
        private final com.anythink.expressad.exoplayer.j.d a;
        private final int b;
        private final int c;
        private final int d;
        private final float e;
        private final float f;
        private final long g;
        private final com.anythink.expressad.exoplayer.k.c h;

        public C0123a(com.anythink.expressad.exoplayer.j.d dVar) {
            this(dVar, 10000, 25000, 25000, 0.75f, com.anythink.expressad.exoplayer.k.c.a);
        }

        private C0123a(com.anythink.expressad.exoplayer.j.d dVar, int i, int i2, int i3, float f) {
            this(dVar, i, i2, i3, f, com.anythink.expressad.exoplayer.k.c.a);
        }

        private C0123a(com.anythink.expressad.exoplayer.j.d dVar, int i, int i2, int i3, float f, com.anythink.expressad.exoplayer.k.c cVar) {
            this.a = dVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = f;
            this.f = 0.75f;
            this.g = a.f;
            this.h = cVar;
        }

        private a b(ae aeVar, int... iArr) {
            return new a(aeVar, iArr, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }

        @Override // com.anythink.expressad.exoplayer.i.f.a
        public final /* synthetic */ f a(ae aeVar, int[] iArr) {
            return new a(aeVar, iArr, this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
        }
    }

    private a(ae aeVar, int[] iArr, com.anythink.expressad.exoplayer.j.d dVar) {
        this(aeVar, iArr, dVar, UMAmapConfig.AMAP_CACHE_WRITE_TIME, 25000L, 25000L, 0.75f, 0.75f, f, com.anythink.expressad.exoplayer.k.c.a);
    }

    public a(ae aeVar, int[] iArr, com.anythink.expressad.exoplayer.j.d dVar, long j, long j2, long j3, float f2, float f3, long j4, com.anythink.expressad.exoplayer.k.c cVar) {
        super(aeVar, iArr);
        this.j = dVar;
        this.k = j * 1000;
        this.l = j2 * 1000;
        this.m = j3 * 1000;
        this.n = f2;
        this.o = f3;
        this.p = j4;
        this.q = cVar;
        this.r = 1.0f;
        this.t = 1;
        this.u = com.anythink.expressad.exoplayer.b.b;
        this.s = a(Long.MIN_VALUE);
    }

    private int a(long j) {
        long jA = (long) (this.j.a() * this.n);
        int i = 0;
        for (int i2 = 0; i2 < this.h; i2++) {
            if (j == Long.MIN_VALUE || !b(i2, j)) {
                if (Math.round(a(i2).d * this.r) <= jA) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    private long b(long j) {
        return (j > com.anythink.expressad.exoplayer.b.b ? 1 : (j == com.anythink.expressad.exoplayer.b.b ? 0 : -1)) != 0 && (j > this.k ? 1 : (j == this.k ? 0 : -1)) <= 0 ? (long) (j * this.o) : this.k;
    }

    @Override // com.anythink.expressad.exoplayer.i.b, com.anythink.expressad.exoplayer.i.f
    public final int a(long j, List<? extends com.anythink.expressad.exoplayer.h.b.i> list) {
        int i;
        int i2;
        long jA = this.q.a();
        long j2 = this.u;
        if (j2 != com.anythink.expressad.exoplayer.b.b && jA - j2 < this.p) {
            return list.size();
        }
        this.u = jA;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        if (af.b(list.get(size - 1).g - j, this.r) < this.m) {
            return size;
        }
        m mVarA = a(a(jA));
        for (int i3 = 0; i3 < size; i3++) {
            com.anythink.expressad.exoplayer.h.b.i iVar = list.get(i3);
            m mVar = iVar.d;
            if (af.b(iVar.g - j, this.r) >= this.m && mVar.d < mVarA.d && (i = mVar.n) != -1 && i < 720 && (i2 = mVar.m) != -1 && i2 < 1280 && i < mVarA.n) {
                return i3;
            }
        }
        return size;
    }

    @Override // com.anythink.expressad.exoplayer.i.b, com.anythink.expressad.exoplayer.i.f
    public final void a() {
        this.u = com.anythink.expressad.exoplayer.b.b;
    }

    @Override // com.anythink.expressad.exoplayer.i.b, com.anythink.expressad.exoplayer.i.f
    public final void a(float f2) {
        this.r = f2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0051  */
    @Override // com.anythink.expressad.exoplayer.i.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(long j, long j2) {
        long jA = this.q.a();
        int i = this.s;
        int iA = a(jA);
        this.s = iA;
        if (iA == i) {
            return;
        }
        if (!b(i, jA)) {
            m mVarA = a(i);
            int i2 = a(this.s).d;
            int i3 = mVarA.d;
            if (i2 > i3) {
                if (j < ((j2 > com.anythink.expressad.exoplayer.b.b ? 1 : (j2 == com.anythink.expressad.exoplayer.b.b ? 0 : -1)) != 0 && (j2 > this.k ? 1 : (j2 == this.k ? 0 : -1)) <= 0 ? (long) (j2 * this.o) : this.k)) {
                }
            } else if (i2 < i3 && j >= this.l) {
                this.s = i;
            }
        }
        if (this.s != i) {
            this.t = 3;
        }
    }

    @Override // com.anythink.expressad.exoplayer.i.f
    public final int b() {
        return this.s;
    }

    @Override // com.anythink.expressad.exoplayer.i.f
    public final int c() {
        return this.t;
    }

    @Override // com.anythink.expressad.exoplayer.i.f
    @Nullable
    public final Object d() {
        return null;
    }
}
