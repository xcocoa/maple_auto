package com.anythink.expressad.exoplayer.j;

import android.net.Uri;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class w implements h {
    private final h a;
    private final com.anythink.expressad.exoplayer.k.v b;
    private final int c;

    public w(h hVar, com.anythink.expressad.exoplayer.k.v vVar, int i) {
        this.a = (h) com.anythink.expressad.exoplayer.k.a.a(hVar);
        this.b = (com.anythink.expressad.exoplayer.k.v) com.anythink.expressad.exoplayer.k.a.a(vVar);
        this.c = i;
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final int a(byte[] bArr, int i, int i2) {
        this.b.a(this.c);
        return this.a.a(bArr, i, i2);
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final long a(k kVar) {
        this.b.a(this.c);
        return this.a.a(kVar);
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    @Nullable
    public final Uri a() {
        return this.a.a();
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final void b() {
        this.a.b();
    }
}
