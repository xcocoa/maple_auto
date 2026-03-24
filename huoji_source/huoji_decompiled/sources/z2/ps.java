package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ps {
    private final os OooO00o;
    private final int[] OooO0O0;

    public ps(os osVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.OooO00o = osVar;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.OooO0O0 = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.OooO0O0 = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i];
        this.OooO0O0 = iArr2;
        System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    public final ps OooO(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.OooO00o.OooO0o();
        }
        int length = this.OooO0O0.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.OooO00o.OooO(this.OooO0O0[i3], i2);
        }
        return new ps(this.OooO00o, iArr);
    }

    public final ps OooO00o(ps psVar) {
        if (!this.OooO00o.equals(psVar.OooO00o)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (OooO0o()) {
            return psVar;
        }
        if (psVar.OooO0o()) {
            return this;
        }
        int[] iArr = this.OooO0O0;
        int[] iArr2 = psVar.OooO0O0;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = this.OooO00o.OooO00o(iArr2[i - length], iArr[i]);
        }
        return new ps(this.OooO00o, iArr3);
    }

    public final int OooO0O0(int i) {
        if (i == 0) {
            return OooO0OO(0);
        }
        if (i == 1) {
            int iOooO00o = 0;
            for (int i2 : this.OooO0O0) {
                iOooO00o = this.OooO00o.OooO00o(iOooO00o, i2);
            }
            return iOooO00o;
        }
        int[] iArr = this.OooO0O0;
        int iOooO00o2 = iArr[0];
        int length = iArr.length;
        for (int i3 = 1; i3 < length; i3++) {
            os osVar = this.OooO00o;
            iOooO00o2 = osVar.OooO00o(osVar.OooO(i, iOooO00o2), this.OooO0O0[i3]);
        }
        return iOooO00o2;
    }

    public final int OooO0OO(int i) {
        return this.OooO0O0[(r0.length - 1) - i];
    }

    public final int[] OooO0Oo() {
        return this.OooO0O0;
    }

    public final boolean OooO0o() {
        return this.OooO0O0[0] == 0;
    }

    public final int OooO0o0() {
        return this.OooO0O0.length - 1;
    }

    public final ps OooO0oO(int i) {
        if (i == 0) {
            return this.OooO00o.OooO0o();
        }
        if (i == 1) {
            return this;
        }
        int length = this.OooO0O0.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.OooO00o.OooO(this.OooO0O0[i2], i);
        }
        return new ps(this.OooO00o, iArr);
    }

    public final ps OooO0oo(ps psVar) {
        if (!this.OooO00o.equals(psVar.OooO00o)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (OooO0o() || psVar.OooO0o()) {
            return this.OooO00o.OooO0o();
        }
        int[] iArr = this.OooO0O0;
        int length = iArr.length;
        int[] iArr2 = psVar.OooO0O0;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                os osVar = this.OooO00o;
                iArr3[i4] = osVar.OooO00o(iArr3[i4], osVar.OooO(i2, iArr2[i3]));
            }
        }
        return new ps(this.OooO00o, iArr3);
    }

    public final ps OooOO0() {
        int length = this.OooO0O0.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.OooO00o.OooOO0(0, this.OooO0O0[i]);
        }
        return new ps(this.OooO00o, iArr);
    }

    public final ps OooOO0O(ps psVar) {
        if (this.OooO00o.equals(psVar.OooO00o)) {
            return psVar.OooO0o() ? this : OooO00o(psVar.OooOO0());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(OooO0o0() * 8);
        for (int iOooO0o0 = OooO0o0(); iOooO0o0 >= 0; iOooO0o0--) {
            int iOooO0OO = OooO0OO(iOooO0o0);
            if (iOooO0OO != 0) {
                if (iOooO0OO < 0) {
                    sb.append(" - ");
                    iOooO0OO = -iOooO0OO;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iOooO0o0 == 0 || iOooO0OO != 1) {
                    sb.append(iOooO0OO);
                }
                if (iOooO0o0 != 0) {
                    if (iOooO0o0 == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iOooO0o0);
                    }
                }
            }
        }
        return sb.toString();
    }
}
