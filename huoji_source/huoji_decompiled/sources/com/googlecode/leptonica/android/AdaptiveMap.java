package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class AdaptiveMap {
    private static final int OooO00o = 16;
    private static final int OooO0O0 = 3;
    private static final int OooO0OO = 200;
    public static final int OooO0Oo = 10;
    public static final int OooO0o = 40;
    public static final int OooO0o0 = 15;
    public static final int OooO0oO = 2;
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
        long jNativeBackgroundNormMorph = nativeBackgroundNormMorph(pix.OooO0O0(), 16, 3, 200);
        if (jNativeBackgroundNormMorph != 0) {
            return new Pix(jNativeBackgroundNormMorph);
        }
        throw new RuntimeException("Failed to normalize image background");
    }

    private static Pix OooO0O0(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeBackgroundNormMorph = nativeBackgroundNormMorph(pix.OooO0O0(), 16, 3, 200);
        if (jNativeBackgroundNormMorph != 0) {
            return new Pix(jNativeBackgroundNormMorph);
        }
        throw new RuntimeException("Failed to normalize image background");
    }

    private static Pix OooO0OO(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativePixContrastNorm = nativePixContrastNorm(pix.OooO0O0(), 10, 15, 40, 2, 1);
        if (jNativePixContrastNorm != 0) {
            return new Pix(jNativePixContrastNorm);
        }
        throw new RuntimeException("Failed to normalize image contrast");
    }

    private static Pix OooO0Oo(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativePixContrastNorm = nativePixContrastNorm(pix.OooO0O0(), 10, 15, 40, 2, 1);
        if (jNativePixContrastNorm != 0) {
            return new Pix(jNativePixContrastNorm);
        }
        throw new RuntimeException("Failed to normalize image contrast");
    }

    private static native long nativeBackgroundNormMorph(long j, int i, int i2, int i3);

    private static native long nativePixContrastNorm(long j, int i, int i2, int i3, int i4, int i5);
}
