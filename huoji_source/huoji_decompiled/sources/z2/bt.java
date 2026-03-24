package z2;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import z2.gt;

/* JADX INFO: loaded from: classes2.dex */
public final class bt {
    private final int OooO00o;
    private final byte[] OooO0O0;

    private bt(int i, byte[] bArr) {
        this.OooO00o = i;
        this.OooO0O0 = bArr;
    }

    public static bt[] OooO0O0(byte[] bArr, gt gtVar, ErrorCorrectionLevel errorCorrectionLevel) {
        if (bArr.length != gtVar.OooO0oo()) {
            throw new IllegalArgumentException();
        }
        gt.OooO0O0 oooO0O0OooO0o = gtVar.OooO0o(errorCorrectionLevel);
        gt.OooO00o[] oooO00oArrOooO00o = oooO0O0OooO0o.OooO00o();
        int iOooO00o = 0;
        for (gt.OooO00o oooO00o : oooO00oArrOooO00o) {
            iOooO00o += oooO00o.OooO00o();
        }
        bt[] btVarArr = new bt[iOooO00o];
        int i = 0;
        for (gt.OooO00o oooO00o2 : oooO00oArrOooO00o) {
            int i2 = 0;
            while (i2 < oooO00o2.OooO00o()) {
                int iOooO0O0 = oooO00o2.OooO0O0();
                btVarArr[i] = new bt(iOooO0O0, new byte[oooO0O0OooO0o.OooO0O0() + iOooO0O0]);
                i2++;
                i++;
            }
        }
        int length = btVarArr[0].OooO0O0.length;
        int i3 = iOooO00o - 1;
        while (i3 >= 0 && btVarArr[i3].OooO0O0.length != length) {
            i3--;
        }
        int i4 = i3 + 1;
        int iOooO0O02 = length - oooO0O0OooO0o.OooO0O0();
        int i5 = 0;
        for (int i6 = 0; i6 < iOooO0O02; i6++) {
            int i7 = 0;
            while (i7 < i) {
                btVarArr[i7].OooO0O0[i6] = bArr[i5];
                i7++;
                i5++;
            }
        }
        int i8 = i4;
        while (i8 < i) {
            btVarArr[i8].OooO0O0[iOooO0O02] = bArr[i5];
            i8++;
            i5++;
        }
        int length2 = btVarArr[0].OooO0O0.length;
        while (iOooO0O02 < length2) {
            int i9 = 0;
            while (i9 < i) {
                btVarArr[i9].OooO0O0[i9 < i4 ? iOooO0O02 : iOooO0O02 + 1] = bArr[i5];
                i9++;
                i5++;
            }
            iOooO0O02++;
        }
        return btVarArr;
    }

    public final byte[] OooO00o() {
        return this.OooO0O0;
    }

    public final int OooO0OO() {
        return this.OooO00o;
    }
}
