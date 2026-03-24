package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Convert {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    public static Pix OooO00o(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        long jNativeConvertTo8 = nativeConvertTo8(pix.OooO0O0());
        if (jNativeConvertTo8 != 0) {
            return new Pix(jNativeConvertTo8);
        }
        throw new RuntimeException("Failed to natively convert pix");
    }

    private static native long nativeConvertTo8(long j);
}
