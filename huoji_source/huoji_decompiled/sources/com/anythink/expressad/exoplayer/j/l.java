package com.anythink.expressad.exoplayer.j;

import com.anythink.expressad.exoplayer.k.af;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class l implements b {
    private static final int a = 100;
    private final boolean b;
    private final int c;
    private final byte[] d;
    private final a[] e;
    private int f;
    private int g;
    private int h;
    private a[] i;

    private l() {
        com.anythink.expressad.exoplayer.k.a.a(true);
        com.anythink.expressad.exoplayer.k.a.a(true);
        this.b = true;
        this.c = 65536;
        this.h = 0;
        this.i = new a[100];
        this.d = null;
        this.e = new a[1];
    }

    public l(byte b) {
        this();
    }

    @Override // com.anythink.expressad.exoplayer.j.b
    public final synchronized a a() {
        a aVar;
        this.g++;
        int i = this.h;
        if (i > 0) {
            a[] aVarArr = this.i;
            int i2 = i - 1;
            this.h = i2;
            aVar = aVarArr[i2];
            aVarArr[i2] = null;
        } else {
            aVar = new a(new byte[this.c]);
        }
        return aVar;
    }

    public final synchronized void a(int i) {
        boolean z = i < this.f;
        this.f = i;
        if (z) {
            b();
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.b
    public final synchronized void a(a aVar) {
        a[] aVarArr = this.e;
        aVarArr[0] = aVar;
        a(aVarArr);
    }

    @Override // com.anythink.expressad.exoplayer.j.b
    public final synchronized void a(a[] aVarArr) {
        int i = this.h;
        int length = aVarArr.length + i;
        a[] aVarArr2 = this.i;
        if (length >= aVarArr2.length) {
            this.i = (a[]) Arrays.copyOf(aVarArr2, Math.max(aVarArr2.length * 2, i + aVarArr.length));
        }
        for (a aVar : aVarArr) {
            byte[] bArr = aVar.a;
            if (bArr != this.d && bArr.length != this.c) {
                throw new IllegalArgumentException("Unexpected allocation: " + System.identityHashCode(aVar.a) + ", " + System.identityHashCode(this.d) + ", " + aVar.a.length + ", " + this.c);
            }
            a[] aVarArr3 = this.i;
            int i2 = this.h;
            this.h = i2 + 1;
            aVarArr3[i2] = aVar;
        }
        this.g -= aVarArr.length;
        notifyAll();
    }

    @Override // com.anythink.expressad.exoplayer.j.b
    public final synchronized void b() {
        int i = 0;
        int iMax = Math.max(0, af.a(this.f, this.c) - this.g);
        int i2 = this.h;
        if (iMax >= i2) {
            return;
        }
        if (this.d != null) {
            int i3 = i2 - 1;
            while (i <= i3) {
                a[] aVarArr = this.i;
                a aVar = aVarArr[i];
                byte[] bArr = aVar.a;
                byte[] bArr2 = this.d;
                if (bArr == bArr2) {
                    i++;
                } else {
                    a aVar2 = aVarArr[i3];
                    if (aVar2.a != bArr2) {
                        i3--;
                    } else {
                        aVarArr[i] = aVar2;
                        aVarArr[i3] = aVar;
                        i3--;
                        i++;
                    }
                }
            }
            iMax = Math.max(iMax, i);
            if (iMax >= this.h) {
                return;
            }
        }
        Arrays.fill(this.i, iMax, this.h, (Object) null);
        this.h = iMax;
    }

    @Override // com.anythink.expressad.exoplayer.j.b
    public final synchronized int c() {
        return this.g * this.c;
    }

    @Override // com.anythink.expressad.exoplayer.j.b
    public final int d() {
        return this.c;
    }

    public final synchronized void e() {
        if (this.b) {
            a(0);
        }
    }
}
