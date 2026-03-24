package z2;

import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public final class lo extends jo {
    private static final int OooO = 3;
    private static final int OooOO0 = 8;
    private static final int OooOO0O = 7;
    private static final int OooOO0o = 40;
    private static final int OooOOO0 = 24;
    private eo OooO0oo;

    public lo(yl ylVar) {
        super(ylVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009e A[PHI: r5
      0x009e: PHI (r5v3 int) = (r5v2 int), (r5v6 int), (r5v6 int) binds: [B:31:0x007b, B:33:0x007f, B:34:0x0081] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int[][] OooO(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = 8;
        int i6 = i4 - 8;
        int i7 = i3 - 8;
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, i2, i);
        int i8 = 0;
        while (i8 < i2) {
            int i9 = i8 << 3;
            if (i9 > i6) {
                i9 = i6;
            }
            int i10 = 0;
            while (i10 < i) {
                int i11 = i10 << 3;
                if (i11 > i7) {
                    i11 = i7;
                }
                int i12 = (i9 * i3) + i11;
                int i13 = 255;
                int i14 = 0;
                int i15 = 0;
                int i16 = 0;
                while (i14 < i5) {
                    int i17 = i16;
                    int i18 = 0;
                    while (i18 < i5) {
                        int i19 = bArr[i12 + i18] & 255;
                        i15 += i19;
                        if (i19 < i13) {
                            i13 = i19;
                        }
                        if (i19 > i17) {
                            i17 = i19;
                        }
                        i18++;
                        i5 = 8;
                    }
                    if (i17 - i13 > 24) {
                        while (true) {
                            i14++;
                            i12 += i3;
                            if (i14 < 8) {
                                int i20 = 0;
                                for (int i21 = 8; i20 < i21; i21 = 8) {
                                    i15 += bArr[i12 + i20] & 255;
                                    i20++;
                                }
                            }
                        }
                    }
                    i14++;
                    i12 += i3;
                    i16 = i17;
                    i5 = 8;
                }
                int i22 = i15 >> 6;
                if (i16 - i13 <= 24) {
                    i22 = i13 / 2;
                    if (i8 > 0 && i10 > 0) {
                        int i23 = i8 - 1;
                        int i24 = i10 - 1;
                        int i25 = ((iArr[i23][i10] + (iArr[i8][i24] * 2)) + iArr[i23][i24]) / 4;
                        if (i13 < i25) {
                            i22 = i25;
                        }
                    }
                }
                iArr[i8][i10] = i22;
                i10++;
                i5 = 8;
            }
            i8++;
            i5 = 8;
        }
        return iArr;
    }

    private static void OooOO0(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, eo eoVar) {
        int i5 = i4 - 8;
        int i6 = i3 - 8;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 << 3;
            int i9 = i8 > i5 ? i5 : i8;
            int iOooOO0O = OooOO0O(i7, 2, i2 - 3);
            for (int i10 = 0; i10 < i; i10++) {
                int i11 = i10 << 3;
                int i12 = i11 > i6 ? i6 : i11;
                int iOooOO0O2 = OooOO0O(i10, 2, i - 3);
                int i13 = 0;
                for (int i14 = -2; i14 <= 2; i14++) {
                    int[] iArr2 = iArr[iOooOO0O + i14];
                    i13 += iArr2[iOooOO0O2 - 2] + iArr2[iOooOO0O2 - 1] + iArr2[iOooOO0O2] + iArr2[iOooOO0O2 + 1] + iArr2[iOooOO0O2 + 2];
                }
                OooOO0o(bArr, i12, i9, i13 / 25, i3, eoVar);
            }
        }
    }

    private static int OooOO0O(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    private static void OooOO0o(byte[] bArr, int i, int i2, int i3, int i4, eo eoVar) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    eoVar.OooOOo0(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    @Override // z2.jo, z2.ul
    public final ul OooO00o(yl ylVar) {
        return new lo(ylVar);
    }

    @Override // z2.jo, z2.ul
    public final eo OooO0O0() throws NotFoundException {
        eo eoVarOooO0O0;
        eo eoVar = this.OooO0oo;
        if (eoVar != null) {
            return eoVar;
        }
        yl ylVarOooO0o0 = OooO0o0();
        int iOooO0o0 = ylVarOooO0o0.OooO0o0();
        int iOooO0O0 = ylVarOooO0o0.OooO0O0();
        if (iOooO0o0 < 40 || iOooO0O0 < 40) {
            eoVarOooO0O0 = super.OooO0O0();
        } else {
            byte[] bArrOooO0OO = ylVarOooO0o0.OooO0OO();
            int i = iOooO0o0 >> 3;
            if ((iOooO0o0 & 7) != 0) {
                i++;
            }
            int i2 = i;
            int i3 = iOooO0O0 >> 3;
            if ((iOooO0O0 & 7) != 0) {
                i3++;
            }
            int i4 = i3;
            int[][] iArrOooO = OooO(bArrOooO0OO, i2, i4, iOooO0o0, iOooO0O0);
            eoVarOooO0O0 = new eo(iOooO0o0, iOooO0O0);
            OooOO0(bArrOooO0OO, i2, i4, iOooO0o0, iOooO0O0, iArrOooO, eoVarOooO0O0);
        }
        this.OooO0oo = eoVarOooO0O0;
        return this.OooO0oo;
    }
}
