package z2;

import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* JADX INFO: loaded from: classes2.dex */
public final class uo {
    private final so OooO00o;

    public uo(so soVar) {
        this.OooO00o = soVar;
    }

    private int[] OooO0O0(to toVar) throws ReedSolomonException {
        int iOooO0o = toVar.OooO0o();
        int i = 0;
        if (iOooO0o == 1) {
            return new int[]{toVar.OooO0Oo(1)};
        }
        int[] iArr = new int[iOooO0o];
        for (int i2 = 1; i2 < this.OooO00o.OooO0o() && i < iOooO0o; i2++) {
            if (toVar.OooO0OO(i2) == 0) {
                iArr[i] = this.OooO00o.OooO0oo(i2);
                i++;
            }
        }
        if (i == iOooO0o) {
            return iArr;
        }
        throw new ReedSolomonException("Error locator degree does not match number of roots");
    }

    private int[] OooO0OO(to toVar, int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int iOooO0oo = this.OooO00o.OooO0oo(iArr[i]);
            int iOooOO0 = 1;
            for (int i2 = 0; i2 < length; i2++) {
                if (i != i2) {
                    int iOooOO02 = this.OooO00o.OooOO0(iArr[i2], iOooO0oo);
                    iOooOO0 = this.OooO00o.OooOO0(iOooOO0, (iOooOO02 & 1) == 0 ? iOooOO02 | 1 : iOooOO02 & (-2));
                }
            }
            iArr2[i] = this.OooO00o.OooOO0(toVar.OooO0OO(iOooO0oo), this.OooO00o.OooO0oo(iOooOO0));
            if (this.OooO00o.OooO0Oo() != 0) {
                iArr2[i] = this.OooO00o.OooOO0(iArr2[i], iOooO0oo);
            }
        }
        return iArr2;
    }

    private to[] OooO0Oo(to toVar, to toVar2, int i) throws ReedSolomonException {
        if (toVar.OooO0o() < toVar2.OooO0o()) {
            toVar2 = toVar;
            toVar = toVar2;
        }
        to toVarOooO0oO = this.OooO00o.OooO0oO();
        to toVarOooO0o0 = this.OooO00o.OooO0o0();
        do {
            to toVar3 = toVar2;
            toVar2 = toVar;
            toVar = toVar3;
            to toVar4 = toVarOooO0o0;
            to toVar5 = toVarOooO0oO;
            toVarOooO0oO = toVar4;
            if (toVar.OooO0o() < i / 2) {
                int iOooO0Oo = toVarOooO0oO.OooO0Oo(0);
                if (iOooO0Oo == 0) {
                    throw new ReedSolomonException("sigmaTilde(0) was zero");
                }
                int iOooO0oo = this.OooO00o.OooO0oo(iOooO0Oo);
                return new to[]{toVarOooO0oO.OooO0oo(iOooO0oo), toVar.OooO0oo(iOooO0oo)};
            }
            if (toVar.OooO0oO()) {
                throw new ReedSolomonException("r_{i-1} was zero");
            }
            to toVarOooO0oO2 = this.OooO00o.OooO0oO();
            int iOooO0oo2 = this.OooO00o.OooO0oo(toVar.OooO0Oo(toVar.OooO0o()));
            while (toVar2.OooO0o() >= toVar.OooO0o() && !toVar2.OooO0oO()) {
                int iOooO0o = toVar2.OooO0o() - toVar.OooO0o();
                int iOooOO0 = this.OooO00o.OooOO0(toVar2.OooO0Oo(toVar2.OooO0o()), iOooO0oo2);
                toVarOooO0oO2 = toVarOooO0oO2.OooO00o(this.OooO00o.OooO0O0(iOooO0o, iOooOO0));
                toVar2 = toVar2.OooO00o(toVar.OooOO0(iOooO0o, iOooOO0));
            }
            toVarOooO0o0 = toVarOooO0oO2.OooO(toVarOooO0oO).OooO00o(toVar5);
        } while (toVar2.OooO0o() < toVar.OooO0o());
        throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
    }

    public final void OooO00o(int[] iArr, int i) throws ReedSolomonException {
        to toVar = new to(this.OooO00o, iArr);
        int[] iArr2 = new int[i];
        boolean z = true;
        for (int i2 = 0; i2 < i; i2++) {
            so soVar = this.OooO00o;
            int iOooO0OO = toVar.OooO0OO(soVar.OooO0OO(soVar.OooO0Oo() + i2));
            iArr2[(i - 1) - i2] = iOooO0OO;
            if (iOooO0OO != 0) {
                z = false;
            }
        }
        if (z) {
            return;
        }
        to[] toVarArrOooO0Oo = OooO0Oo(this.OooO00o.OooO0O0(i, 1), new to(this.OooO00o, iArr2), i);
        to toVar2 = toVarArrOooO0Oo[0];
        to toVar3 = toVarArrOooO0Oo[1];
        int[] iArrOooO0O0 = OooO0O0(toVar2);
        int[] iArrOooO0OO = OooO0OO(toVar3, iArrOooO0O0);
        for (int i3 = 0; i3 < iArrOooO0O0.length; i3++) {
            int length = (iArr.length - 1) - this.OooO00o.OooO(iArrOooO0O0[i3]);
            if (length < 0) {
                throw new ReedSolomonException("Bad error location");
            }
            iArr[length] = so.OooO00o(iArr[length], iArrOooO0OO[i3]);
        }
    }
}
