package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ks extends js {
    private final boolean OooO0Oo;

    public ks(gs gsVar, boolean z) {
        super(gsVar);
        this.OooO0Oo = z;
    }

    private void OooO0oo(es esVar) {
        gs gsVarOooO00o = OooO00o();
        fm fmVarOooO0oo = this.OooO0Oo ? gsVarOooO00o.OooO0oo() : gsVarOooO00o.OooO();
        fm fmVarOooO0O0 = this.OooO0Oo ? gsVarOooO00o.OooO0O0() : gsVarOooO00o.OooO0OO();
        int iOooO0o0 = OooO0o0((int) fmVarOooO0O0.OooO0Oo());
        hs[] hsVarArrOooO0Oo = OooO0Oo();
        int iOooO0OO = -1;
        int i = 0;
        int iMax = 1;
        for (int iOooO0o02 = OooO0o0((int) fmVarOooO0oo.OooO0Oo()); iOooO0o02 < iOooO0o0; iOooO0o02++) {
            if (hsVarArrOooO0Oo[iOooO0o02] != null) {
                hs hsVar = hsVarArrOooO0Oo[iOooO0o02];
                hsVar.OooOO0();
                int iOooO0OO2 = hsVar.OooO0OO() - iOooO0OO;
                if (iOooO0OO2 == 0) {
                    i++;
                } else {
                    if (iOooO0OO2 == 1) {
                        iMax = Math.max(iMax, i);
                    } else if (hsVar.OooO0OO() >= esVar.OooO0OO()) {
                        hsVarArrOooO0Oo[iOooO0o02] = null;
                    }
                    iOooO0OO = hsVar.OooO0OO();
                    i = 1;
                }
            }
        }
    }

    private void OooOO0o(hs[] hsVarArr, es esVar) {
        for (int i = 0; i < hsVarArr.length; i++) {
            hs hsVar = hsVarArr[i];
            if (hsVarArr[i] != null) {
                int iOooO0o0 = hsVar.OooO0o0() % 30;
                int iOooO0OO = hsVar.OooO0OO();
                if (iOooO0OO > esVar.OooO0OO()) {
                    hsVarArr[i] = null;
                } else {
                    if (!this.OooO0Oo) {
                        iOooO0OO += 2;
                    }
                    int i2 = iOooO0OO % 3;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 == 2 && iOooO0o0 + 1 != esVar.OooO00o()) {
                                hsVarArr[i] = null;
                            }
                        } else if (iOooO0o0 / 3 != esVar.OooO0O0() || iOooO0o0 % 3 != esVar.OooO0Oo()) {
                            hsVarArr[i] = null;
                        }
                    } else if ((iOooO0o0 * 3) + 1 != esVar.OooO0o0()) {
                        hsVarArr[i] = null;
                    }
                }
            }
        }
    }

    private void OooOOO0() {
        for (hs hsVar : OooO0Oo()) {
            if (hsVar != null) {
                hsVar.OooOO0();
            }
        }
    }

    public final es OooO() {
        hs[] hsVarArrOooO0Oo = OooO0Oo();
        fs fsVar = new fs();
        fs fsVar2 = new fs();
        fs fsVar3 = new fs();
        fs fsVar4 = new fs();
        for (hs hsVar : hsVarArrOooO0Oo) {
            if (hsVar != null) {
                hsVar.OooOO0();
                int iOooO0o0 = hsVar.OooO0o0() % 30;
                int iOooO0OO = hsVar.OooO0OO();
                if (!this.OooO0Oo) {
                    iOooO0OO += 2;
                }
                int i = iOooO0OO % 3;
                if (i == 0) {
                    fsVar2.OooO0OO((iOooO0o0 * 3) + 1);
                } else if (i == 1) {
                    fsVar4.OooO0OO(iOooO0o0 / 3);
                    fsVar3.OooO0OO(iOooO0o0 % 3);
                } else if (i == 2) {
                    fsVar.OooO0OO(iOooO0o0 + 1);
                }
            }
        }
        if (fsVar.OooO0O0().length == 0 || fsVar2.OooO0O0().length == 0 || fsVar3.OooO0O0().length == 0 || fsVar4.OooO0O0().length == 0 || fsVar.OooO0O0()[0] <= 0 || fsVar2.OooO0O0()[0] + fsVar3.OooO0O0()[0] < 3 || fsVar2.OooO0O0()[0] + fsVar3.OooO0O0()[0] > 90) {
            return null;
        }
        es esVar = new es(fsVar.OooO0O0()[0], fsVar2.OooO0O0()[0], fsVar3.OooO0O0()[0], fsVar4.OooO0O0()[0]);
        OooOO0o(hsVarArrOooO0Oo, esVar);
        return esVar;
    }

    public final void OooO0oO(es esVar) {
        hs[] hsVarArrOooO0Oo = OooO0Oo();
        OooOOO0();
        OooOO0o(hsVarArrOooO0Oo, esVar);
        gs gsVarOooO00o = OooO00o();
        fm fmVarOooO0oo = this.OooO0Oo ? gsVarOooO00o.OooO0oo() : gsVarOooO00o.OooO();
        fm fmVarOooO0O0 = this.OooO0Oo ? gsVarOooO00o.OooO0O0() : gsVarOooO00o.OooO0OO();
        int iOooO0o0 = OooO0o0((int) fmVarOooO0oo.OooO0Oo());
        int iOooO0o02 = OooO0o0((int) fmVarOooO0O0.OooO0Oo());
        int iOooO0OO = -1;
        int i = 0;
        int iMax = 1;
        while (iOooO0o0 < iOooO0o02) {
            if (hsVarArrOooO0Oo[iOooO0o0] != null) {
                hs hsVar = hsVarArrOooO0Oo[iOooO0o0];
                int iOooO0OO2 = hsVar.OooO0OO() - iOooO0OO;
                if (iOooO0OO2 == 0) {
                    i++;
                } else {
                    if (iOooO0OO2 == 1) {
                        iMax = Math.max(iMax, i);
                    } else if (iOooO0OO2 < 0 || hsVar.OooO0OO() >= esVar.OooO0OO() || iOooO0OO2 > iOooO0o0) {
                        hsVarArrOooO0Oo[iOooO0o0] = null;
                    } else {
                        if (iMax > 2) {
                            iOooO0OO2 *= iMax - 2;
                        }
                        boolean z = iOooO0OO2 >= iOooO0o0;
                        for (int i2 = 1; i2 <= iOooO0OO2 && !z; i2++) {
                            z = hsVarArrOooO0Oo[iOooO0o0 - i2] != null;
                        }
                        if (z) {
                            hsVarArrOooO0Oo[iOooO0o0] = null;
                        }
                    }
                    iOooO0OO = hsVar.OooO0OO();
                    i = 1;
                }
            }
            iOooO0o0++;
        }
    }

    public final int[] OooOO0() {
        int iOooO0OO;
        es esVarOooO = OooO();
        if (esVarOooO == null) {
            return null;
        }
        OooO0oo(esVarOooO);
        int iOooO0OO2 = esVarOooO.OooO0OO();
        int[] iArr = new int[iOooO0OO2];
        for (hs hsVar : OooO0Oo()) {
            if (hsVar != null && (iOooO0OO = hsVar.OooO0OO()) < iOooO0OO2) {
                iArr[iOooO0OO] = iArr[iOooO0OO] + 1;
            }
        }
        return iArr;
    }

    public final boolean OooOO0O() {
        return this.OooO0Oo;
    }

    @Override // z2.js
    public final String toString() {
        return "IsLeft: " + this.OooO0Oo + '\n' + super.toString();
    }
}
