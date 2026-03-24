package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class hq extends vq {
    private static final int OooO00o = 67;

    @Override // z2.oq, z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_8) {
            return super.OooO0O0(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got ".concat(String.valueOf(barcodeFormat)));
    }

    @Override // z2.oq
    public final boolean[] OooO0Oo(String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = str + uq.OooOOo(str);
            } catch (FormatException e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            if (length != 8) {
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got ".concat(String.valueOf(length)));
            }
            try {
                if (!uq.OooO(str)) {
                    throw new IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (FormatException unused) {
                throw new IllegalArgumentException("Illegal contents");
            }
        }
        boolean[] zArr = new boolean[67];
        int iOooO0OO = oq.OooO0OO(zArr, 0, uq.OooO0o, true) + 0;
        for (int i = 0; i <= 3; i++) {
            iOooO0OO += oq.OooO0OO(zArr, iOooO0OO, uq.OooO[Character.digit(str.charAt(i), 10)], false);
        }
        int iOooO0OO2 = iOooO0OO + oq.OooO0OO(zArr, iOooO0OO, uq.OooO0oO, false);
        for (int i2 = 4; i2 <= 7; i2++) {
            iOooO0OO2 += oq.OooO0OO(zArr, iOooO0OO2, uq.OooO[Character.digit(str.charAt(i2), 10)], true);
        }
        oq.OooO0OO(zArr, iOooO0OO2, uq.OooO0o, true);
        return zArr;
    }
}
