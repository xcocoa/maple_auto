package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Binarize {
    public static final int OooO = 1;
    public static final int OooO00o = 32;
    public static final int OooO0O0 = 32;
    public static final int OooO0OO = 2;
    public static final int OooO0Oo = 2;
    public static final int OooO0o = 8;
    public static final float OooO0o0 = 0.1f;
    public static final float OooO0oO = 0.35f;
    public static final int OooO0oo = 1;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long jNativeOtsuAdaptiveThreshold = nativeOtsuAdaptiveThreshold(pix.OooO0O0(), 32, 32, 2, 2, 0.1f);
        if (jNativeOtsuAdaptiveThreshold != 0) {
            return new Pix(jNativeOtsuAdaptiveThreshold);
        }
        throw new RuntimeException("Failed to perform Otsu adaptive threshold on image");
    }

    private static Pix OooO0O0(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long jNativeOtsuAdaptiveThreshold = nativeOtsuAdaptiveThreshold(pix.OooO0O0(), 32, 32, 2, 2, 0.1f);
        if (jNativeOtsuAdaptiveThreshold != 0) {
            return new Pix(jNativeOtsuAdaptiveThreshold);
        }
        throw new RuntimeException("Failed to perform Otsu adaptive threshold on image");
    }

    private static Pix OooO0OO(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long jNativeSauvolaBinarizeTiled = nativeSauvolaBinarizeTiled(pix.OooO0O0(), 8, 0.35f, 1, 1);
        if (jNativeSauvolaBinarizeTiled != 0) {
            return new Pix(jNativeSauvolaBinarizeTiled);
        }
        throw new RuntimeException("Failed to perform Sauvola binarization on image");
    }

    private static Pix OooO0Oo(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        long jNativeSauvolaBinarizeTiled = nativeSauvolaBinarizeTiled(pix.OooO0O0(), 8, 0.35f, 1, 1);
        if (jNativeSauvolaBinarizeTiled != 0) {
            return new Pix(jNativeSauvolaBinarizeTiled);
        }
        throw new RuntimeException("Failed to perform Sauvola binarization on image");
    }

    private static native long nativeOtsuAdaptiveThreshold(long j, int i, int i2, int i3, int i4, float f);

    private static native long nativeSauvolaBinarizeTiled(long j, int i, float f, int i2, int i3);
}
