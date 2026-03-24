package z2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class oOOOoo00 {
    public static final o0O0OO0<Boolean> OooO;
    public static final String OooO0o = "Downsampler";
    public static final o0O0OO0<DecodeFormat> OooO0oO = o0O0OO0.OooO0oO("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", DecodeFormat.DEFAULT);

    @Deprecated
    public static final o0O0OO0<DownsampleStrategy> OooO0oo = DownsampleStrategy.OooO0oo;
    public static final o0O0OO0<Boolean> OooOO0;
    private static final String OooOO0O = "image/vnd.wap.wbmp";
    private static final String OooOO0o = "image/x-ico";
    private static final OooO0O0 OooOOO;
    private static final Set<String> OooOOO0;
    private static final Set<ImageHeaderParser.ImageType> OooOOOO;
    private static final Queue<BitmapFactory.Options> OooOOOo;
    private static final int OooOOo0 = 10485760;
    private final oO000o00 OooO00o;
    private final DisplayMetrics OooO0O0;
    private final oO0OOo0o OooO0OO;
    private final List<ImageHeaderParser> OooO0Oo;
    private final oo000000 OooO0o0 = oo000000.OooO00o();

    public class OooO00o implements OooO0O0 {
        @Override // z2.oOOOoo00.OooO0O0
        public void OooO00o(oO000o00 oo000o00, Bitmap bitmap) {
        }

        @Override // z2.oOOOoo00.OooO0O0
        public void OooO0O0() {
        }
    }

    public interface OooO0O0 {
        void OooO00o(oO000o00 oo000o00, Bitmap bitmap) throws IOException;

        void OooO0O0();
    }

    static {
        Boolean bool = Boolean.FALSE;
        OooO = o0O0OO0.OooO0oO("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        OooOO0 = o0O0OO0.OooO0oO("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        OooOOO0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(OooOO0O, OooOO0o)));
        OooOOO = new OooO00o();
        OooOOOO = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        OooOOOo = t2.OooO0o(0);
    }

    public oOOOoo00(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, oO000o00 oo000o00, oO0OOo0o oo0ooo0o) {
        this.OooO0Oo = list;
        this.OooO0O0 = (DisplayMetrics) r2.OooO0Oo(displayMetrics);
        this.OooO00o = (oO000o00) r2.OooO0Oo(oo000o00);
        this.OooO0OO = (oO0OOo0o) r2.OooO0Oo(oo0ooo0o);
    }

    private static synchronized BitmapFactory.Options OooO() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = OooOOOo;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            OooOOoo(optionsPoll);
        }
        return optionsPoll;
    }

    private static int OooO00o(double d) {
        int iOooOO0 = OooOO0(d);
        int iOooOo00 = OooOo00(((double) iOooOO0) * d);
        return OooOo00((d / ((double) (iOooOo00 / iOooOO0))) * ((double) iOooOo00));
    }

    private void OooO0O0(InputStream inputStream, DecodeFormat decodeFormat, boolean z, boolean z3, BitmapFactory.Options options, int i, int i2) {
        if (this.OooO0o0.OooO0OO(i, i2, options, decodeFormat, z, z3)) {
            return;
        }
        if (decodeFormat == DecodeFormat.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        boolean zHasAlpha = false;
        try {
            zHasAlpha = o0O0oo0o.OooO0O0(this.OooO0Oo, inputStream, this.OooO0OO).hasAlpha();
        } catch (IOException e) {
            if (Log.isLoggable(OooO0o, 3)) {
                Log.d(OooO0o, "Cannot determine whether the image has alpha or not from header, format " + decodeFormat, e);
            }
        }
        Bitmap.Config config = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void OooO0OO(ImageHeaderParser.ImageType imageType, InputStream inputStream, OooO0O0 oooO0O0, oO000o00 oo000o00, DownsampleStrategy downsampleStrategy, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) throws IOException {
        int i6;
        int i7;
        int iFloor;
        int iFloor2;
        if (i2 <= 0 || i3 <= 0) {
            if (Log.isLoggable(OooO0o, 3)) {
                Log.d(OooO0o, "Unable to determine dimensions for: " + imageType + " with target [" + i4 + "x" + i5 + "]");
                return;
            }
            return;
        }
        float fOooO0O0 = (i == 90 || i == 270) ? downsampleStrategy.OooO0O0(i3, i2, i4, i5) : downsampleStrategy.OooO0O0(i2, i3, i4, i5);
        if (fOooO0O0 <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + fOooO0O0 + " from: " + downsampleStrategy + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        DownsampleStrategy.SampleSizeRounding sampleSizeRoundingOooO00o = downsampleStrategy.OooO00o(i2, i3, i4, i5);
        if (sampleSizeRoundingOooO00o == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i2;
        float f2 = i3;
        int iOooOo00 = i2 / OooOo00(fOooO0O0 * f);
        int iOooOo002 = i3 / OooOo00(fOooO0O0 * f2);
        DownsampleStrategy.SampleSizeRounding sampleSizeRounding = DownsampleStrategy.SampleSizeRounding.MEMORY;
        int iMax = sampleSizeRoundingOooO00o == sampleSizeRounding ? Math.max(iOooOo00, iOooOo002) : Math.min(iOooOo00, iOooOo002);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 > 23 || !OooOOO0.contains(options.outMimeType)) {
            int iMax2 = Math.max(1, Integer.highestOneBit(iMax));
            i6 = (sampleSizeRoundingOooO00o != sampleSizeRounding || ((float) iMax2) >= 1.0f / fOooO0O0) ? iMax2 : iMax2 << 1;
        } else {
            i6 = 1;
        }
        options.inSampleSize = i6;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(i6, 8);
            i7 = i8;
            iFloor = (int) Math.ceil(f / fMin);
            iFloor2 = (int) Math.ceil(f2 / fMin);
            int i9 = i6 / 8;
            if (i9 > 0) {
                iFloor /= i9;
                iFloor2 /= i9;
            }
        } else {
            i7 = i8;
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f3 = i6;
                iFloor = (int) Math.floor(f / f3);
                iFloor2 = (int) Math.floor(f2 / f3);
            } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                if (i7 >= 24) {
                    float f4 = i6;
                    iFloor = Math.round(f / f4);
                    iFloor2 = Math.round(f2 / f4);
                }
            } else if (i2 % i6 == 0 && i3 % i6 == 0) {
                iFloor = i2 / i6;
                iFloor2 = i3 / i6;
            } else {
                int[] iArrOooOO0O = OooOO0O(inputStream, options, oooO0O0, oo000o00);
                int i10 = iArrOooOO0O[0];
                iFloor2 = iArrOooOO0O[1];
                iFloor = i10;
            }
        }
        double dOooO0O0 = downsampleStrategy.OooO0O0(iFloor, iFloor2, i4, i5);
        if (i7 >= 19) {
            options.inTargetDensity = OooO00o(dOooO0O0);
            options.inDensity = OooOO0(dOooO0O0);
        }
        if (OooOOOO(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(OooO0o, 2)) {
            Log.v(OooO0o, "Calculate scaling, source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "], power of two scaled: [" + iFloor + "x" + iFloor2 + "], exact scale factor: " + fOooO0O0 + ", power of 2 sample size: " + i6 + ", adjusted scale factor: " + dOooO0O0 + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    private Bitmap OooO0o(InputStream inputStream, BitmapFactory.Options options, DownsampleStrategy downsampleStrategy, DecodeFormat decodeFormat, boolean z, int i, int i2, boolean z3, OooO0O0 oooO0O0) throws IOException {
        oOOOoo00 oooooo00;
        int iRound;
        int iRound2;
        int i3;
        long jOooO0O0 = n2.OooO0O0();
        int[] iArrOooOO0O = OooOO0O(inputStream, options, oooO0O0, this.OooO00o);
        int i4 = iArrOooOO0O[0];
        int i5 = iArrOooOO0O[1];
        String str = options.outMimeType;
        boolean z4 = (i4 == -1 || i5 == -1) ? false : z;
        int iOooO00o = o0O0oo0o.OooO00o(this.OooO0Oo, inputStream, this.OooO0OO);
        int iOooOO0 = a.OooOO0(iOooO00o);
        boolean zOooOOO0 = a.OooOOO0(iOooO00o);
        int i6 = i == Integer.MIN_VALUE ? i4 : i;
        int i7 = i2 == Integer.MIN_VALUE ? i5 : i2;
        ImageHeaderParser.ImageType imageTypeOooO0O0 = o0O0oo0o.OooO0O0(this.OooO0Oo, inputStream, this.OooO0OO);
        OooO0OO(imageTypeOooO0O0, inputStream, oooO0O0, this.OooO00o, downsampleStrategy, iOooOO0, i4, i5, i6, i7, options);
        OooO0O0(inputStream, decodeFormat, z4, zOooOOO0, options, i6, i7);
        boolean z5 = Build.VERSION.SDK_INT >= 19;
        if (options.inSampleSize == 1 || z5) {
            oooooo00 = this;
            if (oooooo00.OooOo0O(imageTypeOooO0O0)) {
                if (i4 < 0 || i5 < 0 || !z3 || !z5) {
                    float f = OooOOOO(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                    int i8 = options.inSampleSize;
                    float f2 = i8;
                    int iCeil = (int) Math.ceil(i4 / f2);
                    int iCeil2 = (int) Math.ceil(i5 / f2);
                    iRound = Math.round(iCeil * f);
                    iRound2 = Math.round(iCeil2 * f);
                    if (Log.isLoggable(OooO0o, 2)) {
                        Log.v(OooO0o, "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i4 + "x" + i5 + "], sampleSize: " + i8 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f);
                    }
                } else {
                    iRound = i6;
                    iRound2 = i7;
                }
                if (iRound > 0 && iRound2 > 0) {
                    OooOo0(options, oooooo00.OooO00o, iRound, iRound2);
                }
            }
        } else {
            oooooo00 = this;
        }
        Bitmap bitmapOooO0oO = OooO0oO(inputStream, options, oooO0O0, oooooo00.OooO00o);
        oooO0O0.OooO00o(oooooo00.OooO00o, bitmapOooO0oO);
        if (Log.isLoggable(OooO0o, 2)) {
            i3 = iOooO00o;
            OooOOOo(i4, i5, str, options, bitmapOooO0oO, i, i2, jOooO0O0);
        } else {
            i3 = iOooO00o;
        }
        Bitmap bitmapOooOOOO = null;
        if (bitmapOooO0oO != null) {
            bitmapOooO0oO.setDensity(oooooo00.OooO0O0.densityDpi);
            bitmapOooOOOO = a.OooOOOO(oooooo00.OooO00o, bitmapOooO0oO, i3);
            if (!bitmapOooO0oO.equals(bitmapOooOOOO)) {
                oooooo00.OooO00o.OooO0Oo(bitmapOooO0oO);
            }
        }
        return bitmapOooOOOO;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap OooO0oO(InputStream inputStream, BitmapFactory.Options options, OooO0O0 oooO0O0, oO000o00 oo000o00) throws IOException {
        if (options.inJustDecodeBounds) {
            inputStream.mark(10485760);
        } else {
            oooO0O0.OooO0O0();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        a.OooO().lock();
        try {
            try {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                a.OooO().unlock();
                if (options.inJustDecodeBounds) {
                    inputStream.reset();
                }
                return bitmapDecodeStream;
            } catch (IllegalArgumentException e) {
                IOException iOExceptionOooOOo0 = OooOOo0(e, i, i2, str, options);
                if (Log.isLoggable(OooO0o, 3)) {
                    Log.d(OooO0o, "Failed to decode with inBitmap, trying again without Bitmap re-use", iOExceptionOooOOo0);
                }
                if (options.inBitmap == null) {
                    throw iOExceptionOooOOo0;
                }
                try {
                    inputStream.reset();
                    oo000o00.OooO0Oo(options.inBitmap);
                    options.inBitmap = null;
                    Bitmap bitmapOooO0oO = OooO0oO(inputStream, options, oooO0O0, oo000o00);
                    a.OooO().unlock();
                    return bitmapOooO0oO;
                } catch (IOException unused) {
                    throw iOExceptionOooOOo0;
                }
            }
        } catch (Throwable th) {
            a.OooO().unlock();
            throw th;
        }
    }

    @Nullable
    @TargetApi(19)
    private static String OooO0oo(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    private static int OooOO0(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    private static int[] OooOO0O(InputStream inputStream, BitmapFactory.Options options, OooO0O0 oooO0O0, oO000o00 oo000o00) throws IOException {
        options.inJustDecodeBounds = true;
        OooO0oO(inputStream, options, oooO0O0, oo000o00);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static String OooOO0o(BitmapFactory.Options options) {
        return OooO0oo(options.inBitmap);
    }

    private static boolean OooOOOO(BitmapFactory.Options options) {
        int i;
        int i2 = options.inTargetDensity;
        return i2 > 0 && (i = options.inDensity) > 0 && i2 != i;
    }

    private static void OooOOOo(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        Log.v(OooO0o, "Decoded " + OooO0oo(bitmap) + " from [" + i + "x" + i2 + "] " + str + " with inBitmap " + OooOO0o(options) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + n2.OooO00o(j));
    }

    private static void OooOOo(BitmapFactory.Options options) {
        OooOOoo(options);
        Queue<BitmapFactory.Options> queue = OooOOOo;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    private static IOException OooOOo0(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + OooOO0o(options), illegalArgumentException);
    }

    private static void OooOOoo(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    @TargetApi(26)
    private static void OooOo0(BitmapFactory.Options options, oO000o00 oo000o00, int i, int i2) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = oo000o00.OooO0oO(i, i2, config);
    }

    private static int OooOo00(double d) {
        return (int) (d + 0.5d);
    }

    private boolean OooOo0O(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return OooOOOO.contains(imageType);
    }

    public oO0Ooooo<Bitmap> OooO0Oo(InputStream inputStream, int i, int i2, o0O0OOO0 o0o0ooo0) throws IOException {
        return OooO0o0(inputStream, i, i2, o0o0ooo0, OooOOO);
    }

    public oO0Ooooo<Bitmap> OooO0o0(InputStream inputStream, int i, int i2, o0O0OOO0 o0o0ooo0, OooO0O0 oooO0O0) throws IOException {
        r2.OooO00o(inputStream.markSupported(), "You must provide an InputStream that supports mark()");
        byte[] bArr = (byte[]) this.OooO0OO.OooO0o0(65536, byte[].class);
        BitmapFactory.Options optionsOooO = OooO();
        optionsOooO.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) o0o0ooo0.OooO0OO(OooO0oO);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) o0o0ooo0.OooO0OO(DownsampleStrategy.OooO0oo);
        boolean zBooleanValue = ((Boolean) o0o0ooo0.OooO0OO(OooO)).booleanValue();
        o0O0OO0<Boolean> o0o0oo0 = OooOO0;
        try {
            return oOO.OooO0Oo(OooO0o(inputStream, optionsOooO, downsampleStrategy, decodeFormat, o0o0ooo0.OooO0OO(o0o0oo0) != null && ((Boolean) o0o0ooo0.OooO0OO(o0o0oo0)).booleanValue(), i, i2, zBooleanValue, oooO0O0), this.OooO00o);
        } finally {
            OooOOo(optionsOooO);
            this.OooO0OO.put(bArr);
        }
    }

    public boolean OooOOO(ByteBuffer byteBuffer) {
        return true;
    }

    public boolean OooOOO0(InputStream inputStream) {
        return true;
    }
}
