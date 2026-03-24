package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class qm extends sm {
    private final short OooO0OO;
    private final short OooO0Oo;

    public qm(sm smVar, int i, int i2) {
        super(smVar);
        this.OooO0OO = (short) i;
        this.OooO0Oo = (short) i2;
    }

    @Override // z2.sm
    public final void OooO0OO(Cdo cdo, byte[] bArr) {
        cdo.OooO0OO(this.OooO0OO, this.OooO0Oo);
    }

    public final String toString() {
        short s = this.OooO0OO;
        short s2 = this.OooO0Oo;
        return "<" + Integer.toBinaryString((s & ((1 << s2) - 1)) | (1 << s2) | (1 << this.OooO0Oo)).substring(1) + '>';
    }
}
