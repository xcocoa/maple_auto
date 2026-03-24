package com.anythink.expressad.exoplayer.j;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public static final int a = 1;
    public static final int b = 2;
    public final Uri c;

    @Nullable
    public final byte[] d;
    public final long e;
    public final long f;
    public final long g;

    @Nullable
    public final String h;
    public final int i;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public k(Uri uri) {
        this(uri, 0);
    }

    public k(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public k(Uri uri, long j, long j2, long j3, @Nullable String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public k(Uri uri, long j, long j2, @Nullable String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public k(Uri uri, long j, @Nullable String str) {
        this(uri, j, j, -1L, str, 0);
    }

    public k(Uri uri, @Nullable byte[] bArr, long j, long j2, long j3, @Nullable String str, int i) {
        boolean z = true;
        com.anythink.expressad.exoplayer.k.a.a(j >= 0);
        com.anythink.expressad.exoplayer.k.a.a(j2 >= 0);
        if (j3 <= 0 && j3 != -1) {
            z = false;
        }
        com.anythink.expressad.exoplayer.k.a.a(z);
        this.c = uri;
        this.d = bArr;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = str;
        this.i = i;
    }

    private k a(long j, long j2) {
        return (j == 0 && this.g == j2) ? this : new k(this.c, this.d, this.e + j, this.f + j, j2, this.h, this.i);
    }

    private k a(Uri uri) {
        return new k(uri, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public final k a(long j) {
        long j2 = this.g;
        long j3 = j2 != -1 ? j2 - j : -1L;
        return (j == 0 && j2 == j3) ? this : new k(this.c, this.d, this.e + j, this.f + j, j3, this.h, this.i);
    }

    public final boolean a(int i) {
        return (this.i & i) == i;
    }

    public final String toString() {
        return "DataSpec[" + this.c + ", " + Arrays.toString(this.d) + ", " + this.e + ", " + this.f + ", " + this.g + ", " + this.h + ", " + this.i + "]";
    }
}
