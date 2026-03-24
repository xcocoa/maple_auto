package com.anythink.expressad.exoplayer.g.c;

import com.anythink.expressad.exoplayer.g.a;
import com.anythink.expressad.exoplayer.k.ac;
import com.anythink.expressad.exoplayer.k.r;
import com.anythink.expressad.exoplayer.k.s;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class c implements com.anythink.expressad.exoplayer.g.b {
    private static final int a = 0;
    private static final int b = 4;
    private static final int c = 5;
    private static final int d = 6;
    private static final int e = 255;
    private final s f = new s();
    private final r g = new r();
    private ac h;

    @Override // com.anythink.expressad.exoplayer.g.b
    public final com.anythink.expressad.exoplayer.g.a a(com.anythink.expressad.exoplayer.g.e eVar) {
        ac acVar = this.h;
        if (acVar == null || eVar.g != acVar.a()) {
            ac acVar2 = new ac(eVar.f);
            this.h = acVar2;
            acVar2.b(eVar.f - eVar.g);
        }
        ByteBuffer byteBuffer = eVar.e;
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        this.f.a(bArrArray, iLimit);
        this.g.a(bArrArray, iLimit);
        this.g.b(39);
        long jC = (((long) this.g.c(1)) << 32) | ((long) this.g.c(32));
        this.g.b(20);
        int iC = this.g.c(12);
        int iC2 = this.g.c(8);
        a.InterfaceC0117a eVar2 = null;
        this.f.d(14);
        if (iC2 == 0) {
            eVar2 = new e();
        } else if (iC2 == 255) {
            eVar2 = a.a(this.f, iC, jC);
        } else if (iC2 == 4) {
            eVar2 = f.a(this.f);
        } else if (iC2 == 5) {
            eVar2 = d.a(this.f, jC, this.h);
        } else if (iC2 == 6) {
            eVar2 = g.a(this.f, jC, this.h);
        }
        return eVar2 == null ? new com.anythink.expressad.exoplayer.g.a(new a.InterfaceC0117a[0]) : new com.anythink.expressad.exoplayer.g.a(eVar2);
    }
}
