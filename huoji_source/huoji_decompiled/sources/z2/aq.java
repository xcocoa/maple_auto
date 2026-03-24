package z2;

import com.anythink.expressad.foundation.h.m;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class aq extends nq {
    public static final int[] OooO0o = {52, 289, 97, 352, 49, UiMessage.CommandToUi.Command_Type.SET_TEXT_VALUE, 112, 37, 292, 100, 265, 73, 328, 25, me.o0000O, 88, 13, 268, 76, 28, me.o00000Oo, 67, 322, 19, me.o0000O00, 82, 7, me.o00000oO, 70, 22, 385, 193, m.a.a, 145, 400, UiMessage.CommandToUi.Command_Type.SET_TAB_VALUE, 133, 388, 196, 168, 162, 138, 42};
    public static final String OooO0o0 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";
    public static final int OooO0oO = 148;
    private final boolean OooO00o;
    private final boolean OooO0O0;
    private final StringBuilder OooO0OO;
    private final int[] OooO0Oo;

    public aq() {
        this(false);
    }

    public aq(boolean z) {
        this(z, false);
    }

    public aq(boolean z, boolean z3) {
        this.OooO00o = z;
        this.OooO0O0 = z3;
        this.OooO0OO = new StringBuilder(20);
        this.OooO0Oo = new int[9];
    }

    private static int[] OooO(Cdo cdo, int[] iArr) throws NotFoundException {
        int iOooOOO0 = cdo.OooOOO0();
        int iOooOO0O = cdo.OooOO0O(0);
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
                    if (OooOO0O(iArr) == 148 && cdo.OooOOOO(Math.max(0, i - ((iOooOO0O - i) / 2)), i, false)) {
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String OooO0oo(CharSequence charSequence) throws FormatException {
        int i;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '+' || cCharAt == '$' || cCharAt == '%' || cCharAt == '/') {
                i2++;
                char cCharAt2 = charSequence.charAt(i2);
                if (cCharAt != '$') {
                    if (cCharAt != '%') {
                        if (cCharAt != '+') {
                            if (cCharAt != '/') {
                                cCharAt = 0;
                            } else if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                                i = cCharAt2 - ' ';
                            } else {
                                if (cCharAt2 != 'Z') {
                                    throw FormatException.getFormatInstance();
                                }
                                cCharAt = ':';
                            }
                        } else {
                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            i = cCharAt2 + ' ';
                        }
                    } else if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                        i = cCharAt2 - '&';
                    } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                        i = cCharAt2 - 11;
                    } else if (cCharAt2 >= 'K' && cCharAt2 <= 'O') {
                        i = cCharAt2 + 16;
                    } else if (cCharAt2 >= 'P' && cCharAt2 <= 'T') {
                        i = cCharAt2 + '+';
                    } else if (cCharAt2 != 'U') {
                        if (cCharAt2 == 'V') {
                            cCharAt = '@';
                        } else if (cCharAt2 == 'W') {
                            cCharAt = '`';
                        } else {
                            if (cCharAt2 != 'X' && cCharAt2 != 'Y' && cCharAt2 != 'Z') {
                                throw FormatException.getFormatInstance();
                            }
                            cCharAt = 127;
                        }
                    }
                } else {
                    if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                        throw FormatException.getFormatInstance();
                    }
                    i = cCharAt2 - '@';
                }
                cCharAt = (char) i;
            }
            sb.append(cCharAt);
            i2++;
        }
        return sb.toString();
    }

    private static char OooOO0(int i) throws NotFoundException {
        int i2 = 0;
        while (true) {
            int[] iArr = OooO0o;
            if (i2 >= iArr.length) {
                if (i == 148) {
                    return '*';
                }
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i2] == i) {
                return OooO0o0.charAt(i2);
            }
            i2++;
        }
    }

    private static int OooOO0O(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i5 |= 1 << ((length - 1) - i7);
                    i4++;
                    i6 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if ((i10 << 1) >= i6) {
                            return -1;
                        }
                    }
                }
                return i5;
            }
            if (i4 <= 3) {
                return -1;
            }
            i = i2;
        }
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int[] iArr = this.OooO0Oo;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.OooO0OO;
        sb.setLength(0);
        int iOooOO0O = cdo.OooOO0O(OooO(cdo, iArr)[1]);
        int iOooOOO0 = cdo.OooOOO0();
        while (true) {
            nq.OooO0o(cdo, iOooOO0O, iArr);
            int iOooOO0O2 = OooOO0O(iArr);
            if (iOooOO0O2 < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cOooOO0 = OooOO0(iOooOO0O2);
            sb.append(cOooOO0);
            int i2 = iOooOO0O;
            for (int i3 : iArr) {
                i2 += i3;
            }
            int iOooOO0O3 = cdo.OooOO0O(i2);
            if (cOooOO0 == '*') {
                sb.setLength(sb.length() - 1);
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 += i5;
                }
                int i6 = (iOooOO0O3 - iOooOO0O) - i4;
                if (iOooOO0O3 != iOooOOO0 && (i6 << 1) < i4) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (this.OooO00o) {
                    int length = sb.length() - 1;
                    int iIndexOf = 0;
                    for (int i7 = 0; i7 < length; i7++) {
                        iIndexOf += OooO0o0.indexOf(this.OooO0OO.charAt(i7));
                    }
                    if (sb.charAt(length) != OooO0o0.charAt(iIndexOf % 43)) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    sb.setLength(length);
                }
                if (sb.length() == 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                float f = i;
                return new em(this.OooO0O0 ? OooO0oo(sb) : sb.toString(), null, new fm[]{new fm((r2[1] + r2[0]) / 2.0f, f), new fm(iOooOO0O + (i4 / 2.0f), f)}, BarcodeFormat.CODE_39);
            }
            iOooOO0O = iOooOO0O3;
        }
    }
}
