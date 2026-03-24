package com.anythink.expressad.exoplayer.e;

import com.anythink.expressad.exoplayer.e.k;
import com.anythink.expressad.exoplayer.k.af;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements k {
    public final int a;
    public final int[] b;
    public final long[] c;
    public final long[] d;
    public final long[] e;
    private final long f;

    public a(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.b = iArr;
        this.c = jArr;
        this.d = jArr2;
        this.e = jArr3;
        int length = iArr.length;
        this.a = length;
        if (length > 0) {
            this.f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f = 0L;
        }
    }

    private int b(long j) {
        return af.a(this.e, j, true);
    }

    @Override // com.anythink.expressad.exoplayer.e.k
    public final k.a a(long j) {
        int iA = af.a(this.e, j, true);
        l lVar = new l(this.e[iA], this.c[iA]);
        if (lVar.b >= j || iA == this.a - 1) {
            return new k.a(lVar);
        }
        int i = iA + 1;
        return new k.a(lVar, new l(this.e[i], this.c[i]));
    }

    @Override // com.anythink.expressad.exoplayer.e.k
    public final boolean a() {
        return true;
    }

    @Override // com.anythink.expressad.exoplayer.e.k
    public final long b() {
        return this.f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.a + ", sizes=" + Arrays.toString(this.b) + ", offsets=" + Arrays.toString(this.c) + ", timeUs=" + Arrays.toString(this.e) + ", durationsUs=" + Arrays.toString(this.d) + ")";
    }
}
