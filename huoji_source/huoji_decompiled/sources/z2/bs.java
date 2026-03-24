package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class bs implements dm, vp {
    private static int OooO(fm fmVar, fm fmVar2) {
        if (fmVar == null || fmVar2 == null) {
            return Integer.MAX_VALUE;
        }
        return (int) Math.abs(fmVar.OooO0OO() - fmVar2.OooO0OO());
    }

    private static int OooO0o(fm[] fmVarArr) {
        return Math.max(Math.max(OooO0oO(fmVarArr[0], fmVarArr[4]), (OooO0oO(fmVarArr[6], fmVarArr[2]) * 17) / 18), Math.max(OooO0oO(fmVarArr[1], fmVarArr[5]), (OooO0oO(fmVarArr[7], fmVarArr[3]) * 17) / 18));
    }

    private static em[] OooO0o0(vl vlVar, Map<DecodeHintType, ?> map, boolean z) throws NotFoundException, ChecksumException, FormatException {
        ArrayList arrayList = new ArrayList();
        rs rsVarOooO0O0 = qs.OooO0O0(vlVar, map, z);
        for (fm[] fmVarArr : rsVarOooO0O0.OooO0O0()) {
            go goVarOooO = ms.OooO(rsVarOooO0O0.OooO00o(), fmVarArr[4], fmVarArr[5], fmVarArr[6], fmVarArr[7], OooO0oo(fmVarArr), OooO0o(fmVarArr));
            em emVar = new em(goVarOooO.OooOO0(), goVarOooO.OooO0oO(), fmVarArr, BarcodeFormat.PDF_417);
            emVar.OooOO0(ResultMetadataType.ERROR_CORRECTION_LEVEL, goVarOooO.OooO0O0());
            cs csVar = (cs) goVarOooO.OooO0o();
            if (csVar != null) {
                emVar.OooOO0(ResultMetadataType.PDF417_EXTRA_METADATA, csVar);
            }
            arrayList.add(emVar);
        }
        return (em[]) arrayList.toArray(new em[arrayList.size()]);
    }

    private static int OooO0oO(fm fmVar, fm fmVar2) {
        if (fmVar == null || fmVar2 == null) {
            return 0;
        }
        return (int) Math.abs(fmVar.OooO0OO() - fmVar2.OooO0OO());
    }

    private static int OooO0oo(fm[] fmVarArr) {
        return Math.min(Math.min(OooO(fmVarArr[0], fmVarArr[4]), (OooO(fmVarArr[6], fmVarArr[2]) * 17) / 18), Math.min(OooO(fmVarArr[1], fmVarArr[5]), (OooO(fmVarArr[7], fmVarArr[3]) * 17) / 18));
    }

    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        em[] emVarArrOooO0o0 = OooO0o0(vlVar, map, false);
        if (emVarArrOooO0o0 == null || emVarArrOooO0o0.length == 0 || emVarArrOooO0o0[0] == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        return emVarArrOooO0o0[0];
    }

    @Override // z2.dm
    public final em OooO0O0(vl vlVar) throws NotFoundException, ChecksumException, FormatException {
        return OooO00o(vlVar, null);
    }

    @Override // z2.vp
    public final em[] OooO0OO(vl vlVar) throws NotFoundException {
        return OooO0Oo(vlVar, null);
    }

    @Override // z2.vp
    public final em[] OooO0Oo(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException {
        try {
            return OooO0o0(vlVar, map, true);
        } catch (ChecksumException | FormatException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    @Override // z2.dm
    public final void reset() {
    }
}
