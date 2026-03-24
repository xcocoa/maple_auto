package z2;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class dt {
    private final uo OooO00o = new uo(so.OooOO0o);

    private void OooO00o(byte[] bArr, int i) throws ChecksumException {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.OooO00o.OooO00o(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    private go OooO0Oo(at atVar, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        gt gtVarOooO0o0 = atVar.OooO0o0();
        ErrorCorrectionLevel errorCorrectionLevelOooO0Oo = atVar.OooO0Oo().OooO0Oo();
        bt[] btVarArrOooO0O0 = bt.OooO0O0(atVar.OooO0OO(), gtVarOooO0o0, errorCorrectionLevelOooO0Oo);
        int iOooO0OO = 0;
        for (bt btVar : btVarArrOooO0O0) {
            iOooO0OO += btVar.OooO0OO();
        }
        byte[] bArr = new byte[iOooO0OO];
        int i = 0;
        for (bt btVar2 : btVarArrOooO0O0) {
            byte[] bArrOooO00o = btVar2.OooO00o();
            int iOooO0OO2 = btVar2.OooO0OO();
            OooO00o(bArrOooO00o, iOooO0OO2);
            int i2 = 0;
            while (i2 < iOooO0OO2) {
                bArr[i] = bArrOooO00o[i2];
                i2++;
                i++;
            }
        }
        return ct.OooO00o(bArr, gtVarOooO0o0, errorCorrectionLevelOooO0Oo, map);
    }

    public final go OooO0O0(eo eoVar) throws ChecksumException, FormatException {
        return OooO0OO(eoVar, null);
    }

    public final go OooO0OO(eo eoVar, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        ChecksumException e;
        at atVar = new at(eoVar);
        FormatException formatException = null;
        try {
            return OooO0Oo(atVar, map);
        } catch (ChecksumException e2) {
            e = e2;
            try {
                atVar.OooO0o();
                atVar.OooO0oO(true);
                atVar.OooO0o0();
                atVar.OooO0Oo();
                atVar.OooO0O0();
                go goVarOooO0Oo = OooO0Oo(atVar, map);
                goVarOooO0Oo.OooOOOO(new ft(true));
                return goVarOooO0Oo;
            } catch (ChecksumException | FormatException unused) {
                if (formatException != null) {
                    throw formatException;
                }
                throw e;
            }
        } catch (FormatException e3) {
            e = null;
            formatException = e3;
            atVar.OooO0o();
            atVar.OooO0oO(true);
            atVar.OooO0o0();
            atVar.OooO0Oo();
            atVar.OooO0O0();
            go goVarOooO0Oo2 = OooO0Oo(atVar, map);
            goVarOooO0Oo2.OooOOOO(new ft(true));
            return goVarOooO0Oo2;
        }
    }

    public final go OooO0o(boolean[][] zArr, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        return OooO0OO(eo.OooOOOO(zArr), map);
    }

    public final go OooO0o0(boolean[][] zArr) throws ChecksumException, FormatException {
        return OooO0o(zArr, null);
    }
}
