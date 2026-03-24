package com.bumptech.glide.load.resource.bitmap;

import z2.o0O0OO0;

/* JADX INFO: loaded from: classes.dex */
public abstract class DownsampleStrategy {
    public static final DownsampleStrategy OooO00o = new OooO();
    public static final DownsampleStrategy OooO0O0;
    public static final DownsampleStrategy OooO0OO;
    public static final DownsampleStrategy OooO0Oo;
    public static final DownsampleStrategy OooO0o;
    public static final DownsampleStrategy OooO0o0;
    public static final DownsampleStrategy OooO0oO;
    public static final o0O0OO0<DownsampleStrategy> OooO0oo;

    public static class OooO extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding OooO00o(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float OooO0O0(int i, int i2, int i3, int i4) {
            return Math.min(i3 / i, i4 / i2);
        }
    }

    public static class OooO00o extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding OooO00o(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float OooO0O0(int i, int i2, int i3, int i4) {
            if (Math.min(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    public static class OooO0O0 extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding OooO00o(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float OooO0O0(int i, int i2, int i3, int i4) {
            int iCeil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(iCeil)) >= iCeil ? 0 : 1));
        }
    }

    public static class OooO0OO extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding OooO00o(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float OooO0O0(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, DownsampleStrategy.OooO00o.OooO0O0(i, i2, i3, i4));
        }
    }

    public static class OooO0o extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding OooO00o(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float OooO0O0(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    public static class OooOO0 extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public SampleSizeRounding OooO00o(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public float OooO0O0(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    public enum SampleSizeRounding {
        MEMORY,
        QUALITY
    }

    static {
        OooO0o oooO0o = new OooO0o();
        OooO0O0 = oooO0o;
        OooO0OO = new OooO00o();
        OooO0Oo = new OooO0O0();
        OooO0o0 = new OooO0OO();
        OooO0o = new OooOO0();
        OooO0oO = oooO0o;
        OooO0oo = o0O0OO0.OooO0oO("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", oooO0o);
    }

    public abstract SampleSizeRounding OooO00o(int i, int i2, int i3, int i4);

    public abstract float OooO0O0(int i, int i2, int i3, int i4);
}
