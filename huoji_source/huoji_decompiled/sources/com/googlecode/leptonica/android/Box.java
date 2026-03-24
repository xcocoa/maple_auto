package com.googlecode.leptonica.android;

import android.graphics.Rect;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class Box {
    private static final String OooO0OO;
    public static final int OooO0Oo = 0;
    public static final int OooO0o = 2;
    public static final int OooO0o0 = 1;
    public static final int OooO0oO = 3;
    private final long OooO00o;
    private boolean OooO0O0;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        OooO0OO = Box.class.getSimpleName();
    }

    private Box(int i, int i2, int i3, int i4) {
        this.OooO0O0 = false;
        if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
            throw new IllegalArgumentException("All box dimensions must be non-negative");
        }
        long jNativeCreate = nativeCreate(i, i2, i3, i4);
        if (jNativeCreate == 0) {
            throw new OutOfMemoryError();
        }
        this.OooO00o = jNativeCreate;
        this.OooO0O0 = false;
    }

    public Box(long j) {
        this.OooO0O0 = false;
        this.OooO00o = j;
        this.OooO0O0 = false;
    }

    private void OooO() {
        if (this.OooO0O0) {
            return;
        }
        nativeDestroy(this.OooO00o);
        this.OooO0O0 = true;
    }

    private boolean OooO0O0(int[] iArr) {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetGeometry(this.OooO00o, iArr);
    }

    private int OooO0OO() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetX(this.OooO00o);
    }

    private int OooO0Oo() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetY(this.OooO00o);
    }

    private int OooO0o() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetHeight(this.OooO00o);
    }

    private int OooO0o0() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetWidth(this.OooO00o);
    }

    private Rect OooO0oO() {
        int[] iArr = new int[4];
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        if (!nativeGetGeometry(this.OooO00o, iArr)) {
            iArr = null;
        }
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, iArr[2] + i, iArr[3] + i2);
    }

    private int[] OooO0oo() {
        int[] iArr = new int[4];
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        if (nativeGetGeometry(this.OooO00o, iArr)) {
            return iArr;
        }
        return null;
    }

    private static native long nativeCreate(int i, int i2, int i3, int i4);

    private static native void nativeDestroy(long j);

    private static native boolean nativeGetGeometry(long j, int[] iArr);

    private static native int nativeGetHeight(long j);

    private static native int nativeGetWidth(long j);

    private static native int nativeGetX(long j);

    private static native int nativeGetY(long j);

    public final long OooO00o() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return this.OooO00o;
    }

    public void finalize() throws Throwable {
        try {
            if (!this.OooO0O0) {
                Log.w(OooO0OO, "Box was not terminated using recycle()");
                if (!this.OooO0O0) {
                    nativeDestroy(this.OooO00o);
                    this.OooO0O0 = true;
                }
            }
        } finally {
            super.finalize();
        }
    }
}
