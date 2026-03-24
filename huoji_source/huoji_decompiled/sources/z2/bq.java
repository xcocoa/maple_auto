package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.Map;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class bq extends oq {
    private static void OooO0oO(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) != 0) {
                i3 = 2;
            }
            iArr[i2] = i3;
        }
    }

    private static String OooO0oo(String str) {
        String str2;
        int i;
        int i2;
        int length = str.length();
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt != 0) {
                if (cCharAt != ' ') {
                    if (cCharAt == '@') {
                        str2 = "%V";
                    } else if (cCharAt == '`') {
                        str2 = "%W";
                    } else if (cCharAt != '-' && cCharAt != '.') {
                        if (cCharAt <= 26) {
                            sb.append(ur.OooO0OO);
                            i = cCharAt - 1;
                        } else if (cCharAt < ' ') {
                            sb.append('%');
                            i = cCharAt - 27;
                        } else if (cCharAt <= ',' || cCharAt == '/' || cCharAt == ':') {
                            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
                            i = cCharAt - '!';
                        } else {
                            if (cCharAt <= '9') {
                                i2 = (cCharAt - '0') + 48;
                            } else if (cCharAt <= '?') {
                                sb.append('%');
                                i2 = (cCharAt - ';') + 70;
                            } else if (cCharAt <= 'Z') {
                                i = cCharAt - 'A';
                            } else if (cCharAt <= '_') {
                                sb.append('%');
                                i2 = (cCharAt - '[') + 75;
                            } else if (cCharAt <= 'z') {
                                sb.append('+');
                                i = cCharAt - 'a';
                            } else {
                                if (cCharAt > 127) {
                                    throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + str.charAt(i3) + "'");
                                }
                                sb.append('%');
                                i2 = (cCharAt - '{') + 80;
                            }
                            cCharAt = (char) i2;
                        }
                        i2 = i + 65;
                        cCharAt = (char) i2;
                    }
                }
                sb.append(cCharAt);
            } else {
                str2 = "%U";
            }
            sb.append(str2);
        }
        return sb.toString();
    }

    @Override // z2.oq, z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_39) {
            return super.OooO0O0(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // z2.oq
    public final boolean[] OooO0Oo(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (aq.OooO0o0.indexOf(str.charAt(i)) < 0) {
                str = OooO0oo(str);
                length = str.length();
                if (length > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            } else {
                i++;
            }
        }
        int[] iArr = new int[9];
        int i2 = length + 25;
        for (int i3 = 0; i3 < length; i3++) {
            OooO0oO(aq.OooO0o[aq.OooO0o0.indexOf(str.charAt(i3))], iArr);
            for (int i4 = 0; i4 < 9; i4++) {
                i2 += iArr[i4];
            }
        }
        boolean[] zArr = new boolean[i2];
        OooO0oO(aq.OooO0oO, iArr);
        int iOooO0OO = oq.OooO0OO(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iOooO0OO2 = iOooO0OO + oq.OooO0OO(zArr, iOooO0OO, iArr2, false);
        for (int i5 = 0; i5 < length; i5++) {
            OooO0oO(aq.OooO0o[aq.OooO0o0.indexOf(str.charAt(i5))], iArr);
            int iOooO0OO3 = iOooO0OO2 + oq.OooO0OO(zArr, iOooO0OO2, iArr, true);
            iOooO0OO2 = iOooO0OO3 + oq.OooO0OO(zArr, iOooO0OO3, iArr2, false);
        }
        OooO0oO(aq.OooO0oO, iArr);
        oq.OooO0OO(zArr, iOooO0OO2, iArr, true);
        return zArr;
    }
}
