package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ts {
    private final byte[] OooO00o;
    private int OooO0O0 = 0;

    public ts(int i) {
        this.OooO00o = new byte[i];
    }

    private void OooO0Oo(int i, boolean z) {
        this.OooO00o[i] = z ? (byte) 1 : (byte) 0;
    }

    public final void OooO00o(boolean z, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.OooO0O0;
            this.OooO0O0 = i3 + 1;
            OooO0Oo(i3, z);
        }
    }

    public final byte[] OooO0O0(int i) {
        int length = this.OooO00o.length * i;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = this.OooO00o[i2 / i];
        }
        return bArr;
    }

    public final void OooO0OO(int i, byte b) {
        this.OooO00o[i] = b;
    }
}
