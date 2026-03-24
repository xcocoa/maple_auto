package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Enhance {
    public static final int OooO00o = 1;
    public static final float OooO0O0 = 0.3f;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeUnsharpMasking = nativeUnsharpMasking(pix.OooO0O0(), 1, 0.3f);
        if (jNativeUnsharpMasking != 0) {
            return new Pix(jNativeUnsharpMasking);
        }
        throw new OutOfMemoryError();
    }

    private static Pix OooO0O0(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeUnsharpMasking = nativeUnsharpMasking(pix.OooO0O0(), 1, 0.3f);
        if (jNativeUnsharpMasking != 0) {
            return new Pix(jNativeUnsharpMasking);
        }
        throw new OutOfMemoryError();
    }

    private static native long nativeUnsharpMasking(long j, int i, float f);
}
