package z2;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class jq extends nq {
    private static final float OooO0O0 = 0.38f;
    private static final float OooO0OO = 0.5f;
    private static final int OooO0Oo = 3;
    private static final int OooO0o = 1;
    private static final int OooO0o0 = 2;
    private int OooO00o = -1;
    private static final int[] OooO0oO = {6, 8, 10, 12, 14};
    private static final int[] OooO0oo = {1, 1, 1, 1};
    private static final int[][] OooO = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};
    private static final int[][] OooOO0 = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    private int[] OooO(Cdo cdo) throws NotFoundException {
        int[] iArrOooOO0o;
        cdo.OooOOo0();
        try {
            int iOooOOO0 = OooOOO0(cdo);
            try {
                iArrOooOO0o = OooOO0o(cdo, iOooOOO0, OooO[0]);
            } catch (NotFoundException unused) {
                iArrOooOO0o = OooOO0o(cdo, iOooOOO0, OooO[1]);
            }
            OooOOO(cdo, iArrOooOO0o[0]);
            int i = iArrOooOO0o[0];
            iArrOooOO0o[0] = cdo.OooOOO0() - iArrOooOO0o[1];
            iArrOooOO0o[1] = cdo.OooOOO0() - i;
            return iArrOooOO0o;
        } finally {
            cdo.OooOOo0();
        }
    }

    private static int OooO0oo(int[] iArr) throws NotFoundException {
        int length = OooOO0.length;
        float f = OooO0O0;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            float fOooO0o0 = nq.OooO0o0(iArr, OooOO0[i2], 0.5f);
            if (fOooO0o0 < f) {
                i = i2;
                f = fOooO0o0;
            } else if (fOooO0o0 == f) {
                i = -1;
            }
        }
        if (i >= 0) {
            return i % 10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static void OooOO0(Cdo cdo, int i, int i2, StringBuilder sb) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            nq.OooO0o(cdo, i, iArr);
            for (int i3 = 0; i3 < 5; i3++) {
                int i4 = i3 * 2;
                iArr2[i3] = iArr[i4];
                iArr3[i3] = iArr[i4 + 1];
            }
            sb.append((char) (OooO0oo(iArr2) + 48));
            sb.append((char) (OooO0oo(iArr3) + 48));
            for (int i5 = 0; i5 < 10; i5++) {
                i += iArr[i5];
            }
        }
    }

    private int[] OooOO0O(Cdo cdo) throws NotFoundException {
        int[] iArrOooOO0o = OooOO0o(cdo, OooOOO0(cdo), OooO0oo);
        this.OooO00o = (iArrOooOO0o[1] - iArrOooOO0o[0]) / 4;
        OooOOO(cdo, iArrOooOO0o[0]);
        return iArrOooOO0o;
    }

    private static int[] OooOO0o(Cdo cdo, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int iOooOOO0 = cdo.OooOOO0();
        int i2 = i;
        boolean z = false;
        int i3 = 0;
        while (i < iOooOOO0) {
            if (cdo.OooO0oo(i) != z) {
                iArr2[i3] = iArr2[i3] + 1;
            } else {
                if (i3 != length - 1) {
                    i3++;
                } else {
                    if (nq.OooO0o0(iArr2, iArr, 0.5f) < OooO0O0) {
                        return new int[]{i2, i};
                    }
                    i2 += iArr2[0] + iArr2[1];
                    int i4 = i3 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i4);
                    iArr2[i4] = 0;
                    iArr2[i3] = 0;
                    i3--;
                }
                iArr2[i3] = 1;
                z = !z;
            }
            i++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void OooOOO(Cdo cdo, int i) throws NotFoundException {
        int i2 = this.OooO00o * 10;
        if (i2 >= i) {
            i2 = i;
        }
        for (int i3 = i - 1; i2 > 0 && i3 >= 0 && !cdo.OooO0oo(i3); i3--) {
            i2--;
        }
        if (i2 != 0) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private static int OooOOO0(Cdo cdo) throws NotFoundException {
        int iOooOOO0 = cdo.OooOOO0();
        int iOooOO0O = cdo.OooOO0O(0);
        if (iOooOO0O != iOooOOO0) {
            return iOooOO0O;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // z2.nq
    public final em OooO0OO(int i, Cdo cdo, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        boolean z;
        int[] iArrOooOO0O = OooOO0O(cdo);
        int[] iArrOooO = OooO(cdo);
        StringBuilder sb = new StringBuilder(20);
        OooOO0(cdo, iArrOooOO0O[1], iArrOooO[0], sb);
        String string = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = OooO0oO;
        }
        int length = string.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (!z) {
            throw FormatException.getFormatInstance();
        }
        float f = i;
        return new em(string, null, new fm[]{new fm(iArrOooOO0O[1], f), new fm(iArrOooO[0], f)}, BarcodeFormat.ITF);
    }
}
