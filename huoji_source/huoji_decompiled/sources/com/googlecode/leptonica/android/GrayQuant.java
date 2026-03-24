package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class GrayQuant {
    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        int iOooO = pix.OooO();
        if (iOooO != 4 && iOooO != 8) {
            throw new IllegalArgumentException("Source pix depth must be 4 or 8 bpp");
        }
        if (iOooO == 4 && i > 16) {
            throw new IllegalArgumentException("4 bpp thresh not in {0-16}");
        }
        if (iOooO == 8 && i > 256) {
            throw new IllegalArgumentException("8 bpp thresh not in {0-256}");
        }
        long jNativePixThresholdToBinary = nativePixThresholdToBinary(pix.OooO0O0(), i);
        if (jNativePixThresholdToBinary != 0) {
            return new Pix(jNativePixThresholdToBinary);
        }
        throw new RuntimeException("Failed to perform binarization");
    }

    private static native long nativePixThresholdToBinary(long j, int i);
}
