package com.googlecode.tesseract.android;

/* JADX INFO: loaded from: classes2.dex */
public class TessPdfRenderer {
    private final long OooO00o;
    private boolean OooO0O0 = false;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
    }

    private TessPdfRenderer(TessBaseAPI tessBaseAPI, String str) {
        this.OooO00o = nativeCreate(tessBaseAPI.OooO00o, str);
    }

    private void OooO0O0() {
        nativeRecycle(this.OooO00o);
        this.OooO0O0 = true;
    }

    private static native long nativeCreate(long j, String str);

    private static native void nativeRecycle(long j);

    public final long OooO00o() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return this.OooO00o;
    }
}
