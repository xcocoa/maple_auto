package com.googlecode.leptonica.android;

import android.graphics.Rect;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class Boxa {
    private static final String OooO0OO;
    private final long OooO00o;
    private boolean OooO0O0;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        OooO0OO = Boxa.class.getSimpleName();
    }

    private Boxa(long j) {
        this.OooO0O0 = false;
        this.OooO00o = j;
        this.OooO0O0 = false;
    }

    private long OooO00o() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return this.OooO00o;
    }

    private Rect OooO0O0(int i) {
        boolean z = this.OooO0O0;
        if (z) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (z) {
            throw new IllegalStateException();
        }
        if (!nativeGetGeometry(this.OooO00o, i, iArr)) {
            iArr = null;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        return new Rect(i2, i3, iArr[2] + i2, iArr[3] + i3);
    }

    private boolean OooO0OO(int i, int[] iArr) {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetGeometry(this.OooO00o, i, iArr);
    }

    private int OooO0Oo() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetCount(this.OooO00o);
    }

    private synchronized void OooO0o() {
        if (!this.OooO0O0) {
            nativeDestroy(this.OooO00o);
            this.OooO0O0 = true;
        }
    }

    private int[] OooO0o0(int i) {
        boolean z = this.OooO0O0;
        if (z) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (z) {
            throw new IllegalStateException();
        }
        if (nativeGetGeometry(this.OooO00o, i, iArr)) {
            return iArr;
        }
        return null;
    }

    private static native void nativeDestroy(long j);

    private static native int nativeGetCount(long j);

    private static native boolean nativeGetGeometry(long j, int i, int[] iArr);

    public void finalize() throws Throwable {
        try {
            if (!this.OooO0O0) {
                Log.w(OooO0OO, "Boxa was not terminated using recycle()");
                OooO0o();
            }
        } finally {
            super.finalize();
        }
    }
}
