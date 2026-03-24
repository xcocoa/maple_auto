package com.anythink.expressad.exoplayer.h.b;

import android.util.Log;
import com.anythink.expressad.exoplayer.e.m;
import com.anythink.expressad.exoplayer.h.b.d;
import com.anythink.expressad.exoplayer.h.x;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d.b {
    private static final String a = "BaseMediaChunkOutput";
    private final int[] b;
    private final x[] c;

    public b(int[] iArr, x[] xVarArr) {
        this.b = iArr;
        this.c = xVarArr;
    }

    @Override // com.anythink.expressad.exoplayer.h.b.d.b
    public final m a(int i) {
        int i2 = 0;
        while (true) {
            int[] iArr = this.b;
            if (i2 >= iArr.length) {
                Log.e(a, "Unmatched track of type: ".concat(String.valueOf(i)));
                return new com.anythink.expressad.exoplayer.e.d();
            }
            if (i == iArr[i2]) {
                return this.c[i2];
            }
            i2++;
        }
    }

    public final void a(long j) {
        for (x xVar : this.c) {
            if (xVar != null) {
                xVar.a(j);
            }
        }
    }

    public final int[] a() {
        int[] iArr = new int[this.c.length];
        int i = 0;
        while (true) {
            x[] xVarArr = this.c;
            if (i >= xVarArr.length) {
                return iArr;
            }
            if (xVarArr[i] != null) {
                iArr[i] = xVarArr[i].b();
            }
            i++;
        }
    }
}
