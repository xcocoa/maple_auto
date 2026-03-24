package com.anythink.expressad.exoplayer.h.b;

import com.anythink.expressad.exoplayer.j.k;
import com.anythink.expressad.exoplayer.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends i {
    public final long a;
    private b k;
    private int[] l;

    public a(com.anythink.expressad.exoplayer.j.h hVar, k kVar, m mVar, int i, Object obj, long j, long j2, long j3, long j4) {
        super(hVar, kVar, mVar, i, obj, j, j2, j4);
        this.a = j3;
    }

    public final int a(int i) {
        return this.l[i];
    }

    public final void a(b bVar) {
        this.k = bVar;
        this.l = bVar.a();
    }

    public final b c() {
        return this.k;
    }
}
