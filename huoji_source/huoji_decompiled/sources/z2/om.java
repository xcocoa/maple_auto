package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class om {
    public static final int OooO00o = 33;
    public static final int OooO0O0 = 0;
    private static final int OooO0OO = 32;
    private static final int OooO0Oo = 4;
    private static final int[] OooO0o0 = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private om() {
    }

    public static Cdo OooO(Cdo cdo, int i) {
        Cdo cdo2 = new Cdo();
        int iOooOOO0 = cdo.OooOOO0();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < iOooOOO0) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= iOooOOO0 || cdo.OooO0oo(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                cdo2.OooO0OO(i7, i);
                i3--;
            } else if (i7 == 0) {
                i7 = i4 | 1;
                cdo2.OooO0OO(i7, i);
                i3--;
            } else {
                cdo2.OooO0OO(i4, i);
            }
            i3 += i;
        }
        return cdo2;
    }

    private static int[] OooO00o(Cdo cdo, int i, int i2) {
        int[] iArr = new int[i2];
        int iOooOOO0 = cdo.OooOOO0() / i;
        for (int i3 = 0; i3 < iOooOOO0; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= cdo.OooO0oo((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    private static void OooO0O0(eo eoVar, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    eoVar.OooOOo0(i5, i4);
                    eoVar.OooOOo0(i5, i6);
                    eoVar.OooOOo0(i4, i5);
                    eoVar.OooOOo0(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        eoVar.OooOOo0(i7, i7);
        int i8 = i7 + 1;
        eoVar.OooOOo0(i8, i7);
        eoVar.OooOOo0(i7, i8);
        int i9 = i + i2;
        eoVar.OooOOo0(i9, i7);
        eoVar.OooOOo0(i9, i8);
        eoVar.OooOOo0(i9, i9 - 1);
    }

    private static void OooO0OO(eo eoVar, boolean z, int i, Cdo cdo) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (cdo.OooO0oo(i3)) {
                    eoVar.OooOOo0(i4, i2 - 5);
                }
                if (cdo.OooO0oo(i3 + 7)) {
                    eoVar.OooOOo0(i2 + 5, i4);
                }
                if (cdo.OooO0oo(20 - i3)) {
                    eoVar.OooOOo0(i4, i2 + 5);
                }
                if (cdo.OooO0oo(27 - i3)) {
                    eoVar.OooOOo0(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i2 - 5) + i3 + (i3 / 5);
            if (cdo.OooO0oo(i3)) {
                eoVar.OooOOo0(i5, i2 - 7);
            }
            if (cdo.OooO0oo(i3 + 10)) {
                eoVar.OooOOo0(i2 + 7, i5);
            }
            if (cdo.OooO0oo(29 - i3)) {
                eoVar.OooOOo0(i5, i2 + 7);
            }
            if (cdo.OooO0oo(39 - i3)) {
                eoVar.OooOOo0(i2 - 7, i5);
            }
            i3++;
        }
    }

    public static mm OooO0Oo(byte[] bArr) {
        return OooO0o0(bArr, 33, 0);
    }

    private static Cdo OooO0o(Cdo cdo, int i, int i2) {
        int iOooOOO0 = cdo.OooOOO0() / i2;
        vo voVar = new vo(OooO0oo(i2));
        int i3 = i / i2;
        int[] iArrOooO00o = OooO00o(cdo, i2, i3);
        voVar.OooO0O0(iArrOooO00o, i3 - iOooOOO0);
        Cdo cdo2 = new Cdo();
        cdo2.OooO0OO(0, i % i2);
        for (int i4 : iArrOooO00o) {
            cdo2.OooO0OO(i4, i2);
        }
        return cdo2;
    }

    public static mm OooO0o0(byte[] bArr, int i, int i2) {
        Cdo cdoOooO;
        int i3;
        boolean z;
        int iAbs;
        int iOooOO0;
        int i4;
        Cdo cdoOooO00o = new pm(bArr).OooO00o();
        int iOooOOO0 = ((cdoOooO00o.OooOOO0() * i) / 100) + 11;
        int iOooOOO02 = cdoOooO00o.OooOOO0() + iOooOOO0;
        int i5 = 0;
        int i6 = 1;
        if (i2 == 0) {
            Cdo cdoOooO2 = null;
            int i7 = 0;
            int i8 = 0;
            while (i7 <= 32) {
                boolean z3 = i7 <= 3;
                int i9 = z3 ? i7 + 1 : i7;
                int iOooOO02 = OooOO0(i9, z3);
                if (iOooOOO02 <= iOooOO02) {
                    if (cdoOooO2 == null || i8 != OooO0o0[i9]) {
                        int i10 = OooO0o0[i9];
                        i8 = i10;
                        cdoOooO2 = OooO(cdoOooO00o, i10);
                    }
                    int i11 = iOooOO02 - (iOooOO02 % i8);
                    if ((!z3 || cdoOooO2.OooOOO0() <= (i8 << 6)) && cdoOooO2.OooOOO0() + iOooOOO0 <= i11) {
                        cdoOooO = cdoOooO2;
                        i3 = i8;
                        z = z3;
                        iAbs = i9;
                        iOooOO0 = iOooOO02;
                    }
                }
                i7++;
                i5 = 0;
                i6 = 1;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        z = i2 < 0;
        iAbs = Math.abs(i2);
        if (iAbs > (z ? 4 : 32)) {
            throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i2)));
        }
        iOooOO0 = OooOO0(iAbs, z);
        i3 = OooO0o0[iAbs];
        int i12 = iOooOO0 - (iOooOO0 % i3);
        cdoOooO = OooO(cdoOooO00o, i3);
        if (cdoOooO.OooOOO0() + iOooOOO0 > i12) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        if (z && cdoOooO.OooOOO0() > (i3 << 6)) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        Cdo cdoOooO0o = OooO0o(cdoOooO, iOooOO0, i3);
        int iOooOOO03 = cdoOooO.OooOOO0() / i3;
        Cdo cdoOooO0oO = OooO0oO(z, iAbs, iOooOOO03);
        int i13 = (z ? 11 : 14) + (iAbs << 2);
        int[] iArr = new int[i13];
        int i14 = 2;
        if (z) {
            for (int i15 = 0; i15 < i13; i15++) {
                iArr[i15] = i15;
            }
            i4 = i13;
        } else {
            int i16 = i13 / 2;
            i4 = i13 + 1 + (((i16 - 1) / 15) * 2);
            int i17 = i4 / 2;
            for (int i18 = 0; i18 < i16; i18++) {
                iArr[(i16 - i18) - i6] = (i17 - r14) - 1;
                iArr[i16 + i18] = (i18 / 15) + i18 + i17 + i6;
            }
        }
        eo eoVar = new eo(i4);
        int i19 = 0;
        int i20 = 0;
        while (i19 < iAbs) {
            int i21 = ((iAbs - i19) << i14) + (z ? 9 : 12);
            int i22 = 0;
            while (i22 < i21) {
                int i23 = i22 << 1;
                while (i5 < i14) {
                    if (cdoOooO0o.OooO0oo(i20 + i23 + i5)) {
                        int i24 = i19 << 1;
                        eoVar.OooOOo0(iArr[i24 + i5], iArr[i24 + i22]);
                    }
                    if (cdoOooO0o.OooO0oo((i21 << 1) + i20 + i23 + i5)) {
                        int i25 = i19 << 1;
                        eoVar.OooOOo0(iArr[i25 + i22], iArr[((i13 - 1) - i25) - i5]);
                    }
                    if (cdoOooO0o.OooO0oo((i21 << 2) + i20 + i23 + i5)) {
                        int i26 = (i13 - 1) - (i19 << 1);
                        eoVar.OooOOo0(iArr[i26 - i5], iArr[i26 - i22]);
                    }
                    if (cdoOooO0o.OooO0oo((i21 * 6) + i20 + i23 + i5)) {
                        int i27 = i19 << 1;
                        eoVar.OooOOo0(iArr[((i13 - 1) - i27) - i22], iArr[i27 + i5]);
                    }
                    i5++;
                    i14 = 2;
                }
                i22++;
                i5 = 0;
                i14 = 2;
            }
            i20 += i21 << 3;
            i19++;
            i5 = 0;
            i14 = 2;
        }
        OooO0OO(eoVar, z, i4, cdoOooO0oO);
        int i28 = i4 / 2;
        if (z) {
            OooO0O0(eoVar, i28, 5);
        } else {
            OooO0O0(eoVar, i28, 7);
            int i29 = 0;
            int i30 = 0;
            while (i30 < (i13 / 2) - 1) {
                for (int i31 = i28 & 1; i31 < i4; i31 += 2) {
                    int i32 = i28 - i29;
                    eoVar.OooOOo0(i32, i31);
                    int i33 = i28 + i29;
                    eoVar.OooOOo0(i33, i31);
                    eoVar.OooOOo0(i31, i32);
                    eoVar.OooOOo0(i31, i33);
                }
                i30 += 15;
                i29 += 16;
            }
        }
        mm mmVar = new mm();
        mmVar.OooO0oO(z);
        mmVar.OooOO0(i4);
        mmVar.OooO0oo(iAbs);
        mmVar.OooO0o(iOooOOO03);
        mmVar.OooO(eoVar);
        return mmVar;
    }

    public static Cdo OooO0oO(boolean z, int i, int i2) {
        int i3;
        Cdo cdo = new Cdo();
        int i4 = i - 1;
        if (z) {
            cdo.OooO0OO(i4, 2);
            cdo.OooO0OO(i2 - 1, 6);
            i3 = 28;
        } else {
            cdo.OooO0OO(i4, 5);
            cdo.OooO0OO(i2 - 1, 11);
            i3 = 40;
        }
        return OooO0o(cdo, i3, 4);
    }

    private static so OooO0oo(int i) {
        if (i == 4) {
            return so.OooOO0O;
        }
        if (i == 6) {
            return so.OooOO0;
        }
        if (i == 8) {
            return so.OooOOO;
        }
        if (i == 10) {
            return so.OooO;
        }
        if (i == 12) {
            return so.OooO0oo;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i)));
    }

    private static int OooOO0(int i, boolean z) {
        return ((z ? 88 : 112) + (i << 4)) * i;
    }
}
