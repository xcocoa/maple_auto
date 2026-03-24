package com.googlecode.leptonica.android;

import android.graphics.Bitmap;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class WriteFile {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static int OooO00o(Pix pix, byte[] bArr) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (bArr.length >= pix.OooO0oO() * pix.OooO0oo()) {
            return nativeWriteBytes8(pix.OooO0O0(), bArr);
        }
        throw new IllegalArgumentException("Data array must be large enough to hold image bytes");
    }

    public static Bitmap OooO0O0(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        boolean z = pix.OooO0O0;
        if (z) {
            throw new IllegalStateException();
        }
        int[] iArr = new int[3];
        if (z) {
            throw new IllegalStateException();
        }
        if (!Pix.nativeGetDimensions(pix.OooO00o, iArr)) {
            iArr = null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr[0], iArr[1], Bitmap.Config.ARGB_8888);
        if (nativeWriteBitmap(pix.OooO0O0(), bitmapCreateBitmap)) {
            return bitmapCreateBitmap;
        }
        bitmapCreateBitmap.recycle();
        return null;
    }

    private static boolean OooO0OO(Pix pix, File file) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (file != null) {
            return nativeWriteImpliedFormat(pix.OooO0O0(), file.getAbsolutePath());
        }
        throw new IllegalArgumentException("File must be non-null");
    }

    private static byte[] OooO0Oo(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        byte[] bArr = new byte[pix.OooO0oO() * pix.OooO0oo()];
        if (pix.OooO() != 8) {
            Pix pixOooO00o = Convert.OooO00o(pix);
            OooO00o(pixOooO00o, bArr);
            pixOooO00o.OooO0o();
        } else {
            OooO00o(pix, bArr);
        }
        return bArr;
    }

    private static native boolean nativeWriteBitmap(long j, Bitmap bitmap);

    private static native int nativeWriteBytes8(long j, byte[] bArr);

    private static native boolean nativeWriteImpliedFormat(long j, String str);
}
