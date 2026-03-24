package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class sv extends rv {
    private static final int OooO0oo = 2;
    private final byte[] OooO0OO;
    private final int OooO0Oo;
    private final int OooO0o;
    private final int OooO0o0;
    private final int OooO0oO;

    public sv(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.OooO0OO = bArr;
        this.OooO0Oo = i;
        this.OooO0o0 = i2;
        this.OooO0o = i3;
        this.OooO0oO = i4;
        if (z) {
            OooOOO(i5, i6);
        }
    }

    private void OooOOO(int i, int i2) {
        byte[] bArr = this.OooO0OO;
        int i3 = (this.OooO0oO * this.OooO0Oo) + this.OooO0o;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i / 2) + i3;
            int i6 = (i3 + i) - 1;
            int i7 = i3;
            while (i7 < i5) {
                byte b = bArr[i7];
                bArr[i7] = bArr[i6];
                bArr[i6] = b;
                i7++;
                i6--;
            }
            i4++;
            i3 += this.OooO0Oo;
        }
    }

    @Override // z2.rv
    public rv OooO00o(int i, int i2, int i3, int i4) {
        return new sv(this.OooO0OO, this.OooO0Oo, this.OooO0o0, this.OooO0o + i, this.OooO0oO + i2, i3, i4, false);
    }

    @Override // z2.rv
    public byte[] OooO0OO() {
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
        byte[] bArr2 = this.OooO0OO;
        for (int i4 = 0; i4 < iOooO0O0; i4++) {
            System.arraycopy(bArr2, i3, bArr, i4 * iOooO0o0, iOooO0o0);
            i3 += this.OooO0Oo;
        }
        return bArr;
    }

    @Override // z2.rv
    public byte[] OooO0Oo(int i, byte[] bArr) {
        if (i < 0 || i >= OooO0O0()) {
            throw new IllegalArgumentException("Requested row is outside the image: " + i);
        }
        int iOooO0o0 = OooO0o0();
        if (bArr == null || bArr.length < iOooO0o0) {
            bArr = new byte[iOooO0o0];
        }
        System.arraycopy(this.OooO0OO, ((i + this.OooO0oO) * this.OooO0Oo) + this.OooO0o, bArr, 0, iOooO0o0);
        return bArr;
    }

    @Override // z2.rv
    public boolean OooO0oO() {
        return true;
    }

    public int OooOO0O() {
        return OooO0O0() / 2;
    }

    public int OooOO0o() {
        return OooO0o0() / 2;
    }

    public int[] OooOOO0() {
        int iOooO0o0 = OooO0o0() / 2;
        int iOooO0O0 = OooO0O0() / 2;
        int[] iArr = new int[iOooO0o0 * iOooO0O0];
        byte[] bArr = this.OooO0OO;
        int i = (this.OooO0oO * this.OooO0Oo) + this.OooO0o;
        for (int i2 = 0; i2 < iOooO0O0; i2++) {
            int i3 = i2 * iOooO0o0;
            for (int i4 = 0; i4 < iOooO0o0; i4++) {
                iArr[i3 + i4] = ((bArr[(i4 * 2) + i] & 255) * 65793) | (-16777216);
            }
            i += this.OooO0Oo * 2;
        }
        return iArr;
    }
}
