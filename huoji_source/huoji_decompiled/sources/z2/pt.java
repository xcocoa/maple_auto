package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class pt {
    private static final int OooO00o = 3;
    private static final int OooO0O0 = 3;
    private static final int OooO0OO = 40;
    private static final int OooO0Oo = 10;

    private pt() {
    }

    public static int OooO00o(nt ntVar) {
        return OooO0O0(ntVar, true) + OooO0O0(ntVar, false);
    }

    private static int OooO0O0(nt ntVar, boolean z) {
        int iOooO0Oo = z ? ntVar.OooO0Oo() : ntVar.OooO0o0();
        int iOooO0o0 = z ? ntVar.OooO0o0() : ntVar.OooO0Oo();
        byte[][] bArrOooO0OO = ntVar.OooO0OO();
        int i = 0;
        for (int i2 = 0; i2 < iOooO0Oo; i2++) {
            byte b = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < iOooO0o0; i4++) {
                byte b2 = z ? bArrOooO0OO[i2][i4] : bArrOooO0OO[i4][i2];
                if (b2 == b) {
                    i3++;
                } else {
                    if (i3 >= 5) {
                        i += (i3 - 5) + 3;
                    }
                    b = b2;
                    i3 = 1;
                }
            }
            if (i3 >= 5) {
                i += (i3 - 5) + 3;
            }
        }
        return i;
    }

    public static int OooO0OO(nt ntVar) {
        byte[][] bArrOooO0OO = ntVar.OooO0OO();
        int iOooO0o0 = ntVar.OooO0o0();
        int iOooO0Oo = ntVar.OooO0Oo();
        int i = 0;
        for (int i2 = 0; i2 < iOooO0Oo - 1; i2++) {
            byte[] bArr = bArrOooO0OO[i2];
            int i3 = 0;
            while (i3 < iOooO0o0 - 1) {
                byte b = bArr[i3];
                int i4 = i3 + 1;
                if (b == bArr[i4]) {
                    int i5 = i2 + 1;
                    if (b == bArrOooO0OO[i5][i3] && b == bArrOooO0OO[i5][i4]) {
                        i++;
                    }
                }
                i3 = i4;
            }
        }
        return i * 3;
    }

    public static int OooO0Oo(nt ntVar) {
        byte[][] bArrOooO0OO = ntVar.OooO0OO();
        int iOooO0o0 = ntVar.OooO0o0();
        int iOooO0Oo = ntVar.OooO0Oo();
        int i = 0;
        for (int i2 = 0; i2 < iOooO0Oo; i2++) {
            for (int i3 = 0; i3 < iOooO0o0; i3++) {
                byte[] bArr = bArrOooO0OO[i2];
                int i4 = i3 + 6;
                if (i4 < iOooO0o0 && bArr[i3] == 1 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 1 && bArr[i3 + 3] == 1 && bArr[i3 + 4] == 1 && bArr[i3 + 5] == 0 && bArr[i4] == 1 && (OooO0oO(bArr, i3 - 4, i3) || OooO0oO(bArr, i3 + 7, i3 + 11))) {
                    i++;
                }
                int i5 = i2 + 6;
                if (i5 < iOooO0Oo && bArrOooO0OO[i2][i3] == 1 && bArrOooO0OO[i2 + 1][i3] == 0 && bArrOooO0OO[i2 + 2][i3] == 1 && bArrOooO0OO[i2 + 3][i3] == 1 && bArrOooO0OO[i2 + 4][i3] == 1 && bArrOooO0OO[i2 + 5][i3] == 0 && bArrOooO0OO[i5][i3] == 1 && (OooO0oo(bArrOooO0OO, i3, i2 - 4, i2) || OooO0oo(bArrOooO0OO, i3, i2 + 7, i2 + 11))) {
                    i++;
                }
            }
        }
        return i * 40;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean OooO0o(int i, int i2, int i3) {
        int i4;
        int i5;
        switch (i) {
            case 0:
                i3 += i2;
                i4 = i3 & 1;
                return i4 != 0;
            case 1:
                i4 = i3 & 1;
                if (i4 != 0) {
                }
                break;
            case 2:
                i4 = i2 % 3;
                if (i4 != 0) {
                }
                break;
            case 3:
                i4 = (i3 + i2) % 3;
                if (i4 != 0) {
                }
                break;
            case 4:
                i3 /= 2;
                i2 /= 3;
                i3 += i2;
                i4 = i3 & 1;
                if (i4 != 0) {
                }
                break;
            case 5:
                int i6 = i3 * i2;
                i4 = (i6 & 1) + (i6 % 3);
                if (i4 != 0) {
                }
                break;
            case 6:
                int i7 = i3 * i2;
                i5 = (i7 & 1) + (i7 % 3);
                i4 = i5 & 1;
                if (i4 != 0) {
                }
                break;
            case 7:
                i5 = ((i3 * i2) % 3) + ((i3 + i2) & 1);
                i4 = i5 & 1;
                if (i4 != 0) {
                }
                break;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i)));
        }
    }

    public static int OooO0o0(nt ntVar) {
        byte[][] bArrOooO0OO = ntVar.OooO0OO();
        int iOooO0o0 = ntVar.OooO0o0();
        int iOooO0Oo = ntVar.OooO0Oo();
        int i = 0;
        for (int i2 = 0; i2 < iOooO0Oo; i2++) {
            byte[] bArr = bArrOooO0OO[i2];
            for (int i3 = 0; i3 < iOooO0o0; i3++) {
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int iOooO0Oo2 = ntVar.OooO0Oo() * ntVar.OooO0o0();
        return ((Math.abs((i << 1) - iOooO0Oo2) * 10) / iOooO0Oo2) * 10;
    }

    private static boolean OooO0oO(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, bArr.length);
        for (int iMax = Math.max(i, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    private static boolean OooO0oo(byte[][] bArr, int i, int i2, int i3) {
        int iMin = Math.min(i3, bArr.length);
        for (int iMax = Math.max(i2, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i] == 1) {
                return false;
            }
        }
        return true;
    }
}
