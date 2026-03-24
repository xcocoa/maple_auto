package com.googlecode.leptonica.android;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class JpegIO {
    public static final int OooO00o = 85;
    public static final boolean OooO0O0 = false;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static byte[] OooO00o(Pix pix) {
        return OooO0O0(pix);
    }

    private static byte[] OooO0O0(Pix pix) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Bitmap bitmapOooO0O0 = WriteFile.OooO0O0(pix);
        bitmapOooO0O0.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
        bitmapOooO0O0.recycle();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArray;
    }

    private static native byte[] nativeCompressToJpeg(long j, int i, boolean z);
}
