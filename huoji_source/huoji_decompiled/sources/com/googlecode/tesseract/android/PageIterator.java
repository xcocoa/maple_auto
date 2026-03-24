package com.googlecode.tesseract.android;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class PageIterator {
    private final long OooO00o;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        System.loadLibrary("tess");
    }

    public PageIterator(long j) {
        this.OooO00o = j;
    }

    private void OooO00o() {
        nativeBegin(this.OooO00o);
    }

    private boolean OooO0O0(int i) {
        return nativeNext(this.OooO00o, i);
    }

    private int[] OooO0OO(int i) {
        return nativeBoundingBox(this.OooO00o, i);
    }

    private Rect OooO0Oo(int i) {
        int[] iArrNativeBoundingBox = nativeBoundingBox(this.OooO00o, i);
        return new Rect(iArrNativeBoundingBox[0], iArrNativeBoundingBox[1], iArrNativeBoundingBox[2], iArrNativeBoundingBox[3]);
    }

    private static native void nativeBegin(long j);

    private static native int[] nativeBoundingBox(long j, int i);

    private static native boolean nativeNext(long j, int i);
}
