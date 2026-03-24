package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ht extends fm {
    private final float OooO0OO;

    public ht(float f, float f2, float f3) {
        super(f, f2);
        this.OooO0OO = f3;
    }

    public final boolean OooO0o(float f, float f2, float f3) {
        if (Math.abs(f2 - OooO0Oo()) > f || Math.abs(f3 - OooO0OO()) > f) {
            return false;
        }
        float fAbs = Math.abs(f - this.OooO0OO);
        return fAbs <= 1.0f || fAbs <= this.OooO0OO;
    }

    public final ht OooO0oO(float f, float f2, float f3) {
        return new ht((OooO0OO() + f2) / 2.0f, (OooO0Oo() + f) / 2.0f, (this.OooO0OO + f3) / 2.0f);
    }
}
