package com.googlecode.leptonica.android;

import android.graphics.Rect;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class Pixa implements Iterable<Pix> {
    private static final String OooooO0;
    public final long OoooOoO;
    public final int OoooOoo;
    public final int Ooooo00;
    public boolean Ooooo0o = false;

    public class OooO0O0 implements Iterator<Pix> {
        private int OoooOoO;

        private OooO0O0() {
            this.OoooOoO = 0;
        }

        public /* synthetic */ OooO0O0(Pixa pixa, byte b) {
            this();
        }

        private Pix OooO00o() {
            Pixa pixa = Pixa.this;
            int i = this.OoooOoO;
            this.OoooOoO = i + 1;
            if (pixa.Ooooo0o) {
                throw new IllegalStateException();
            }
            long jNativeGetPix = Pixa.nativeGetPix(pixa.OoooOoO, i);
            if (jNativeGetPix == 0) {
                return null;
            }
            return new Pix(jNativeGetPix);
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Pixa pixa = Pixa.this;
            if (pixa.Ooooo0o) {
                throw new IllegalStateException();
            }
            int iNativeGetCount = Pixa.nativeGetCount(pixa.OoooOoO);
            return iNativeGetCount > 0 && this.OoooOoO < iNativeGetCount;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Pix next() {
            Pixa pixa = Pixa.this;
            int i = this.OoooOoO;
            this.OoooOoO = i + 1;
            if (pixa.Ooooo0o) {
                throw new IllegalStateException();
            }
            long jNativeGetPix = Pixa.nativeGetPix(pixa.OoooOoO, i);
            if (jNativeGetPix == 0) {
                return null;
            }
            return new Pix(jNativeGetPix);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        OooooO0 = Pixa.class.getSimpleName();
    }

    public Pixa(long j, int i, int i2) {
        this.OoooOoO = j;
        this.OoooOoo = i;
        this.Ooooo00 = i2;
    }

    private boolean OooO(Pixa pixa) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return nativeJoin(this.OoooOoO, pixa.OoooOoO);
    }

    private long OooO00o() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return this.OoooOoO;
    }

    private static Pixa OooO0O0(int i) {
        long jNativeCreate = nativeCreate(i);
        if (jNativeCreate != 0) {
            return new Pixa(jNativeCreate, 0, 0);
        }
        throw new OutOfMemoryError();
    }

    private Pixa OooO0OO(int i, int i2) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        int iNativeSort = nativeSort(this.OoooOoO, i, i2);
        if (iNativeSort != 0) {
            return new Pixa(iNativeSort, this.OoooOoo, this.Ooooo00);
        }
        throw new OutOfMemoryError();
    }

    private void OooO0Oo(int i, Pix pix, Box box) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        nativeReplacePix(this.OoooOoO, i, pix.OooO0O0(), box.OooO00o());
    }

    private void OooO0o(Pix pix, int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        nativeAddPix(this.OoooOoO, pix.OooO0O0(), i);
    }

    private void OooO0o0(Box box, int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        nativeAddBox(this.OoooOoO, box.OooO00o(), i);
    }

    private void OooO0oO(Pix pix, Box box, int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        nativeAdd(this.OoooOoO, pix.OooO0O0(), box.OooO00o(), i);
    }

    private boolean OooO0oo(int i, int[] iArr) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return nativeGetBoxGeometry(this.OoooOoO, i, iArr);
    }

    private boolean OooOO0(File file) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return nativeWriteToFileRandomCmap(this.OoooOoO, file.getAbsolutePath(), this.OoooOoo, this.Ooooo00);
    }

    private Pixa OooOO0O() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        int iNativeCopy = nativeCopy(this.OoooOoO);
        if (iNativeCopy != 0) {
            return new Pixa(iNativeCopy, this.OoooOoo, this.Ooooo00);
        }
        throw new OutOfMemoryError();
    }

    private static Pixa OooOO0o(int i) {
        long jNativeCreate = nativeCreate(i);
        if (jNativeCreate != 0) {
            return new Pixa(jNativeCreate, 0, 0);
        }
        throw new OutOfMemoryError();
    }

    private int OooOOO() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return nativeGetCount(this.OoooOoO);
    }

    private void OooOOO0(int i, int i2) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        nativeMergeAndReplacePix(this.OoooOoO, i, i2);
    }

    private Box OooOOOO(int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        long jNativeGetBox = nativeGetBox(this.OoooOoO, i);
        if (jNativeGetBox == 0) {
            return null;
        }
        return new Box(jNativeGetBox);
    }

    private Pix OooOOOo(int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        long jNativeGetPix = nativeGetPix(this.OoooOoO, i);
        if (jNativeGetPix == 0) {
            return null;
        }
        return new Pix(jNativeGetPix);
    }

    private int OooOOo() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return this.OoooOoo;
    }

    private synchronized void OooOOo0() {
        if (!this.Ooooo0o) {
            nativeDestroy(this.OoooOoO);
            this.Ooooo0o = true;
        }
    }

    private int[] OooOOoo(int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (OooO0oo(i, iArr)) {
            return iArr;
        }
        return null;
    }

    private Rect OooOo0(int i) {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[4];
        if (!OooO0oo(i, iArr)) {
            iArr = null;
        }
        if (iArr == null) {
            return null;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        return new Rect(i2, i3, iArr[2] + i2, iArr[3] + i3);
    }

    private int OooOo00() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return this.Ooooo00;
    }

    private Rect OooOo0O() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        return new Rect(0, 0, this.OoooOoo, this.Ooooo00);
    }

    private ArrayList<Rect> OooOo0o() {
        if (this.Ooooo0o) {
            throw new IllegalStateException();
        }
        int iNativeGetCount = nativeGetCount(this.OoooOoO);
        int[] iArr = new int[4];
        ArrayList<Rect> arrayList = new ArrayList<>(iNativeGetCount);
        for (int i = 0; i < iNativeGetCount; i++) {
            OooO0oo(i, iArr);
            int i2 = iArr[0];
            int i3 = iArr[1];
            arrayList.add(new Rect(i2, i3, iArr[2] + i2, iArr[3] + i3));
        }
        return arrayList;
    }

    private static native void nativeAdd(long j, long j2, long j3, int i);

    private static native void nativeAddBox(long j, long j2, int i);

    private static native void nativeAddPix(long j, long j2, int i);

    private static native int nativeCopy(long j);

    private static native int nativeCreate(int i);

    private static native void nativeDestroy(long j);

    private static native long nativeGetBox(long j, int i);

    private static native boolean nativeGetBoxGeometry(long j, int i, int[] iArr);

    public static native int nativeGetCount(long j);

    public static native long nativeGetPix(long j, int i);

    private static native boolean nativeJoin(long j, long j2);

    private static native void nativeMergeAndReplacePix(long j, int i, int i2);

    private static native void nativeReplacePix(long j, int i, long j2, long j3);

    private static native int nativeSort(long j, int i, int i2);

    private static native boolean nativeWriteToFileRandomCmap(long j, String str, int i, int i2);

    public void finalize() throws Throwable {
        try {
            if (!this.Ooooo0o) {
                Log.w(OooooO0, "Pixa was not terminated using recycle()");
                OooOOo0();
            }
        } finally {
            super.finalize();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Pix> iterator() {
        return new OooO0O0(this, (byte) 0);
    }
}
