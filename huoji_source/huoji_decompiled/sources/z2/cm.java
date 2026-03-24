package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class cm extends yl {
    private final byte[] OooO0OO;
    private final int OooO0Oo;
    private final int OooO0o;
    private final int OooO0o0;
    private final int OooO0oO;

    public cm(int i, int i2, int[] iArr) {
        super(i, i2);
        this.OooO0Oo = i;
        this.OooO0o0 = i2;
        this.OooO0o = 0;
        this.OooO0oO = 0;
        int i3 = i * i2;
        this.OooO0OO = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = iArr[i4];
            this.OooO0OO[i4] = (byte) (((((i5 >> 16) & 255) + ((i5 >> 7) & 510)) + (i5 & 255)) / 4);
        }
    }

    private cm(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 > i || i6 + i4 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.OooO0OO = bArr;
        this.OooO0Oo = i;
        this.OooO0o0 = i2;
        this.OooO0o = i3;
        this.OooO0oO = i4;
    }

    @Override // z2.yl
    public final yl OooO00o(int i, int i2, int i3, int i4) {
        return new cm(this.OooO0OO, this.OooO0Oo, this.OooO0o0, this.OooO0o + i, this.OooO0oO + i2, i3, i4);
    }

    @Override // z2.yl
    public final byte[] OooO0OO() {
        int iOooO0o0 = OooO0o0();
        int iOooO0O0 = OooO0O0();
        int i = this.OooO0Oo;
        if (iOooO0o0 == i && iOooO0O0 == this.OooO0o0) {
            return this.OooO0OO;
        }
        int i2 = iOooO0o0 * iOooO0O0;
        byte[] bArr = new byte[i2];
        int i3 = (this.OooO0oO * i) + this.OooO0o;
        if (iOooO0o0 == i) {
            System.arraycopy(this.OooO0OO, i3, bArr, 0, i2);
            return bArr;
        }
        for (int i4 = 0; i4 < iOooO0O0; i4++) {
            System.arraycopy(this.OooO0OO, i3, bArr, i4 * iOooO0o0, iOooO0o0);
            i3 += this.OooO0Oo;
        }
        return bArr;
    }

    @Override // z2.yl
    public final byte[] OooO0Oo(int i, byte[] bArr) {
        if (i < 0 || i >= OooO0O0()) {
            throw new IllegalArgumentException("Requested row is outside the image: ".concat(String.valueOf(i)));
        }
        int iOooO0o0 = OooO0o0();
        if (bArr == null || bArr.length < iOooO0o0) {
            bArr = new byte[iOooO0o0];
        }
        System.arraycopy(this.OooO0OO, ((i + this.OooO0oO) * this.OooO0Oo) + this.OooO0o, bArr, 0, iOooO0o0);
        return bArr;
    }

    @Override // z2.yl
    public final boolean OooO0oO() {
        return true;
    }
}
