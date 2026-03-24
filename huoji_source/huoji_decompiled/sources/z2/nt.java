package z2;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class nt {
    private final byte[][] OooO00o;
    private final int OooO0O0;
    private final int OooO0OO;

    public nt(int i, int i2) {
        this.OooO00o = (byte[][]) Array.newInstance((Class<?>) byte.class, i2, i);
        this.OooO0O0 = i;
        this.OooO0OO = i2;
    }

    public final void OooO00o(byte b) {
        for (byte[] bArr : this.OooO00o) {
            Arrays.fill(bArr, b);
        }
    }

    public final byte OooO0O0(int i, int i2) {
        return this.OooO00o[i2][i];
    }

    public final byte[][] OooO0OO() {
        return this.OooO00o;
    }

    public final int OooO0Oo() {
        return this.OooO0OO;
    }

    public final void OooO0o(int i, int i2, byte b) {
        this.OooO00o[i2][i] = b;
    }

    public final int OooO0o0() {
        return this.OooO0O0;
    }

    public final void OooO0oO(int i, int i2, int i3) {
        this.OooO00o[i2][i] = (byte) i3;
    }

    public final void OooO0oo(int i, int i2, boolean z) {
        this.OooO00o[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.OooO0O0 * 2 * this.OooO0OO) + 2);
        for (int i = 0; i < this.OooO0OO; i++) {
            byte[] bArr = this.OooO00o[i];
            for (int i2 = 0; i2 < this.OooO0O0; i2++) {
                byte b = bArr[i2];
                sb.append(b != 0 ? b != 1 ? "  " : " 1" : " 0");
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
