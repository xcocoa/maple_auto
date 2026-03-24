package com.anythink.expressad.exoplayer;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ac {
    public static final ac a;
    public static final ac b;
    public static final ac c;
    public static final ac d;
    public static final ac e;
    public final long f;
    public final long g;

    static {
        ac acVar = new ac(0L, 0L);
        a = acVar;
        b = new ac(Long.MAX_VALUE, Long.MAX_VALUE);
        c = new ac(Long.MAX_VALUE, 0L);
        d = new ac(0L, Long.MAX_VALUE);
        e = acVar;
    }

    public ac(long j, long j2) {
        com.anythink.expressad.exoplayer.k.a.a(j >= 0);
        com.anythink.expressad.exoplayer.k.a.a(j2 >= 0);
        this.f = j;
        this.g = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ac.class == obj.getClass()) {
            ac acVar = (ac) obj;
            if (this.f == acVar.f && this.g == acVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f) * 31) + ((int) this.g);
    }
}
