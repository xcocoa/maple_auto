package com.anythink.expressad.exoplayer.e;

import com.anythink.expressad.exoplayer.e.m;
import com.anythink.expressad.exoplayer.k.s;
import java.io.EOFException;

/* JADX INFO: loaded from: classes.dex */
public final class d implements m {
    @Override // com.anythink.expressad.exoplayer.e.m
    public final int a(f fVar, int i, boolean z) throws EOFException {
        int iA = fVar.a(i);
        if (iA != -1) {
            return iA;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.anythink.expressad.exoplayer.e.m
    public final void a(long j, int i, int i2, int i3, m.a aVar) {
    }

    @Override // com.anythink.expressad.exoplayer.e.m
    public final void a(s sVar, int i) {
        sVar.d(i);
    }

    @Override // com.anythink.expressad.exoplayer.e.m
    public final void a(com.anythink.expressad.exoplayer.m mVar) {
    }
}
