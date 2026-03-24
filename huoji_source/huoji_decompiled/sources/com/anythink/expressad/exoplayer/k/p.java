package com.anythink.expressad.exoplayer.k;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final int b = 255;
    private static final String d = "NalUnitUtil";
    private static final int e = 6;
    private static final int f = 7;
    private static final int g = 39;
    public static final byte[] a = {0, 0, 0, 1};
    public static final float[] c = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    private static final Object h = new Object();
    private static int[] i = new int[10];

    public static final class a {
        public final int a;
        public final int b;
        public final boolean c;

        public a(int i, int i2, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = z;
        }
    }

    public static final class b {
        public final int a;
        public final int b;
        public final int c;
        public final float d;
        public final boolean e;
        public final boolean f;
        public final int g;
        public final int h;
        public final int i;
        public final boolean j;

        public b(int i, int i2, int i3, float f, boolean z, boolean z3, int i4, int i5, int i6, boolean z4) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = f;
            this.e = z;
            this.f = z3;
            this.g = i4;
            this.h = i5;
            this.i = i6;
            this.j = z4;
        }
    }

    private p() {
    }

    public static int a(byte[] bArr, int i2) {
        int i3;
        synchronized (h) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                while (true) {
                    if (i4 >= i2 - 2) {
                        i4 = i2;
                        break;
                    }
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        break;
                    }
                    i4++;
                }
                if (i4 < i2) {
                    int[] iArr = i;
                    if (iArr.length <= i5) {
                        i = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    i[i5] = i4;
                    i4 += 3;
                    i5++;
                }
            }
            i3 = i2 - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = i[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i6 = i11 + 1;
                bArr[i11] = 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i3 - i6);
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0096, code lost:
    
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int a(byte[] bArr, int i2, int i3, boolean[] zArr) {
        int i4 = i3 - i2;
        com.anythink.expressad.exoplayer.k.a.b(i4 >= 0);
        if (i4 == 0) {
            return i3;
        }
        if (zArr != null) {
            if (zArr[0]) {
                a(zArr);
                return i2 - 3;
            }
            if (i4 > 1 && zArr[1] && bArr[i2] == 1) {
                a(zArr);
                return i2 - 2;
            }
            if (i4 > 2 && zArr[2] && bArr[i2] == 0 && bArr[i2 + 1] == 1) {
                a(zArr);
                return i2 - 1;
            }
        }
        int i5 = i3 - 1;
        int i6 = i2 + 2;
        while (i6 < i5) {
            if ((bArr[i6] & 254) == 0) {
                int i7 = i6 - 2;
                if (bArr[i7] == 0 && bArr[i6 - 1] == 0 && bArr[i6] == 1) {
                    if (zArr != null) {
                        a(zArr);
                    }
                    return i7;
                }
                i6 -= 2;
            }
            i6 += 3;
        }
        if (zArr != null) {
            boolean z = i4 > 2 ? false : false;
            zArr[0] = z;
            zArr[1] = i4 <= 1 ? zArr[2] && bArr[i5] == 0 : bArr[i3 + (-2)] == 0 && bArr[i5] == 0;
            zArr[2] = bArr[i5] == 0;
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static b a(byte[] bArr, int i2, int i3) {
        int iC;
        boolean z;
        int i4;
        int iC2;
        boolean z3;
        boolean zB;
        float f2;
        int i5;
        t tVar = new t(bArr, i2, i3);
        tVar.a(8);
        int iB = tVar.b(8);
        tVar.a(16);
        int iC3 = tVar.c();
        if (iB == 100 || iB == 110 || iB == 122 || iB == 244 || iB == 44 || iB == 83 || iB == 86 || iB == 118 || iB == 128 || iB == 138) {
            iC = tVar.c();
            boolean zB2 = iC == 3 ? tVar.b() : false;
            tVar.c();
            tVar.c();
            tVar.a();
            if (tVar.b()) {
                int i6 = iC != 3 ? 8 : 12;
                int i7 = 0;
                while (i7 < i6) {
                    if (tVar.b()) {
                        int i8 = i7 < 6 ? 16 : 64;
                        int iD = 8;
                        int i9 = 8;
                        for (int i10 = 0; i10 < i8; i10++) {
                            if (iD != 0) {
                                iD = ((tVar.d() + i9) + 256) % 256;
                            }
                            if (iD != 0) {
                                i9 = iD;
                            }
                        }
                    }
                    i7++;
                }
            }
            z = zB2;
        } else {
            iC = 1;
            z = false;
        }
        int iC4 = tVar.c() + 4;
        int iC5 = tVar.c();
        if (iC5 == 0) {
            i4 = iC3;
            iC2 = tVar.c() + 4;
        } else {
            if (iC5 == 1) {
                boolean zB3 = tVar.b();
                tVar.d();
                tVar.d();
                long jC = tVar.c();
                i4 = iC3;
                for (int i11 = 0; i11 < jC; i11++) {
                    tVar.c();
                }
                z3 = zB3;
                iC2 = 0;
                tVar.c();
                tVar.a();
                int iC6 = tVar.c() + 1;
                int iC7 = tVar.c() + 1;
                zB = tVar.b();
                int i12 = (2 - (zB ? 1 : 0)) * iC7;
                if (!zB) {
                    tVar.a();
                }
                tVar.a();
                int i13 = iC6 * 16;
                int i14 = i12 * 16;
                if (tVar.b()) {
                    int iC8 = tVar.c();
                    int iC9 = tVar.c();
                    int iC10 = tVar.c();
                    int iC11 = tVar.c();
                    if (iC == 0) {
                        i5 = 2 - (zB ? 1 : 0);
                    } else {
                        int i15 = iC == 3 ? 1 : 2;
                        i5 = (2 - (zB ? 1 : 0)) * (iC == 1 ? 2 : 1);
                        i = i15;
                    }
                    i13 -= (iC8 + iC9) * i;
                    i14 -= (iC10 + iC11) * i5;
                }
                int i16 = i14;
                int i17 = i13;
                float f3 = 1.0f;
                if (tVar.b() || !tVar.b()) {
                    f2 = 1.0f;
                } else {
                    int iB2 = tVar.b(8);
                    if (iB2 == 255) {
                        int iB3 = tVar.b(16);
                        int iB4 = tVar.b(16);
                        if (iB3 != 0 && iB4 != 0) {
                            f3 = iB3 / iB4;
                        }
                        f2 = f3;
                    } else {
                        float[] fArr = c;
                        if (iB2 < fArr.length) {
                            f2 = fArr[iB2];
                        } else {
                            Log.w(d, "Unexpected aspect_ratio_idc value: ".concat(String.valueOf(iB2)));
                            f2 = 1.0f;
                        }
                    }
                }
                return new b(i4, i17, i16, f2, z, zB, iC4, iC5, iC2, z3);
            }
            i4 = iC3;
            iC2 = 0;
        }
        z3 = false;
        tVar.c();
        tVar.a();
        int iC62 = tVar.c() + 1;
        int iC72 = tVar.c() + 1;
        zB = tVar.b();
        int i122 = (2 - (zB ? 1 : 0)) * iC72;
        if (!zB) {
        }
        tVar.a();
        int i132 = iC62 * 16;
        int i142 = i122 * 16;
        if (tVar.b()) {
        }
        int i162 = i142;
        int i172 = i132;
        float f32 = 1.0f;
        if (tVar.b()) {
            f2 = 1.0f;
        }
        return new b(i4, i172, i162, f2, z, zB, iC4, iC5, iC2, z3);
    }

    private static void a(t tVar, int i2) {
        int iD = 8;
        int i3 = 8;
        for (int i4 = 0; i4 < i2; i4++) {
            if (iD != 0) {
                iD = ((tVar.d() + i3) + 256) % 256;
            }
            if (iD != 0) {
                i3 = iD;
            }
        }
    }

    public static void a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i5 = byteBuffer.get(i2) & 255;
            if (i3 == 3) {
                if (i5 == 1 && (byteBuffer.get(i4) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i2 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i5 == 0) {
                i3++;
            }
            if (i5 != 0) {
                i3 = 0;
            }
            i2 = i4;
        }
    }

    private static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean a(String str, byte b2) {
        return (o.h.equals(str) && (b2 & 31) == 6) || (o.i.equals(str) && ((b2 & 126) >> 1) == 39);
    }

    private static int b(byte[] bArr, int i2) {
        return bArr[i2 + 3] & 31;
    }

    private static a b(byte[] bArr, int i2, int i3) {
        t tVar = new t(bArr, i2, i3);
        tVar.a(8);
        int iC = tVar.c();
        int iC2 = tVar.c();
        tVar.a();
        return new a(iC, iC2, tVar.b());
    }

    private static int c(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 126) >> 1;
    }

    private static int c(byte[] bArr, int i2, int i3) {
        while (i2 < i3 - 2) {
            if (bArr[i2] == 0 && bArr[i2 + 1] == 0 && bArr[i2 + 2] == 3) {
                return i2;
            }
            i2++;
        }
        return i3;
    }
}
