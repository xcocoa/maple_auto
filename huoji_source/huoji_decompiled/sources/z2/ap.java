package z2;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.datamatrix.decoder.DecodedBitStreamParser;

/* JADX INFO: loaded from: classes2.dex */
public final class ap {
    private final uo OooO00o = new uo(so.OooOOO0);

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

    public final go OooO0O0(eo eoVar) throws ChecksumException, FormatException {
        yo yoVar = new yo(eoVar);
        zo[] zoVarArrOooO0O0 = zo.OooO0O0(yoVar.OooO0OO(), yoVar.OooO0O0());
        int iOooO0OO = 0;
        for (zo zoVar : zoVarArrOooO0O0) {
            iOooO0OO += zoVar.OooO0OO();
        }
        byte[] bArr = new byte[iOooO0OO];
        int length = zoVarArrOooO0O0.length;
        for (int i = 0; i < length; i++) {
            zo zoVar2 = zoVarArrOooO0O0[i];
            byte[] bArrOooO00o = zoVar2.OooO00o();
            int iOooO0OO2 = zoVar2.OooO0OO();
            OooO00o(bArrOooO00o, iOooO0OO2);
            for (int i2 = 0; i2 < iOooO0OO2; i2++) {
                bArr[(i2 * length) + i] = bArrOooO00o[i2];
            }
        }
        return DecodedBitStreamParser.OooO00o(bArr);
    }

    public final go OooO0OO(boolean[][] zArr) throws ChecksumException, FormatException {
        return OooO0O0(eo.OooOOOO(zArr));
    }
}
