package z2;

import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes2.dex */
public final class rp {
    private static final char OooO = 65528;
    private static final char OooO00o = 65520;
    private static final char OooO0O0 = 65521;
    private static final char OooO0OO = 65522;
    private static final char OooO0Oo = 65523;
    private static final char OooO0o = 65525;
    private static final char OooO0o0 = 65524;
    private static final char OooO0oO = 65526;
    private static final char OooO0oo = 65527;
    private static final char OooOO0 = 65529;
    private static final char OooOO0O = 65530;
    private static final char OooOO0o = 65531;
    private static final char OooOOO = 28;
    private static final char OooOOO0 = 65532;
    private static final char OooOOOO = 29;
    private static final char OooOOOo = 30;
    private static final String[] OooOOo0 = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};

    private rp() {
    }

    private static int OooO(byte[] bArr) {
        return OooO0Oo(bArr, new byte[]{55, 56, 57, 58, 59, 60, 49, 50, 51, 52});
    }

    public static go OooO00o(byte[] bArr, int i) {
        StringBuilder sb;
        int i2;
        StringBuilder sb2 = new StringBuilder(144);
        if (i == 2 || i == 3) {
            int i3 = 0;
            String strOooO0oo = i == 2 ? new DecimalFormat("0000000000".substring(0, OooO0oO(bArr))).format(OooO0o(bArr)) : OooO0oo(bArr);
            DecimalFormat decimalFormat = new DecimalFormat("000");
            String str = decimalFormat.format(OooO0OO(bArr));
            String str2 = decimalFormat.format(OooO(bArr));
            sb2.append(OooO0o0(bArr, 10, 84));
            if (sb2.toString().startsWith("[)>\u001e01\u001d")) {
                i3 = 9;
                sb = new StringBuilder();
            } else {
                sb = new StringBuilder();
            }
            sb.append(strOooO0oo);
            sb.append(OooOOOO);
            sb.append(str);
            sb.append(OooOOOO);
            sb.append(str2);
            sb.append(OooOOOO);
            sb2.insert(i3, sb.toString());
        } else {
            if (i != 4) {
                i2 = i == 5 ? 77 : 93;
            }
            sb2.append(OooO0o0(bArr, 1, i2));
        }
        return new go(bArr, sb2.toString(), null, String.valueOf(i));
    }

    private static int OooO0O0(int i, byte[] bArr) {
        int i2 = i - 1;
        return ((1 << (5 - (i2 % 6))) & bArr[i2 / 6]) == 0 ? 0 : 1;
    }

    private static int OooO0OO(byte[] bArr) {
        return OooO0Oo(bArr, new byte[]{53, 54, 43, 44, 45, 46, 47, 48, 37, 38});
    }

    private static int OooO0Oo(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            throw new IllegalArgumentException();
        }
        int iOooO0O0 = 0;
        for (int i = 0; i < bArr2.length; i++) {
            iOooO0O0 += OooO0O0(bArr2[i], bArr) << ((bArr2.length - i) - 1);
        }
        return iOooO0O0;
    }

    private static int OooO0o(byte[] bArr) {
        return OooO0Oo(bArr, new byte[]{33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 19, 20, 21, 22, 23, 24, com.umeng.commonsdk.proguard.bg.k, com.umeng.commonsdk.proguard.bg.l, com.umeng.commonsdk.proguard.bg.m, com.umeng.commonsdk.proguard.bg.n, 17, 18, 7, 8, 9, 10, 11, 12, 1, 2});
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static String OooO0o0(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        int i3 = i;
        int i4 = 0;
        int i5 = -1;
        int i6 = 0;
        while (i3 < i + i2) {
            char cCharAt = OooOOo0[i4].charAt(bArr[i3]);
            switch (cCharAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i6 = i4;
                    i4 = cCharAt - OooO00o;
                    i5 = 1;
                    break;
                case 65525:
                    i5 = 2;
                    i6 = i4;
                    i4 = 0;
                    break;
                case 65526:
                    i5 = 3;
                    i6 = i4;
                    i4 = 0;
                    break;
                case 65527:
                    i4 = 0;
                    i5 = -1;
                    break;
                case 65528:
                    i4 = 1;
                    i5 = -1;
                    break;
                case 65529:
                    i5 = -1;
                    break;
                case 65530:
                default:
                    sb.append(cCharAt);
                    break;
                case 65531:
                    int i7 = i3 + 1;
                    int i8 = bArr[i7] << 24;
                    int i9 = i7 + 1;
                    int i10 = i8 + (bArr[i9] << 18);
                    int i11 = i9 + 1;
                    int i12 = i10 + (bArr[i11] << 12);
                    int i13 = i11 + 1;
                    int i14 = i12 + (bArr[i13] << 6);
                    i3 = i13 + 1;
                    sb.append(new DecimalFormat("000000000").format(i14 + bArr[i3]));
                    break;
            }
            int i15 = i5 - 1;
            if (i5 == 0) {
                i4 = i6;
            }
            i3++;
            i5 = i15;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private static int OooO0oO(byte[] bArr) {
        return OooO0Oo(bArr, new byte[]{39, 40, 41, 42, 31, 32});
    }

    private static String OooO0oo(byte[] bArr) {
        String[] strArr = OooOOo0;
        return String.valueOf(new char[]{strArr[0].charAt(OooO0Oo(bArr, new byte[]{39, 40, 41, 42, 31, 32})), strArr[0].charAt(OooO0Oo(bArr, new byte[]{33, 34, 35, 36, 25, 26})), strArr[0].charAt(OooO0Oo(bArr, new byte[]{27, 28, 29, 30, 19, 20})), strArr[0].charAt(OooO0Oo(bArr, new byte[]{21, 22, 23, 24, com.umeng.commonsdk.proguard.bg.k, com.umeng.commonsdk.proguard.bg.l})), strArr[0].charAt(OooO0Oo(bArr, new byte[]{com.umeng.commonsdk.proguard.bg.m, com.umeng.commonsdk.proguard.bg.n, 17, 18, 7, 8})), strArr[0].charAt(OooO0Oo(bArr, new byte[]{9, 10, 11, 12, 1, 2}))});
    }
}
