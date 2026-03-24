package com.anythink.expressad.exoplayer.k;

import android.util.Pair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private static final int b = 15;
    private static final int d = -1;
    private static final int f = 2;
    private static final int g = 5;
    private static final int h = 22;
    private static final int i = 29;
    private static final int j = 31;
    private static final byte[] a = {0, 0, 0, 1};
    private static final int[] c = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] e = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private d() {
    }

    private static int a(byte[] bArr, int i2) {
        int length = bArr.length - a.length;
        while (i2 <= length) {
            if (b(bArr, i2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static Pair<Integer, Integer> a(r rVar) {
        int iB = b(rVar);
        int iC = c(rVar);
        int iC2 = rVar.c(4);
        if (iB == 5 || iB == 29) {
            iC = c(rVar);
            if (b(rVar) == 22) {
                iC2 = rVar.c(4);
            }
        }
        int i2 = e[iC2];
        a.a(i2 != -1);
        return Pair.create(Integer.valueOf(iC), Integer.valueOf(i2));
    }

    public static Pair<Integer, Integer> a(byte[] bArr) {
        r rVar = new r(bArr);
        int iB = b(rVar);
        int iC = c(rVar);
        int iC2 = rVar.c(4);
        if (iB == 5 || iB == 29) {
            iC = c(rVar);
            if (b(rVar) == 22) {
                iC2 = rVar.c(4);
            }
        }
        int i2 = e[iC2];
        a.a(i2 != -1);
        return Pair.create(Integer.valueOf(iC), Integer.valueOf(i2));
    }

    private static void a(r rVar, int i2, int i3) {
        rVar.b(1);
        if (rVar.d()) {
            rVar.b(14);
        }
        boolean zD = rVar.d();
        if (i3 == 0) {
            throw new UnsupportedOperationException();
        }
        if (i2 == 6 || i2 == 20) {
            rVar.b(3);
        }
        if (zD) {
            if (i2 == 22) {
                rVar.b(16);
            }
            if (i2 == 17 || i2 == 19 || i2 == 20 || i2 == 23) {
                rVar.b(3);
            }
            rVar.b(1);
        }
    }

    private static byte[] a(int i2, int i3) {
        int i4 = 0;
        int i5 = -1;
        while (true) {
            int[] iArr = c;
            if (i4 >= iArr.length) {
                break;
            }
            if (i2 == iArr[i4]) {
                i5 = i4;
            }
            i4++;
        }
        int i6 = 0;
        int i7 = -1;
        while (true) {
            int[] iArr2 = e;
            if (i6 >= iArr2.length) {
                break;
            }
            if (i3 == iArr2[i6]) {
                i7 = i6;
            }
            i6++;
        }
        if (i2 != -1 && i7 != -1) {
            return new byte[]{(byte) (((i5 >> 1) & 7) | 16), (byte) (((i5 << 7) & 128) | ((i7 << 3) & 120))};
        }
        throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i2 + ", " + i3);
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = a;
        byte[] bArr3 = new byte[bArr2.length + i3];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i2, bArr3, bArr2.length, i3);
        return bArr3;
    }

    private static int b(r rVar) {
        int iC = rVar.c(5);
        return iC == 31 ? rVar.c(6) + 32 : iC;
    }

    private static boolean b(byte[] bArr, int i2) {
        if (bArr.length - i2 <= a.length) {
            return false;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr2 = a;
            if (i3 >= bArr2.length) {
                return true;
            }
            if (bArr[i2 + i3] != bArr2[i3]) {
                return false;
            }
            i3++;
        }
    }

    private static byte[] b(int i2, int i3) {
        return new byte[]{(byte) (((i2 >> 1) & 7) | 16), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    private static byte[][] b(byte[] bArr) {
        if (!b(bArr, 0)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int iA = 0;
        do {
            arrayList.add(Integer.valueOf(iA));
            iA = a(bArr, iA + a.length);
        } while (iA != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i2 = 0;
        while (i2 < arrayList.size()) {
            int iIntValue = ((Integer) arrayList.get(i2)).intValue();
            int iIntValue2 = (i2 < arrayList.size() + (-1) ? ((Integer) arrayList.get(i2 + 1)).intValue() : bArr.length) - iIntValue;
            byte[] bArr3 = new byte[iIntValue2];
            System.arraycopy(bArr, iIntValue, bArr3, 0, iIntValue2);
            bArr2[i2] = bArr3;
            i2++;
        }
        return bArr2;
    }

    private static int c(r rVar) {
        int iC = rVar.c(4);
        if (iC == 15) {
            return rVar.c(24);
        }
        a.a(iC < 13);
        return c[iC];
    }
}
