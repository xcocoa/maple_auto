package z2;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/* JADX INFO: loaded from: classes2.dex */
public final class et {
    private static final int OooO0OO = 21522;
    private static final int[][] OooO0Oo = {new int[]{OooO0OO, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};
    private final ErrorCorrectionLevel OooO00o;
    private final byte OooO0O0;

    private et(int i) {
        this.OooO00o = ErrorCorrectionLevel.forBits((i >> 3) & 3);
        this.OooO0O0 = (byte) (i & 7);
    }

    public static et OooO00o(int i, int i2) {
        et etVarOooO0O0 = OooO0O0(i, i2);
        return etVarOooO0O0 != null ? etVarOooO0O0 : OooO0O0(i ^ OooO0OO, i2 ^ OooO0OO);
    }

    private static et OooO0O0(int i, int i2) {
        int iOooO0o0;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        for (int[] iArr : OooO0Oo) {
            int i5 = iArr[0];
            if (i5 == i || i5 == i2) {
                return new et(iArr[1]);
            }
            int iOooO0o02 = OooO0o0(i, i5);
            if (iOooO0o02 < i3) {
                i4 = iArr[1];
                i3 = iOooO0o02;
            }
            if (i != i2 && (iOooO0o0 = OooO0o0(i2, i5)) < i3) {
                i4 = iArr[1];
                i3 = iOooO0o0;
            }
        }
        if (i3 <= 3) {
            return new et(i4);
        }
        return null;
    }

    public static int OooO0o0(int i, int i2) {
        return Integer.bitCount(i ^ i2);
    }

    public final byte OooO0OO() {
        return this.OooO0O0;
    }

    public final ErrorCorrectionLevel OooO0Oo() {
        return this.OooO00o;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof et)) {
            return false;
        }
        et etVar = (et) obj;
        return this.OooO00o == etVar.OooO00o && this.OooO0O0 == etVar.OooO0O0;
    }

    public final int hashCode() {
        return (this.OooO00o.ordinal() << 3) | this.OooO0O0;
    }
}
