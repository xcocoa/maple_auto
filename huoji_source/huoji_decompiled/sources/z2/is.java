package z2;

import java.util.Formatter;

/* JADX INFO: loaded from: classes2.dex */
public final class is {
    private static final int OooO0o0 = 2;
    private final es OooO00o;
    private final js[] OooO0O0;
    private gs OooO0OO;
    private final int OooO0Oo;

    public is(es esVar, gs gsVar) {
        this.OooO00o = esVar;
        int iOooO00o = esVar.OooO00o();
        this.OooO0Oo = iOooO00o;
        this.OooO0OO = gsVar;
        this.OooO0O0 = new js[iOooO00o + 2];
    }

    private int OooO() {
        js[] jsVarArr = this.OooO0O0;
        int i = this.OooO0Oo;
        if (jsVarArr[i + 1] == null) {
            return 0;
        }
        hs[] hsVarArrOooO0Oo = jsVarArr[i + 1].OooO0Oo();
        int i2 = 0;
        for (int i3 = 0; i3 < hsVarArrOooO0Oo.length; i3++) {
            if (hsVarArrOooO0Oo[i3] != null) {
                int iOooO0OO = hsVarArrOooO0Oo[i3].OooO0OO();
                int iOooO0OO2 = 0;
                for (int i4 = this.OooO0Oo + 1; i4 > 0 && iOooO0OO2 < 2; i4--) {
                    hs hsVar = this.OooO0O0[i4].OooO0Oo()[i3];
                    if (hsVar != null) {
                        iOooO0OO2 = OooO0OO(iOooO0OO, iOooO0OO2, hsVar);
                        if (!hsVar.OooO0oO()) {
                            i2++;
                        }
                    }
                }
            }
        }
        return i2;
    }

    private void OooO00o(js jsVar) {
        if (jsVar != null) {
            ((ks) jsVar).OooO0oO(this.OooO00o);
        }
    }

    private static boolean OooO0O0(hs hsVar, hs hsVar2) {
        if (hsVar2 == null || !hsVar2.OooO0oO() || hsVar2.OooO00o() != hsVar.OooO00o()) {
            return false;
        }
        hsVar.OooO(hsVar2.OooO0OO());
        return true;
    }

    private static int OooO0OO(int i, int i2, hs hsVar) {
        if (hsVar == null || hsVar.OooO0oO()) {
            return i2;
        }
        if (!hsVar.OooO0oo(i)) {
            return i2 + 1;
        }
        hsVar.OooO(i);
        return 0;
    }

    private int OooO0Oo() {
        int iOooO0o = OooO0o();
        if (iOooO0o == 0) {
            return 0;
        }
        for (int i = 1; i < this.OooO0Oo + 1; i++) {
            hs[] hsVarArrOooO0Oo = this.OooO0O0[i].OooO0Oo();
            for (int i2 = 0; i2 < hsVarArrOooO0Oo.length; i2++) {
                if (hsVarArrOooO0Oo[i2] != null && !hsVarArrOooO0Oo[i2].OooO0oO()) {
                    OooO0o0(i, i2, hsVarArrOooO0Oo);
                }
            }
        }
        return iOooO0o;
    }

    private int OooO0o() {
        OooO0oO();
        return OooO0oo() + OooO();
    }

    private void OooO0o0(int i, int i2, hs[] hsVarArr) {
        hs hsVar = hsVarArr[i2];
        hs[] hsVarArrOooO0Oo = this.OooO0O0[i - 1].OooO0Oo();
        js[] jsVarArr = this.OooO0O0;
        int i3 = i + 1;
        hs[] hsVarArrOooO0Oo2 = jsVarArr[i3] != null ? jsVarArr[i3].OooO0Oo() : hsVarArrOooO0Oo;
        hs[] hsVarArr2 = new hs[14];
        hsVarArr2[2] = hsVarArrOooO0Oo[i2];
        hsVarArr2[3] = hsVarArrOooO0Oo2[i2];
        if (i2 > 0) {
            int i4 = i2 - 1;
            hsVarArr2[0] = hsVarArr[i4];
            hsVarArr2[4] = hsVarArrOooO0Oo[i4];
            hsVarArr2[5] = hsVarArrOooO0Oo2[i4];
        }
        if (i2 > 1) {
            int i5 = i2 - 2;
            hsVarArr2[8] = hsVarArr[i5];
            hsVarArr2[10] = hsVarArrOooO0Oo[i5];
            hsVarArr2[11] = hsVarArrOooO0Oo2[i5];
        }
        if (i2 < hsVarArr.length - 1) {
            int i6 = i2 + 1;
            hsVarArr2[1] = hsVarArr[i6];
            hsVarArr2[6] = hsVarArrOooO0Oo[i6];
            hsVarArr2[7] = hsVarArrOooO0Oo2[i6];
        }
        if (i2 < hsVarArr.length - 2) {
            int i7 = i2 + 2;
            hsVarArr2[9] = hsVarArr[i7];
            hsVarArr2[12] = hsVarArrOooO0Oo[i7];
            hsVarArr2[13] = hsVarArrOooO0Oo2[i7];
        }
        for (int i8 = 0; i8 < 14 && !OooO0O0(hsVar, hsVarArr2[i8]); i8++) {
        }
    }

    private void OooO0oO() {
        js[] jsVarArr = this.OooO0O0;
        if (jsVarArr[0] == null || jsVarArr[this.OooO0Oo + 1] == null) {
            return;
        }
        hs[] hsVarArrOooO0Oo = jsVarArr[0].OooO0Oo();
        hs[] hsVarArrOooO0Oo2 = this.OooO0O0[this.OooO0Oo + 1].OooO0Oo();
        for (int i = 0; i < hsVarArrOooO0Oo.length; i++) {
            if (hsVarArrOooO0Oo[i] != null && hsVarArrOooO0Oo2[i] != null && hsVarArrOooO0Oo[i].OooO0OO() == hsVarArrOooO0Oo2[i].OooO0OO()) {
                for (int i2 = 1; i2 <= this.OooO0Oo; i2++) {
                    hs hsVar = this.OooO0O0[i2].OooO0Oo()[i];
                    if (hsVar != null) {
                        hsVar.OooO(hsVarArrOooO0Oo[i].OooO0OO());
                        if (!hsVar.OooO0oO()) {
                            this.OooO0O0[i2].OooO0Oo()[i] = null;
                        }
                    }
                }
            }
        }
    }

    private int OooO0oo() {
        js[] jsVarArr = this.OooO0O0;
        if (jsVarArr[0] == null) {
            return 0;
        }
        hs[] hsVarArrOooO0Oo = jsVarArr[0].OooO0Oo();
        int i = 0;
        for (int i2 = 0; i2 < hsVarArrOooO0Oo.length; i2++) {
            if (hsVarArrOooO0Oo[i2] != null) {
                int iOooO0OO = hsVarArrOooO0Oo[i2].OooO0OO();
                int iOooO0OO2 = 0;
                for (int i3 = 1; i3 < this.OooO0Oo + 1 && iOooO0OO2 < 2; i3++) {
                    hs hsVar = this.OooO0O0[i3].OooO0Oo()[i2];
                    if (hsVar != null) {
                        iOooO0OO2 = OooO0OO(iOooO0OO, iOooO0OO2, hsVar);
                        if (!hsVar.OooO0oO()) {
                            i++;
                        }
                    }
                }
            }
        }
        return i;
    }

    public final int OooOO0() {
        return this.OooO0Oo;
    }

    public final int OooOO0O() {
        return this.OooO00o.OooO0O0();
    }

    public final int OooOO0o() {
        return this.OooO00o.OooO0OO();
    }

    public final js OooOOO(int i) {
        return this.OooO0O0[i];
    }

    public final gs OooOOO0() {
        return this.OooO0OO;
    }

    public final js[] OooOOOO() {
        OooO00o(this.OooO0O0[0]);
        OooO00o(this.OooO0O0[this.OooO0Oo + 1]);
        int i = as.OooO0O0;
        while (true) {
            int iOooO0Oo = OooO0Oo();
            if (iOooO0Oo <= 0 || iOooO0Oo >= i) {
                break;
            }
            i = iOooO0Oo;
        }
        return this.OooO0O0;
    }

    public final void OooOOOo(gs gsVar) {
        this.OooO0OO = gsVar;
    }

    public final void OooOOo0(int i, js jsVar) {
        this.OooO0O0[i] = jsVar;
    }

    public final String toString() {
        js[] jsVarArr = this.OooO0O0;
        js jsVar = jsVarArr[0];
        if (jsVar == null) {
            jsVar = jsVarArr[this.OooO0Oo + 1];
        }
        Formatter formatter = new Formatter();
        for (int i = 0; i < jsVar.OooO0Oo().length; i++) {
            try {
                formatter.format("CW %3d:", Integer.valueOf(i));
                for (int i2 = 0; i2 < this.OooO0Oo + 2; i2++) {
                    js[] jsVarArr2 = this.OooO0O0;
                    if (jsVarArr2[i2] == null) {
                        formatter.format("    |   ", new Object[0]);
                    } else {
                        hs hsVar = jsVarArr2[i2].OooO0Oo()[i];
                        if (hsVar == null) {
                            formatter.format("    |   ", new Object[0]);
                        } else {
                            formatter.format(" %3d|%3d", Integer.valueOf(hsVar.OooO0OO()), Integer.valueOf(hsVar.OooO0o0()));
                        }
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }
}
