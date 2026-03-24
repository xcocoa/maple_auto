package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class qv extends rv {
    private final rv OooO0OO;

    public qv(rv rvVar) {
        super(rvVar.OooO0o0(), rvVar.OooO0O0());
        this.OooO0OO = rvVar;
    }

    @Override // z2.rv
    public rv OooO() {
        return new qv(this.OooO0OO.OooO());
    }

    @Override // z2.rv
    public rv OooO00o(int i, int i2, int i3, int i4) {
        return new qv(this.OooO0OO.OooO00o(i, i2, i3, i4));
    }

    @Override // z2.rv
    public byte[] OooO0OO() {
        byte[] bArrOooO0OO = this.OooO0OO.OooO0OO();
        int iOooO0o0 = OooO0o0() * OooO0O0();
        byte[] bArr = new byte[iOooO0o0];
        for (int i = 0; i < iOooO0o0; i++) {
            bArr[i] = (byte) (255 - (bArrOooO0OO[i] & 255));
        }
        return bArr;
    }

    @Override // z2.rv
    public byte[] OooO0Oo(int i, byte[] bArr) {
        byte[] bArrOooO0Oo = this.OooO0OO.OooO0Oo(i, bArr);
        int iOooO0o0 = OooO0o0();
        for (int i2 = 0; i2 < iOooO0o0; i2++) {
            bArrOooO0Oo[i2] = (byte) (255 - (bArrOooO0Oo[i2] & 255));
        }
        return bArrOooO0Oo;
    }

    @Override // z2.rv
    public rv OooO0o() {
        return this.OooO0OO;
    }

    @Override // z2.rv
    public boolean OooO0oO() {
        return this.OooO0OO.OooO0oO();
    }

    @Override // z2.rv
    public boolean OooO0oo() {
        return this.OooO0OO.OooO0oo();
    }

    @Override // z2.rv
    public rv OooOO0() {
        return new qv(this.OooO0OO.OooOO0());
    }
}
