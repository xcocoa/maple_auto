package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zs implements hm {
    private static final int OooO00o = 4;

    private static eo OooO0OO(rt rtVar, int i, int i2, int i3) {
        nt ntVarOooO0OO = rtVar.OooO0OO();
        if (ntVarOooO0OO == null) {
            throw new IllegalStateException();
        }
        int iOooO0o0 = ntVarOooO0OO.OooO0o0();
        int iOooO0Oo = ntVarOooO0OO.OooO0Oo();
        int i4 = i3 << 1;
        int i5 = iOooO0o0 + i4;
        int i6 = i4 + iOooO0Oo;
        int iMax = Math.max(i, i5);
        int iMax2 = Math.max(i2, i6);
        int iMin = Math.min(iMax / i5, iMax2 / i6);
        int i7 = (iMax - (iOooO0o0 * iMin)) / 2;
        int i8 = (iMax2 - (iOooO0Oo * iMin)) / 2;
        eo eoVar = new eo(iMax, iMax2);
        int i9 = 0;
        while (i9 < iOooO0Oo) {
            int i10 = i7;
            int i11 = 0;
            while (i11 < iOooO0o0) {
                if (ntVarOooO0OO.OooO0O0(i11, i9) == 1) {
                    eoVar.OooOOo(i10, i8, iMin, iMin);
                }
                i11++;
                i10 += iMin;
            }
            i9++;
            i8 += iMin;
        }
        return eoVar;
    }

    @Override // z2.hm
    public final eo OooO00o(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return OooO0O0(str, barcodeFormat, i, i2, null);
    }

    @Override // z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got ".concat(String.valueOf(barcodeFormat)));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        ErrorCorrectionLevel errorCorrectionLevelValueOf = ErrorCorrectionLevel.L;
        int i3 = 4;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
            if (map.containsKey(encodeHintType)) {
                errorCorrectionLevelValueOf = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
            if (map.containsKey(encodeHintType2)) {
                i3 = Integer.parseInt(map.get(encodeHintType2).toString());
            }
        }
        return OooO0OO(ot.OooOOOo(str, errorCorrectionLevelValueOf, map), i, i2, i3);
    }
}
