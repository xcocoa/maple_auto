package z2;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes2.dex */
public final class yo {
    private final eo OooO00o;
    private final eo OooO0O0;
    private final bp OooO0OO;

    public yo(eo eoVar) throws FormatException {
        int iOooO0oo = eoVar.OooO0oo();
        if (iOooO0oo < 8 || iOooO0oo > 144 || (iOooO0oo & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        this.OooO0OO = OooOO0(eoVar);
        eo eoVarOooO00o = OooO00o(eoVar);
        this.OooO00o = eoVarOooO00o;
        this.OooO0O0 = new eo(eoVarOooO00o.OooOOO0(), eoVarOooO00o.OooO0oo());
    }

    private int OooO(int i, int i2, int i3, int i4) {
        int i5 = i - 2;
        int i6 = i2 - 2;
        int i7 = (OooO0oo(i5, i6, i3, i4) ? 1 : 0) << 1;
        int i8 = i2 - 1;
        if (OooO0oo(i5, i8, i3, i4)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        int i10 = i - 1;
        if (OooO0oo(i10, i6, i3, i4)) {
            i9 |= 1;
        }
        int i11 = i9 << 1;
        if (OooO0oo(i10, i8, i3, i4)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (OooO0oo(i10, i2, i3, i4)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        if (OooO0oo(i, i6, i3, i4)) {
            i13 |= 1;
        }
        int i14 = i13 << 1;
        if (OooO0oo(i, i8, i3, i4)) {
            i14 |= 1;
        }
        int i15 = i14 << 1;
        return OooO0oo(i, i2, i3, i4) ? i15 | 1 : i15;
    }

    private eo OooO00o(eo eoVar) {
        int iOooO0o = this.OooO0OO.OooO0o();
        int iOooO0o0 = this.OooO0OO.OooO0o0();
        if (eoVar.OooO0oo() != iOooO0o) {
            throw new IllegalArgumentException("Dimension of bitMatrix must match the version size");
        }
        int iOooO0OO = this.OooO0OO.OooO0OO();
        int iOooO0O0 = this.OooO0OO.OooO0O0();
        int i = iOooO0o / iOooO0OO;
        int i2 = iOooO0o0 / iOooO0O0;
        eo eoVar2 = new eo(i2 * iOooO0O0, i * iOooO0OO);
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = i3 * iOooO0OO;
            for (int i5 = 0; i5 < i2; i5++) {
                int i6 = i5 * iOooO0O0;
                for (int i7 = 0; i7 < iOooO0OO; i7++) {
                    int i8 = ((iOooO0OO + 2) * i3) + 1 + i7;
                    int i9 = i4 + i7;
                    for (int i10 = 0; i10 < iOooO0O0; i10++) {
                        if (eoVar.OooO0o0(((iOooO0O0 + 2) * i5) + 1 + i10, i8)) {
                            eoVar2.OooOOo0(i6 + i10, i9);
                        }
                    }
                }
            }
        }
        return eoVar2;
    }

    private int OooO0Oo(int i, int i2) {
        int i3 = i - 1;
        int i4 = (OooO0oo(i3, 0, i, i2) ? 1 : 0) << 1;
        if (OooO0oo(i3, 1, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (OooO0oo(i3, 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (OooO0oo(0, i2 - 2, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        int i8 = i2 - 1;
        if (OooO0oo(0, i8, i, i2)) {
            i7 |= 1;
        }
        int i9 = i7 << 1;
        if (OooO0oo(1, i8, i, i2)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        if (OooO0oo(2, i8, i, i2)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        return OooO0oo(3, i8, i, i2) ? i11 | 1 : i11;
    }

    private int OooO0o(int i, int i2) {
        int i3 = i - 1;
        int i4 = (OooO0oo(i3, 0, i, i2) ? 1 : 0) << 1;
        int i5 = i2 - 1;
        if (OooO0oo(i3, i5, i, i2)) {
            i4 |= 1;
        }
        int i6 = i4 << 1;
        int i7 = i2 - 3;
        if (OooO0oo(0, i7, i, i2)) {
            i6 |= 1;
        }
        int i8 = i6 << 1;
        int i9 = i2 - 2;
        if (OooO0oo(0, i9, i, i2)) {
            i8 |= 1;
        }
        int i10 = i8 << 1;
        if (OooO0oo(0, i5, i, i2)) {
            i10 |= 1;
        }
        int i11 = i10 << 1;
        if (OooO0oo(1, i7, i, i2)) {
            i11 |= 1;
        }
        int i12 = i11 << 1;
        if (OooO0oo(1, i9, i, i2)) {
            i12 |= 1;
        }
        int i13 = i12 << 1;
        return OooO0oo(1, i5, i, i2) ? i13 | 1 : i13;
    }

    private int OooO0o0(int i, int i2) {
        int i3 = (OooO0oo(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (OooO0oo(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (OooO0oo(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (OooO0oo(0, i2 - 4, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        if (OooO0oo(0, i2 - 3, i, i2)) {
            i6 |= 1;
        }
        int i7 = i6 << 1;
        if (OooO0oo(0, i2 - 2, i, i2)) {
            i7 |= 1;
        }
        int i8 = i7 << 1;
        int i9 = i2 - 1;
        if (OooO0oo(0, i9, i, i2)) {
            i8 |= 1;
        }
        int i10 = i8 << 1;
        return OooO0oo(1, i9, i, i2) ? i10 | 1 : i10;
    }

    private int OooO0oO(int i, int i2) {
        int i3 = (OooO0oo(i + (-3), 0, i, i2) ? 1 : 0) << 1;
        if (OooO0oo(i - 2, 0, i, i2)) {
            i3 |= 1;
        }
        int i4 = i3 << 1;
        if (OooO0oo(i - 1, 0, i, i2)) {
            i4 |= 1;
        }
        int i5 = i4 << 1;
        if (OooO0oo(0, i2 - 2, i, i2)) {
            i5 |= 1;
        }
        int i6 = i5 << 1;
        int i7 = i2 - 1;
        if (OooO0oo(0, i7, i, i2)) {
            i6 |= 1;
        }
        int i8 = i6 << 1;
        if (OooO0oo(1, i7, i, i2)) {
            i8 |= 1;
        }
        int i9 = i8 << 1;
        if (OooO0oo(2, i7, i, i2)) {
            i9 |= 1;
        }
        int i10 = i9 << 1;
        return OooO0oo(3, i7, i, i2) ? i10 | 1 : i10;
    }

    private boolean OooO0oo(int i, int i2, int i3, int i4) {
        if (i < 0) {
            i += i3;
            i2 += 4 - ((i3 + 4) & 7);
        }
        if (i2 < 0) {
            i2 += i4;
            i += 4 - ((i4 + 4) & 7);
        }
        this.OooO0O0.OooOOo0(i2, i);
        return this.OooO00o.OooO0o0(i2, i);
    }

    private static bp OooOO0(eo eoVar) throws FormatException {
        return bp.OooO0oo(eoVar.OooO0oo(), eoVar.OooOOO0());
    }

    public final bp OooO0O0() {
        return this.OooO0OO;
    }

    public final byte[] OooO0OO() throws FormatException {
        byte[] bArr = new byte[this.OooO0OO.OooO0oO()];
        int iOooO0oo = this.OooO00o.OooO0oo();
        int iOooOOO0 = this.OooO00o.OooOOO0();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i3 = 4;
        while (true) {
            if (i3 == iOooO0oo && i == 0 && !z) {
                bArr[i2] = (byte) OooO0Oo(iOooO0oo, iOooOOO0);
                i3 -= 2;
                i += 2;
                i2++;
                z = true;
            } else {
                int i4 = iOooO0oo - 2;
                if (i3 == i4 && i == 0 && (iOooOOO0 & 3) != 0 && !z3) {
                    bArr[i2] = (byte) OooO0o0(iOooO0oo, iOooOOO0);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z3 = true;
                } else if (i3 == iOooO0oo + 4 && i == 2 && (iOooOOO0 & 7) == 0 && !z4) {
                    bArr[i2] = (byte) OooO0o(iOooO0oo, iOooOOO0);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z4 = true;
                } else if (i3 == i4 && i == 0 && (iOooOOO0 & 7) == 4 && !z5) {
                    bArr[i2] = (byte) OooO0oO(iOooO0oo, iOooOOO0);
                    i3 -= 2;
                    i += 2;
                    i2++;
                    z5 = true;
                } else {
                    do {
                        if (i3 < iOooO0oo && i >= 0 && !this.OooO0O0.OooO0o0(i, i3)) {
                            bArr[i2] = (byte) OooO(i3, i, iOooO0oo, iOooOOO0);
                            i2++;
                        }
                        i3 -= 2;
                        i += 2;
                        if (i3 < 0) {
                            break;
                        }
                    } while (i < iOooOOO0);
                    int i5 = i3 + 1;
                    int i6 = i + 3;
                    do {
                        if (i5 >= 0 && i6 < iOooOOO0 && !this.OooO0O0.OooO0o0(i6, i5)) {
                            bArr[i2] = (byte) OooO(i5, i6, iOooO0oo, iOooOOO0);
                            i2++;
                        }
                        i5 += 2;
                        i6 -= 2;
                        if (i5 >= iOooO0oo) {
                            break;
                        }
                    } while (i6 >= 0);
                    i3 = i5 + 3;
                    i = i6 + 1;
                }
            }
            if (i3 >= iOooO0oo && i >= iOooOOO0) {
                break;
            }
        }
        if (i2 == this.OooO0OO.OooO0oO()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }
}
