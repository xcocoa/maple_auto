package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class pp implements dm {
    private static final fm[] OooO0O0 = new fm[0];
    private static final int OooO0OO = 30;
    private static final int OooO0Oo = 33;
    private final sp OooO00o = new sp();

    private static eo OooO0OO(eo eoVar) throws NotFoundException {
        int[] iArrOooO0oO = eoVar.OooO0oO();
        if (iArrOooO0oO == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i = iArrOooO0oO[0];
        int i2 = iArrOooO0oO[1];
        int i3 = iArrOooO0oO[2];
        int i4 = iArrOooO0oO[3];
        eo eoVar2 = new eo(30, 33);
        for (int i5 = 0; i5 < 33; i5++) {
            int i6 = (((i5 * i4) + (i4 / 2)) / 33) + i2;
            for (int i7 = 0; i7 < 30; i7++) {
                if (eoVar.OooO0o0(((((i7 * i3) + (i3 / 2)) + (((i5 & 1) * i3) / 2)) / 30) + i, i6)) {
                    eoVar2.OooOOo0(i7, i5);
                }
            }
        }
        return eoVar2;
    }

    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            throw NotFoundException.getNotFoundInstance();
        }
        go goVarOooO0OO = this.OooO00o.OooO0OO(OooO0OO(vlVar.OooO0O0()), map);
        em emVar = new em(goVarOooO0OO.OooOO0(), goVarOooO0OO.OooO0oO(), OooO0O0, BarcodeFormat.MAXICODE);
        String strOooO0O0 = goVarOooO0OO.OooO0O0();
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
