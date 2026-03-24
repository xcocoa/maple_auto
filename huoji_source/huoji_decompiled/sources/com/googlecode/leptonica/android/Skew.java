package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Skew {
    public static final float OooO00o = 30.0f;
    public static final float OooO0O0 = 5.0f;
    public static final int OooO0OO = 8;
    public static final int OooO0Oo = 4;
    public static final float OooO0o0 = 0.01f;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static float OooO00o(Pix pix) {
        if (pix != null) {
            return nativeFindSkew(pix.OooO0O0(), 30.0f, 5.0f, 8, 4, 0.01f);
        }
        throw new IllegalArgumentException("Source pix must be non-null");
    }

    private static float OooO0O0(Pix pix) {
        if (pix != null) {
            return nativeFindSkew(pix.OooO0O0(), 30.0f, 5.0f, 8, 4, 0.01f);
        }
        throw new IllegalArgumentException("Source pix must be non-null");
    }

    private static native float nativeFindSkew(long j, float f, float f2, int i, int i2, float f3);
}
