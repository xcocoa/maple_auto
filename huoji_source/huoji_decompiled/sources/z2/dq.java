package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class dq extends oq {
    private static void OooO(int i, int[] iArr) {
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = 1;
            if (((1 << (8 - i2)) & i) == 0) {
                i3 = 0;
            }
            iArr[i2] = i3;
        }
    }

    @Deprecated
    public static int OooO0OO(boolean[] zArr, int i, int[] iArr, boolean z) {
        return OooO0oO(zArr, i, iArr);
    }

    private static int OooO0oO(boolean[] zArr, int i, int[] iArr) {
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            zArr[i] = iArr[i2] != 0;
            i2++;
            i = i3;
        }
        return 9;
    }

    private static int OooO0oo(String str, int i) {
        int iIndexOf = 0;
        int i2 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += cq.OooO0OO.indexOf(str.charAt(length)) * i2;
            i2++;
            if (i2 > i) {
                i2 = 1;
            }
        }
        return iIndexOf % 47;
    }

    @Override // z2.oq, z2.hm
    public eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_93) {
            return super.OooO0O0(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // z2.oq
    public boolean[] OooO0Oo(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int[] iArr = new int[9];
        int length2 = ((str.length() + 2 + 2) * 9) + 1;
        OooO(cq.OooO0o0[47], iArr);
        boolean[] zArr = new boolean[length2];
        int iOooO0oO = OooO0oO(zArr, 0, iArr);
        for (int i = 0; i < length; i++) {
            OooO(cq.OooO0o0[cq.OooO0OO.indexOf(str.charAt(i))], iArr);
            iOooO0oO += OooO0oO(zArr, iOooO0oO, iArr);
        }
        int iOooO0oo = OooO0oo(str, 20);
        int[] iArr2 = cq.OooO0o0;
        OooO(iArr2[iOooO0oo], iArr);
        int iOooO0oO2 = iOooO0oO + OooO0oO(zArr, iOooO0oO, iArr);
        OooO(iArr2[OooO0oo(str + cq.OooO0OO.charAt(iOooO0oo), 15)], iArr);
        int iOooO0oO3 = iOooO0oO2 + OooO0oO(zArr, iOooO0oO2, iArr);
        OooO(iArr2[47], iArr);
        zArr[iOooO0oO3 + OooO0oO(zArr, iOooO0oO3, iArr)] = true;
        return zArr;
    }
}
