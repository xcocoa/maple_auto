package com.anythink.expressad.exoplayer.e.a;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final int a = 0;
    public static final int b = 1;
    public final int c;
    public final int d;
    public final long e;
    public final long f;
    public final long g;
    public final com.anythink.expressad.exoplayer.m h;
    public final int i;

    @Nullable
    public final long[] j;

    @Nullable
    public final long[] k;
    public final int l;

    @Nullable
    private final k[] m;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public j(int i, int i2, long j, long j2, long j3, com.anythink.expressad.exoplayer.m mVar, int i3, @Nullable k[] kVarArr, int i4, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.c = i;
        this.d = i2;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = mVar;
        this.i = i3;
        this.m = kVarArr;
        this.l = i4;
        this.j = jArr;
        this.k = jArr2;
    }

    public final k a(int i) {
        k[] kVarArr = this.m;
        if (kVarArr == null) {
            return null;
        }
        return kVarArr[i];
    }
}
