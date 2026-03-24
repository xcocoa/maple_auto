package z2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class nz {
    public static final int OooO = 7;
    public static final int OooO0OO = 65535;
    public static final int OooO0Oo = 1;
    public static final int OooO0o = 4;
    public static final int OooO0o0 = 2;
    public static final int OooO0oO = 5;
    public static final int OooO0oo = 6;
    public static final int OooOO0 = 10;
    private int OooO00o;
    private final int[] OooO0O0 = new int[10];

    public boolean OooO(int i) {
        return ((1 << i) & this.OooO00o) != 0;
    }

    public void OooO00o() {
        this.OooO00o = 0;
        Arrays.fill(this.OooO0O0, 0);
    }

    public int OooO0O0(int i) {
        return this.OooO0O0[i];
    }

    public boolean OooO0OO(boolean z) {
        return ((this.OooO00o & 4) != 0 ? this.OooO0O0[2] : z ? 1 : 0) == 1;
    }

    public int OooO0Oo() {
        if ((this.OooO00o & 2) != 0) {
            return this.OooO0O0[1];
        }
        return -1;
    }

    public int OooO0o(int i) {
        return (this.OooO00o & 16) != 0 ? this.OooO0O0[4] : i;
    }

    public int OooO0o0() {
        if ((this.OooO00o & 128) != 0) {
            return this.OooO0O0[7];
        }
        return 65535;
    }

    public int OooO0oO(int i) {
        return (this.OooO00o & 32) != 0 ? this.OooO0O0[5] : i;
    }

    public int OooO0oo(int i) {
        return (this.OooO00o & 64) != 0 ? this.OooO0O0[6] : i;
    }

    public void OooOO0(nz nzVar) {
        for (int i = 0; i < 10; i++) {
            if (nzVar.OooO(i)) {
                OooOO0O(i, nzVar.OooO0O0(i));
            }
        }
    }

    public nz OooOO0O(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.OooO0O0;
            if (i < iArr.length) {
                this.OooO00o = (1 << i) | this.OooO00o;
                iArr[i] = i2;
            }
        }
        return this;
    }

    public int OooOO0o() {
        return Integer.bitCount(this.OooO00o);
    }
}
