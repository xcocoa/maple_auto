package com.anythink.expressad.exoplayer.b;

import androidx.annotation.Nullable;
import com.anythink.expressad.exoplayer.b.f;
import com.anythink.expressad.exoplayer.k.af;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class t implements f {
    public static final float b = 8.0f;
    public static final float c = 0.1f;
    public static final float d = 8.0f;
    public static final float e = 0.1f;
    public static final int f = -1;
    private static final float g = 0.01f;
    private static final int h = 1024;
    private int n;

    @Nullable
    private s o;
    private ByteBuffer p;
    private ShortBuffer q;
    private ByteBuffer r;
    private long s;
    private long t;
    private boolean u;
    private float k = 1.0f;
    private float l = 1.0f;
    private int i = -1;
    private int j = -1;
    private int m = -1;

    public t() {
        ByteBuffer byteBuffer = f.a;
        this.p = byteBuffer;
        this.q = byteBuffer.asShortBuffer();
        this.r = byteBuffer;
        this.n = -1;
    }

    private void a(int i) {
        this.n = i;
    }

    public final float a(float f2) {
        float fA = af.a(f2);
        if (this.k != fA) {
            this.k = fA;
            this.o = null;
        }
        h();
        return fA;
    }

    public final long a(long j) {
        long j2 = this.t;
        if (j2 < 1024) {
            return (long) (((double) this.k) * j);
        }
        int i = this.m;
        int i2 = this.j;
        long j3 = this.s;
        return i == i2 ? af.a(j, j3, j2) : af.a(j, j3 * ((long) i), j2 * ((long) i2));
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void a(ByteBuffer byteBuffer) {
        com.anythink.expressad.exoplayer.k.a.b(this.o != null);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.s += (long) iRemaining;
            this.o.a(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int iC = this.o.c() * this.i * 2;
        if (iC > 0) {
            if (this.p.capacity() < iC) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iC).order(ByteOrder.nativeOrder());
                this.p = byteBufferOrder;
                this.q = byteBufferOrder.asShortBuffer();
            } else {
                this.p.clear();
                this.q.clear();
            }
            this.o.b(this.q);
            this.t += (long) iC;
            this.p.limit(iC);
            this.r = this.p;
        }
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final boolean a() {
        if (this.j != -1) {
            return Math.abs(this.k - 1.0f) >= 0.01f || Math.abs(this.l - 1.0f) >= 0.01f || this.m != this.j;
        }
        return false;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final boolean a(int i, int i2, int i3) throws f.a {
        if (i3 != 2) {
            throw new f.a(i, i2, i3);
        }
        int i4 = this.n;
        if (i4 == -1) {
            i4 = i;
        }
        if (this.j == i && this.i == i2 && this.m == i4) {
            return false;
        }
        this.j = i;
        this.i = i2;
        this.m = i4;
        this.o = null;
        return true;
    }

    public final float b(float f2) {
        float fA = af.a(f2);
        if (this.l != fA) {
            this.l = fA;
            this.o = null;
        }
        h();
        return fA;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final int b() {
        return this.i;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final int c() {
        return 2;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final int d() {
        return this.m;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void e() {
        com.anythink.expressad.exoplayer.k.a.b(this.o != null);
        this.o.a();
        this.u = true;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final ByteBuffer f() {
        ByteBuffer byteBuffer = this.r;
        this.r = f.a;
        return byteBuffer;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final boolean g() {
        if (!this.u) {
            return false;
        }
        s sVar = this.o;
        return sVar == null || sVar.c() == 0;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void h() {
        if (a()) {
            s sVar = this.o;
            if (sVar == null) {
                this.o = new s(this.j, this.i, this.k, this.l, this.m);
            } else {
                sVar.b();
            }
        }
        this.r = f.a;
        this.s = 0L;
        this.t = 0L;
        this.u = false;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void i() {
        this.k = 1.0f;
        this.l = 1.0f;
        this.i = -1;
        this.j = -1;
        this.m = -1;
        ByteBuffer byteBuffer = f.a;
        this.p = byteBuffer;
        this.q = byteBuffer.asShortBuffer();
        this.r = byteBuffer;
        this.n = -1;
        this.o = null;
        this.s = 0L;
        this.t = 0L;
        this.u = false;
    }
}
