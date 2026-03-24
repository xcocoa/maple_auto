package z2;

import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class lp {
    public static final char OooO = 240;
    private static final char OooO00o = 129;
    public static final char OooO0O0 = 230;
    public static final char OooO0OO = 231;
    public static final char OooO0Oo = 235;
    private static final char OooO0o = 237;
    private static final char OooO0o0 = 236;
    public static final char OooO0oO = 238;
    public static final char OooO0oo = 239;
    public static final char OooOO0 = 254;
    public static final char OooOO0O = 254;
    private static final String OooOO0o = "[)>\u001e05\u001d";
    private static final String OooOOO = "\u001e\u0004";
    private static final String OooOOO0 = "[)>\u001e06\u001d";
    public static final int OooOOOO = 0;
    public static final int OooOOOo = 1;
    public static final int OooOOo = 3;
    public static final int OooOOo0 = 2;
    public static final int OooOOoo = 4;
    public static final int OooOo00 = 5;

    private lp() {
    }

    private static boolean OooO(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    public static int OooO00o(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            loop0: while (true) {
                char cCharAt = charSequence.charAt(i);
                while (OooO0oO(cCharAt) && i < length) {
                    i2++;
                    i++;
                    if (i < length) {
                        break;
                    }
                }
            }
        }
        return i2;
    }

    public static String OooO0O0(String str) {
        return OooO0OO(str, SymbolShapeHint.FORCE_NONE, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b8 A[LOOP:1: B:27:0x00b2->B:29:0x00b8, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO0OO(String str, SymbolShapeHint symbolShapeHint, wl wlVar, wl wlVar2) {
        char c;
        int iOooO00o;
        int iOooO0O0;
        StringBuilder sbOooO0O0;
        int iOooO0o = 0;
        ip[] ipVarArr = {new cp(), new ep(), new np(), new op(), new hp(), new dp()};
        jp jpVar = new jp(str);
        jpVar.OooOOOO(symbolShapeHint);
        jpVar.OooOOO0(wlVar, wlVar2);
        if (!str.startsWith(OooOO0o) || !str.endsWith(OooOOO)) {
            if (str.startsWith(OooOOO0) && str.endsWith(OooOOO)) {
                c = OooO0o;
            }
            while (jpVar.OooOO0()) {
                ipVarArr[iOooO0o].OooO0O0(jpVar);
                if (jpVar.OooO0o() >= 0) {
                    iOooO0o = jpVar.OooO0o();
                    jpVar.OooOO0O();
                }
            }
            iOooO00o = jpVar.OooO00o();
            jpVar.OooOOo0();
            iOooO0O0 = jpVar.OooO0oo().OooO0O0();
            if (iOooO00o < iOooO0O0 && iOooO0o != 0 && iOooO0o != 5 && iOooO0o != 4) {
                jpVar.OooOOoo((char) 254);
            }
            sbOooO0O0 = jpVar.OooO0O0();
            if (sbOooO0O0.length() < iOooO0O0) {
                sbOooO0O0.append(OooO00o);
            }
            while (sbOooO0O0.length() < iOooO0O0) {
                sbOooO0O0.append(OooOOOo(OooO00o, sbOooO0O0.length() + 1));
            }
            return jpVar.OooO0O0().toString();
        }
        c = OooO0o0;
        jpVar.OooOOoo(c);
        jpVar.OooOOO(2);
        jpVar.OooO0o += 7;
        while (jpVar.OooOO0()) {
        }
        iOooO00o = jpVar.OooO00o();
        jpVar.OooOOo0();
        iOooO0O0 = jpVar.OooO0oo().OooO0O0();
        if (iOooO00o < iOooO0O0) {
            jpVar.OooOOoo((char) 254);
        }
        sbOooO0O0 = jpVar.OooO0O0();
        if (sbOooO0O0.length() < iOooO0O0) {
        }
        while (sbOooO0O0.length() < iOooO0O0) {
        }
        return jpVar.OooO0O0().toString();
    }

    private static int OooO0Oo(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        for (int i2 = 0; i2 < 6; i2++) {
            iArr[i2] = (int) Math.ceil(fArr[i2]);
            int i3 = iArr[i2];
            if (i > i3) {
                Arrays.fill(bArr, (byte) 0);
                i = i3;
            }
            if (i == i3) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    public static void OooO0o(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    private static int OooO0o0(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    public static boolean OooO0oO(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean OooO0oo(char c) {
        return c >= 128 && c <= 255;
    }

    private static boolean OooOO0(char c) {
        return c >= ' ' && c <= '^';
    }

    private static boolean OooOO0O(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    private static boolean OooOO0o(char c) {
        if (OooOOO(c) || c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    private static boolean OooOOO(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    private static boolean OooOOO0(char c) {
        return false;
    }

    public static int OooOOOO(CharSequence charSequence, int i, int i2) {
        char c;
        if (i >= charSequence.length()) {
            return i2;
        }
        float[] fArr = {1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
        if (i2 == 0) {
            // fill-array-data instruction
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
            fArr[2] = 1.0f;
            fArr[3] = 1.0f;
            fArr[4] = 1.0f;
            fArr[5] = 1.25f;
        } else {
            fArr[i2] = 0.0f;
        }
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                byte[] bArr = new byte[6];
                int[] iArr = new int[6];
                int iOooO0Oo = OooO0Oo(fArr, iArr, Integer.MAX_VALUE, bArr);
                int iOooO0o0 = OooO0o0(bArr);
                if (iArr[0] == iOooO0Oo) {
                    return 0;
                }
                if (iOooO0o0 == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (iOooO0o0 == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (iOooO0o0 != 1 || bArr[2] <= 0) {
                    return (iOooO0o0 != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char cCharAt = charSequence.charAt(i4);
            i3++;
            if (OooO0oO(cCharAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (OooO0oo(cCharAt)) {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 2.0f;
            } else {
                fArr[0] = (float) Math.ceil(fArr[0]);
                fArr[0] = fArr[0] + 1.0f;
            }
            if (OooO(cCharAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (OooO0oo(cCharAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (OooOO0O(cCharAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (OooO0oo(cCharAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (OooOO0o(cCharAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (OooO0oo(cCharAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (OooOO0(cCharAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (OooO0oo(cCharAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (OooOOO0(cCharAt)) {
                c = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                c = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i3 >= 4) {
                int[] iArr2 = new int[6];
                byte[] bArr2 = new byte[6];
                OooO0Oo(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int iOooO0o02 = OooO0o0(bArr2);
                if (iArr2[0] < iArr2[c] && iArr2[0] < iArr2[1] && iArr2[0] < iArr2[2] && iArr2[0] < iArr2[3] && iArr2[0] < iArr2[4]) {
                    return 0;
                }
                if (iArr2[5] < iArr2[0] || bArr2[1] + bArr2[2] + bArr2[3] + bArr2[4] == 0) {
                    return 5;
                }
                if (iOooO0o02 == 1 && bArr2[4] > 0) {
                    return 4;
                }
                if (iOooO0o02 == 1 && bArr2[2] > 0) {
                    return 2;
                }
                if (iOooO0o02 == 1 && bArr2[3] > 0) {
                    return 3;
                }
                if (iArr2[1] + 1 < iArr2[0] && iArr2[1] + 1 < iArr2[5] && iArr2[1] + 1 < iArr2[4] && iArr2[1] + 1 < iArr2[2]) {
                    if (iArr2[1] < iArr2[3]) {
                        return 1;
                    }
                    if (iArr2[1] == iArr2[3]) {
                        for (int i5 = i + i3 + 1; i5 < charSequence.length(); i5++) {
                            char cCharAt2 = charSequence.charAt(i5);
                            if (OooOOO(cCharAt2)) {
                                return 3;
                            }
                            if (!OooOO0o(cCharAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
        }
    }

    private static char OooOOOo(char c, int i) {
        int i2 = c + ((i * 149) % 253) + 1;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }
}
