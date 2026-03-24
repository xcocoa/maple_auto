package z2;

import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class qo {
    private static final int OooO0O0 = 32;
    private final eo OooO00o;

    public qo(eo eoVar) {
        this.OooO00o = eoVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0031 A[EDGE_INSN: B:70:0x0031->B:22:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:73:0x001c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0067 A[EDGE_INSN: B:86:0x0067->B:47:0x0067 BREAK  A[LOOP:3: B:38:0x0053->B:91:0x0053], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int[] OooO00o(int i, int i2, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7 = (i3 + i4) / 2;
        int i8 = i7;
        while (i8 >= i3) {
            eo eoVar = this.OooO00o;
            if (!z) {
                if (!eoVar.OooO0o0(i, i8)) {
                    i6 = i8;
                    while (true) {
                        i6--;
                        if (i6 >= i3) {
                        }
                    }
                    int i9 = i8 - i6;
                    if (i6 < i3) {
                        break;
                    }
                    break;
                    break;
                }
                i8--;
            } else if (eoVar.OooO0o0(i8, i)) {
                i8--;
            } else {
                i6 = i8;
                while (true) {
                    i6--;
                    if (i6 >= i3) {
                        break;
                    }
                    eo eoVar2 = this.OooO00o;
                    if (z) {
                        if (eoVar2.OooO0o0(i6, i)) {
                            break;
                        }
                    } else if (eoVar2.OooO0o0(i, i6)) {
                        break;
                    }
                }
                int i92 = i8 - i6;
                if (i6 < i3 || i92 > i2) {
                    break;
                }
                i8 = i6;
            }
        }
        int i10 = i8 + 1;
        while (i7 < i4) {
            eo eoVar3 = this.OooO00o;
            if (!z) {
                if (!eoVar3.OooO0o0(i, i7)) {
                    i5 = i7;
                    while (true) {
                        i5++;
                        if (i5 < i4) {
                        }
                    }
                    int i11 = i5 - i7;
                    if (i5 >= i4) {
                        break;
                    }
                    break;
                    break;
                }
                i7++;
            } else if (eoVar3.OooO0o0(i7, i)) {
                i7++;
            } else {
                i5 = i7;
                while (true) {
                    i5++;
                    if (i5 < i4) {
                        break;
                    }
                    eo eoVar4 = this.OooO00o;
                    if (z) {
                        if (eoVar4.OooO0o0(i5, i)) {
                            break;
                        }
                    } else if (eoVar4.OooO0o0(i, i5)) {
                        break;
                    }
                }
                int i112 = i5 - i7;
                if (i5 >= i4 || i112 > i2) {
                    break;
                }
                i7 = i5;
            }
        }
        int i12 = i7 - 1;
        if (i12 > i10) {
            return new int[]{i10, i12};
        }
        return null;
    }

    private fm OooO0OO(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws NotFoundException {
        boolean z;
        qo qoVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr = null;
        int i14 = i;
        int i15 = i5;
        while (i15 < i8 && i15 >= i7 && i14 < i4 && i14 >= i3) {
            if (i2 == 0) {
                z = true;
                qoVar = this;
                i10 = i15;
                i11 = i9;
                i12 = i3;
                i13 = i4;
            } else {
                z = false;
                qoVar = this;
                i10 = i14;
                i11 = i9;
                i12 = i7;
                i13 = i8;
            }
            int[] iArrOooO00o = qoVar.OooO00o(i10, i11, i12, i13, z);
            if (iArrOooO00o == null) {
                if (iArr == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i16 = i15 - i6;
                    if (iArr[0] >= i) {
                        return new fm(iArr[1], i16);
                    }
                    if (iArr[1] > i) {
                        return new fm(iArr[i6 > 0 ? (char) 0 : (char) 1], i16);
                    }
                    return new fm(iArr[0], i16);
                }
                int i17 = i14 - i2;
                if (iArr[0] >= i5) {
                    return new fm(i17, iArr[1]);
                }
                if (iArr[1] > i5) {
                    return new fm(i17, iArr[i2 < 0 ? (char) 0 : (char) 1]);
                }
                return new fm(i17, iArr[0]);
            }
            i15 += i6;
            i14 += i2;
            iArr = iArrOooO00o;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final fm[] OooO0O0() throws NotFoundException {
        int iOooO0oo = this.OooO00o.OooO0oo();
        int iOooOOO0 = this.OooO00o.OooOOO0();
        int i = iOooO0oo / 2;
        int i2 = iOooOOO0 / 2;
        int iMax = Math.max(1, iOooO0oo / 256);
        int iMax2 = Math.max(1, iOooOOO0 / 256);
        int i3 = -iMax;
        int i4 = i2 / 2;
        int iOooO0Oo = ((int) OooO0OO(i2, 0, 0, iOooOOO0, i, i3, 0, iOooO0oo, i4).OooO0Oo()) - 1;
        int i5 = i / 2;
        fm fmVarOooO0OO = OooO0OO(i2, -iMax2, 0, iOooOOO0, i, 0, iOooO0Oo, iOooO0oo, i5);
        int iOooO0OO = ((int) fmVarOooO0OO.OooO0OO()) - 1;
        fm fmVarOooO0OO2 = OooO0OO(i2, iMax2, iOooO0OO, iOooOOO0, i, 0, iOooO0Oo, iOooO0oo, i5);
        int iOooO0OO2 = ((int) fmVarOooO0OO2.OooO0OO()) + 1;
        fm fmVarOooO0OO3 = OooO0OO(i2, 0, iOooO0OO, iOooO0OO2, i, iMax, iOooO0Oo, iOooO0oo, i4);
        return new fm[]{OooO0OO(i2, 0, iOooO0OO, iOooO0OO2, i, i3, iOooO0Oo, ((int) fmVarOooO0OO3.OooO0Oo()) + 1, i2 / 4), fmVarOooO0OO, fmVarOooO0OO2, fmVarOooO0OO3};
    }
}
