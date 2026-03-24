package z2;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* JADX INFO: loaded from: classes2.dex */
public final class lm {
    private static final int[] OooO0oO = {3808, 476, 2107, 1799};
    private final eo OooO00o;
    private boolean OooO0O0;
    private int OooO0OO;
    private int OooO0Oo;
    private int OooO0o;
    private int OooO0o0;

    public static final class OooO00o {
        private final int OooO00o;
        private final int OooO0O0;

        public OooO00o(int i, int i2) {
            this.OooO00o = i;
            this.OooO0O0 = i2;
        }

        public final int OooO00o() {
            return this.OooO00o;
        }

        public final int OooO0O0() {
            return this.OooO0O0;
        }

        public final fm OooO0OO() {
            return new fm(OooO00o(), OooO0O0());
        }

        public final String toString() {
            return "<" + this.OooO00o + ' ' + this.OooO0O0 + '>';
        }
    }

    public lm(eo eoVar) {
        this.OooO00o = eoVar;
    }

    private static int OooO(long j, boolean z) throws NotFoundException {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iArr[i4] = ((int) j) & 15;
            j >>= 4;
        }
        try {
            new uo(so.OooOO0O).OooO00o(iArr, i3);
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                i5 = (i5 << 4) + iArr[i6];
            }
            return i5;
        } catch (ReedSolomonException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private static float OooO0OO(fm fmVar, fm fmVar2) {
        return po.OooO00o(fmVar.OooO0OO(), fmVar.OooO0Oo(), fmVar2.OooO0OO(), fmVar2.OooO0Oo());
    }

    private static float OooO0Oo(OooO00o oooO00o, OooO00o oooO00o2) {
        return po.OooO0O0(oooO00o.OooO00o(), oooO00o.OooO0O0(), oooO00o2.OooO00o(), oooO00o2.OooO0O0());
    }

    private void OooO0o(fm[] fmVarArr) throws NotFoundException {
        int i;
        long j;
        long j2;
        if (!OooOOOo(fmVarArr[0]) || !OooOOOo(fmVarArr[1]) || !OooOOOo(fmVarArr[2]) || !OooOOOo(fmVarArr[3])) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i2 = this.OooO0o0 * 2;
        int[] iArr = {OooOOoo(fmVarArr[0], fmVarArr[1], i2), OooOOoo(fmVarArr[1], fmVarArr[2], i2), OooOOoo(fmVarArr[2], fmVarArr[3], i2), OooOOoo(fmVarArr[3], fmVarArr[0], i2)};
        this.OooO0o = OooOOO(iArr, i2);
        long j3 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = iArr[(this.OooO0o + i3) % 4];
            if (this.OooO0O0) {
                j = j3 << 7;
                j2 = (i4 >> 1) & 127;
            } else {
                j = j3 << 10;
                j2 = ((i4 >> 2) & 992) + ((i4 >> 1) & 31);
            }
            j3 = j + j2;
        }
        int iOooO = OooO(j3, this.OooO0O0);
        if (this.OooO0O0) {
            this.OooO0OO = (iOooO >> 6) + 1;
            i = iOooO & 63;
        } else {
            this.OooO0OO = (iOooO >> 11) + 1;
            i = iOooO & 2047;
        }
        this.OooO0Oo = i + 1;
    }

    private static fm[] OooO0o0(fm[] fmVarArr, int i, int i2) {
        float f = i2 / (i * 2.0f);
        float fOooO0OO = fmVarArr[0].OooO0OO() - fmVarArr[2].OooO0OO();
        float fOooO0Oo = fmVarArr[0].OooO0Oo() - fmVarArr[2].OooO0Oo();
        float fOooO0OO2 = (fmVarArr[0].OooO0OO() + fmVarArr[2].OooO0OO()) / 2.0f;
        float fOooO0Oo2 = (fmVarArr[0].OooO0Oo() + fmVarArr[2].OooO0Oo()) / 2.0f;
        float f2 = fOooO0OO * f;
        float f3 = fOooO0Oo * f;
        fm fmVar = new fm(fOooO0OO2 + f2, fOooO0Oo2 + f3);
        fm fmVar2 = new fm(fOooO0OO2 - f2, fOooO0Oo2 - f3);
        float fOooO0OO3 = fmVarArr[1].OooO0OO() - fmVarArr[3].OooO0OO();
        float fOooO0Oo3 = fmVarArr[1].OooO0Oo() - fmVarArr[3].OooO0Oo();
        float fOooO0OO4 = (fmVarArr[1].OooO0OO() + fmVarArr[3].OooO0OO()) / 2.0f;
        float fOooO0Oo4 = (fmVarArr[1].OooO0Oo() + fmVarArr[3].OooO0Oo()) / 2.0f;
        float f4 = fOooO0OO3 * f;
        float f5 = f * fOooO0Oo3;
        return new fm[]{fmVar, new fm(fOooO0OO4 + f4, fOooO0Oo4 + f5), fmVar2, new fm(fOooO0OO4 - f4, fOooO0Oo4 - f5)};
    }

    private fm[] OooO0oO(OooO00o oooO00o) throws NotFoundException {
        this.OooO0o0 = 1;
        OooO00o oooO00o2 = oooO00o;
        OooO00o oooO00o3 = oooO00o2;
        OooO00o oooO00o4 = oooO00o3;
        OooO00o oooO00o5 = oooO00o4;
        boolean z = true;
        while (this.OooO0o0 < 9) {
            OooO00o oooO00oOooOO0O = OooOO0O(oooO00o2, z, 1, -1);
            OooO00o oooO00oOooOO0O2 = OooOO0O(oooO00o3, z, 1, 1);
            OooO00o oooO00oOooOO0O3 = OooOO0O(oooO00o4, z, -1, 1);
            OooO00o oooO00oOooOO0O4 = OooOO0O(oooO00o5, z, -1, -1);
            if (this.OooO0o0 > 2) {
                double dOooO0Oo = (OooO0Oo(oooO00oOooOO0O4, oooO00oOooOO0O) * this.OooO0o0) / (OooO0Oo(oooO00o5, oooO00o2) * (this.OooO0o0 + 2));
                if (dOooO0Oo < 0.75d || dOooO0Oo > 1.25d || !OooOOo0(oooO00oOooOO0O, oooO00oOooOO0O2, oooO00oOooOO0O3, oooO00oOooOO0O4)) {
                    break;
                }
            }
            z = !z;
            this.OooO0o0++;
            oooO00o5 = oooO00oOooOO0O4;
            oooO00o2 = oooO00oOooOO0O;
            oooO00o3 = oooO00oOooOO0O2;
            oooO00o4 = oooO00oOooOO0O3;
        }
        int i = this.OooO0o0;
        if (i != 5 && i != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.OooO0O0 = i == 5;
        fm[] fmVarArr = {new fm(oooO00o2.OooO00o() + 0.5f, oooO00o2.OooO0O0() - 0.5f), new fm(oooO00o3.OooO00o() + 0.5f, oooO00o3.OooO0O0() + 0.5f), new fm(oooO00o4.OooO00o() - 0.5f, oooO00o4.OooO0O0() + 0.5f), new fm(oooO00o5.OooO00o() - 0.5f, oooO00o5.OooO0O0() - 0.5f)};
        int i2 = this.OooO0o0;
        return OooO0o0(fmVarArr, (i2 * 2) - 3, i2 * 2);
    }

    private int OooO0oo(OooO00o oooO00o, OooO00o oooO00o2) {
        float fOooO0Oo = OooO0Oo(oooO00o, oooO00o2);
        float fOooO00o = (oooO00o2.OooO00o() - oooO00o.OooO00o()) / fOooO0Oo;
        float fOooO0O0 = (oooO00o2.OooO0O0() - oooO00o.OooO0O0()) / fOooO0Oo;
        float fOooO00o2 = oooO00o.OooO00o();
        float fOooO0O02 = oooO00o.OooO0O0();
        boolean zOooO0o0 = this.OooO00o.OooO0o0(oooO00o.OooO00o(), oooO00o.OooO0O0());
        int iCeil = (int) Math.ceil(fOooO0Oo);
        int i = 0;
        for (int i2 = 0; i2 < iCeil; i2++) {
            fOooO00o2 += fOooO00o;
            fOooO0O02 += fOooO0O0;
            if (this.OooO00o.OooO0o0(po.OooO0OO(fOooO00o2), po.OooO0OO(fOooO0O02)) != zOooO0o0) {
                i++;
            }
        }
        float f = i / fOooO0Oo;
        if (f <= 0.1f || f >= 0.9f) {
            return (f <= 0.1f) == zOooO0o0 ? 1 : -1;
        }
        return 0;
    }

    private int OooOO0() {
        if (this.OooO0O0) {
            return (this.OooO0OO * 4) + 11;
        }
        int i = this.OooO0OO;
        return i <= 4 ? (i * 4) + 15 : (i * 4) + ((((i - 4) / 8) + 1) * 2) + 15;
    }

    private OooO00o OooOO0O(OooO00o oooO00o, boolean z, int i, int i2) {
        int iOooO00o = oooO00o.OooO00o() + i;
        int iOooO0O0 = oooO00o.OooO0O0();
        while (true) {
            iOooO0O0 += i2;
            if (!OooOOOO(iOooO00o, iOooO0O0) || this.OooO00o.OooO0o0(iOooO00o, iOooO0O0) != z) {
                break;
            }
            iOooO00o += i;
        }
        int i3 = iOooO00o - i;
        int i4 = iOooO0O0 - i2;
        while (OooOOOO(i3, i4) && this.OooO00o.OooO0o0(i3, i4) == z) {
            i3 += i;
        }
        int i5 = i3 - i;
        while (OooOOOO(i5, i4) && this.OooO00o.OooO0o0(i5, i4) == z) {
            i4 += i2;
        }
        return new OooO00o(i5, i4 - i2);
    }

    private OooO00o OooOO0o() {
        fm fmVarOooO0OO;
        fm fmVar;
        fm fmVar2;
        fm fmVar3;
        fm fmVarOooO0OO2;
        fm fmVarOooO0OO3;
        fm fmVarOooO0OO4;
        fm fmVarOooO0OO5;
        try {
            fm[] fmVarArrOooO0OO = new ro(this.OooO00o).OooO0OO();
            fmVar2 = fmVarArrOooO0OO[0];
            fmVar3 = fmVarArrOooO0OO[1];
            fmVar = fmVarArrOooO0OO[2];
            fmVarOooO0OO = fmVarArrOooO0OO[3];
        } catch (NotFoundException unused) {
            int iOooOOO0 = this.OooO00o.OooOOO0() / 2;
            int iOooO0oo = this.OooO00o.OooO0oo() / 2;
            int i = iOooOOO0 + 7;
            int i2 = iOooO0oo - 7;
            fm fmVarOooO0OO6 = OooOO0O(new OooO00o(i, i2), false, 1, -1).OooO0OO();
            int i3 = iOooO0oo + 7;
            fm fmVarOooO0OO7 = OooOO0O(new OooO00o(i, i3), false, 1, 1).OooO0OO();
            int i4 = iOooOOO0 - 7;
            fm fmVarOooO0OO8 = OooOO0O(new OooO00o(i4, i3), false, -1, 1).OooO0OO();
            fmVarOooO0OO = OooOO0O(new OooO00o(i4, i2), false, -1, -1).OooO0OO();
            fmVar = fmVarOooO0OO8;
            fmVar2 = fmVarOooO0OO6;
            fmVar3 = fmVarOooO0OO7;
        }
        int iOooO0OO = po.OooO0OO((((fmVar2.OooO0OO() + fmVarOooO0OO.OooO0OO()) + fmVar3.OooO0OO()) + fmVar.OooO0OO()) / 4.0f);
        int iOooO0OO2 = po.OooO0OO((((fmVar2.OooO0Oo() + fmVarOooO0OO.OooO0Oo()) + fmVar3.OooO0Oo()) + fmVar.OooO0Oo()) / 4.0f);
        try {
            fm[] fmVarArrOooO0OO2 = new ro(this.OooO00o, 15, iOooO0OO, iOooO0OO2).OooO0OO();
            fmVarOooO0OO2 = fmVarArrOooO0OO2[0];
            fmVarOooO0OO3 = fmVarArrOooO0OO2[1];
            fmVarOooO0OO4 = fmVarArrOooO0OO2[2];
            fmVarOooO0OO5 = fmVarArrOooO0OO2[3];
        } catch (NotFoundException unused2) {
            int i5 = iOooO0OO + 7;
            int i6 = iOooO0OO2 - 7;
            fmVarOooO0OO2 = OooOO0O(new OooO00o(i5, i6), false, 1, -1).OooO0OO();
            int i7 = iOooO0OO2 + 7;
            fmVarOooO0OO3 = OooOO0O(new OooO00o(i5, i7), false, 1, 1).OooO0OO();
            int i8 = iOooO0OO - 7;
            fmVarOooO0OO4 = OooOO0O(new OooO00o(i8, i7), false, -1, 1).OooO0OO();
            fmVarOooO0OO5 = OooOO0O(new OooO00o(i8, i6), false, -1, -1).OooO0OO();
        }
        return new OooO00o(po.OooO0OO((((fmVarOooO0OO2.OooO0OO() + fmVarOooO0OO5.OooO0OO()) + fmVarOooO0OO3.OooO0OO()) + fmVarOooO0OO4.OooO0OO()) / 4.0f), po.OooO0OO((((fmVarOooO0OO2.OooO0Oo() + fmVarOooO0OO5.OooO0Oo()) + fmVarOooO0OO3.OooO0Oo()) + fmVarOooO0OO4.OooO0Oo()) / 4.0f));
    }

    private static int OooOOO(int[] iArr, int i) throws NotFoundException {
        int i2 = 0;
        for (int i3 : iArr) {
            i2 = (i2 << 3) + ((i3 >> (i - 2)) << 1) + (i3 & 1);
        }
        int i4 = ((i2 & 1) << 11) + (i2 >> 1);
        for (int i5 = 0; i5 < 4; i5++) {
            if (Integer.bitCount(OooO0oO[i5] ^ i4) <= 2) {
                return i5;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private fm[] OooOOO0(fm[] fmVarArr) {
        return OooO0o0(fmVarArr, this.OooO0o0 * 2, OooOO0());
    }

    private boolean OooOOOO(int i, int i2) {
        return i >= 0 && i < this.OooO00o.OooOOO0() && i2 > 0 && i2 < this.OooO00o.OooO0oo();
    }

    private boolean OooOOOo(fm fmVar) {
        return OooOOOO(po.OooO0OO(fmVar.OooO0OO()), po.OooO0OO(fmVar.OooO0Oo()));
    }

    private eo OooOOo(eo eoVar, fm fmVar, fm fmVar2, fm fmVar3, fm fmVar4) throws NotFoundException {
        ko koVarOooO0O0 = ko.OooO0O0();
        int iOooOO0 = OooOO0();
        float f = iOooOO0 / 2.0f;
        int i = this.OooO0o0;
        float f2 = f - i;
        float f3 = f + i;
        return koVarOooO0O0.OooO0OO(eoVar, iOooOO0, iOooOO0, f2, f2, f3, f2, f3, f3, f2, f3, fmVar.OooO0OO(), fmVar.OooO0Oo(), fmVar2.OooO0OO(), fmVar2.OooO0Oo(), fmVar3.OooO0OO(), fmVar3.OooO0Oo(), fmVar4.OooO0OO(), fmVar4.OooO0Oo());
    }

    private boolean OooOOo0(OooO00o oooO00o, OooO00o oooO00o2, OooO00o oooO00o3, OooO00o oooO00o4) {
        OooO00o oooO00o5 = new OooO00o(oooO00o.OooO00o() - 3, oooO00o.OooO0O0() + 3);
        OooO00o oooO00o6 = new OooO00o(oooO00o2.OooO00o() - 3, oooO00o2.OooO0O0() - 3);
        OooO00o oooO00o7 = new OooO00o(oooO00o3.OooO00o() + 3, oooO00o3.OooO0O0() - 3);
        OooO00o oooO00o8 = new OooO00o(oooO00o4.OooO00o() + 3, oooO00o4.OooO0O0() + 3);
        int iOooO0oo = OooO0oo(oooO00o8, oooO00o5);
        return iOooO0oo != 0 && OooO0oo(oooO00o5, oooO00o6) == iOooO0oo && OooO0oo(oooO00o6, oooO00o7) == iOooO0oo && OooO0oo(oooO00o7, oooO00o8) == iOooO0oo;
    }

    private int OooOOoo(fm fmVar, fm fmVar2, int i) {
        float fOooO0OO = OooO0OO(fmVar, fmVar2);
        float f = fOooO0OO / i;
        float fOooO0OO2 = fmVar.OooO0OO();
        float fOooO0Oo = fmVar.OooO0Oo();
        float fOooO0OO3 = ((fmVar2.OooO0OO() - fmVar.OooO0OO()) * f) / fOooO0OO;
        float fOooO0Oo2 = (f * (fmVar2.OooO0Oo() - fmVar.OooO0Oo())) / fOooO0OO;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f2 = i3;
            if (this.OooO00o.OooO0o0(po.OooO0OO((f2 * fOooO0OO3) + fOooO0OO2), po.OooO0OO((f2 * fOooO0Oo2) + fOooO0Oo))) {
                i2 |= 1 << ((i - i3) - 1);
            }
        }
        return i2;
    }

    public final im OooO00o() throws NotFoundException {
        return OooO0O0(false);
    }

    public final im OooO0O0(boolean z) throws NotFoundException {
        fm[] fmVarArrOooO0oO = OooO0oO(OooOO0o());
        if (z) {
            fm fmVar = fmVarArrOooO0oO[0];
            fmVarArrOooO0oO[0] = fmVarArrOooO0oO[2];
            fmVarArrOooO0oO[2] = fmVar;
        }
        OooO0o(fmVarArrOooO0oO);
        eo eoVar = this.OooO00o;
        int i = this.OooO0o;
        return new im(OooOOo(eoVar, fmVarArrOooO0oO[i % 4], fmVarArrOooO0oO[(i + 1) % 4], fmVarArrOooO0oO[(i + 2) % 4], fmVarArrOooO0oO[(i + 3) % 4]), OooOOO0(fmVarArrOooO0oO), this.OooO0O0, this.OooO0Oo, this.OooO0OO);
    }
}
