package z2;

import z2.bp;

/* JADX INFO: loaded from: classes2.dex */
public final class zo {
    private final int OooO00o;
    private final byte[] OooO0O0;

    private zo(int i, byte[] bArr) {
        this.OooO00o = i;
        this.OooO0O0 = bArr;
    }

    public static zo[] OooO0O0(byte[] bArr, bp bpVar) {
        bp.OooO0OO OooO0Oo = bpVar.OooO0Oo();
        bp.OooO0O0[] oooO0O0ArrOooO00o = OooO0Oo.OooO00o();
        int iOooO00o = 0;
        for (bp.OooO0O0 oooO0O0 : oooO0O0ArrOooO00o) {
            iOooO00o += oooO0O0.OooO00o();
        }
        zo[] zoVarArr = new zo[iOooO00o];
        int i = 0;
        for (bp.OooO0O0 oooO0O02 : oooO0O0ArrOooO00o) {
            int i2 = 0;
            while (i2 < oooO0O02.OooO00o()) {
                int iOooO0O0 = oooO0O02.OooO0O0();
                zoVarArr[i] = new zo(iOooO0O0, new byte[OooO0Oo.OooO0O0() + iOooO0O0]);
                i2++;
                i++;
            }
        }
        int length = zoVarArr[0].OooO0O0.length - OooO0Oo.OooO0O0();
        int i3 = length - 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = 0;
            while (i6 < i) {
                zoVarArr[i6].OooO0O0[i5] = bArr[i4];
                i6++;
                i4++;
            }
        }
        boolean z = bpVar.OooO() == 24;
        int i7 = z ? 8 : i;
        int i8 = 0;
        while (i8 < i7) {
            zoVarArr[i8].OooO0O0[i3] = bArr[i4];
            i8++;
            i4++;
        }
        int length2 = zoVarArr[0].OooO0O0.length;
        while (length < length2) {
            int i9 = 0;
            while (i9 < i) {
                int i10 = z ? (i9 + 8) % i : i9;
                zoVarArr[i10].OooO0O0[(!z || i10 <= 7) ? length : length - 1] = bArr[i4];
                i9++;
                i4++;
            }
            length++;
        }
        if (i4 == bArr.length) {
            return zoVarArr;
        }
        throw new IllegalArgumentException();
    }

    public final byte[] OooO00o() {
        return this.OooO0O0;
    }

    public final int OooO0OO() {
        return this.OooO00o;
    }
}
