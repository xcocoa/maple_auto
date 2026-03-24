package com.lidroid.xutils.bitmap.core;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.lidroid.xutils.util.LogUtils;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapDecoder {
    private static final Object lock = new Object();

    private BitmapDecoder() {
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        float f;
        float f2;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i4 <= i && i3 <= i2) {
            return 1;
        }
        if (i4 > i3) {
            f = i3;
            f2 = i2;
        } else {
            f = i4;
            f2 = i;
        }
        int iRound = Math.round(f / f2);
        while ((i4 * i3) / (iRound * iRound) > i * i2 * 2) {
            iRound++;
        }
        return iRound;
    }

    public static Bitmap decodeByteArray(byte[] bArr) {
        Bitmap bitmapDecodeByteArray;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            try {
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeByteArray;
    }

    public static Bitmap decodeFile(String str) {
        Bitmap bitmapDecodeFile;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeFile;
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        Bitmap bitmapDecodeFileDescriptor;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            try {
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeFileDescriptor;
    }

    public static Bitmap decodeResource(Resources resources, int i) {
        Bitmap bitmapDecodeResource;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPurgeable = true;
            options.inInputShareable = true;
            try {
                bitmapDecodeResource = BitmapFactory.decodeResource(resources, i, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeResource;
    }

    public static Bitmap decodeSampledBitmapFromByteArray(byte[] bArr, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap bitmapDecodeByteArray;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            try {
                bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeByteArray;
    }

    public static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor fileDescriptor, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap bitmapDecodeFileDescriptor;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            try {
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeFileDescriptor;
    }

    public static Bitmap decodeSampledBitmapFromFile(String str, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap bitmapDecodeFile;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeFile;
    }

    public static Bitmap decodeSampledBitmapFromResource(Resources resources, int i, BitmapSize bitmapSize, Bitmap.Config config) {
        Bitmap bitmapDecodeResource;
        synchronized (lock) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inPurgeable = true;
            options.inInputShareable = true;
            BitmapFactory.decodeResource(resources, i, options);
            options.inSampleSize = calculateInSampleSize(options, bitmapSize.getWidth(), bitmapSize.getHeight());
            options.inJustDecodeBounds = false;
            if (config != null) {
                options.inPreferredConfig = config;
            }
            try {
                bitmapDecodeResource = BitmapFactory.decodeResource(resources, i, options);
            } catch (Throwable th) {
                LogUtils.e(th.getMessage(), th);
                return null;
            }
        }
        return bitmapDecodeResource;
    }
}
