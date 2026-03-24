package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.pdf417.encoder.Compaction;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ds implements hm {
    private static final int OooO00o = 30;
    private static final int OooO0O0 = 2;

    private static eo OooO0OO(byte[][] bArr, int i) {
        int i2 = i * 2;
        eo eoVar = new eo(bArr[0].length + i2, bArr.length + i2);
        eoVar.OooO0O0();
        int iOooO0oo = (eoVar.OooO0oo() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte[] bArr2 = bArr[i3];
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr2[i4] == 1) {
                    eoVar.OooOOo0(i4 + i, iOooO0oo);
                }
            }
            i3++;
            iOooO0oo--;
        }
        return eoVar;
    }

    private static eo OooO0Oo(vs vsVar, String str, int i, int i2, int i3, int i4) throws WriterException {
        boolean z;
        vsVar.OooO0o0(str, i);
        byte[][] bArrOooO0OO = vsVar.OooO0o().OooO0OO(1, 4);
        if ((i3 > i2) != (bArrOooO0OO[0].length < bArrOooO0OO.length)) {
            bArrOooO0OO = OooO0o0(bArrOooO0OO);
            z = true;
        } else {
            z = false;
        }
        int length = i2 / bArrOooO0OO[0].length;
        int length2 = i3 / bArrOooO0OO.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return OooO0OO(bArrOooO0OO, i4);
        }
        byte[][] bArrOooO0OO2 = vsVar.OooO0o().OooO0OO(length, length << 2);
        if (z) {
            bArrOooO0OO2 = OooO0o0(bArrOooO0OO2);
        }
        return OooO0OO(bArrOooO0OO2, i4);
    }

    private static byte[][] OooO0o0(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) byte.class, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // z2.hm
    public final eo OooO00o(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return OooO0O0(str, barcodeFormat, i, i2, null);
    }

    @Override // z2.hm
    public final eo OooO0O0(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        int i3;
        int i4;
        if (barcodeFormat != BarcodeFormat.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got ".concat(String.valueOf(barcodeFormat)));
        }
        vs vsVar = new vs();
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
            if (map.containsKey(encodeHintType)) {
                vsVar.OooO0oo(Boolean.valueOf(map.get(encodeHintType).toString()).booleanValue());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
            if (map.containsKey(encodeHintType2)) {
                vsVar.OooO(Compaction.valueOf(map.get(encodeHintType2).toString()));
            }
            EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
            if (map.containsKey(encodeHintType3)) {
                us usVar = (us) map.get(encodeHintType3);
                vsVar.OooOO0(usVar.OooO00o(), usVar.OooO0OO(), usVar.OooO0O0(), usVar.OooO0Oo());
            }
            EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
            int i5 = map.containsKey(encodeHintType4) ? Integer.parseInt(map.get(encodeHintType4).toString()) : 30;
            EncodeHintType encodeHintType5 = EncodeHintType.ERROR_CORRECTION;
            int i6 = map.containsKey(encodeHintType5) ? Integer.parseInt(map.get(encodeHintType5).toString()) : 2;
            EncodeHintType encodeHintType6 = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType6)) {
                vsVar.OooOO0O(Charset.forName(map.get(encodeHintType6).toString()));
            }
            i4 = i5;
            i3 = i6;
        } else {
            i3 = 2;
            i4 = 30;
        }
        return OooO0Oo(vsVar, str, i3, i, i2, i4);
    }
}
