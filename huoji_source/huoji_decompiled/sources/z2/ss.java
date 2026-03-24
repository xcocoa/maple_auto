package z2;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public final class ss {
    private final ts[] OooO00o;
    private int OooO0O0;
    private final int OooO0OO;
    private final int OooO0Oo;

    public ss(int i, int i2) {
        ts[] tsVarArr = new ts[i];
        this.OooO00o = tsVarArr;
        int length = tsVarArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            this.OooO00o[i3] = new ts(((i2 + 4) * 17) + 1);
        }
        this.OooO0Oo = i2 * 17;
        this.OooO0OO = i;
        this.OooO0O0 = -1;
    }

    public final ts OooO00o() {
        return this.OooO00o[this.OooO0O0];
    }

    public final byte[][] OooO0O0() {
        return OooO0OO(1, 1);
    }

    public final byte[][] OooO0OO(int i, int i2) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, this.OooO0OO * i2, this.OooO0Oo * i);
        int i3 = this.OooO0OO * i2;
        for (int i4 = 0; i4 < i3; i4++) {
            bArr[(i3 - i4) - 1] = this.OooO00o[i4 / i2].OooO0O0(i);
        }
        return bArr;
    }

    public final void OooO0Oo(int i, int i2, byte b) {
        this.OooO00o[i2].OooO0OO(i, b);
    }

    public final void OooO0o0() {
        this.OooO0O0++;
    }
}
