package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class to {
    private final so OooO00o;
    private final int[] OooO0O0;

    public to(so soVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.OooO00o = soVar;
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

    public final to OooO(to toVar) {
        if (!this.OooO00o.equals(toVar.OooO00o)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (OooO0oO() || toVar.OooO0oO()) {
            return this.OooO00o.OooO0oO();
        }
        int[] iArr = this.OooO0O0;
        int length = iArr.length;
        int[] iArr2 = toVar.OooO0O0;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                iArr3[i4] = so.OooO00o(iArr3[i4], this.OooO00o.OooOO0(i2, iArr2[i3]));
            }
        }
        return new to(this.OooO00o, iArr3);
    }

    public final to OooO00o(to toVar) {
        if (!this.OooO00o.equals(toVar.OooO00o)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (OooO0oO()) {
            return toVar;
        }
        if (toVar.OooO0oO()) {
            return this;
        }
        int[] iArr = this.OooO0O0;
        int[] iArr2 = toVar.OooO0O0;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = so.OooO00o(iArr2[i - length], iArr[i]);
        }
        return new to(this.OooO00o, iArr3);
    }

    public final to[] OooO0O0(to toVar) {
        if (!this.OooO00o.equals(toVar.OooO00o)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (toVar.OooO0oO()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        to toVarOooO0oO = this.OooO00o.OooO0oO();
        int iOooO0oo = this.OooO00o.OooO0oo(toVar.OooO0Oo(toVar.OooO0o()));
        to toVarOooO00o = this;
        while (toVarOooO00o.OooO0o() >= toVar.OooO0o() && !toVarOooO00o.OooO0oO()) {
            int iOooO0o = toVarOooO00o.OooO0o() - toVar.OooO0o();
            int iOooOO0 = this.OooO00o.OooOO0(toVarOooO00o.OooO0Oo(toVarOooO00o.OooO0o()), iOooO0oo);
            to toVarOooOO0 = toVar.OooOO0(iOooO0o, iOooOO0);
            toVarOooO0oO = toVarOooO0oO.OooO00o(this.OooO00o.OooO0O0(iOooO0o, iOooOO0));
            toVarOooO00o = toVarOooO00o.OooO00o(toVarOooOO0);
        }
        return new to[]{toVarOooO0oO, toVarOooO00o};
    }

    public final int OooO0OO(int i) {
        if (i == 0) {
            return OooO0Oo(0);
        }
        if (i == 1) {
            int iOooO00o = 0;
            for (int i2 : this.OooO0O0) {
                iOooO00o = so.OooO00o(iOooO00o, i2);
            }
            return iOooO00o;
        }
        int[] iArr = this.OooO0O0;
        int iOooO00o2 = iArr[0];
        int length = iArr.length;
        for (int i3 = 1; i3 < length; i3++) {
            iOooO00o2 = so.OooO00o(this.OooO00o.OooOO0(i, iOooO00o2), this.OooO0O0[i3]);
        }
        return iOooO00o2;
    }

    public final int OooO0Oo(int i) {
        return this.OooO0O0[(r0.length - 1) - i];
    }

    public final int OooO0o() {
        return this.OooO0O0.length - 1;
    }

    public final int[] OooO0o0() {
        return this.OooO0O0;
    }

    public final boolean OooO0oO() {
        return this.OooO0O0[0] == 0;
    }

    public final to OooO0oo(int i) {
        if (i == 0) {
            return this.OooO00o.OooO0oO();
        }
        if (i == 1) {
            return this;
        }
        int length = this.OooO0O0.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.OooO00o.OooOO0(this.OooO0O0[i2], i);
        }
        return new to(this.OooO00o, iArr);
    }

    public final to OooOO0(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.OooO00o.OooO0oO();
        }
        int length = this.OooO0O0.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.OooO00o.OooOO0(this.OooO0O0[i3], i2);
        }
        return new to(this.OooO00o, iArr);
    }

    public final String toString() {
        char c;
        StringBuilder sb = new StringBuilder(OooO0o() * 8);
        for (int iOooO0o = OooO0o(); iOooO0o >= 0; iOooO0o--) {
            int iOooO0Oo = OooO0Oo(iOooO0o);
            if (iOooO0Oo != 0) {
                if (iOooO0Oo < 0) {
                    sb.append(" - ");
                    iOooO0Oo = -iOooO0Oo;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iOooO0o == 0 || iOooO0Oo != 1) {
                    int iOooO = this.OooO00o.OooO(iOooO0Oo);
                    if (iOooO == 0) {
                        c = '1';
                    } else if (iOooO == 1) {
                        c = 'a';
                    } else {
                        sb.append("a^");
                        sb.append(iOooO);
                    }
                    sb.append(c);
                }
                if (iOooO0o != 0) {
                    if (iOooO0o == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iOooO0o);
                    }
                }
            }
        }
        return sb.toString();
    }
}
