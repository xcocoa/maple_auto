package com.umeng.commonsdk.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class at extends az {
    private static final be d = new be("");
    private static final au e = new au("", (byte) 0, 0);
    private static final byte[] f = {0, 0, 1, 3, 7, 0, 4, 0, 5, 0, 6, 8, 12, 11, 10, 9};
    private static final byte h = -126;
    private static final byte i = 1;
    private static final byte j = 31;
    private static final byte k = -32;
    private static final int l = 5;
    public byte[] a;
    public byte[] b;
    public byte[] c;
    private y m;
    private short n;
    private au o;
    private Boolean p;
    private final long q;
    private byte[] r;

    public static class a implements bb {
        private final long a;

        public a() {
            this.a = -1L;
        }

        public a(int i) {
            this.a = i;
        }

        @Override // com.umeng.commonsdk.proguard.bb
        public az a(bn bnVar) {
            return new at(bnVar, this.a);
        }
    }

    public static class b {
        public static final byte a = 1;
        public static final byte b = 2;
        public static final byte c = 3;
        public static final byte d = 4;
        public static final byte e = 5;
        public static final byte f = 6;
        public static final byte g = 7;
        public static final byte h = 8;
        public static final byte i = 9;
        public static final byte j = 10;
        public static final byte k = 11;
        public static final byte l = 12;

        private b() {
        }
    }

    public at(bn bnVar) {
        this(bnVar, -1L);
    }

    public at(bn bnVar, long j2) {
        super(bnVar);
        this.m = new y(15);
        this.n = (short) 0;
        this.o = null;
        this.p = null;
        this.a = new byte[5];
        this.b = new byte[10];
        this.r = new byte[1];
        this.c = new byte[1];
        this.q = j2;
    }

    private int E() throws ag {
        int i2 = 0;
        if (this.g.h() >= 5) {
            byte[] bArrF = this.g.f();
            int iG = this.g.g();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                byte b2 = bArrF[iG + i2];
                i3 |= (b2 & 127) << i4;
                if ((b2 & 128) != 128) {
                    this.g.a(i2 + 1);
                    return i3;
                }
                i4 += 7;
                i2++;
            }
        } else {
            int i5 = 0;
            while (true) {
                byte bU = u();
                i2 |= (bU & 127) << i5;
                if ((bU & 128) != 128) {
                    return i2;
                }
                i5 += 7;
            }
        }
    }

    private long F() throws ag {
        int i2 = 0;
        long j2 = 0;
        if (this.g.h() >= 10) {
            byte[] bArrF = this.g.f();
            int iG = this.g.g();
            long j3 = 0;
            int i3 = 0;
            while (true) {
                byte b2 = bArrF[iG + i2];
                j3 |= ((long) (b2 & 127)) << i3;
                if ((b2 & 128) != 128) {
                    this.g.a(i2 + 1);
                    return j3;
                }
                i3 += 7;
                i2++;
            }
        } else {
            while (true) {
                byte bU = u();
                j2 |= ((long) (bU & 127)) << i2;
                if ((bU & 128) != 128) {
                    return j2;
                }
                i2 += 7;
            }
        }
    }

    private long a(byte[] bArr) {
        return ((((long) bArr[7]) & 255) << 56) | ((((long) bArr[6]) & 255) << 48) | ((((long) bArr[5]) & 255) << 40) | ((((long) bArr[4]) & 255) << 32) | ((((long) bArr[3]) & 255) << 24) | ((((long) bArr[2]) & 255) << 16) | ((((long) bArr[1]) & 255) << 8) | (255 & ((long) bArr[0]));
    }

    private void a(long j2, byte[] bArr, int i2) {
        bArr[i2 + 0] = (byte) (j2 & 255);
        bArr[i2 + 1] = (byte) ((j2 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((j2 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((j2 >> 24) & 255);
        bArr[i2 + 4] = (byte) ((j2 >> 32) & 255);
        bArr[i2 + 5] = (byte) ((j2 >> 40) & 255);
        bArr[i2 + 6] = (byte) ((j2 >> 48) & 255);
        bArr[i2 + 7] = (byte) ((j2 >> 56) & 255);
    }

    private void a(au auVar, byte b2) throws ag {
        if (b2 == -1) {
            b2 = e(auVar.b);
        }
        short s = auVar.c;
        short s2 = this.n;
        if (s <= s2 || s - s2 > 15) {
            b(b2);
            a(auVar.c);
        } else {
            d(b2 | ((s - s2) << 4));
        }
        this.n = auVar.c;
    }

    private void a(byte[] bArr, int i2, int i3) throws ag {
        b(i3);
        this.g.b(bArr, i2, i3);
    }

    private void b(byte b2) throws ag {
        byte[] bArr = this.r;
        bArr[0] = b2;
        this.g.b(bArr);
    }

    private void b(int i2) throws ag {
        int i3 = 0;
        while ((i2 & (-128)) != 0) {
            this.a[i3] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
            i3++;
        }
        byte[] bArr = this.a;
        bArr[i3] = (byte) i2;
        this.g.b(bArr, 0, i3 + 1);
    }

    private void b(long j2) throws ag {
        int i2 = 0;
        while (true) {
            long j3 = (-128) & j2;
            byte[] bArr = this.b;
            int i3 = i2 + 1;
            if (j3 == 0) {
                bArr[i2] = (byte) j2;
                this.g.b(bArr, 0, i3);
                return;
            } else {
                bArr[i2] = (byte) ((127 & j2) | 128);
                j2 >>>= 7;
                i2 = i3;
            }
        }
    }

    private int c(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    private long c(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    private boolean c(byte b2) {
        int i2 = b2 & bg.m;
        return i2 == 1 || i2 == 2;
    }

    private byte d(byte b2) throws ba {
        byte b3 = (byte) (b2 & bg.m);
        switch (b3) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return bg.m;
            case 10:
                return bg.l;
            case 11:
                return bg.k;
            case 12:
                return (byte) 12;
            default:
                throw new ba("don't know what type: " + ((int) b3));
        }
    }

    private long d(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    private void d(int i2) throws ag {
        b((byte) i2);
    }

    private byte e(byte b2) {
        return f[b2];
    }

    private byte[] e(int i2) throws ag {
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i2];
        this.g.d(bArr, 0, i2);
        return bArr;
    }

    private void f(int i2) throws ba {
        if (i2 < 0) {
            throw new ba("Negative length: " + i2);
        }
        long j2 = this.q;
        if (j2 == -1 || i2 <= j2) {
            return;
        }
        throw new ba("Length exceeded max allowed: " + i2);
    }

    private int g(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public ByteBuffer A() throws ag {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[iE];
        this.g.d(bArr, 0, iE);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void B() {
        this.m.c();
        this.n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(byte b2) throws ag {
        b(b2);
    }

    public void a(byte b2, int i2) throws ag {
        if (i2 <= 14) {
            d(e(b2) | (i2 << 4));
        } else {
            d(e(b2) | 240);
            b(i2);
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(double d2) throws ag {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(Double.doubleToLongBits(d2), bArr, 0);
        this.g.b(bArr);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(int i2) throws ag {
        b(c(i2));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(long j2) throws ag {
        b(c(j2));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(au auVar) throws ag {
        if (auVar.b == 2) {
            this.o = auVar;
        } else {
            a(auVar, (byte) -1);
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(av avVar) throws ag {
        a(avVar.a, avVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(aw awVar) throws ag {
        int iE;
        int i2 = awVar.c;
        if (i2 == 0) {
            iE = 0;
        } else {
            b(i2);
            iE = e(awVar.b) | (e(awVar.a) << 4);
        }
        d(iE);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(ax axVar) throws ag {
        b(h);
        d(((axVar.b << 5) & (-32)) | 1);
        b(axVar.c);
        a(axVar.a);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(bd bdVar) throws ag {
        a(bdVar.a, bdVar.b);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(be beVar) throws ag {
        this.m.a(this.n);
        this.n = (short) 0;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(String str) throws ag {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new ag("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(ByteBuffer byteBuffer) throws ag {
        a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(short s) throws ag {
        b(c((int) s));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void a(boolean z) throws ag {
        au auVar = this.o;
        if (auVar == null) {
            b(z ? (byte) 1 : (byte) 2);
        } else {
            a(auVar, z ? (byte) 1 : (byte) 2);
            this.o = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void b() throws ag {
        this.n = this.m.a();
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void c() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void d() throws ag {
        b((byte) 0);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void e() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void f() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void g() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public ax h() throws ag {
        byte bU = u();
        if (bU != -126) {
            throw new ba("Expected protocol id " + Integer.toHexString(-126) + " but got " + Integer.toHexString(bU));
        }
        byte bU2 = u();
        byte b2 = (byte) (bU2 & j);
        if (b2 == 1) {
            return new ax(z(), (byte) ((bU2 >> 5) & 3), E());
        }
        throw new ba("Expected version 1 but got " + ((int) b2));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void i() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public be j() throws ag {
        this.m.a(this.n);
        this.n = (short) 0;
        return d;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void k() throws ag {
        this.n = this.m.a();
    }

    @Override // com.umeng.commonsdk.proguard.az
    public au l() throws ag {
        byte bU = u();
        if (bU == 0) {
            return e;
        }
        short s = (short) ((bU & 240) >> 4);
        short sV = s == 0 ? v() : (short) (this.n + s);
        byte b2 = (byte) (bU & bg.m);
        au auVar = new au("", d(b2), sV);
        if (c(bU)) {
            this.p = b2 == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.n = auVar.c;
        return auVar;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void m() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public aw n() throws ag {
        int iE = E();
        byte bU = iE == 0 ? (byte) 0 : u();
        return new aw(d((byte) (bU >> 4)), d((byte) (bU & bg.m)), iE);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void o() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public av p() throws ag {
        byte bU = u();
        int iE = (bU >> 4) & 15;
        if (iE == 15) {
            iE = E();
        }
        return new av(d(bU), iE);
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void q() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public bd r() throws ag {
        return new bd(p());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public void s() throws ag {
    }

    @Override // com.umeng.commonsdk.proguard.az
    public boolean t() throws ag {
        Boolean bool = this.p;
        if (bool == null) {
            return u() == 1;
        }
        boolean zBooleanValue = bool.booleanValue();
        this.p = null;
        return zBooleanValue;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public byte u() throws ag {
        if (this.g.h() <= 0) {
            this.g.d(this.c, 0, 1);
            return this.c[0];
        }
        byte b2 = this.g.f()[this.g.g()];
        this.g.a(1);
        return b2;
    }

    @Override // com.umeng.commonsdk.proguard.az
    public short v() throws ag {
        return (short) g(E());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public int w() throws ag {
        return g(E());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public long x() throws ag {
        return d(F());
    }

    @Override // com.umeng.commonsdk.proguard.az
    public double y() throws ag {
        byte[] bArr = new byte[8];
        this.g.d(bArr, 0, 8);
        return Double.longBitsToDouble(a(bArr));
    }

    @Override // com.umeng.commonsdk.proguard.az
    public String z() throws ag {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return "";
        }
        try {
            if (this.g.h() < iE) {
                return new String(e(iE), "UTF-8");
            }
            String str = new String(this.g.f(), this.g.g(), iE, "UTF-8");
            this.g.a(iE);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new ag("UTF-8 not supported!");
        }
    }
}
