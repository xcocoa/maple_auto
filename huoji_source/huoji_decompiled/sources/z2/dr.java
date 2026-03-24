package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class dr {
    private dr() {
    }

    private static int OooO00o(int i, int i2) {
        int i3 = i - i2;
        if (i3 > i2) {
            i3 = i2;
            i2 = i3;
        }
        int i4 = 1;
        int i5 = 1;
        while (i > i2) {
            i4 *= i;
            if (i5 <= i3) {
                i4 /= i5;
                i5++;
            }
            i--;
        }
        while (i5 <= i3) {
            i4 /= i5;
            i5++;
        }
        return i4;
    }

    public static int OooO0O0(int[] iArr, int i, boolean z) {
        int[] iArr2 = iArr;
        int i2 = 0;
        for (int i3 : iArr2) {
            i2 += i3;
        }
        int length = iArr2.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = length - 1;
            if (i4 >= i7) {
                return i5;
            }
            int i8 = 1 << i4;
            i6 |= i8;
            int i9 = 1;
            while (i9 < iArr2[i4]) {
                int i10 = i2 - i9;
                int i11 = length - i4;
                int i12 = i11 - 2;
                int iOooO00o = OooO00o(i10 - 1, i12);
                if (z && i6 == 0) {
                    int i13 = i11 - 1;
                    if (i10 - i13 >= i13) {
                        iOooO00o -= OooO00o(i10 - i11, i12);
                    }
                }
                if (i11 - 1 > 1) {
                    int iOooO00o2 = 0;
                    for (int i14 = i10 - i12; i14 > i; i14--) {
                        iOooO00o2 += OooO00o((i10 - i14) - 1, i11 - 3);
                    }
                    iOooO00o -= iOooO00o2 * (i7 - i4);
                } else if (i10 > i) {
                    iOooO00o--;
                }
                i5 += iOooO00o;
                i9++;
                i6 &= ~i8;
                iArr2 = iArr;
            }
            i2 -= i9;
            i4++;
            iArr2 = iArr;
        }
    }
}
