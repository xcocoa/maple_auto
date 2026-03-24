package z2;

/* JADX INFO: loaded from: classes2.dex */
public class yv extends zv {
    private int OooO0O0;

    public yv(gw gwVar, int i) {
        super(gwVar);
        if (i < 0) {
            throw new IllegalArgumentException("Repetition count must be >= 0");
        }
        this.OooO0O0 = i;
    }

    @Override // z2.zv, z2.gw
    public int OooO00o() {
        return super.OooO00o() * this.OooO0O0;
    }

    @Override // z2.zv, z2.gw
    public void OooO0O0(kw kwVar) {
        for (int i = 0; i < this.OooO0O0 && !kwVar.OooOOO(); i++) {
            super.OooO0O0(kwVar);
        }
    }

    @Override // z2.zv
    public String toString() {
        return super.toString() + "(repeated)";
    }
}
