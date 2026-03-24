package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class yq extends nq {
    private static final float OooO = 0.7916667f;
    private static final float OooO0oO = 0.2f;
    private static final float OooO0oo = 0.45f;
    private static final float OooOO0 = 0.89285713f;
    private final int[] OooO0O0;
    private final int[] OooO0o;
    private final int[] OooO0o0;
    private final int[] OooO00o = new int[4];
    private final float[] OooO0OO = new float[4];
    private final float[] OooO0Oo = new float[4];

    public yq() {
        int[] iArr = new int[8];
        this.OooO0O0 = iArr;
        this.OooO0o0 = new int[iArr.length / 2];
        this.OooO0o = new int[iArr.length / 2];
    }

    public static void OooO(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] < f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    @Deprecated
    public static int OooO0oo(int[] iArr) {
        return po.OooO0Oo(iArr);
    }

    public static void OooOOOo(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] > f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    public static int OooOOo(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i = 0; i < iArr2.length; i++) {
            if (nq.OooO0o0(iArr, iArr2[i], OooO0oo) < OooO0oO) {
                return i;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static boolean OooOOo0(int[] iArr) {
        float f = (iArr[0] + iArr[1]) / ((iArr[2] + r1) + iArr[3]);
        if (f >= OooO && f <= OooOO0) {
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MIN_VALUE;
            for (int i3 : iArr) {
                if (i3 > i2) {
                    i2 = i3;
                }
                if (i3 < i) {
                    i = i3;
                }
            }
            if (i2 < i * 10) {
                return true;
            }
        }
        return false;
    }

    public final int[] OooOO0() {
        return this.OooO0O0;
    }

    public final int[] OooOO0O() {
        return this.OooO00o;
    }

    public final int[] OooOO0o() {
        return this.OooO0o;
    }

    public final int[] OooOOO() {
        return this.OooO0o0;
    }

    public final float[] OooOOO0() {
        return this.OooO0Oo;
    }

    public final float[] OooOOOO() {
        return this.OooO0OO;
    }
}
