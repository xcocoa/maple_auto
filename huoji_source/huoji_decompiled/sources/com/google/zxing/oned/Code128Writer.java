package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import z2.eo;
import z2.oq;
import z2.zp;

/* JADX INFO: loaded from: classes2.dex */
public final class Code128Writer extends oq {
    private static final char OooO = 242;
    private static final int OooO00o = 103;
    private static final int OooO0O0 = 104;
    private static final int OooO0OO = 105;
    private static final int OooO0Oo = 101;
    private static final int OooO0o = 99;
    private static final int OooO0o0 = 100;
    private static final int OooO0oO = 106;
    private static final char OooO0oo = 241;
    private static final char OooOO0 = 243;
    private static final char OooOO0O = 244;
    private static final int OooOO0o = 102;
    private static final int OooOOO = 96;
    private static final int OooOOO0 = 97;
    private static final int OooOOOO = 101;
    private static final int OooOOOo = 100;

    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    private static int OooO0oO(CharSequence charSequence, int i, int i2) {
        CType cTypeOooO0oo;
        CType cTypeOooO0oo2;
        char cCharAt;
        CType cTypeOooO0oo3 = OooO0oo(charSequence, i);
        CType cType = CType.ONE_DIGIT;
        if (cTypeOooO0oo3 == cType) {
            return 100;
        }
        CType cType2 = CType.UNCODABLE;
        if (cTypeOooO0oo3 == cType2) {
            return (i >= charSequence.length() || ((cCharAt = charSequence.charAt(i)) >= ' ' && (i2 != 101 || cCharAt >= '`'))) ? 100 : 101;
        }
        if (i2 == 99) {
            return 99;
        }
        if (i2 != 100) {
            if (cTypeOooO0oo3 == CType.FNC_1) {
                cTypeOooO0oo3 = OooO0oo(charSequence, i + 1);
            }
            return cTypeOooO0oo3 == CType.TWO_DIGITS ? 99 : 100;
        }
        CType cType3 = CType.FNC_1;
        if (cTypeOooO0oo3 == cType3 || (cTypeOooO0oo = OooO0oo(charSequence, i + 2)) == cType2 || cTypeOooO0oo == cType) {
            return 100;
        }
        if (cTypeOooO0oo == cType3) {
            return OooO0oo(charSequence, i + 3) == CType.TWO_DIGITS ? 99 : 100;
        }
        int i3 = i + 4;
        while (true) {
            cTypeOooO0oo2 = OooO0oo(charSequence, i3);
            if (cTypeOooO0oo2 != CType.TWO_DIGITS) {
                break;
            }
            i3 += 2;
        }
        return cTypeOooO0oo2 == CType.ONE_DIGIT ? 100 : 99;
    }

    private static CType OooO0oo(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return CType.UNCODABLE;
        }
        char cCharAt = charSequence.charAt(i);
        if (cCharAt == 241) {
            return CType.FNC_1;
        }
        if (cCharAt < '0' || cCharAt > '9') {
            return CType.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return CType.ONE_DIGIT;
        }
        char cCharAt2 = charSequence.charAt(i2);
        return (cCharAt2 < '0' || cCharAt2 > '9') ? CType.ONE_DIGIT : CType.TWO_DIGITS;
    }

    @Override // z2.oq, z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_128) {
            return super.OooO0O0(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // z2.oq
    public final boolean[] OooO0Oo(String str) {
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int iOooO0OO = 0;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (cCharAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(cCharAt)));
                    }
                    break;
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (true) {
            int i6 = 103;
            if (i2 >= length) {
                int[][] iArr = zp.OooO00o;
                arrayList.add(iArr[i3 % 103]);
                arrayList.add(iArr[106]);
                int i7 = 0;
                for (int[] iArr2 : arrayList) {
                    for (int i8 : iArr2) {
                        i7 += i8;
                    }
                }
                boolean[] zArr = new boolean[i7];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    iOooO0OO += oq.OooO0OO(zArr, iOooO0OO, (int[]) it.next(), true);
                }
                return zArr;
            }
            int iOooO0oO = OooO0oO(str, i2, i4);
            int iCharAt = 100;
            if (iOooO0oO == i4) {
                switch (str.charAt(i2)) {
                    case 241:
                        iCharAt = 102;
                        break;
                    case 242:
                        iCharAt = 97;
                        break;
                    case 243:
                        iCharAt = 96;
                        break;
                    case 244:
                        if (i4 == 101) {
                            iCharAt = 101;
                        }
                        break;
                    default:
                        if (i4 == 100) {
                            iCharAt = str.charAt(i2) - ' ';
                        } else if (i4 != 101) {
                            iCharAt = Integer.parseInt(str.substring(i2, i2 + 2));
                            i2++;
                        } else {
                            iCharAt = str.charAt(i2) - ' ';
                            if (iCharAt < 0) {
                                iCharAt += 96;
                            }
                        }
                        break;
                }
                i2++;
            } else {
                if (i4 != 0) {
                    i6 = iOooO0oO;
                } else if (iOooO0oO == 100) {
                    i6 = 104;
                } else if (iOooO0oO != 101) {
                    i6 = 105;
                }
                iCharAt = i6;
                i4 = iOooO0oO;
            }
            arrayList.add(zp.OooO00o[iCharAt]);
            i3 += iCharAt * i5;
            if (i2 != 0) {
                i5++;
            }
        }
    }
}
