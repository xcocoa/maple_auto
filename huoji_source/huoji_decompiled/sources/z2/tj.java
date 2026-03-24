package z2;

/* JADX INFO: loaded from: classes2.dex */
public class tj extends jl {
    private static final int OooO = 180;
    private static final int OooO0o = 90;
    private static final int OooO0oO = 180;
    private static final int OooO0oo = 270;
    private float OooO00o;
    private float OooO0O0;
    private float OooO0OO;
    private float OooO0Oo;
    private float OooO0o0;

    public tj(float f, float f2, float f3) {
        this.OooO0O0 = f;
        this.OooO00o = f2;
        this.OooO0Oo = f3;
        if (f3 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.OooO0o0 = 0.0f;
    }

    public void OooO(float f) {
        this.OooO00o = f;
    }

    @Override // z2.jl
    public void OooO00o(float f, float f2, nl nlVar) {
        float f3 = this.OooO0OO;
        if (f3 == 0.0f) {
            nlVar.OooO0OO(f, 0.0f);
            return;
        }
        float f4 = ((this.OooO0O0 * 2.0f) + f3) / 2.0f;
        float f5 = f2 * this.OooO00o;
        float f6 = (f / 2.0f) + this.OooO0o0;
        float f7 = (this.OooO0Oo * f2) + ((1.0f - f2) * f4);
        if (f7 / f4 >= 1.0f) {
            nlVar.OooO0OO(f, 0.0f);
            return;
        }
        float f8 = f4 + f5;
        float f9 = f7 + f5;
        float fSqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f6 - fSqrt;
        float f11 = f6 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f9));
        float f12 = 90.0f - degrees;
        float f13 = f10 - f5;
        nlVar.OooO0OO(f13, 0.0f);
        float f14 = f5 * 2.0f;
        nlVar.OooO00o(f13, 0.0f, f10 + f5, f14, 270.0f, degrees);
        nlVar.OooO00o(f6 - f4, (-f4) - f7, f6 + f4, f4 - f7, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        nlVar.OooO00o(f11 - f5, 0.0f, f11 + f5, f14, 270.0f - degrees, degrees);
        nlVar.OooO0OO(f, 0.0f);
    }

    public float OooO0O0() {
        return this.OooO0Oo;
    }

    public float OooO0OO() {
        return this.OooO0O0;
    }

    public float OooO0Oo() {
        return this.OooO00o;
    }

    public float OooO0o() {
        return this.OooO0o0;
    }

    public float OooO0o0() {
        return this.OooO0OO;
    }

    public void OooO0oO(float f) {
        this.OooO0Oo = f;
    }

    public void OooO0oo(float f) {
        this.OooO0O0 = f;
    }

    public void OooOO0(float f) {
        this.OooO0OO = f;
    }

    public void OooOO0O(float f) {
        this.OooO0o0 = f;
    }
}
