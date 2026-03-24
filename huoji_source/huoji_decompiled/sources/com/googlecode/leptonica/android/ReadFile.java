package com.googlecode.leptonica.android;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class ReadFile {
    private static final String OooO00o;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
        OooO00o = ReadFile.class.getSimpleName();
    }

    public static Pix OooO00o(Bitmap bitmap) {
        String str;
        String str2;
        if (bitmap == null) {
            str = OooO00o;
            str2 = "Bitmap must be non-null";
        } else if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            str = OooO00o;
            str2 = "Bitmap config must be ARGB_8888";
        } else {
            long jNativeReadBitmap = nativeReadBitmap(bitmap);
            if (jNativeReadBitmap != 0) {
                return new Pix(jNativeReadBitmap);
            }
            str = OooO00o;
            str2 = "Failed to read pix from bitmap";
        }
        Log.e(str, str2);
        return null;
    }

    public static Pix OooO0O0(File file) {
        if (file == null) {
            Log.e(OooO00o, "File must be non-null");
            return null;
        }
        if (!file.exists()) {
            Log.e(OooO00o, "File does not exist");
            return null;
        }
        if (!file.canRead()) {
            Log.e(OooO00o, "Cannot read file");
            return null;
        }
        long jNativeReadFile = nativeReadFile(file.getAbsolutePath());
        if (jNativeReadFile != 0) {
            return new Pix(jNativeReadFile);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        if (bitmapDecodeFile == null) {
            Log.e(OooO00o, "Cannot decode bitmap");
            return null;
        }
        Pix pixOooO00o = OooO00o(bitmapDecodeFile);
        bitmapDecodeFile.recycle();
        return pixOooO00o;
    }

    private static Pix OooO0OO(byte[] bArr) {
        if (bArr == null) {
            Log.e(OooO00o, "Image data byte array must be non-null");
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        Pix pixOooO00o = OooO00o(bitmapDecodeByteArray);
        bitmapDecodeByteArray.recycle();
        return pixOooO00o;
    }

    private static Pix OooO0Oo(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("Byte array must be non-null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Image width must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("Image height must be greater than 0");
        }
        if (bArr.length < i * i2) {
            throw new IllegalArgumentException("Array length does not match dimensions");
        }
        long jNativeReadBytes8 = nativeReadBytes8(bArr, i, i2);
        if (jNativeReadBytes8 != 0) {
            return new Pix(jNativeReadBytes8);
        }
        throw new RuntimeException("Failed to read pix from memory");
    }

    private static boolean OooO0o0(Pix pix, byte[] bArr, int i, int i2) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (bArr == null) {
            throw new IllegalArgumentException("Byte array must be non-null");
        }
        if (i <= 0) {
            throw new IllegalArgumentException("Image width must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("Image height must be greater than 0");
        }
        if (bArr.length < i * i2) {
            throw new IllegalArgumentException("Array length does not match dimensions");
        }
        if (pix.OooO0oO() != i) {
            throw new IllegalArgumentException("Source pix width does not match image width");
        }
        if (pix.OooO0oo() == i2) {
            return nativeReplaceBytes8(pix.OooO0O0(), bArr, i, i2);
        }
        throw new IllegalArgumentException("Source pix height does not match image height");
    }

    private static native long nativeReadBitmap(Bitmap bitmap);

    private static native long nativeReadBytes8(byte[] bArr, int i, int i2);

    private static native long nativeReadFile(String str);

    private static native long nativeReadMem(byte[] bArr, int i);

    private static native boolean nativeReplaceBytes8(long j, byte[] bArr, int i, int i2);
}
