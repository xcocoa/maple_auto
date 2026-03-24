package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class al {
    public static final float OooO00o = 1.0E-4f;

    private al() {
    }

    public static float OooO00o(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    public static float OooO0O0(float f, float f2, float f3, float f4, float f5, float f6) {
        return OooO0o0(OooO00o(f, f2, f3, f4), OooO00o(f, f2, f5, f4), OooO00o(f, f2, f5, f6), OooO00o(f, f2, f3, f6));
    }

    public static boolean OooO0OO(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    public static float OooO0Oo(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    private static float OooO0o0(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }
}
