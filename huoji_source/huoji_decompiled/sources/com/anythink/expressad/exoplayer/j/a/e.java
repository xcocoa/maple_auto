package com.anythink.expressad.exoplayer.j.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class e implements Comparable<e> {
    public final String a;
    public final long b;
    public final long c;
    public final boolean d;

    @Nullable
    public final File e;
    public final long f;

    private e(String str, long j, long j2) {
        this(str, j, j2, com.anythink.expressad.exoplayer.b.b, null);
    }

    public e(String str, long j, long j2, long j3, @Nullable File file) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = file != null;
        this.e = file;
        this.f = j3;
    }

    private int a(@NonNull e eVar) {
        if (!this.a.equals(eVar.a)) {
            return this.a.compareTo(eVar.a);
        }
        long j = this.b - eVar.b;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }

    public final boolean a() {
        return this.c == -1;
    }

    public final boolean b() {
        return !this.d;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(@NonNull e eVar) {
        e eVar2 = eVar;
        if (!this.a.equals(eVar2.a)) {
            return this.a.compareTo(eVar2.a);
        }
        long j = this.b - eVar2.b;
        if (j == 0) {
            return 0;
        }
        return j < 0 ? -1 : 1;
    }
}
