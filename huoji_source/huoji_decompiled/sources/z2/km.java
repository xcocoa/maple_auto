package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class km implements hm {
    private static eo OooO0OO(String str, BarcodeFormat barcodeFormat, int i, int i2, Charset charset, int i3, int i4) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return OooO0Oo(om.OooO0o0(str.getBytes(charset), i3, i4), i, i2);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(barcodeFormat)));
    }

    private static eo OooO0Oo(mm mmVar, int i, int i2) {
        eo eoVarOooO0OO = mmVar.OooO0OO();
        if (eoVarOooO0OO == null) {
            throw new IllegalStateException();
        }
        int iOooOOO0 = eoVarOooO0OO.OooOOO0();
        int iOooO0oo = eoVarOooO0OO.OooO0oo();
        int iMax = Math.max(i, iOooOOO0);
        int iMax2 = Math.max(i2, iOooO0oo);
        int iMin = Math.min(iMax / iOooOOO0, iMax2 / iOooO0oo);
        int i3 = (iMax - (iOooOOO0 * iMin)) / 2;
        int i4 = (iMax2 - (iOooO0oo * iMin)) / 2;
        eo eoVar = new eo(iMax, iMax2);
        int i5 = 0;
        while (i5 < iOooO0oo) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < iOooOOO0) {
                if (eoVarOooO0OO.OooO0o0(i7, i5)) {
                    eoVar.OooOOo(i6, i4, iMin, iMin);
                }
                i7++;
                i6 += iMin;
            }
            i5++;
            i4 += iMin;
        }
        return eoVar;
    }

    @Override // z2.hm
    public final eo OooO00o(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return OooO0O0(str, barcodeFormat, i, i2, null);
    }

    @Override // z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        Charset charset;
        int i3;
        int i4;
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType)) {
                charsetForName = Charset.forName(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            int i5 = map.containsKey(encodeHintType2) ? Integer.parseInt(map.get(encodeHintType2).toString()) : 33;
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                charset = charsetForName;
                i3 = i5;
                i4 = Integer.parseInt(map.get(encodeHintType3).toString());
                return OooO0OO(str, barcodeFormat, i, i2, charset, i3, i4);
            }
            charset = charsetForName;
            i3 = i5;
        } else {
            charset = charsetForName;
            i3 = 33;
        }
        i4 = 0;
        return OooO0OO(str, barcodeFormat, i, i2, charset, i3, i4);
    }
}
