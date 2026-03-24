package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class MorphApp {
    public static final int OooO00o = 0;
    public static final int OooO0O0 = 1;
    public static final int OooO0OO = 7;
    public static final int OooO0Oo = 7;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix) {
        return OooO0O0(pix, 1);
    }

    private static Pix OooO0O0(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        if (i < 0 || i > 1) {
            throw new IllegalArgumentException("Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE");
        }
        long jNativePixFastTophat = nativePixFastTophat(pix.OooO0O0(), 7, 7, i);
        if (jNativePixFastTophat != 0) {
            return new Pix(jNativePixFastTophat);
        }
        throw new RuntimeException("Failed to perform pixFastTophat on image");
    }

    private static Pix OooO0OO(Pix pix, int i, int i2, int i3) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("hsize or vsize < 1");
        }
        if (i3 < 0 || i3 > 1) {
            throw new IllegalArgumentException("Type must be L_TOPHAT_BLACK or L_TOPHAT_WHITE");
        }
        long jNativePixTophat = nativePixTophat(pix.OooO0O0(), i, i2, i3);
        if (jNativePixTophat != 0) {
            return new Pix(jNativePixTophat);
        }
        throw new RuntimeException("Failed to perform Tophat on image");
    }

    private static Pix OooO0Oo(Pix pix) {
        return OooO0O0(pix, 0);
    }

    private static native long nativePixFastTophat(long j, int i, int i2, int i3);

    private static native long nativePixTophat(long j, int i, int i2, int i3);
}
