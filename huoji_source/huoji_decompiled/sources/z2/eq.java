package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public final class eq extends uq {
    public static final int[] OooOO0o = {0, 11, 13, 14, 19, 25, 28, 21, 22, 26};
    private final int[] OooOO0O = new int[4];

    private static void OooOOoo(StringBuilder sb, int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == OooOO0o[i2]) {
                sb.insert(0, (char) (i2 + 48));
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.uq
    public final int OooOO0o(Cdo cdo, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.OooOO0O;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iOooOOO0 = cdo.OooOOO0();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 6 && i < iOooOOO0; i3++) {
            int iOooOO0 = uq.OooOO0(cdo, iArr2, i, uq.OooOO0);
            sb.append((char) ((iOooOO0 % 10) + 48));
            for (int i4 : iArr2) {
                i += i4;
            }
            if (iOooOO0 >= 10) {
                i2 |= 1 << (5 - i3);
            }
        }
        OooOOoo(sb, i2);
        int i5 = uq.OooOOO(cdo, i, true, uq.OooO0oO)[1];
        for (int i6 = 0; i6 < 6 && i5 < iOooOOO0; i6++) {
            sb.append((char) (uq.OooOO0(cdo, iArr2, i5, uq.OooO) + 48));
            for (int i7 : iArr2) {
                i5 += i7;
            }
        }
        return i5;
    }

    @Override // z2.uq
    public final BarcodeFormat OooOOo0() {
        return BarcodeFormat.EAN_13;
    }
}
