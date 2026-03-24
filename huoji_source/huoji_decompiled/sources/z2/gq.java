package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class gq extends uq {
    private final int[] OooOO0O = new int[4];

    @Override // z2.uq
    public final int OooOO0o(Cdo cdo, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.OooOO0O;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iOooOOO0 = cdo.OooOOO0();
        int i = iArr[1];
        for (int i2 = 0; i2 < 4 && i < iOooOOO0; i2++) {
            sb.append((char) (uq.OooOO0(cdo, iArr2, i, uq.OooO) + 48));
            for (int i3 : iArr2) {
                i += i3;
            }
        }
        int i4 = uq.OooOOO(cdo, i, true, uq.OooO0oO)[1];
        for (int i5 = 0; i5 < 4 && i4 < iOooOOO0; i5++) {
            sb.append((char) (uq.OooOO0(cdo, iArr2, i4, uq.OooO) + 48));
            for (int i6 : iArr2) {
                i4 += i6;
            }
        }
        return i4;
    }

    @Override // z2.uq
    public final BarcodeFormat OooOOo0() {
        return BarcodeFormat.EAN_8;
    }
}
