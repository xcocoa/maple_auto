package z2;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public final class ls {
    private static final float[][] OooO00o = (float[][]) Array.newInstance((Class<?>) float.class, as.OooO.length, 8);

    static {
        int i;
        int i2 = 0;
        while (true) {
            int[] iArr = as.OooO;
            if (i2 >= iArr.length) {
                return;
            }
            int i3 = iArr[i2];
            int i4 = i3 & 1;
            int i5 = 0;
            while (i5 < 8) {
                float f = 0.0f;
                while (true) {
                    i = i3 & 1;
                    if (i == i4) {
                        f += 1.0f;
                        i3 >>= 1;
                    }
                }
                OooO00o[i2][(8 - i5) - 1] = f / 17.0f;
                i5++;
                i4 = i;
            }
            i2++;
        }
    }

    private ls() {
    }

    private static int OooO00o(int[] iArr) {
        long j = 0;
        for (int i = 0; i < iArr.length; i++) {
            for (int i2 = 0; i2 < iArr[i]; i2++) {
                int i3 = 1;
                long j2 = j << 1;
                if (i % 2 != 0) {
                    i3 = 0;
                }
                j = j2 | ((long) i3);
            }
        }
        return (int) j;
    }

    private static int OooO0O0(int[] iArr) {
        int iOooO0Oo = po.OooO0Oo(iArr);
        float[] fArr = new float[8];
        if (iOooO0Oo > 1) {
            for (int i = 0; i < 8; i++) {
                fArr[i] = iArr[i] / iOooO0Oo;
            }
        }
        float f = Float.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            float[][] fArr2 = OooO00o;
            if (i3 >= fArr2.length) {
                return i2;
            }
            float f2 = 0.0f;
            float[] fArr3 = fArr2[i3];
            for (int i4 = 0; i4 < 8; i4++) {
                float f3 = fArr3[i4] - fArr[i4];
                f2 += f3 * f3;
                if (f2 >= f) {
                    break;
                }
            }
            if (f2 < f) {
                i2 = as.OooO[i3];
                f = f2;
            }
            i3++;
        }
    }

    private static int OooO0OO(int[] iArr) {
        int iOooO00o = OooO00o(iArr);
        if (as.OooO0O0(iOooO00o) == -1) {
            return -1;
        }
        return iOooO00o;
    }

    public static int OooO0Oo(int[] iArr) {
        int iOooO0OO = OooO0OO(OooO0o0(iArr));
        return iOooO0OO != -1 ? iOooO0OO : OooO0O0(iArr);
    }

    private static int[] OooO0o0(int[] iArr) {
        float fOooO0Oo = po.OooO0Oo(iArr);
        int[] iArr2 = new int[8];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 17; i3++) {
            if (iArr[i2] + i <= (fOooO0Oo / 34.0f) + ((i3 * fOooO0Oo) / 17.0f)) {
                i += iArr[i2];
                i2++;
            }
            iArr2[i2] = iArr2[i2] + 1;
        }
        return iArr2;
    }
}
