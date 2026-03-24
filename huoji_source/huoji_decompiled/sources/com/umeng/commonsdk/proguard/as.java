package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class as extends az {
    public static final int a = -65536;
    public static final int b = -2147418112;
    private static final be h = new be();
    public boolean c;
    public boolean d;
    public int e;
    public boolean f;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private byte[] n;
    private byte[] o;
    private byte[] p;

    public static class a implements bb {
        public boolean a;
        public boolean b;
        public int c;

        public a() {
            this(false, true);
        }

        public a(boolean z, boolean z3) {
            this(z, z3, 0);
        }

        public a(boolean z, boolean z3, int i) {
            this.a = false;
            this.b = true;
            this.a = z;
            this.b = z3;
            this.c = i;
        }

        @Override // com.umeng.commonsdk.proguard.bb
        public az a(bn bnVar) {
            as asVar = new as(bnVar, this.a, this.b);
            int i = this.c;
            if (i != 0) {
                asVar.c(i);
            }
            return asVar;
        }
    }

    public as(bn bnVar) {
        this(bnVar, false, true);
    }

    public as(bn bnVar, boolean z, boolean z3) {
        super(bnVar);
        this.c = false;
        this.d = true;
        this.f = false;
        this.i = new byte[1];
        this.j = new byte[2];
        this.k = new byte[4];
        this.l = new byte[8];
        this.m = new byte[1];
        this.n = new byte[2];
        this.o = new byte[4];
        this.p = new byte[8];
        this.c = z;
        this.d = z3;
    }

    private int a(byte[] bArr, int i, int i2) throws ag {
        d(i2);
        return this.g.d(bArr, i, i2);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public ByteBuffer A() throws ag {
        int iW = w();
        d(iW);
        if (this.g.h() >= iW) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.g.f(), this.g.g(), iW);
            this.g.a(iW);
            return byteBufferWrap;
        }
        byte[] bArr = new byte[iW];
        this.g.d(bArr, 0, iW);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(byte b2) throws ag {
        byte[] bArr = this.i;
        bArr[0] = b2;
        this.g.b(bArr, 0, 1);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(double d) throws ag {
        a(Double.doubleToLongBits(d));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(int i) throws ag {
        byte[] bArr = this.k;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        this.g.b(bArr, 0, 4);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(long j) throws ag {
        byte[] bArr = this.l;
        bArr[0] = (byte) ((j >> 56) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[7] = (byte) (j & 255);
        this.g.b(bArr, 0, 8);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(au auVar) throws ag {
        a(auVar.b);
        a(auVar.c);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(av avVar) throws ag {
        a(avVar.a);
        a(avVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(aw awVar) throws ag {
        a(awVar.a);
        a(awVar.b);
        a(awVar.c);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(ax axVar) throws ag {
        if (this.d) {
            a((-2147418112) | axVar.b);
            a(axVar.a);
        } else {
            a(axVar.a);
            a(axVar.b);
        }
        a(axVar.c);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(bd bdVar) throws ag {
        a(bdVar.a);
        a(bdVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(be beVar) {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(String str) throws ag {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.g.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new ag("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(ByteBuffer byteBuffer) throws ag {
        int iLimit = byteBuffer.limit() - byteBuffer.position();
        a(iLimit);
        this.g.b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), iLimit);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(short s) throws ag {
        byte[] bArr = this.j;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        this.g.b(bArr, 0, 2);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(boolean z) throws ag {
        a(z ? (byte) 1 : (byte) 0);
    }

    public String b(int i) throws ag {
        try {
            d(i);
            byte[] bArr = new byte[i];
            this.g.d(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new ag("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void b() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void c() {
    }

    public void c(int i) {
        this.e = i;
        this.f = true;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void d() throws ag {
        a((byte) 0);
    }

    public void d(int i) throws ag {
        if (i < 0) {
            throw new ba("Negative length: " + i);
        }
        if (this.f) {
            int i2 = this.e - i;
            this.e = i2;
            if (i2 >= 0) {
                return;
            }
            throw new ba("Message length exceeded: " + i);
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void e() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void f() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void g() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public ax h() throws ag {
        int iW = w();
        if (iW < 0) {
            if (((-65536) & iW) == -2147418112) {
                return new ax(z(), (byte) (iW & 255), w());
            }
            throw new ba(4, "Bad version in readMessageBegin");
        }
        if (this.c) {
            throw new ba(4, "Missing version in readMessageBegin, old client?");
        }
        return new ax(b(iW), u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void i() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public be j() {
        return h;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void k() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public au l() throws ag {
        byte bU = u();
        return new au("", bU, bU == 0 ? (short) 0 : v());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void m() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public aw n() throws ag {
        return new aw(u(), u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void o() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public av p() throws ag {
        return new av(u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void q() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public bd r() throws ag {
        return new bd(u(), w());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void s() {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public boolean t() throws ag {
        return u() == 1;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public byte u() throws ag {
        if (this.g.h() < 1) {
            a(this.m, 0, 1);
            return this.m[0];
        }
        byte b2 = this.g.f()[this.g.g()];
        this.g.a(1);
        return b2;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public short v() throws ag {
        byte[] bArrF = this.n;
        int iG = 0;
        if (this.g.h() >= 2) {
            bArrF = this.g.f();
            iG = this.g.g();
            this.g.a(2);
        } else {
            a(this.n, 0, 2);
        }
        return (short) ((bArrF[iG + 1] & 255) | ((bArrF[iG] & 255) << 8));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public int w() throws ag {
        byte[] bArrF = this.o;
        int iG = 0;
        if (this.g.h() >= 4) {
            bArrF = this.g.f();
            iG = this.g.g();
            this.g.a(4);
        } else {
            a(this.o, 0, 4);
        }
        return (bArrF[iG + 3] & 255) | ((bArrF[iG] & 255) << 24) | ((bArrF[iG + 1] & 255) << 16) | ((bArrF[iG + 2] & 255) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public long x() throws ag {
        byte[] bArrF = this.p;
        int iG = 0;
        if (this.g.h() >= 8) {
            bArrF = this.g.f();
            iG = this.g.g();
            this.g.a(8);
        } else {
            a(this.p, 0, 8);
        }
        return ((long) (bArrF[iG + 7] & 255)) | (((long) (bArrF[iG] & 255)) << 56) | (((long) (bArrF[iG + 1] & 255)) << 48) | (((long) (bArrF[iG + 2] & 255)) << 40) | (((long) (bArrF[iG + 3] & 255)) << 32) | (((long) (bArrF[iG + 4] & 255)) << 24) | (((long) (bArrF[iG + 5] & 255)) << 16) | (((long) (bArrF[iG + 6] & 255)) << 8);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public double y() throws ag {
        return Double.longBitsToDouble(x());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public String z() throws ag {
        int iW = w();
        if (this.g.h() < iW) {
            return b(iW);
        }
        try {
            String str = new String(this.g.f(), this.g.g(), iW, "UTF-8");
            this.g.a(iW);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new ag("JVM DOES NOT SUPPORT UTF-8");
        }
    }
}
