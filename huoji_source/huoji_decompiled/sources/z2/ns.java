package z2;

import com.google.zxing.ChecksumException;

/* JADX INFO: loaded from: classes2.dex */
public final class ns {
    private final os OooO00o = os.OooO0o;

    private int[] OooO0O0(ps psVar) throws ChecksumException {
        int iOooO0o0 = psVar.OooO0o0();
        int[] iArr = new int[iOooO0o0];
        int i = 0;
        for (int i2 = 1; i2 < this.OooO00o.OooO0o0() && i < iOooO0o0; i2++) {
            if (psVar.OooO0O0(i2) == 0) {
                iArr[i] = this.OooO00o.OooO0oO(i2);
                i++;
            }
        }
        if (i == iOooO0o0) {
            return iArr;
        }
        throw ChecksumException.getChecksumInstance();
    }

    private int[] OooO0OO(ps psVar, ps psVar2, int[] iArr) {
        int iOooO0o0 = psVar2.OooO0o0();
        int[] iArr2 = new int[iOooO0o0];
        for (int i = 1; i <= iOooO0o0; i++) {
            iArr2[iOooO0o0 - i] = this.OooO00o.OooO(i, psVar2.OooO0OO(i));
        }
        ps psVar3 = new ps(this.OooO00o, iArr2);
        int length = iArr.length;
        int[] iArr3 = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            int iOooO0oO = this.OooO00o.OooO0oO(iArr[i2]);
            iArr3[i2] = this.OooO00o.OooO(this.OooO00o.OooOO0(0, psVar.OooO0O0(iOooO0oO)), this.OooO00o.OooO0oO(psVar3.OooO0O0(iOooO0oO)));
        }
        return iArr3;
    }

    private ps[] OooO0Oo(ps psVar, ps psVar2, int i) throws ChecksumException {
        if (psVar.OooO0o0() < psVar2.OooO0o0()) {
            psVar2 = psVar;
            psVar = psVar2;
        }
        ps psVarOooO0o = this.OooO00o.OooO0o();
        ps psVarOooO0Oo = this.OooO00o.OooO0Oo();
        while (true) {
            ps psVar3 = psVar2;
            psVar2 = psVar;
            psVar = psVar3;
            ps psVar4 = psVarOooO0Oo;
            ps psVar5 = psVarOooO0o;
            psVarOooO0o = psVar4;
            if (psVar.OooO0o0() < i / 2) {
                int iOooO0OO = psVarOooO0o.OooO0OO(0);
                if (iOooO0OO == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int iOooO0oO = this.OooO00o.OooO0oO(iOooO0OO);
                return new ps[]{psVarOooO0o.OooO0oO(iOooO0oO), psVar.OooO0oO(iOooO0oO)};
            }
            if (psVar.OooO0o()) {
                throw ChecksumException.getChecksumInstance();
            }
            ps psVarOooO0o2 = this.OooO00o.OooO0o();
            int iOooO0oO2 = this.OooO00o.OooO0oO(psVar.OooO0OO(psVar.OooO0o0()));
            while (psVar2.OooO0o0() >= psVar.OooO0o0() && !psVar2.OooO0o()) {
                int iOooO0o0 = psVar2.OooO0o0() - psVar.OooO0o0();
                int iOooO = this.OooO00o.OooO(psVar2.OooO0OO(psVar2.OooO0o0()), iOooO0oO2);
                psVarOooO0o2 = psVarOooO0o2.OooO00o(this.OooO00o.OooO0O0(iOooO0o0, iOooO));
                psVar2 = psVar2.OooOO0O(psVar.OooO(iOooO0o0, iOooO));
            }
            psVarOooO0Oo = psVarOooO0o2.OooO0oo(psVarOooO0o).OooOO0O(psVar5).OooOO0();
        }
    }

    public final int OooO00o(int[] iArr, int i, int[] iArr2) throws ChecksumException {
        ps psVar = new ps(this.OooO00o, iArr);
        int[] iArr3 = new int[i];
        boolean z = false;
        for (int i2 = i; i2 > 0; i2--) {
            int iOooO0O0 = psVar.OooO0O0(this.OooO00o.OooO0OO(i2));
            iArr3[i - i2] = iOooO0O0;
            if (iOooO0O0 != 0) {
                z = true;
            }
        }
        if (!z) {
            return 0;
        }
        ps psVarOooO0Oo = this.OooO00o.OooO0Oo();
        if (iArr2 != null) {
            for (int i3 : iArr2) {
                int iOooO0OO = this.OooO00o.OooO0OO((iArr.length - 1) - i3);
                os osVar = this.OooO00o;
                psVarOooO0Oo = psVarOooO0Oo.OooO0oo(new ps(osVar, new int[]{osVar.OooOO0(0, iOooO0OO), 1}));
            }
        }
        ps[] psVarArrOooO0Oo = OooO0Oo(this.OooO00o.OooO0O0(i, 1), new ps(this.OooO00o, iArr3), i);
        ps psVar2 = psVarArrOooO0Oo[0];
        ps psVar3 = psVarArrOooO0Oo[1];
        int[] iArrOooO0O0 = OooO0O0(psVar2);
        int[] iArrOooO0OO = OooO0OO(psVar3, psVar2, iArrOooO0O0);
        for (int i4 = 0; i4 < iArrOooO0O0.length; i4++) {
            int length = (iArr.length - 1) - this.OooO00o.OooO0oo(iArrOooO0O0[i4]);
            if (length < 0) {
                throw ChecksumException.getChecksumInstance();
            }
            iArr[length] = this.OooO00o.OooOO0(iArr[length], iArrOooO0OO[i4]);
        }
        return iArrOooO0O0.length;
    }
}
