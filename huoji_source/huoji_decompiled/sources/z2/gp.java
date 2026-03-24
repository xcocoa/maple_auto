package z2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class gp {
    private final CharSequence OooO00o;
    private final int OooO0O0;
    private final int OooO0OO;
    private final byte[] OooO0Oo;

    public gp(CharSequence charSequence, int i, int i2) {
        this.OooO00o = charSequence;
        this.OooO0OO = i;
        this.OooO0O0 = i2;
        byte[] bArr = new byte[i * i2];
        this.OooO0Oo = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    private boolean OooO(int i, int i2) {
        return this.OooO0Oo[(i2 * this.OooO0OO) + i] >= 0;
    }

    private void OooO00o(int i) {
        OooOO0(this.OooO0O0 - 1, 0, i, 1);
        OooOO0(this.OooO0O0 - 1, 1, i, 2);
        OooOO0(this.OooO0O0 - 1, 2, i, 3);
        OooOO0(0, this.OooO0OO - 2, i, 4);
        OooOO0(0, this.OooO0OO - 1, i, 5);
        OooOO0(1, this.OooO0OO - 1, i, 6);
        OooOO0(2, this.OooO0OO - 1, i, 7);
        OooOO0(3, this.OooO0OO - 1, i, 8);
    }

    private void OooO0O0(int i) {
        OooOO0(this.OooO0O0 - 3, 0, i, 1);
        OooOO0(this.OooO0O0 - 2, 0, i, 2);
        OooOO0(this.OooO0O0 - 1, 0, i, 3);
        OooOO0(0, this.OooO0OO - 4, i, 4);
        OooOO0(0, this.OooO0OO - 3, i, 5);
        OooOO0(0, this.OooO0OO - 2, i, 6);
        OooOO0(0, this.OooO0OO - 1, i, 7);
        OooOO0(1, this.OooO0OO - 1, i, 8);
    }

    private void OooO0OO(int i) {
        OooOO0(this.OooO0O0 - 3, 0, i, 1);
        OooOO0(this.OooO0O0 - 2, 0, i, 2);
        OooOO0(this.OooO0O0 - 1, 0, i, 3);
        OooOO0(0, this.OooO0OO - 2, i, 4);
        OooOO0(0, this.OooO0OO - 1, i, 5);
        OooOO0(1, this.OooO0OO - 1, i, 6);
        OooOO0(2, this.OooO0OO - 1, i, 7);
        OooOO0(3, this.OooO0OO - 1, i, 8);
    }

    private void OooO0Oo(int i) {
        OooOO0(this.OooO0O0 - 1, 0, i, 1);
        OooOO0(this.OooO0O0 - 1, this.OooO0OO - 1, i, 2);
        OooOO0(0, this.OooO0OO - 3, i, 3);
        OooOO0(0, this.OooO0OO - 2, i, 4);
        OooOO0(0, this.OooO0OO - 1, i, 5);
        OooOO0(1, this.OooO0OO - 3, i, 6);
        OooOO0(1, this.OooO0OO - 2, i, 7);
        OooOO0(1, this.OooO0OO - 1, i, 8);
    }

    private void OooOO0(int i, int i2, int i3, int i4) {
        if (i < 0) {
            int i5 = this.OooO0O0;
            i += i5;
            i2 += 4 - ((i5 + 4) % 8);
        }
        if (i2 < 0) {
            int i6 = this.OooO0OO;
            i2 += i6;
            i += 4 - ((i6 + 4) % 8);
        }
        OooOO0o(i2, i, (this.OooO00o.charAt(i3) & (1 << (8 - i4))) != 0);
    }

    private void OooOO0o(int i, int i2, boolean z) {
        this.OooO0Oo[(i2 * this.OooO0OO) + i] = z ? (byte) 1 : (byte) 0;
    }

    private void OooOOO0(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        OooOO0(i4, i5, i3, 1);
        int i6 = i2 - 1;
        OooOO0(i4, i6, i3, 2);
        int i7 = i - 1;
        OooOO0(i7, i5, i3, 3);
        OooOO0(i7, i6, i3, 4);
        OooOO0(i7, i2, i3, 5);
        OooOO0(i, i5, i3, 6);
        OooOO0(i, i6, i3, 7);
        OooOO0(i, i2, i3, 8);
    }

    public final byte[] OooO0o() {
        return this.OooO0Oo;
    }

    public final boolean OooO0o0(int i, int i2) {
        return this.OooO0Oo[(i2 * this.OooO0OO) + i] == 1;
    }

    public final int OooO0oO() {
        return this.OooO0OO;
    }

    public final int OooO0oo() {
        return this.OooO0O0;
    }

    public final void OooOO0O() {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 4;
        while (true) {
            if (i5 == this.OooO0O0 && i3 == 0) {
                OooO00o(i4);
                i4++;
            }
            if (i5 == this.OooO0O0 - 2 && i3 == 0 && this.OooO0OO % 4 != 0) {
                OooO0O0(i4);
                i4++;
            }
            if (i5 == this.OooO0O0 - 2 && i3 == 0 && this.OooO0OO % 8 == 4) {
                OooO0OO(i4);
                i4++;
            }
            if (i5 == this.OooO0O0 + 4 && i3 == 2 && this.OooO0OO % 8 == 0) {
                OooO0Oo(i4);
                i4++;
            }
            do {
                if (i5 < this.OooO0O0 && i3 >= 0 && !OooO(i3, i5)) {
                    OooOOO0(i5, i3, i4);
                    i4++;
                }
                i5 -= 2;
                i3 += 2;
                if (i5 < 0) {
                    break;
                }
            } while (i3 < this.OooO0OO);
            int i6 = i5 + 1;
            int i7 = i3 + 3;
            do {
                if (i6 >= 0 && i7 < this.OooO0OO && !OooO(i7, i6)) {
                    OooOOO0(i6, i7, i4);
                    i4++;
                }
                i6 += 2;
                i7 -= 2;
                i = this.OooO0O0;
                if (i6 >= i) {
                    break;
                }
            } while (i7 >= 0);
            i5 = i6 + 3;
            i3 = i7 + 1;
            if (i5 >= i && i3 >= (i2 = this.OooO0OO)) {
                break;
            }
        }
        if (OooO(i2 - 1, i - 1)) {
            return;
        }
        OooOO0o(this.OooO0OO - 1, this.OooO0O0 - 1, true);
        OooOO0o(this.OooO0OO - 2, this.OooO0O0 - 2, true);
    }
}
