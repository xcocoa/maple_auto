package z2;

import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class sp {
    private static final int OooO0O0 = 0;
    private static final int OooO0OO = 1;
    private static final int OooO0Oo = 2;
    private final uo OooO00o = new uo(so.OooOOOO);

    private void OooO00o(byte[] bArr, int i, int i2, int i3, int i4) throws ChecksumException {
        int i5 = i2 + i3;
        int i6 = i4 == 0 ? 1 : 2;
        int[] iArr = new int[i5 / i6];
        for (int i7 = 0; i7 < i5; i7++) {
            if (i4 == 0 || i7 % 2 == i4 - 1) {
                iArr[i7 / i6] = bArr[i7 + i] & 255;
            }
        }
        try {
            this.OooO00o.OooO00o(iArr, i3 / i6);
            for (int i8 = 0; i8 < i2; i8++) {
                if (i4 == 0 || i8 % 2 == i4 - 1) {
                    bArr[i8 + i] = (byte) iArr[i8 / i6];
                }
            }
        } catch (ReedSolomonException unused) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    public final go OooO0O0(eo eoVar) throws ChecksumException, FormatException {
        return OooO0OO(eoVar, null);
    }

    public final go OooO0OO(eo eoVar, Map<DecodeHintType, ?> map) throws ChecksumException, FormatException {
        int i;
        byte[] bArrOooO00o = new qp(eoVar).OooO00o();
        OooO00o(bArrOooO00o, 0, 10, 10, 0);
        int i2 = bArrOooO00o[0] & com.umeng.commonsdk.proguard.bg.m;
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            OooO00o(bArrOooO00o, 20, 84, 40, 1);
            OooO00o(bArrOooO00o, 20, 84, 40, 2);
            i = 94;
        } else {
            if (i2 != 5) {
                throw FormatException.getFormatInstance();
            }
            OooO00o(bArrOooO00o, 20, 68, 56, 1);
            OooO00o(bArrOooO00o, 20, 68, 56, 2);
            i = 78;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(bArrOooO00o, 0, bArr, 0, 10);
        System.arraycopy(bArrOooO00o, 20, bArr, 10, bArr.length - 10);
        return rp.OooO00o(bArr, i2);
    }
}
