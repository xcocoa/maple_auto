package com.anythink.expressad.exoplayer.b;

import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    private static final int a = 65;
    private static final int b = 400;
    private static final int c = 4000;
    private final int d;
    private final int e;
    private final float f;
    private final float g;
    private final float h;
    private final int i;
    private final int j;
    private final int k;
    private final short[] l;
    private short[] m;
    private int n;
    private short[] o;
    private int p;
    private short[] q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;

    public s(int i, int i2, float f, float f2, int i3) {
        this.d = i;
        this.e = i2;
        this.f = f;
        this.g = f2;
        this.h = i / i3;
        this.i = i / b;
        int i4 = i / 65;
        this.j = i4;
        int i5 = i4 * 2;
        this.k = i5;
        this.l = new short[i5];
        this.m = new short[i5 * i2];
        this.o = new short[i5 * i2];
        this.q = new short[i5 * i2];
    }

    private int a(short[] sArr, int i) {
        int iA;
        int i2 = this.d;
        int i3 = i2 > 4000 ? i2 / 4000 : 1;
        if (this.e == 1 && i3 == 1) {
            iA = a(sArr, i, this.i, this.j);
        } else {
            c(sArr, i, i3);
            int iA2 = a(this.l, 0, this.i / i3, this.j / i3);
            if (i3 != 1) {
                int i4 = iA2 * i3;
                int i5 = i3 * 4;
                int i6 = i4 - i5;
                int i7 = i4 + i5;
                int i8 = this.i;
                if (i6 < i8) {
                    i6 = i8;
                }
                int i9 = this.j;
                if (i7 > i9) {
                    i7 = i9;
                }
                if (this.e == 1) {
                    iA = a(sArr, i, i6, i7);
                } else {
                    c(sArr, i, 1);
                    iA = a(this.l, 0, i6, i7);
                }
            } else {
                iA = iA2;
            }
        }
        int i10 = this.x;
        int i11 = i10 != 0 && this.v != 0 && this.y <= i10 * 3 && i10 * 2 > this.w * 3 ? this.v : iA;
        this.w = i10;
        this.v = iA;
        return i11;
    }

    private int a(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f >= 2.0f) {
            i3 = (int) (i2 / (f - 1.0f));
        } else {
            this.u = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            i3 = i2;
        }
        short[] sArrA = a(this.o, this.p, i3);
        this.o = sArrA;
        a(i3, this.e, sArrA, this.p, sArr, i, sArr, i + i2);
        this.p += i3;
        return i3;
    }

    private int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.e;
        int i5 = 1;
        int i6 = 255;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += Math.abs(sArr[i4 + i9] - sArr[(i4 + i2) + i9]);
            }
            if (iAbs * i7 < i5 * i2) {
                i7 = i2;
                i5 = iAbs;
            }
            if (iAbs * i6 > i8 * i2) {
                i6 = i2;
                i8 = iAbs;
            }
            i2++;
        }
        this.x = i5 / i7;
        this.y = i8 / i6;
        return i7;
    }

    private void a(float f) {
        int iA;
        int i;
        int i2;
        int i3 = this.n;
        if (i3 < this.k) {
            return;
        }
        int i4 = 0;
        do {
            int i5 = this.u;
            if (i5 > 0) {
                int iMin = Math.min(this.k, i5);
                b(this.m, i4, iMin);
                this.u -= iMin;
                i4 += iMin;
            } else {
                short[] sArr = this.m;
                int i6 = this.d;
                int i7 = i6 > 4000 ? i6 / 4000 : 1;
                if (this.e == 1 && i7 == 1) {
                    iA = a(sArr, i4, this.i, this.j);
                } else {
                    c(sArr, i4, i7);
                    int iA2 = a(this.l, 0, this.i / i7, this.j / i7);
                    if (i7 != 1) {
                        int i8 = iA2 * i7;
                        int i9 = i7 * 4;
                        int i10 = i8 - i9;
                        int i11 = i8 + i9;
                        int i12 = this.i;
                        if (i10 < i12) {
                            i10 = i12;
                        }
                        int i13 = this.j;
                        if (i11 > i13) {
                            i11 = i13;
                        }
                        if (this.e == 1) {
                            iA = a(sArr, i4, i10, i11);
                        } else {
                            c(sArr, i4, 1);
                            iA = a(this.l, 0, i10, i11);
                        }
                    } else {
                        iA = iA2;
                    }
                }
                int i14 = this.x;
                int i15 = i14 != 0 && this.v != 0 && this.y <= i14 * 3 && i14 * 2 > this.w * 3 ? this.v : iA;
                this.w = i14;
                this.v = iA;
                if (f > 1.0d) {
                    short[] sArr2 = this.m;
                    if (f >= 2.0f) {
                        i2 = (int) (i15 / (f - 1.0f));
                    } else {
                        this.u = (int) ((i15 * (2.0f - f)) / (f - 1.0f));
                        i2 = i15;
                    }
                    short[] sArrA = a(this.o, this.p, i2);
                    this.o = sArrA;
                    a(i2, this.e, sArrA, this.p, sArr2, i4, sArr2, i4 + i15);
                    this.p += i2;
                    i4 += i15 + i2;
                } else {
                    short[] sArr3 = this.m;
                    if (f < 0.5f) {
                        i = (int) ((i15 * f) / (1.0f - f));
                    } else {
                        this.u = (int) ((i15 * ((2.0f * f) - 1.0f)) / (1.0f - f));
                        i = i15;
                    }
                    int i16 = i15 + i;
                    short[] sArrA2 = a(this.o, this.p, i16);
                    this.o = sArrA2;
                    int i17 = this.e;
                    System.arraycopy(sArr3, i4 * i17, sArrA2, this.p * i17, i17 * i15);
                    a(i, this.e, this.o, this.p + i15, sArr3, i4 + i15, sArr3, i4);
                    this.p += i16;
                    i4 += i;
                }
            }
        } while (this.k + i4 <= i3);
        int i18 = this.n - i4;
        short[] sArr4 = this.m;
        int i19 = this.e;
        System.arraycopy(sArr4, i4 * i19, sArr4, 0, i19 * i18);
        this.n = i18;
    }

    private void a(float f, int i) {
        int i2;
        int i3;
        int i4;
        if (this.p == i) {
            return;
        }
        int i5 = this.d;
        int i6 = (int) (i5 / f);
        while (true) {
            if (i6 <= 16384 && i5 <= 16384) {
                break;
            }
            i6 /= 2;
            i5 /= 2;
        }
        int i7 = this.p - i;
        short[] sArrA = a(this.q, this.r, i7);
        this.q = sArrA;
        short[] sArr = this.o;
        int i8 = this.e;
        System.arraycopy(sArr, i * i8, sArrA, this.r * i8, i8 * i7);
        this.p = i;
        this.r += i7;
        int i9 = 0;
        while (true) {
            i2 = this.r;
            if (i9 >= i2 - 1) {
                break;
            }
            while (true) {
                i3 = this.s;
                int i10 = (i3 + 1) * i6;
                i4 = this.t;
                if (i10 <= i4 * i5) {
                    break;
                }
                this.o = a(this.o, this.p, 1);
                int i11 = 0;
                while (true) {
                    int i12 = this.e;
                    if (i11 < i12) {
                        short[] sArr2 = this.o;
                        int i13 = (this.p * i12) + i11;
                        short[] sArr3 = this.q;
                        int i14 = (i9 * i12) + i11;
                        short s = sArr3[i14];
                        short s2 = sArr3[i14 + i12];
                        int i15 = this.t * i5;
                        int i16 = this.s;
                        int i17 = i16 * i6;
                        int i18 = (i16 + 1) * i6;
                        int i19 = i18 - i15;
                        int i20 = i18 - i17;
                        sArr2[i13] = (short) (((s * i19) + ((i20 - i19) * s2)) / i20);
                        i11++;
                    }
                }
                this.t++;
                this.p++;
            }
            int i21 = i3 + 1;
            this.s = i21;
            if (i21 == i5) {
                this.s = 0;
                com.anythink.expressad.exoplayer.k.a.b(i4 == i6);
                this.t = 0;
            }
            i9++;
        }
        int i22 = i2 - 1;
        if (i22 != 0) {
            short[] sArr4 = this.q;
            int i23 = this.e;
            System.arraycopy(sArr4, i22 * i23, sArr4, 0, (i2 - i22) * i23);
            this.r -= i22;
        }
    }

    private void a(int i) {
        int i2 = this.n - i;
        short[] sArr = this.m;
        int i3 = this.e;
        System.arraycopy(sArr, i * i3, sArr, 0, i3 * i2);
        this.n = i2;
    }

    private static void a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr2[i9] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    private boolean a(int i, int i2) {
        return i != 0 && this.v != 0 && i2 <= i * 3 && i * 2 > this.w * 3;
    }

    private short[] a(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.e;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    private int b(int i) {
        int iMin = Math.min(this.k, this.u);
        b(this.m, i, iMin);
        this.u -= iMin;
        return iMin;
    }

    private int b(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            this.u = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            i3 = i2;
        }
        int i4 = i2 + i3;
        short[] sArrA = a(this.o, this.p, i4);
        this.o = sArrA;
        int i5 = this.e;
        System.arraycopy(sArr, i * i5, sArrA, this.p * i5, i5 * i2);
        a(i3, this.e, this.o, this.p + i2, sArr, i + i2, sArr, i);
        this.p += i4;
        return i3;
    }

    private short b(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[i + this.e];
        int i4 = this.t * i2;
        int i5 = this.s;
        int i6 = i5 * i3;
        int i7 = (i5 + 1) * i3;
        int i8 = i7 - i4;
        int i9 = i7 - i6;
        return (short) (((s * i8) + ((i9 - i8) * s2)) / i9);
    }

    private void b(short[] sArr, int i, int i2) {
        short[] sArrA = a(this.o, this.p, i2);
        this.o = sArrA;
        int i3 = this.e;
        System.arraycopy(sArr, i * i3, sArrA, this.p * i3, i3 * i2);
        this.p += i2;
    }

    private void c(int i) {
        int i2 = this.p - i;
        short[] sArrA = a(this.q, this.r, i2);
        this.q = sArrA;
        short[] sArr = this.o;
        int i3 = this.e;
        System.arraycopy(sArr, i * i3, sArrA, this.r * i3, i3 * i2);
        this.p = i;
        this.r += i2;
    }

    private void c(short[] sArr, int i, int i2) {
        int i3 = this.k / i2;
        int i4 = this.e;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.l[i7] = (short) (i8 / i5);
        }
    }

    private void d() {
        int i = this.p;
        float f = this.f;
        float f2 = this.g;
        float f3 = f / f2;
        float f4 = this.h * f2;
        double d = f3;
        if (d > 1.00001d || d < 0.99999d) {
            a(f3);
        } else {
            b(this.m, 0, this.n);
            this.n = 0;
        }
        if (f4 != 1.0f) {
            a(f4, i);
        }
    }

    private void d(int i) {
        if (i == 0) {
            return;
        }
        short[] sArr = this.q;
        int i2 = this.e;
        System.arraycopy(sArr, i * i2, sArr, 0, (this.r - i) * i2);
        this.r -= i;
    }

    public final void a() {
        int i;
        int i2 = this.n;
        float f = this.f;
        float f2 = this.g;
        int i3 = this.p + ((int) ((((i2 / (f / f2)) + this.r) / (this.h * f2)) + 0.5f));
        this.m = a(this.m, i2, (this.k * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.k;
            int i5 = this.e;
            if (i4 >= i * 2 * i5) {
                break;
            }
            this.m[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.n += i * 2;
        d();
        if (this.p > i3) {
            this.p = i3;
        }
        this.n = 0;
        this.u = 0;
        this.r = 0;
    }

    public final void a(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.e;
        int i2 = iRemaining / i;
        short[] sArrA = a(this.m, this.n, i2);
        this.m = sArrA;
        shortBuffer.get(sArrA, this.n * this.e, ((i * i2) * 2) / 2);
        this.n += i2;
        d();
    }

    public final void b() {
        this.n = 0;
        this.p = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.x = 0;
        this.y = 0;
    }

    public final void b(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.e, this.p);
        shortBuffer.put(this.o, 0, this.e * iMin);
        int i = this.p - iMin;
        this.p = i;
        short[] sArr = this.o;
        int i2 = this.e;
        System.arraycopy(sArr, iMin * i2, sArr, 0, i * i2);
    }

    public final int c() {
        return this.p;
    }
}
