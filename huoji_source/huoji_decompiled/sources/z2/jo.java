package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
public class jo extends ul {
    private static final int OooO0Oo = 5;
    private static final int OooO0o = 32;
    private static final int OooO0o0 = 3;
    private static final byte[] OooO0oO = new byte[0];
    private byte[] OooO0O0;
    private final int[] OooO0OO;

    public jo(yl ylVar) {
        super(ylVar);
        this.OooO0O0 = OooO0oO;
        this.OooO0OO = new int[32];
    }

    private static int OooO0oO(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (iArr[i4] > i) {
                i = iArr[i4];
                i3 = i4;
            }
            if (iArr[i4] > i2) {
                i2 = iArr[i4];
            }
        }
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int i8 = i7 - i3;
            int i9 = iArr[i7] * i8 * i8;
            if (i9 > i6) {
                i5 = i7;
                i6 = i9;
            }
        }
        if (i3 <= i5) {
            int i10 = i3;
            i3 = i5;
            i5 = i10;
        }
        if (i3 - i5 <= length / 16) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i11 = i3 - 1;
        int i12 = i11;
        int i13 = -1;
        while (i11 > i5) {
            int i14 = i11 - i5;
            int i15 = i14 * i14 * (i3 - i11) * (i2 - iArr[i11]);
            if (i15 > i13) {
                i12 = i11;
                i13 = i15;
            }
            i11--;
        }
        return i12 << 3;
    }

    private void OooO0oo(int i) {
        if (this.OooO0O0.length < i) {
            this.OooO0O0 = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.OooO0OO[i2] = 0;
        }
    }

    @Override // z2.ul
    public ul OooO00o(yl ylVar) {
        return new jo(ylVar);
    }

    @Override // z2.ul
    public eo OooO0O0() throws NotFoundException {
        yl ylVarOooO0o0 = OooO0o0();
        int iOooO0o0 = ylVarOooO0o0.OooO0o0();
        int iOooO0O0 = ylVarOooO0o0.OooO0O0();
        eo eoVar = new eo(iOooO0o0, iOooO0O0);
        OooO0oo(iOooO0o0);
        int[] iArr = this.OooO0OO;
        for (int i = 1; i < 5; i++) {
            byte[] bArrOooO0Oo = ylVarOooO0o0.OooO0Oo((iOooO0O0 * i) / 5, this.OooO0O0);
            int i2 = (iOooO0o0 << 2) / 5;
            for (int i3 = iOooO0o0 / 5; i3 < i2; i3++) {
                int i4 = (bArrOooO0Oo[i3] & 255) >> 3;
                iArr[i4] = iArr[i4] + 1;
            }
        }
        int iOooO0oO = OooO0oO(iArr);
        byte[] bArrOooO0OO = ylVarOooO0o0.OooO0OO();
        for (int i5 = 0; i5 < iOooO0O0; i5++) {
            int i6 = i5 * iOooO0o0;
            for (int i7 = 0; i7 < iOooO0o0; i7++) {
                if ((bArrOooO0OO[i6 + i7] & 255) < iOooO0oO) {
                    eoVar.OooOOo0(i7, i5);
                }
            }
        }
        return eoVar;
    }

    @Override // z2.ul
    public Cdo OooO0OO(int i, Cdo cdo) throws NotFoundException {
        yl ylVarOooO0o0 = OooO0o0();
        int iOooO0o0 = ylVarOooO0o0.OooO0o0();
        if (cdo == null || cdo.OooOOO0() < iOooO0o0) {
            cdo = new Cdo(iOooO0o0);
        } else {
            cdo.OooO0Oo();
        }
        OooO0oo(iOooO0o0);
        byte[] bArrOooO0Oo = ylVarOooO0o0.OooO0Oo(i, this.OooO0O0);
        int[] iArr = this.OooO0OO;
        for (int i2 = 0; i2 < iOooO0o0; i2++) {
            int i3 = (bArrOooO0Oo[i2] & 255) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int iOooO0oO = OooO0oO(iArr);
        if (iOooO0o0 < 3) {
            for (int i4 = 0; i4 < iOooO0o0; i4++) {
                if ((bArrOooO0Oo[i4] & 255) < iOooO0oO) {
                    cdo.OooOOo(i4);
                }
            }
        } else {
            int i5 = 1;
            int i6 = bArrOooO0Oo[0] & 255;
            int i7 = bArrOooO0Oo[1] & 255;
            while (i5 < iOooO0o0 - 1) {
                int i8 = i5 + 1;
                int i9 = bArrOooO0Oo[i8] & 255;
                if ((((i7 << 2) - i6) - i9) / 2 < iOooO0oO) {
                    cdo.OooOOo(i5);
                }
                i6 = i7;
                i5 = i8;
                i7 = i9;
            }
        }
        return cdo;
    }
}
