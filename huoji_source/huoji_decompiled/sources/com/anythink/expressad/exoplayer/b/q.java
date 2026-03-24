package com.anythink.expressad.exoplayer.b;

import com.anythink.expressad.exoplayer.b.f;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public final class q implements f {
    private static final long b = 150000;
    private static final long c = 20000;
    private static final short d = 1024;
    private static final byte e = 4;
    private static final int f = 0;
    private static final int g = 1;
    private static final int h = 2;
    private int i;
    private int j;
    private int k;
    private boolean l;
    private ByteBuffer m;
    private ByteBuffer n;
    private boolean o;
    private byte[] p;
    private byte[] q;
    private int r;
    private int s;
    private int t;
    private boolean u;
    private long v;

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    public q() {
        ByteBuffer byteBuffer = f.a;
        this.m = byteBuffer;
        this.n = byteBuffer;
        this.i = -1;
        this.j = -1;
        this.p = new byte[0];
        this.q = new byte[0];
    }

    private int a(long j) {
        return (int) ((j * ((long) this.j)) / 1000000);
    }

    private void a(int i) {
        if (this.m.capacity() < i) {
            this.m = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.m.clear();
        }
        if (i > 0) {
            this.u = true;
        }
    }

    private void a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int iMin = Math.min(byteBuffer.remaining(), this.t);
        int i2 = this.t - iMin;
        System.arraycopy(bArr, i - i2, this.q, 0, i2);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.q, i2, iMin);
    }

    private void a(byte[] bArr, int i) {
        a(i);
        this.m.put(bArr, 0, i);
        this.m.flip();
        this.n = this.m;
    }

    private void b(ByteBuffer byteBuffer) {
        int iPosition;
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.p.length));
        int iLimit2 = byteBuffer.limit() - 1;
        while (true) {
            if (iLimit2 < byteBuffer.position()) {
                iPosition = byteBuffer.position();
                break;
            } else {
                if (Math.abs((int) byteBuffer.get(iLimit2)) > 4) {
                    int i = this.k;
                    iPosition = ((iLimit2 / i) * i) + i;
                    break;
                }
                iLimit2 -= 2;
            }
        }
        if (iPosition == byteBuffer.position()) {
            this.r = 1;
        } else {
            byteBuffer.limit(iPosition);
            a(byteBuffer.remaining());
            this.m.put(byteBuffer);
            this.m.flip();
            this.n = this.m;
        }
        byteBuffer.limit(iLimit);
    }

    private void c(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iF = f(byteBuffer);
        int iPosition = iF - byteBuffer.position();
        byte[] bArr = this.p;
        int length = bArr.length;
        int i = this.s;
        int i2 = length - i;
        if (iF < iLimit && iPosition < i2) {
            a(bArr, i);
            this.s = 0;
            this.r = 0;
            return;
        }
        int iMin = Math.min(iPosition, i2);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.p, this.s, iMin);
        int i3 = this.s + iMin;
        this.s = i3;
        byte[] bArr2 = this.p;
        if (i3 == bArr2.length) {
            if (this.u) {
                a(bArr2, this.t);
                this.v += (long) ((this.s - (this.t * 2)) / this.k);
            } else {
                this.v += (long) ((i3 - this.t) / this.k);
            }
            a(byteBuffer, this.p, this.s);
            this.s = 0;
            this.r = 2;
        }
        byteBuffer.limit(iLimit);
    }

    private void d(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iF = f(byteBuffer);
        byteBuffer.limit(iF);
        this.v += (long) (byteBuffer.remaining() / this.k);
        a(byteBuffer, this.q, this.t);
        if (iF < iLimit) {
            a(this.q, this.t);
            this.r = 0;
            byteBuffer.limit(iLimit);
        }
    }

    private void e(ByteBuffer byteBuffer) {
        a(byteBuffer.remaining());
        this.m.put(byteBuffer);
        this.m.flip();
        this.n = this.m;
    }

    private int f(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position() + 1; iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.get(iPosition)) > 4) {
                int i = this.k;
                return i * (iPosition / i);
            }
        }
        return byteBuffer.limit();
    }

    private int g(ByteBuffer byteBuffer) {
        for (int iLimit = byteBuffer.limit() - 1; iLimit >= byteBuffer.position(); iLimit -= 2) {
            if (Math.abs((int) byteBuffer.get(iLimit)) > 4) {
                int i = this.k;
                return ((iLimit / i) * i) + i;
            }
        }
        return byteBuffer.position();
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void a(ByteBuffer byteBuffer) {
        int iLimit;
        int iPosition;
        while (byteBuffer.hasRemaining() && !this.n.hasRemaining()) {
            int i = this.r;
            if (i == 0) {
                iLimit = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.p.length));
                int iLimit2 = byteBuffer.limit() - 1;
                while (true) {
                    if (iLimit2 < byteBuffer.position()) {
                        iPosition = byteBuffer.position();
                        break;
                    } else {
                        if (Math.abs((int) byteBuffer.get(iLimit2)) > 4) {
                            int i2 = this.k;
                            iPosition = ((iLimit2 / i2) * i2) + i2;
                            break;
                        }
                        iLimit2 -= 2;
                    }
                }
                if (iPosition == byteBuffer.position()) {
                    this.r = 1;
                } else {
                    byteBuffer.limit(iPosition);
                    a(byteBuffer.remaining());
                    this.m.put(byteBuffer);
                    this.m.flip();
                    this.n = this.m;
                }
            } else if (i == 1) {
                iLimit = byteBuffer.limit();
                int iF = f(byteBuffer);
                int iPosition2 = iF - byteBuffer.position();
                byte[] bArr = this.p;
                int length = bArr.length;
                int i3 = this.s;
                int i4 = length - i3;
                if (iF >= iLimit || iPosition2 >= i4) {
                    int iMin = Math.min(iPosition2, i4);
                    byteBuffer.limit(byteBuffer.position() + iMin);
                    byteBuffer.get(this.p, this.s, iMin);
                    int i5 = this.s + iMin;
                    this.s = i5;
                    byte[] bArr2 = this.p;
                    if (i5 == bArr2.length) {
                        if (this.u) {
                            a(bArr2, this.t);
                            this.v += (long) ((this.s - (this.t * 2)) / this.k);
                        } else {
                            this.v += (long) ((i5 - this.t) / this.k);
                        }
                        a(byteBuffer, this.p, this.s);
                        this.s = 0;
                        this.r = 2;
                    }
                } else {
                    a(bArr, i3);
                    this.s = 0;
                    this.r = 0;
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                iLimit = byteBuffer.limit();
                int iF2 = f(byteBuffer);
                byteBuffer.limit(iF2);
                this.v += (long) (byteBuffer.remaining() / this.k);
                a(byteBuffer, this.q, this.t);
                if (iF2 < iLimit) {
                    a(this.q, this.t);
                    this.r = 0;
                }
            }
            byteBuffer.limit(iLimit);
        }
    }

    public final void a(boolean z) {
        this.l = z;
        h();
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final boolean a() {
        return this.j != -1 && this.l;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final boolean a(int i, int i2, int i3) throws f.a {
        if (i3 != 2) {
            throw new f.a(i, i2, i3);
        }
        if (this.j == i && this.i == i2) {
            return false;
        }
        this.j = i;
        this.i = i2;
        this.k = i2 * 2;
        return true;
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
        return this.j;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void e() {
        this.o = true;
        int i = this.s;
        if (i > 0) {
            a(this.p, i);
        }
        if (this.u) {
            return;
        }
        this.v += (long) (this.t / this.k);
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final ByteBuffer f() {
        ByteBuffer byteBuffer = this.n;
        this.n = f.a;
        return byteBuffer;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final boolean g() {
        return this.o && this.n == f.a;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void h() {
        if (a()) {
            int iA = a(b) * this.k;
            if (this.p.length != iA) {
                this.p = new byte[iA];
            }
            int iA2 = a(c) * this.k;
            this.t = iA2;
            if (this.q.length != iA2) {
                this.q = new byte[iA2];
            }
        }
        this.r = 0;
        this.n = f.a;
        this.o = false;
        this.v = 0L;
        this.s = 0;
        this.u = false;
    }

    @Override // com.anythink.expressad.exoplayer.b.f
    public final void i() {
        this.l = false;
        h();
        this.m = f.a;
        this.i = -1;
        this.j = -1;
        this.t = 0;
        this.p = new byte[0];
        this.q = new byte[0];
    }

    public final long j() {
        return this.v;
    }
}
