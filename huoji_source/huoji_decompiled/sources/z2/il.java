package z2;

/* JADX INFO: loaded from: classes2.dex */
@rk("The shapes API is currently experimental and subject to change")
public class il extends hl {
    private final float OooO00o;

    public il(float f) {
        this.OooO00o = f;
    }

    @Override // z2.hl
    public void OooO00o(float f, float f2, nl nlVar) {
        nlVar.OooO0o0(0.0f, this.OooO00o * f2);
        double d = f;
        double d2 = f2;
        nlVar.OooO0OO((float) (Math.sin(d) * ((double) this.OooO00o) * d2), (float) (Math.cos(d) * ((double) this.OooO00o) * d2));
    }
}
