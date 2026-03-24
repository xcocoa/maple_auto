package com.anythink.expressad.exoplayer.h;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.ae;

/* JADX INFO: loaded from: classes.dex */
public final class ab extends com.anythink.expressad.exoplayer.ae {
    private static final Object b = new Object();
    private final long c;
    private final long d;
    private final long e;
    private final long f;
    private final long g;
    private final long h;
    private final boolean i;
    private final boolean j;

    @Nullable
    private final Object k;

    private ab(long j, long j2, boolean z, boolean z3, @Nullable Object obj) {
        this.c = com.anythink.expressad.exoplayer.b.b;
        this.d = com.anythink.expressad.exoplayer.b.b;
        this.e = j;
        this.f = j2;
        this.g = 0L;
        this.h = 0L;
        this.i = z;
        this.j = z3;
        this.k = obj;
    }

    private ab(long j, long j2, boolean z, boolean z3, @Nullable Object obj, byte b2) {
        this(j, j2, z, z3, obj);
    }

    private ab(long j, boolean z, boolean z3) {
        this(j, z, z3, null);
    }

    public ab(long j, boolean z, boolean z3, @Nullable Object obj) {
        this(j, j, z, z3, obj, (byte) 0);
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final int a(Object obj) {
        return b.equals(obj) ? 0 : -1;
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final ae.a a(int i, ae.a aVar, boolean z) {
        com.anythink.expressad.exoplayer.k.a.a(i, 1);
        return aVar.a(null, z ? b : null, this.e, -this.g);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f A[PHI: r1
      0x002f: PHI (r1v4 long) = (r1v3 long), (r1v3 long), (r1v6 long) binds: [B:7:0x0018, B:9:0x001e, B:14:0x002c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.anythink.expressad.exoplayer.ae
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ae.b a(int i, ae.b bVar, boolean z, long j) {
        long j2;
        com.anythink.expressad.exoplayer.k.a.a(i, 1);
        Object obj = z ? this.k : null;
        long j3 = this.h;
        boolean z3 = this.j;
        if (!z3 || j == 0) {
            j2 = j3;
        } else {
            long j4 = this.f;
            if (j4 != com.anythink.expressad.exoplayer.b.b) {
                j3 += j;
                if (j3 > j4) {
                }
            }
            j2 = -9223372036854775807L;
        }
        return bVar.a(obj, this.c, this.d, this.i, z3, j2, this.f, this.g);
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final int b() {
        return 1;
    }

    @Override // com.anythink.expressad.exoplayer.ae
    public final int c() {
        return 1;
    }
}
