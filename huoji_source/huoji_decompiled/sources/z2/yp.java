package z2;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class yp extends oq {
    private static final char[] OooO00o;
    private static final char[] OooO0O0 = {'T', 'N', '*', 'E'};
    private static final char[] OooO0OO = {IOUtils.DIR_SEPARATOR_UNIX, ':', '+', FilenameUtils.EXTENSION_SEPARATOR};
    private static final char OooO0Oo;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        OooO00o = cArr;
        OooO0Oo = cArr[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00df  */
    @Override // z2.oq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean[] OooO0Oo(String str) {
        StringBuilder sb;
        int i;
        int i2;
        int i3;
        if (str.length() >= 2) {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = OooO00o;
            boolean zOooO0oo = xp.OooO0oo(cArr, upperCase);
            boolean zOooO0oo2 = xp.OooO0oo(cArr, upperCase2);
            char[] cArr2 = OooO0O0;
            boolean zOooO0oo3 = xp.OooO0oo(cArr2, upperCase);
            boolean zOooO0oo4 = xp.OooO0oo(cArr2, upperCase2);
            if (zOooO0oo) {
                if (!zOooO0oo2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(String.valueOf(str)));
                }
            } else if (!zOooO0oo3) {
                if (zOooO0oo2 || zOooO0oo4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(String.valueOf(str)));
                }
                sb = new StringBuilder();
            } else if (!zOooO0oo4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(String.valueOf(str)));
            }
            int i4 = 20;
            for (i = 1; i < str.length() - 1; i++) {
                if (Character.isDigit(str.charAt(i)) || str.charAt(i) == '-' || str.charAt(i) == '$') {
                    i4 += 9;
                } else {
                    if (!xp.OooO0oo(OooO0OO, str.charAt(i))) {
                        throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i) + '\'');
                    }
                    i4 += 10;
                }
            }
            boolean[] zArr = new boolean[i4 + (str.length() - 1)];
            int i5 = 0;
            for (i2 = 0; i2 < str.length(); i2++) {
                char upperCase3 = Character.toUpperCase(str.charAt(i2));
                if (i2 == 0 || i2 == str.length() - 1) {
                    if (upperCase3 == '*') {
                        upperCase3 = 'C';
                    } else if (upperCase3 == 'E') {
                        upperCase3 = 'D';
                    } else if (upperCase3 == 'N') {
                        upperCase3 = 'B';
                    } else if (upperCase3 == 'T') {
                        upperCase3 = 'A';
                    }
                }
                int i6 = 0;
                while (true) {
                    char[] cArr3 = xp.OooO0oO;
                    if (i6 >= cArr3.length) {
                        i3 = 0;
                        break;
                    }
                    if (upperCase3 == cArr3[i6]) {
                        i3 = xp.OooO0oo[i6];
                        break;
                    }
                    i6++;
                }
                int i7 = 0;
                boolean z = true;
                while (true) {
                    int i8 = 0;
                    while (i7 < 7) {
                        zArr[i5] = z;
                        i5++;
                        if (((i3 >> (6 - i7)) & 1) == 0 || i8 == 1) {
                            break;
                        }
                        i8++;
                    }
                    z = !z;
                    i7++;
                }
                if (i2 < str.length() - 1) {
                    zArr[i5] = false;
                    i5++;
                }
            }
            return zArr;
        }
        sb = new StringBuilder();
        char c = OooO0Oo;
        sb.append(c);
        sb.append(str);
        sb.append(c);
        str = sb.toString();
        int i42 = 20;
        while (i < str.length() - 1) {
        }
        boolean[] zArr2 = new boolean[i42 + (str.length() - 1)];
        int i52 = 0;
        while (i2 < str.length()) {
        }
        return zArr2;
    }
}
