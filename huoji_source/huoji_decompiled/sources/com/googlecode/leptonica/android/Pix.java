package com.googlecode.leptonica.android;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class Pix {
    public static final int OooO0OO = 0;
    public static final int OooO0Oo = 1;
    public static final int OooO0o0 = 2;
    public final long OooO00o;
    public boolean OooO0O0;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private Pix(int i, int i2, int i3) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Pix width and height must be > 0");
        }
        if (i3 != 1 && i3 != 2 && i3 != 4 && i3 != 8 && i3 != 16 && i3 != 24 && i3 != 32) {
            throw new IllegalArgumentException("Depth must be one of 1, 2, 4, 8, 16, or 32");
        }
        this.OooO00o = nativeCreatePix(i, i2, i3);
        this.OooO0O0 = false;
    }

    public Pix(long j) {
        this.OooO00o = j;
        this.OooO0O0 = false;
    }

    private int OooO00o(int i, int i2) {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        if (i < 0 || i >= OooO0oO()) {
            throw new IllegalArgumentException("Supplied x coordinate exceeds image bounds");
        }
        if (i2 < 0 || i2 >= OooO0oo()) {
            throw new IllegalArgumentException("Supplied y coordinate exceeds image bounds");
        }
        return nativeGetPixel(this.OooO00o, i, i2);
    }

    private static Pix OooO0OO(byte[] bArr, int i, int i2, int i3) {
        long jNativeCreateFromData = nativeCreateFromData(bArr, i, i2, i3);
        if (jNativeCreateFromData != 0) {
            return new Pix(jNativeCreateFromData);
        }
        throw new OutOfMemoryError();
    }

    private void OooO0Oo(int i, int i2, int i3) {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        if (i < 0 || i >= OooO0oO()) {
            throw new IllegalArgumentException("Supplied x coordinate exceeds image bounds");
        }
        if (i2 < 0 || i2 >= OooO0oo()) {
            throw new IllegalArgumentException("Supplied y coordinate exceeds image bounds");
        }
        nativeSetPixel(this.OooO00o, i, i2, i3);
    }

    private boolean OooO0o0(int[] iArr) {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetDimensions(this.OooO00o, iArr);
    }

    private byte[] OooOO0() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        byte[] bArrNativeGetData = nativeGetData(this.OooO00o);
        if (bArrNativeGetData != null) {
            return bArrNativeGetData;
        }
        throw new RuntimeException("native getData failed");
    }

    private int[] OooOO0O() {
        boolean z = this.OooO0O0;
        if (z) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[3];
        if (z) {
            throw new IllegalStateException();
        }
        if (nativeGetDimensions(this.OooO00o, iArr)) {
            return iArr;
        }
        return null;
    }

    private Pix OooOO0o() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        long jNativeClone = nativeClone(this.OooO00o);
        if (jNativeClone != 0) {
            return new Pix(jNativeClone);
        }
        throw new OutOfMemoryError();
    }

    private boolean OooOOO() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeInvert(this.OooO00o);
    }

    private Pix OooOOO0() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        long jNativeCopy = nativeCopy(this.OooO00o);
        if (jNativeCopy != 0) {
            return new Pix(jNativeCopy);
        }
        throw new OutOfMemoryError();
    }

    private Rect OooOOOO() {
        return new Rect(0, 0, OooO0oO(), OooO0oo());
    }

    private int OooOOOo() {
        return nativeGetRefCount(this.OooO00o);
    }

    private static native long nativeClone(long j);

    private static native long nativeCopy(long j);

    private static native long nativeCreateFromData(byte[] bArr, int i, int i2, int i3);

    private static native long nativeCreatePix(int i, int i2, int i3);

    private static native void nativeDestroy(long j);

    private static native byte[] nativeGetData(long j);

    private static native int nativeGetDepth(long j);

    public static native boolean nativeGetDimensions(long j, int[] iArr);

    private static native int nativeGetHeight(long j);

    private static native int nativeGetPixel(long j, int i, int i2);

    private static native int nativeGetRefCount(long j);

    private static native int nativeGetWidth(long j);

    private static native boolean nativeInvert(long j);

    private static native void nativeSetPixel(long j, int i, int i2, int i3);

    public final int OooO() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetDepth(this.OooO00o);
    }

    public final long OooO0O0() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return this.OooO00o;
    }

    public final void OooO0o() {
        if (this.OooO0O0) {
            return;
        }
        nativeDestroy(this.OooO00o);
        this.OooO0O0 = true;
    }

    public final int OooO0oO() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetWidth(this.OooO00o);
    }

    public final int OooO0oo() {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        return nativeGetHeight(this.OooO00o);
    }

    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        if (this.OooO0O0) {
            throw new IllegalStateException();
        }
        long jNativeClone = nativeClone(this.OooO00o);
        if (jNativeClone != 0) {
            return new Pix(jNativeClone);
        }
        throw new OutOfMemoryError();
    }
}
