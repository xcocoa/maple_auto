package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class wq extends uq {
    private static final int[] OooOO0o = {1, 1, 1, 1, 1, 1};
    public static final int[][] OooOOO0 = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};
    private final int[] OooOO0O = new int[4];

    public static String OooOOoo(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c = cArr[5];
        switch (c) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c);
                sb.append("0000");
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append("0000");
                sb.append(c);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return sb.toString();
    }

    private static void OooOo00(StringBuilder sb, int i) throws NotFoundException {
        for (int i2 = 0; i2 <= 1; i2++) {
            for (int i3 = 0; i3 < 10; i3++) {
                if (i == OooOOO0[i2][i3]) {
                    sb.insert(0, (char) (i2 + 48));
                    sb.append((char) (i3 + 48));
                    return;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.uq
    public final boolean OooO0oo(String str) throws FormatException {
        return super.OooO0oo(OooOOoo(str));
    }

    @Override // z2.uq
    public final int[] OooOO0O(Cdo cdo, int i) throws NotFoundException {
        return uq.OooOOO(cdo, i, true, OooOO0o);
    }

    @Override // z2.uq
    public final int OooOO0o(Cdo cdo, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.OooOO0O;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iOooOOO0 = cdo.OooOOO0();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 6 && i < iOooOOO0; i3++) {
            int iOooOO0 = uq.OooOO0(cdo, iArr2, i, uq.OooOO0);
            sb.append((char) ((iOooOO0 % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (iOooOO0 >= 10) {
                i2 |= 1 << (5 - i3);
            }
        }
        OooOo00(sb, i2);
        return i;
    }

    @Override // z2.uq
    public final BarcodeFormat OooOOo0() {
        return BarcodeFormat.UPC_E;
    }
}
