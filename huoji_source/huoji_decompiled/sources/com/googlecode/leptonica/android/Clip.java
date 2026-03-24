package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Clip {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix, Box box) {
        int iNativeClipRectangle = nativeClipRectangle(pix.OooO0O0(), box.OooO00o());
        if (iNativeClipRectangle != 0) {
            return new Pix(iNativeClipRectangle);
        }
        return null;
    }

    private static native int nativeClipRectangle(long j, long j2);
}
