package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ys implements dm {
    private static final fm[] OooO0O0 = new fm[0];
    private final dt OooO00o = new dt();

    private static eo OooO0o0(eo eoVar) throws NotFoundException {
        int[] iArrOooOO0o = eoVar.OooOO0o();
        int[] iArrOooO0o = eoVar.OooO0o();
        if (iArrOooOO0o == null || iArrOooO0o == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fOooO0oO = OooO0oO(iArrOooOO0o, eoVar);
        int i = iArrOooOO0o[1];
        int i2 = iArrOooO0o[1];
        int i3 = iArrOooOO0o[0];
        int i4 = iArrOooO0o[0];
        if (i3 >= i4 || i >= i2) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i5 = i2 - i;
        if (i5 != i4 - i3 && (i4 = i3 + i5) >= eoVar.OooOOO0()) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iRound = Math.round(((i4 - i3) + 1) / fOooO0oO);
        int iRound2 = Math.round((i5 + 1) / fOooO0oO);
        if (iRound <= 0 || iRound2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (iRound2 != iRound) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i6 = (int) (fOooO0oO / 2.0f);
        int i7 = i + i6;
        int i8 = i3 + i6;
        int i9 = (((int) ((iRound - 1) * fOooO0oO)) + i8) - i4;
        if (i9 > 0) {
            if (i9 > i6) {
                throw NotFoundException.getNotFoundInstance();
            }
            i8 -= i9;
        }
        int i10 = (((int) ((iRound2 - 1) * fOooO0oO)) + i7) - i2;
        if (i10 > 0) {
            if (i10 > i6) {
                throw NotFoundException.getNotFoundInstance();
            }
            i7 -= i10;
        }
        eo eoVar2 = new eo(iRound, iRound2);
        for (int i11 = 0; i11 < iRound2; i11++) {
            int i12 = ((int) (i11 * fOooO0oO)) + i7;
            for (int i13 = 0; i13 < iRound; i13++) {
                if (eoVar.OooO0o0(((int) (i13 * fOooO0oO)) + i8, i12)) {
                    eoVar2.OooOOo0(i13, i11);
                }
            }
        }
        return eoVar2;
    }

    private static float OooO0oO(int[] iArr, eo eoVar) throws NotFoundException {
        int iOooO0oo = eoVar.OooO0oo();
        int iOooOOO0 = eoVar.OooOOO0();
        int i = iArr[0];
        boolean z = true;
        int i2 = iArr[1];
        int i3 = 0;
        while (i < iOooOOO0 && i2 < iOooO0oo) {
            if (z != eoVar.OooO0o0(i, i2)) {
                i3++;
                if (i3 == 5) {
                    break;
                }
                z = !z;
            }
            i++;
            i2++;
        }
        if (i == iOooOOO0 || i2 == iOooO0oo) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (i - iArr[0]) / 7.0f;
    }

    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        fm[] fmVarArrOooO0O0;
        go goVarOooO0OO;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            io ioVarOooO0o = new jt(vlVar.OooO0O0()).OooO0o(map);
            go goVarOooO0OO2 = this.OooO00o.OooO0OO(ioVarOooO0o.OooO00o(), map);
            fmVarArrOooO0O0 = ioVarOooO0o.OooO0O0();
            goVarOooO0OO = goVarOooO0OO2;
        } else {
            goVarOooO0OO = this.OooO00o.OooO0OO(OooO0o0(vlVar.OooO0O0()), map);
            fmVarArrOooO0O0 = OooO0O0;
        }
        if (goVarOooO0OO.OooO0o() instanceof ft) {
            ((ft) goVarOooO0OO.OooO0o()).OooO00o(fmVarArrOooO0O0);
        }
        em emVar = new em(goVarOooO0OO.OooOO0(), goVarOooO0OO.OooO0oO(), fmVarArrOooO0O0, BarcodeFormat.QR_CODE);
        List<byte[]> listOooO00o = goVarOooO0OO.OooO00o();
        if (listOooO00o != null) {
            emVar.OooOO0(ResultMetadataType.BYTE_SEGMENTS, listOooO00o);
        }
        String strOooO0O0 = goVarOooO0OO.OooO0O0();
        if (strOooO0O0 != null) {
            emVar.OooOO0(ResultMetadataType.ERROR_CORRECTION_LEVEL, strOooO0O0);
        }
        if (goVarOooO0OO.OooOO0O()) {
            emVar.OooOO0(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(goVarOooO0OO.OooO()));
            emVar.OooOO0(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(goVarOooO0OO.OooO0oo()));
        }
        return emVar;
    }

    @Override // z2.dm
    public em OooO0O0(vl vlVar) throws NotFoundException, ChecksumException, FormatException {
        return OooO00o(vlVar, null);
    }

    public final dt OooO0o() {
        return this.OooO00o;
    }

    @Override // z2.dm
    public void reset() {
    }
}
