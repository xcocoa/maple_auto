package com.googlecode.leptonica.android;

/* JADX INFO: loaded from: classes2.dex */
public class Edge {
    public static final int OooO00o = 0;
    public static final int OooO0O0 = 1;
    public static final int OooO0OO = 2;

    static {
        System.loadLibrary("jpgt");
        System.loadLibrary("pngt");
        System.loadLibrary("lept");
    }

    private static Pix OooO00o(Pix pix, int i) {
        if (pix == null) {
            throw new IllegalArgumentException("Source pix must be non-null");
        }
        if (pix.OooO() != 8) {
            throw new IllegalArgumentException("Source pix depth must be 8bpp");
        }
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("Invalid orientation flag");
        }
        long jNativePixSobelEdgeFilter = nativePixSobelEdgeFilter(pix.OooO0O0(), i);
        if (jNativePixSobelEdgeFilter != 0) {
            return new Pix(jNativePixSobelEdgeFilter);
        }
        throw new RuntimeException("Failed to perform Sobel edge filter on image");
    }

    private static native long nativePixSobelEdgeFilter(long j, int i);
}
