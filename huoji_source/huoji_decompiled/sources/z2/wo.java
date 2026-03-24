package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.datamatrix.detector.Detector;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class wo implements dm {
    private static final fm[] OooO0O0 = new fm[0];
    private final ap OooO00o = new ap();

    private static eo OooO0OO(eo eoVar) throws NotFoundException {
        int[] iArrOooOO0o = eoVar.OooOO0o();
        int[] iArrOooO0o = eoVar.OooO0o();
        if (iArrOooOO0o == null || iArrOooO0o == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iOooO0Oo = OooO0Oo(iArrOooOO0o, eoVar);
        int i = iArrOooOO0o[1];
        int i2 = iArrOooO0o[1];
        int i3 = iArrOooOO0o[0];
        int i4 = ((iArrOooO0o[0] - i3) + 1) / iOooO0Oo;
        int i5 = ((i2 - i) + 1) / iOooO0Oo;
        if (i4 <= 0 || i5 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i6 = iOooO0Oo / 2;
        int i7 = i + i6;
        int i8 = i3 + i6;
        eo eoVar2 = new eo(i4, i5);
        for (int i9 = 0; i9 < i5; i9++) {
            int i10 = (i9 * iOooO0Oo) + i7;
            for (int i11 = 0; i11 < i4; i11++) {
                if (eoVar.OooO0o0((i11 * iOooO0Oo) + i8, i10)) {
                    eoVar2.OooOOo0(i11, i9);
                }
            }
        }
        return eoVar2;
    }

    private static int OooO0Oo(int[] iArr, eo eoVar) throws NotFoundException {
        int iOooOOO0 = eoVar.OooOOO0();
        int i = iArr[0];
        int i2 = iArr[1];
        while (i < iOooOOO0 && eoVar.OooO0o0(i, i2)) {
            i++;
        }
        if (i == iOooOOO0) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i3 = i - iArr[0];
        if (i3 != 0) {
            return i3;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        fm[] fmVarArrOooO0O0;
        go goVarOooO0O0;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            io ioVarOooO0OO = new Detector(vlVar.OooO0O0()).OooO0OO();
            go goVarOooO0O02 = this.OooO00o.OooO0O0(ioVarOooO0OO.OooO00o());
            fmVarArrOooO0O0 = ioVarOooO0OO.OooO0O0();
            goVarOooO0O0 = goVarOooO0O02;
        } else {
            goVarOooO0O0 = this.OooO00o.OooO0O0(OooO0OO(vlVar.OooO0O0()));
            fmVarArrOooO0O0 = OooO0O0;
        }
        em emVar = new em(goVarOooO0O0.OooOO0(), goVarOooO0O0.OooO0oO(), fmVarArrOooO0O0, BarcodeFormat.DATA_MATRIX);
        List<byte[]> listOooO00o = goVarOooO0O0.OooO00o();
        if (listOooO00o != null) {
            emVar.OooOO0(ResultMetadataType.BYTE_SEGMENTS, listOooO00o);
        }
        String strOooO0O0 = goVarOooO0O0.OooO0O0();
        if (strOooO0O0 != null) {
            emVar.OooOO0(ResultMetadataType.ERROR_CORRECTION_LEVEL, strOooO0O0);
        }
        return emVar;
    }

    @Override // z2.dm
    public final em OooO0O0(vl vlVar) throws NotFoundException, ChecksumException, FormatException {
        return OooO00o(vlVar, null);
    }

    @Override // z2.dm
    public final void reset() {
    }
}
