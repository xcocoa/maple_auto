package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Rotate {
    public static final boolean OooO00o = true;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix, float f) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeRotate = nativeRotate(pix.OooO0O0(), f, false, true);
        if (jNativeRotate == 0) {
            return null;
        }
        return new Pix(jNativeRotate);
    }

    private static Pix OooO0O0(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("quads not in {0,1,2,3}");
        }
        int iNativeRotateOrth = nativeRotateOrth(pix.OooO0O0(), i);
        if (iNativeRotateOrth == 0) {
            return null;
        }
        return new Pix(iNativeRotateOrth);
    }

    private static Pix OooO0OO(Pix pix, float f) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeRotate = nativeRotate(pix.OooO0O0(), f, false, true);
        if (jNativeRotate == 0) {
            return null;
        }
        return new Pix(jNativeRotate);
    }

    private static Pix OooO0Oo(Pix pix, float f) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeRotate = nativeRotate(pix.OooO0O0(), f, false, true);
        if (jNativeRotate == 0) {
            return null;
        }
        return new Pix(jNativeRotate);
    }

    private static native long nativeRotate(long j, float f, boolean z, boolean z3);

    private static native int nativeRotateOrth(long j, int i);
}
