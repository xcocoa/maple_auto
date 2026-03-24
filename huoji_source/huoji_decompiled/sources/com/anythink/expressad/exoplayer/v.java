package com.anythink.expressad.exoplayer;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static final v a = new v(1.0f);
    public final float b;
    public final float c;
    public final boolean d;
    private final int e;

    public v(float f) {
        this(f, 1.0f, false);
    }

    public v(float f, float f2) {
        this(f, f2, false);
    }

    public v(float f, float f2, boolean z) {
        com.anythink.expressad.exoplayer.k.a.a(f > 0.0f);
        com.anythink.expressad.exoplayer.k.a.a(f2 > 0.0f);
        this.b = f;
        this.c = f2;
        this.d = z;
        this.e = Math.round(f * 1000.0f);
    }

    public final long a(long j) {
        return j * ((long) this.e);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && v.class == obj.getClass()) {
            v vVar = (v) obj;
            if (this.b == vVar.b && this.c == vVar.c && this.d == vVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Float.floatToRawIntBits(this.b) + 527) * 31) + Float.floatToRawIntBits(this.c)) * 31) + (this.d ? 1 : 0);
    }
}
