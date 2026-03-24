package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.aztec.decoder.Decoder;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class jm implements dm {
    @Override // z2.dm
    public final em OooO00o(vl vlVar, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        fm[] fmVarArrOooO0O0;
        fm[] fmVarArrOooO0O02;
        FormatException formatException;
        gm gmVar;
        lm lmVar = new lm(vlVar.OooO0O0());
        go goVarOooO0OO = null;
        try {
            im imVarOooO0O0 = lmVar.OooO0O0(false);
            fmVarArrOooO0O0 = imVarOooO0O0.OooO0O0();
            try {
                fmVarArrOooO0O02 = fmVarArrOooO0O0;
                formatException = null;
                goVarOooO0OO = new Decoder().OooO0OO(imVarOooO0O0);
                e = null;
            } catch (FormatException e) {
                e = e;
                fmVarArrOooO0O02 = fmVarArrOooO0O0;
                formatException = e;
                e = null;
            } catch (NotFoundException e2) {
                e = e2;
                fmVarArrOooO0O02 = fmVarArrOooO0O0;
                formatException = null;
            }
        } catch (FormatException e3) {
            e = e3;
            fmVarArrOooO0O0 = null;
        } catch (NotFoundException e4) {
            e = e4;
            fmVarArrOooO0O0 = null;
        }
        if (goVarOooO0OO == null) {
            try {
                im imVarOooO0O02 = lmVar.OooO0O0(true);
                fmVarArrOooO0O02 = imVarOooO0O02.OooO0O0();
                goVarOooO0OO = new Decoder().OooO0OO(imVarOooO0O02);
            } catch (FormatException | NotFoundException e5) {
                if (e != null) {
                    throw e;
                }
                if (formatException != null) {
                    throw formatException;
                }
                throw e5;
            }
        }
        fm[] fmVarArr = fmVarArrOooO0O02;
        if (map != null && (gmVar = (gm) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK)) != null) {
            for (fm fmVar : fmVarArr) {
                gmVar.OooO00o(fmVar);
            }
        }
        em emVar = new em(goVarOooO0OO.OooOO0(), goVarOooO0OO.OooO0oO(), goVarOooO0OO.OooO0o0(), fmVarArr, BarcodeFormat.AZTEC, System.currentTimeMillis());
        List<byte[]> listOooO00o = goVarOooO0OO.OooO00o();
        if (listOooO00o != null) {
            emVar.OooOO0(ResultMetadataType.BYTE_SEGMENTS, listOooO00o);
        }
        String strOooO0O0 = goVarOooO0OO.OooO0O0();
        if (strOooO0O0 != null) {
            emVar.OooOO0(ResultMetadataType.ERROR_CORRECTION_LEVEL, strOooO0O0);
        }
        return emVar;
    }

    @Override // z2.dm
    public final em OooO0O0(vl vlVar) throws NotFoundException, FormatException {
        return OooO00o(vlVar, null);
    }

    @Override // z2.dm
    public final void reset() {
    }
}
