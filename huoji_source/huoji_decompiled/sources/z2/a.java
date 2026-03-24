package z2;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final String OooO00o = "TransformationUtils";
    public static final int OooO0O0 = 6;
    private static final int OooO0Oo = 7;
    private static final Paint OooO0o;
    private static final Set<String> OooO0oO;
    private static final Lock OooO0oo;
    private static final Paint OooO0OO = new Paint(6);
    private static final Paint OooO0o0 = new Paint(7);

    public static final class OooO00o implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        OooO0oO = hashSet;
        OooO0oo = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new OooO00o();
        Paint paint = new Paint(7);
        OooO0o = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private a() {
    }

    public static Lock OooO() {
        return OooO0oo;
    }

    private static void OooO00o(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        Lock lock = OooO0oo;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, OooO0OO);
            OooO0o0(canvas);
            lock.unlock();
        } catch (Throwable th) {
            OooO0oo.unlock();
            throw th;
        }
    }

    public static Bitmap OooO0O0(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            width2 = (i - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i / bitmap.getWidth();
            height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapOooO0o = oo000o00.OooO0o(i, i2, OooOO0O(bitmap));
        OooOOo(bitmap, bitmapOooO0o);
        OooO00o(bitmap, bitmapOooO0o, matrix);
        return bitmapOooO0o;
    }

    public static Bitmap OooO0OO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable(OooO00o, 2)) {
                Log.v(OooO00o, "requested target size too big for input, fit centering instead");
            }
            return OooO0o(oo000o00, bitmap, i, i2);
        }
        if (Log.isLoggable(OooO00o, 2)) {
            Log.v(OooO00o, "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    public static Bitmap OooO0Oo(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        int iMin = Math.min(i, i2);
        float f = iMin;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMax = Math.max(f / width, f / height);
        float f3 = width * fMax;
        float f4 = fMax * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap bitmapOooO0oO = OooO0oO(oo000o00, bitmap);
        Bitmap bitmapOooO0o = oo000o00.OooO0o(iMin, iMin, OooO0oo(bitmap));
        bitmapOooO0o.setHasAlpha(true);
        Lock lock = OooO0oo;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapOooO0o);
            canvas.drawCircle(f2, f2, f2, OooO0o0);
            canvas.drawBitmap(bitmapOooO0oO, (Rect) null, rectF, OooO0o);
            OooO0o0(canvas);
            lock.unlock();
            if (!bitmapOooO0oO.equals(bitmap)) {
                oo000o00.OooO0Oo(bitmapOooO0oO);
            }
            return bitmapOooO0o;
        } catch (Throwable th) {
            OooO0oo.unlock();
            throw th;
        }
    }

    public static Bitmap OooO0o(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable(OooO00o, 2)) {
                Log.v(OooO00o, "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float fMin = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int iRound = Math.round(bitmap.getWidth() * fMin);
        int iRound2 = Math.round(bitmap.getHeight() * fMin);
        if (bitmap.getWidth() == iRound && bitmap.getHeight() == iRound2) {
            if (Log.isLoggable(OooO00o, 2)) {
                Log.v(OooO00o, "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap bitmapOooO0o = oo000o00.OooO0o((int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), OooOO0O(bitmap));
        OooOOo(bitmap, bitmapOooO0o);
        if (Log.isLoggable(OooO00o, 2)) {
            Log.v(OooO00o, "request: " + i + "x" + i2);
            Log.v(OooO00o, "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v(OooO00o, "toReuse: " + bitmapOooO0o.getWidth() + "x" + bitmapOooO0o.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append("minPct:   ");
            sb.append(fMin);
            Log.v(OooO00o, sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(fMin, fMin);
        OooO00o(bitmap, bitmapOooO0o, matrix);
        return bitmapOooO0o;
    }

    private static void OooO0o0(Canvas canvas) {
        canvas.setBitmap(null);
    }

    private static Bitmap OooO0oO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap) {
        Bitmap.Config configOooO0oo = OooO0oo(bitmap);
        if (configOooO0oo.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap bitmapOooO0o = oo000o00.OooO0o(bitmap.getWidth(), bitmap.getHeight(), configOooO0oo);
        new Canvas(bitmapOooO0o).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return bitmapOooO0o;
    }

    @NonNull
    private static Bitmap.Config OooO0oo(@NonNull Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    public static int OooOO0(int i) {
        switch (i) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return SubsamplingScaleImageView.ORIENTATION_270;
            default:
                return 0;
        }
    }

    @NonNull
    private static Bitmap.Config OooOO0O(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    public static void OooOO0o(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
        matrix.postScale(-1.0f, 1.0f);
    }

    public static Bitmap OooOOO(@NonNull Bitmap bitmap, int i) {
        if (i == 0) {
            return bitmap;
        }
        try {
            Matrix matrix = new Matrix();
            matrix.setRotate(i);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (Exception e) {
            if (!Log.isLoggable(OooO00o, 6)) {
                return bitmap;
            }
            Log.e(OooO00o, "Exception when trying to orient image", e);
            return bitmap;
        }
    }

    public static boolean OooOOO0(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap OooOOOO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i) {
        if (!OooOOO0(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        OooOO0o(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap bitmapOooO0o = oo000o00.OooO0o(Math.round(rectF.width()), Math.round(rectF.height()), OooOO0O(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        bitmapOooO0o.setHasAlpha(bitmap.hasAlpha());
        OooO00o(bitmap, bitmapOooO0o, matrix);
        return bitmapOooO0o;
    }

    public static Bitmap OooOOOo(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i) {
        r2.OooO00o(i > 0, "roundingRadius must be greater than 0.");
        Bitmap.Config configOooO0oo = OooO0oo(bitmap);
        Bitmap bitmapOooO0oO = OooO0oO(oo000o00, bitmap);
        Bitmap bitmapOooO0o = oo000o00.OooO0o(bitmapOooO0oO.getWidth(), bitmapOooO0oO.getHeight(), configOooO0oo);
        bitmapOooO0o.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmapOooO0oO, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, bitmapOooO0o.getWidth(), bitmapOooO0o.getHeight());
        Lock lock = OooO0oo;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapOooO0o);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f = i;
            canvas.drawRoundRect(rectF, f, f, paint);
            OooO0o0(canvas);
            lock.unlock();
            if (!bitmapOooO0oO.equals(bitmap)) {
                oo000o00.OooO0Oo(bitmapOooO0oO);
            }
            return bitmapOooO0o;
        } catch (Throwable th) {
            OooO0oo.unlock();
            throw th;
        }
    }

    public static void OooOOo(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    @Deprecated
    public static Bitmap OooOOo0(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2, int i3) {
        return OooOOOo(oo000o00, bitmap, i3);
    }
}
