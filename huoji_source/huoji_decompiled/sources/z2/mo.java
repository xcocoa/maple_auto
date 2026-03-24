package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class mo {
    private final float OooO;
    private final float OooO00o;
    private final float OooO0O0;
    private final float OooO0OO;
    private final float OooO0Oo;
    private final float OooO0o;
    private final float OooO0o0;
    private final float OooO0oO;
    private final float OooO0oo;

    private mo(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.OooO00o = f;
        this.OooO0O0 = f4;
        this.OooO0OO = f7;
        this.OooO0Oo = f2;
        this.OooO0o0 = f5;
        this.OooO0o = f8;
        this.OooO0oO = f3;
        this.OooO0oo = f6;
        this.OooO = f9;
    }

    public static mo OooO0O0(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        return OooO0Oo(f9, f10, f11, f12, f13, f14, f15, f16).OooO0o0(OooO0OO(f, f2, f3, f4, f5, f6, f7, f8));
    }

    public static mo OooO0OO(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return OooO0Oo(f, f2, f3, f4, f5, f6, f7, f8).OooO00o();
    }

    public static mo OooO0Oo(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = ((f - f3) + f5) - f7;
        float f10 = ((f2 - f4) + f6) - f8;
        if (f9 == 0.0f && f10 == 0.0f) {
            return new mo(f3 - f, f5 - f3, f, f4 - f2, f6 - f4, f2, 0.0f, 0.0f, 1.0f);
        }
        float f11 = f3 - f5;
        float f12 = f7 - f5;
        float f13 = f4 - f6;
        float f14 = f8 - f6;
        float f15 = (f11 * f14) - (f12 * f13);
        float f16 = ((f14 * f9) - (f12 * f10)) / f15;
        float f17 = ((f11 * f10) - (f9 * f13)) / f15;
        return new mo((f16 * f3) + (f3 - f), (f17 * f7) + (f7 - f), f, (f4 - f2) + (f16 * f4), (f8 - f2) + (f17 * f8), f2, f16, f17, 1.0f);
    }

    public final mo OooO00o() {
        float f = this.OooO0o0;
        float f2 = this.OooO;
        float f3 = this.OooO0o;
        float f4 = this.OooO0oo;
        float f5 = (f * f2) - (f3 * f4);
        float f6 = this.OooO0oO;
        float f7 = this.OooO0Oo;
        float f8 = (f3 * f6) - (f7 * f2);
        float f9 = (f7 * f4) - (f * f6);
        float f10 = this.OooO0OO;
        float f11 = this.OooO0O0;
        float f12 = (f10 * f4) - (f11 * f2);
        float f13 = this.OooO00o;
        return new mo(f5, f8, f9, f12, (f2 * f13) - (f10 * f6), (f6 * f11) - (f4 * f13), (f11 * f3) - (f10 * f), (f10 * f7) - (f3 * f13), (f13 * f) - (f11 * f7));
    }

    public final void OooO0o(float[] fArr) {
        int length = fArr.length;
        float f = this.OooO00o;
        float f2 = this.OooO0O0;
        float f3 = this.OooO0OO;
        float f4 = this.OooO0Oo;
        float f5 = this.OooO0o0;
        float f6 = this.OooO0o;
        float f7 = this.OooO0oO;
        float f8 = this.OooO0oo;
        float f9 = this.OooO;
        for (int i = 0; i < length; i += 2) {
            float f10 = fArr[i];
            int i2 = i + 1;
            float f11 = fArr[i2];
            float f12 = (f3 * f10) + (f6 * f11) + f9;
            fArr[i] = (((f * f10) + (f4 * f11)) + f7) / f12;
            fArr[i2] = (((f10 * f2) + (f11 * f5)) + f8) / f12;
        }
    }

    public final mo OooO0o0(mo moVar) {
        float f = this.OooO00o;
        float f2 = moVar.OooO00o;
        float f3 = this.OooO0Oo;
        float f4 = moVar.OooO0O0;
        float f5 = this.OooO0oO;
        float f6 = moVar.OooO0OO;
        float f7 = (f * f2) + (f3 * f4) + (f5 * f6);
        float f8 = moVar.OooO0Oo;
        float f9 = moVar.OooO0o0;
        float f10 = moVar.OooO0o;
        float f11 = (f * f8) + (f3 * f9) + (f5 * f10);
        float f12 = moVar.OooO0oO;
        float f13 = moVar.OooO0oo;
        float f14 = moVar.OooO;
        float f15 = (f * f12) + (f3 * f13) + (f5 * f14);
        float f16 = this.OooO0O0;
        float f17 = this.OooO0o0;
        float f18 = this.OooO0oo;
        float f19 = (f16 * f2) + (f17 * f4) + (f18 * f6);
        float f20 = (f16 * f8) + (f17 * f9) + (f18 * f10);
        float f21 = (f18 * f14) + (f16 * f12) + (f17 * f13);
        float f22 = this.OooO0OO;
        float f23 = this.OooO0o;
        float f24 = (f2 * f22) + (f4 * f23);
        float f25 = this.OooO;
        return new mo(f7, f11, f15, f19, f20, f21, (f6 * f25) + f24, (f8 * f22) + (f9 * f23) + (f10 * f25), (f22 * f12) + (f23 * f13) + (f25 * f14));
    }

    public final void OooO0oO(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            float f = fArr[i];
            float f2 = fArr2[i];
            float f3 = (this.OooO0OO * f) + (this.OooO0o * f2) + this.OooO;
            fArr[i] = (((this.OooO00o * f) + (this.OooO0Oo * f2)) + this.OooO0oO) / f3;
            fArr2[i] = (((this.OooO0O0 * f) + (this.OooO0o0 * f2)) + this.OooO0oo) / f3;
        }
    }
}
