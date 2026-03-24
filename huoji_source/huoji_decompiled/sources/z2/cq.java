package z2;

import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class cq extends nq {
    public static final String OooO0OO = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] OooO0Oo = OooO0OO.toCharArray();
    private static final int OooO0o;
    public static final int[] OooO0o0;
    private final StringBuilder OooO00o = new StringBuilder(20);
    private final int[] OooO0O0 = new int[6];

    static {
        int[] iArr = {me.o0000oO, 328, 324, 322, com.anythink.expressad.foundation.g.a.aP, 292, 290, 336, me.o0000O00, 266, 424, 420, 418, 404, UiMessage.CommandToUi.Command_Type.GET_VISIBLE_VALUE, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, UiMessage.CommandToUi.Command_Type.GET_TITLE_BACKCOLOR_VALUE, UiMessage.CommandToUi.Command_Type.GET_FW_VISIBLE_VALUE, 364, 358, UiMessage.CommandToUi.Command_Type.SET_FW_TEXT_COLOR_VALUE, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, UiMessage.CommandToUi.Command_Type.SET_TITLE_BACKCOLOR_VALUE, 350};
        OooO0o0 = iArr;
        OooO0o = iArr[47];
    }

    private static void OooO(CharSequence charSequence, int i, int i2) throws ChecksumException {
        int iIndexOf = 0;
        int i3 = 1;
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iIndexOf += OooO0OO.indexOf(charSequence.charAt(i4)) * i3;
            i3++;
            if (i3 > i2) {
                i3 = 1;
            }
        }
        if (charSequence.charAt(i) != OooO0Oo[iIndexOf % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private static void OooO0oo(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        OooO(charSequence, length - 2, 20);
        OooO(charSequence, length - 1, 15);
    }

    private static String OooOO0(CharSequence charSequence) throws FormatException {
        int i;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt >= 'a' && cCharAt <= 'd') {
                if (i2 >= length - 1) {
                    throw FormatException.getFormatInstance();
                }
                i2++;
                char cCharAt2 = charSequence.charAt(i2);
                switch (cCharAt) {
                    case 'a':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        i = cCharAt2 - '@';
                        break;
                    case 'b':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                            i = cCharAt2 - '&';
                        } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                            i = cCharAt2 - 11;
                        } else if (cCharAt2 >= 'K' && cCharAt2 <= 'O') {
                            i = cCharAt2 + 16;
                        } else if (cCharAt2 >= 'P' && cCharAt2 <= 'S') {
                            i = cCharAt2 + '+';
                        } else {
                            if (cCharAt2 < 'T' || cCharAt2 > 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            cCharAt = 127;
                        }
                        break;
                    case 'c':
                        if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                            i = cCharAt2 - ' ';
                        } else {
                            if (cCharAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            cCharAt = ':';
                        }
                        break;
                    case 'd':
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            throw FormatException.getFormatInstance();
                        }
                        i = cCharAt2 + ' ';
                        break;
                    default:
                        cCharAt = 0;
                        continue;
                }
                cCharAt = (char) i;
            }
            sb.append(cCharAt);
            i2++;
        }
        return sb.toString();
    }

    private int[] OooOO0O(Cdo cdo) throws NotFoundException {
        int iOooOOO0 = cdo.OooOOO0();
        int iOooOO0O = cdo.OooOO0O(0);
        Arrays.fill(this.OooO0O0, 0);
        int[] iArr = this.OooO0O0;
        int length = iArr.length;
        int i = iOooOO0O;
        boolean z = false;
        int i2 = 0;
        while (iOooOO0O < iOooOOO0) {
            if (cdo.OooO0oo(iOooOO0O) != z) {
                iArr[i2] = iArr[i2] + 1;
            } else {
                if (i2 != length - 1) {
                    i2++;
                } else {
                    if (OooOOO0(iArr) == OooO0o) {
                        return new int[]{i, iOooOO0O};
                    }
                    i += iArr[0] + iArr[1];
                    int i3 = i2 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i3);
                    iArr[i3] = 0;
                    iArr[i2] = 0;
                    i2--;
                }
                iArr[i2] = 1;
                z = !z;
            }
            iOooOO0O++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char OooOO0o(int i) throws NotFoundException {
        int i2 = 0;
        while (true) {
            int[] iArr = OooO0o0;
            if (i2 >= iArr.length) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i2] == i) {
                return OooO0Oo[i2];
            }
            i2++;
        }
    }

    private static int OooOOO0(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int length = iArr.length;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int iRound = Math.round((iArr[i4] * 9.0f) / i);
            if (iRound <= 0 || iRound > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                for (int i5 = 0; i5 < iRound; i5++) {
                    i3 = (i3 << 1) | 1;
                }
            } else {
                i3 <<= iRound;
            }
        }
        return i3;
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int iOooOO0O = cdo.OooOO0O(OooOO0O(cdo)[1]);
        int iOooOOO0 = cdo.OooOOO0();
        int[] iArr = this.OooO0O0;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.OooO00o;
        sb.setLength(0);
        while (true) {
            nq.OooO0o(cdo, iOooOO0O, iArr);
            int iOooOOO02 = OooOOO0(iArr);
            if (iOooOOO02 < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cOooOO0o = OooOO0o(iOooOOO02);
            sb.append(cOooOO0o);
            int i2 = iOooOO0O;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int iOooOO0O2 = cdo.OooOO0O(i2);
            if (cOooOO0o == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                if (iOooOO0O2 == iOooOOO0 || !cdo.OooO0oo(iOooOO0O2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                OooO0oo(sb);
                sb.setLength(sb.length() - 2);
                float f = i;
                return new em(OooOO0(sb), null, new fm[]{new fm((r14[1] + r14[0]) / 2.0f, f), new fm(iOooOO0O + (i4 / 2.0f), f)}, BarcodeFormat.CODE_93);
            }
            iOooOO0O = iOooOO0O2;
        }
    }
}
