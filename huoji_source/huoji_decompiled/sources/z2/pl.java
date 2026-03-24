package z2;

/* JADX INFO: loaded from: classes2.dex */
@rk("The shapes API is currently experimental and subject to change")
public class pl extends jl {
    private final float OooO00o;
    private final boolean OooO0O0;

    public pl(float f, boolean z) {
        this.OooO00o = f;
        this.OooO0O0 = z;
    }

    @Override // z2.jl
    public void OooO00o(float f, float f2, nl nlVar) {
        float f3 = f / 2.0f;
        nlVar.OooO0OO(f3 - (this.OooO00o * f2), 0.0f);
        nlVar.OooO0OO(f3, (this.OooO0O0 ? this.OooO00o : -this.OooO00o) * f2);
        nlVar.OooO0OO(f3 + (this.OooO00o * f2), 0.0f);
        nlVar.OooO0OO(f, 0.0f);
    }
}
