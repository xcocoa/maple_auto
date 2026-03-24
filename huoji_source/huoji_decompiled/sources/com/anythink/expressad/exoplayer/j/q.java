package com.anythink.expressad.exoplayer.j;

import com.anythink.expressad.exoplayer.j.s;

/* JADX INFO: loaded from: classes.dex */
public final class q extends s.a {
    private final String a;
    private final aa<? super h> b;
    private final int c;
    private final int d;
    private final boolean e;

    public q(String str) {
        this(str, null);
    }

    public q(String str, aa<? super h> aaVar) {
        this(str, aaVar, (byte) 0);
    }

    private q(String str, aa<? super h> aaVar, byte b) {
        this.a = str;
        this.b = aaVar;
        this.c = 8000;
        this.d = 8000;
        this.e = false;
    }

    private p b(s.f fVar) {
        return new p(this.a, null, this.b, this.c, this.d, this.e, fVar);
    }

    @Override // com.anythink.expressad.exoplayer.j.s.a
    public final /* synthetic */ s a(s.f fVar) {
        return new p(this.a, null, this.b, this.c, this.d, this.e, fVar);
    }
}
