package com.cyjh.common.util.toast;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import z2.u5;
import z2.w5;

/* JADX INFO: loaded from: classes.dex */
public final class ImageUtils {

    public enum ImageType {
        TYPE_JPG("jpg"),
        TYPE_PNG("png"),
        TYPE_GIF("gif"),
        TYPE_TIFF("tiff"),
        TYPE_BMP("bmp"),
        TYPE_WEBP("webp"),
        TYPE_ICO("ico"),
        TYPE_UNKNOWN("unknown");

        public String value;

        ImageType(String str) {
            this.value = str;
        }

        public String getValue() {
            return this.value;
        }
    }

    private ImageUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Bitmap OooO(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3) {
        return OooOO0(bitmap, bitmap2, i, i2, i3, false);
    }

    private static Bitmap OooO00o(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, boolean z, float f2, boolean z3) {
        return OooO0O0(bitmap, f, i, z, new float[]{f2, f2, f2, f2, f2, f2, f2, f2}, z3);
    }

    private static Bitmap OooO0O0(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, boolean z, float[] fArr, boolean z3) {
        if (OooooOo(bitmap)) {
            return null;
        }
        if (!z3) {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(1);
        paint.setColor(i);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(f);
        if (z) {
            canvas.drawCircle(width / 2.0f, height / 2.0f, (Math.min(width, height) / 2.0f) - (f / 2.0f), paint);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            float f2 = f / 2.0f;
            rectF.inset(f2, f2);
            Path path = new Path();
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
            canvas.drawPath(path, paint);
        }
        return bitmap;
    }

    public static Bitmap OooO0OO(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i) {
        return OooO00o(bitmap, f, i, true, 0.0f, false);
    }

    public static Bitmap OooO0Oo(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, boolean z) {
        return OooO00o(bitmap, f, i, true, 0.0f, z);
    }

    public static Bitmap OooO0o(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, @FloatRange(from = 0.0d) float f2, boolean z) {
        return OooO00o(bitmap, f, i, false, f2, z);
    }

    public static Bitmap OooO0o0(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, @FloatRange(from = 0.0d) float f2) {
        return OooO00o(bitmap, f, i, false, f2, false);
    }

    public static Bitmap OooO0oO(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, float[] fArr) {
        return OooO0O0(bitmap, f, i, false, fArr, false);
    }

    public static Bitmap OooO0oo(Bitmap bitmap, @FloatRange(from = 1.0d) float f, @ColorInt int i, float[] fArr, boolean z) {
        return OooO0O0(bitmap, f, i, false, fArr, z);
    }

    public static Bitmap OooOO0(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig(), true);
        if (!OooooOo(bitmap2)) {
            Paint paint = new Paint(1);
            Canvas canvas = new Canvas(bitmapCopy);
            paint.setAlpha(i3);
            canvas.drawBitmap(bitmap2, i, i2, paint);
        }
        if (z && !bitmap.isRecycled() && bitmapCopy != bitmap) {
            bitmap.recycle();
        }
        return bitmapCopy;
    }

    public static Bitmap OooOO0O(Bitmap bitmap, int i) {
        return OooOO0o(bitmap, i, false);
    }

    public static Bitmap OooOO0o(Bitmap bitmap, int i, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.preScale(1.0f, -1.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, height - i, width, i, matrix, false);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width, height + i, bitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        float f = height + 0;
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, f, (Paint) null);
        Paint paint = new Paint(1);
        paint.setShader(new LinearGradient(0.0f, height, 0.0f, bitmapCreateBitmap2.getHeight() + 0, 1895825407, ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.MIRROR));
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        canvas.drawRect(0.0f, f, width, bitmapCreateBitmap2.getHeight(), paint);
        if (!bitmapCreateBitmap.isRecycled()) {
            bitmapCreateBitmap.recycle();
        }
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap2 != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap2;
    }

    public static Bitmap OooOOO(Bitmap bitmap, String str, int i, @ColorInt int i2, float f, float f2) {
        return OooOOO0(bitmap, str, i, i2, f, f2, false);
    }

    public static Bitmap OooOOO0(Bitmap bitmap, String str, float f, @ColorInt int i, float f2, float f3, boolean z) {
        if (OooooOo(bitmap) || str == null) {
            return null;
        }
        Bitmap bitmapCopy = bitmap.copy(bitmap.getConfig(), true);
        Paint paint = new Paint(1);
        Canvas canvas = new Canvas(bitmapCopy);
        paint.setColor(i);
        paint.setTextSize(f);
        paint.getTextBounds(str, 0, str.length(), new Rect());
        canvas.drawText(str, f2, f3 + f, paint);
        if (z && !bitmap.isRecycled() && bitmapCopy != bitmap) {
            bitmap.recycle();
        }
        return bitmapCopy;
    }

    public static byte[] OooOOOO(Bitmap bitmap) {
        return OooOOOo(bitmap, Bitmap.CompressFormat.PNG, 100);
    }

    public static byte[] OooOOOo(@Nullable Bitmap bitmap, @NonNull Bitmap.CompressFormat compressFormat, int i) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(compressFormat, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static Bitmap OooOOo(@Nullable byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
    }

    public static Drawable OooOOo0(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapDrawable(u5.OooO00o().getResources(), bitmap);
    }

    public static Drawable OooOOoo(byte[] bArr) {
        return OooOOo0(OooOOo(bArr));
    }

    public static byte[] OooOo(Bitmap bitmap, @IntRange(from = 0, to = 100) int i, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (z && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return byteArray;
    }

    public static Bitmap OooOo0(Bitmap bitmap, int i, int i2, int i3, int i4) {
        return OooOo0O(bitmap, i, i2, i3, i4, false);
    }

    public static int OooOo00(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        while (true) {
            if (i3 <= i2 && i4 <= i) {
                return i5;
            }
            i3 >>= 1;
            i4 >>= 1;
            i5 <<= 1;
        }
    }

    public static Bitmap OooOo0O(Bitmap bitmap, int i, int i2, int i3, int i4, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i, i2, i3, i4);
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static byte[] OooOo0o(Bitmap bitmap, @IntRange(from = 0, to = 100) int i) {
        return OooOo(bitmap, i, false);
    }

    public static byte[] OooOoO(Bitmap bitmap, long j, boolean z) {
        int i = 0;
        if (OooooOo(bitmap) || j <= 0) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 100;
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (byteArrayOutputStream.size() > j) {
            byteArrayOutputStream.reset();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 0, byteArrayOutputStream);
            if (byteArrayOutputStream.size() < j) {
                int i3 = 0;
                while (i < i2) {
                    i3 = (i + i2) / 2;
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream);
                    long size = byteArrayOutputStream.size();
                    if (size == j) {
                        break;
                    }
                    if (size > j) {
                        i2 = i3 - 1;
                    } else {
                        i = i3 + 1;
                    }
                }
                if (i2 == i3 - 1) {
                    byteArrayOutputStream.reset();
                    bitmap.compress(Bitmap.CompressFormat.JPEG, i, byteArrayOutputStream);
                }
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (z && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return byteArray;
    }

    public static byte[] OooOoO0(Bitmap bitmap, long j) {
        return OooOoO(bitmap, j, false);
    }

    public static Bitmap OooOoOO(Bitmap bitmap, int i) {
        return OooOooO(bitmap, i, false);
    }

    public static Bitmap OooOoo(Bitmap bitmap, int i, int i2, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        options.inSampleSize = OooOo00(options, i, i2);
        options.inJustDecodeBounds = false;
        if (z && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }

    public static Bitmap OooOoo0(Bitmap bitmap, int i, int i2) {
        return OooOoo(bitmap, i, i2, false);
    }

    public static Bitmap OooOooO(Bitmap bitmap, int i, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (z && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }

    public static Bitmap OooOooo(Bitmap bitmap, float f, float f2) {
        return o00ooo(bitmap, f, f2, false);
    }

    public static Bitmap Oooo(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d) float f, @FloatRange(from = 0.0d, fromInclusive = false, to = 25.0d) float f2, boolean z, boolean z3) {
        if (OooooOo(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        Paint paint = new Paint(3);
        Canvas canvas = new Canvas();
        paint.setColorFilter(new PorterDuffColorFilter(0, PorterDuff.Mode.SRC_ATOP));
        canvas.scale(f, f);
        canvas.drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
        Bitmap bitmapO00O0O = Build.VERSION.SDK_INT >= 17 ? o00O0O(bitmapCreateBitmap, f2, z) : o0Oo0oo(bitmapCreateBitmap, (int) f2, z);
        if (f == 1.0f || z3) {
            if (z && !bitmap.isRecycled() && bitmapO00O0O != bitmap) {
                bitmap.recycle();
            }
            return bitmapO00O0O;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapO00O0O, width, height, true);
        if (!bitmapO00O0O.isRecycled()) {
            bitmapO00O0O.recycle();
        }
        if (z && !bitmap.isRecycled() && bitmapCreateScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateScaledBitmap;
    }

    public static Bitmap Oooo0(@NonNull Bitmap bitmap, @ColorInt int i) {
        return Oooo0O0(bitmap, i, false);
    }

    public static Bitmap Oooo000(Bitmap bitmap, float f, float f2, boolean z) {
        return o00ooo(bitmap, f, f2, z);
    }

    public static Bitmap Oooo00O(Bitmap bitmap, int i, int i2) {
        return o00oO0o(bitmap, i, i2, false);
    }

    public static Bitmap Oooo00o(Bitmap bitmap, int i, int i2, boolean z) {
        return o00oO0o(bitmap, i, i2, z);
    }

    public static Bitmap Oooo0O0(@NonNull Bitmap bitmap, @ColorInt int i, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        if (!z) {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        new Canvas(bitmap).drawColor(i, PorterDuff.Mode.DARKEN);
        return bitmap;
    }

    public static Bitmap Oooo0OO(@Nullable Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static byte[] Oooo0o(Drawable drawable, Bitmap.CompressFormat compressFormat, int i) {
        if (drawable == null) {
            return null;
        }
        return OooOOOo(Oooo0OO(drawable), compressFormat, i);
    }

    public static byte[] Oooo0o0(@Nullable Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        return OooOOOO(Oooo0OO(drawable));
    }

    public static Bitmap Oooo0oO(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d) float f, @FloatRange(from = 0.0d, fromInclusive = false, to = 25.0d) float f2) {
        return Oooo(bitmap, f, f2, false, false);
    }

    public static Bitmap Oooo0oo(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, to = 1.0d) float f, @FloatRange(from = 0.0d, fromInclusive = false, to = 25.0d) float f2, boolean z) {
        return Oooo(bitmap, f, f2, z, false);
    }

    public static Bitmap OoooO(File file, int i, int i2) {
        if (file == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = OooOo00(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
    }

    public static Bitmap OoooO0(@DrawableRes int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        Resources resources = u5.OooO00o().getResources();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = OooOo00(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    public static Bitmap OoooO00(@DrawableRes int i) {
        Drawable drawable = ContextCompat.getDrawable(u5.OooO00o(), i);
        if (drawable == null) {
            return null;
        }
        Canvas canvas = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap OoooO0O(File file) {
        if (file == null) {
            return null;
        }
        return BitmapFactory.decodeFile(file.getAbsolutePath());
    }

    public static Bitmap OoooOO0(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null) {
            return null;
        }
        return BitmapFactory.decodeFileDescriptor(fileDescriptor);
    }

    public static Bitmap OoooOOO(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        return BitmapFactory.decodeStream(inputStream);
    }

    public static Bitmap OoooOOo(InputStream inputStream, int i, int i2) {
        if (inputStream == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        options.inSampleSize = OooOo00(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    public static Bitmap OoooOo0(String str) {
        if (w5.OooOoo(str)) {
            return null;
        }
        return BitmapFactory.decodeFile(str);
    }

    public static Bitmap OoooOoO(String str, int i, int i2) {
        if (w5.OooOoo(str)) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = OooOo00(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static Bitmap OoooOoo(byte[] bArr, int i) {
        if (bArr.length == 0) {
            return null;
        }
        return BitmapFactory.decodeByteArray(bArr, i, bArr.length);
    }

    public static Bitmap Ooooo00(byte[] bArr, int i, int i2, int i3) {
        if (bArr.length == 0) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, i, bArr.length, options);
        options.inSampleSize = OooOo00(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(bArr, i, bArr.length, options);
    }

    public static int Ooooo0o(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            return SubsamplingScaleImageView.ORIENTATION_270;
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static int[] OooooO0(File file) {
        if (file == null) {
            return new int[]{0, 0};
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        return new int[]{options.outWidth, options.outHeight};
    }

    private static boolean OooooOO(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == 66 && bArr[1] == 77;
    }

    private static boolean OooooOo(Bitmap bitmap) {
        return bitmap == null || bitmap.getWidth() == 0 || bitmap.getHeight() == 0;
    }

    public static boolean Oooooo(File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        return OoooooO(file.getPath());
    }

    private static boolean Oooooo0(byte[] bArr) {
        return bArr.length >= 6 && bArr[0] == 71 && bArr[1] == 73 && bArr[2] == 70 && bArr[3] == 56 && (bArr[4] == 55 || bArr[4] == 57) && bArr[5] == 97;
    }

    public static boolean OoooooO(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            if (options.outWidth > 0) {
                return options.outHeight > 0;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean Ooooooo(byte[] bArr) {
        return bArr.length >= 2 && bArr[0] == -1 && bArr[1] == -40;
    }

    public static Bitmap o00000(Bitmap bitmap, boolean z) {
        return o000000o(bitmap, 0, 0, z);
    }

    public static Bitmap o000000(Bitmap bitmap) {
        return o000000o(bitmap, 0, 0, false);
    }

    public static Bitmap o000000O(Bitmap bitmap, @IntRange(from = 0) int i, @ColorInt int i2) {
        return o000000o(bitmap, i, i2, false);
    }

    public static Bitmap o000000o(Bitmap bitmap, @IntRange(from = 0) int i, @ColorInt int i2, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int iMin = Math.min(width, height);
        Paint paint = new Paint(1);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        float f = iMin;
        float f2 = f / 2.0f;
        float f3 = width;
        float f4 = height;
        RectF rectF = new RectF(0.0f, 0.0f, f3, f4);
        rectF.inset((width - iMin) / 2.0f, (height - iMin) / 2.0f);
        Matrix matrix = new Matrix();
        matrix.setTranslate(rectF.left, rectF.top);
        if (width != height) {
            matrix.preScale(f / f3, f / f4);
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (i > 0) {
            paint.setShader(null);
            paint.setColor(i2);
            paint.setStyle(Paint.Style.STROKE);
            float f5 = i;
            paint.setStrokeWidth(f5);
            canvas.drawCircle(f3 / 2.0f, f4 / 2.0f, f2 - (f5 / 2.0f), paint);
        }
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap o00000O(Bitmap bitmap, float f, @FloatRange(from = 0.0d) float f2, @ColorInt int i) {
        return o00000OO(bitmap, f, f2, i, false);
    }

    public static Bitmap o00000O0(Bitmap bitmap, float f) {
        return o00000OO(bitmap, f, 0.0f, 0, false);
    }

    public static Bitmap o00000OO(Bitmap bitmap, float f, @FloatRange(from = 0.0d) float f2, @ColorInt int i, boolean z) {
        return o0000Ooo(bitmap, new float[]{f, f, f, f, f, f, f, f}, f2, i, z);
    }

    public static Bitmap o00000Oo(Bitmap bitmap, float f, boolean z) {
        return o00000OO(bitmap, f, 0.0f, 0, z);
    }

    public static Bitmap o00000o0(Bitmap bitmap, float[] fArr, @FloatRange(from = 0.0d) float f, @ColorInt int i) {
        return o0000Ooo(bitmap, fArr, f, i, false);
    }

    public static Bitmap o00000oO(View view) {
        Bitmap bitmapCreateBitmap;
        if (view == null) {
            return null;
        }
        boolean zIsDrawingCacheEnabled = view.isDrawingCacheEnabled();
        boolean zWillNotCacheDrawing = view.willNotCacheDrawing();
        view.setDrawingCacheEnabled(true);
        view.setWillNotCacheDrawing(false);
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null || drawingCache.isRecycled()) {
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            view.buildDrawingCache();
            Bitmap drawingCache2 = view.getDrawingCache();
            if (drawingCache2 == null || drawingCache2.isRecycled()) {
                bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.RGB_565);
                view.draw(new Canvas(bitmapCreateBitmap));
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(drawingCache2);
            }
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(drawingCache);
        }
        view.setWillNotCacheDrawing(zWillNotCacheDrawing);
        view.setDrawingCacheEnabled(zIsDrawingCacheEnabled);
        return bitmapCreateBitmap;
    }

    public static Bitmap o0000Ooo(Bitmap bitmap, float[] fArr, @FloatRange(from = 0.0d) float f, @ColorInt int i, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Paint paint = new Paint(1);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, bitmap.getConfig());
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        float f2 = f / 2.0f;
        rectF.inset(f2, f2);
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, paint);
        if (f > 0.0f) {
            paint.setShader(null);
            paint.setColor(i);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(f);
            paint.setStrokeCap(Paint.Cap.ROUND);
            canvas.drawPath(path, paint);
        }
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap o000OOo(Bitmap bitmap, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap o000oOoO(FileDescriptor fileDescriptor, int i, int i2) {
        if (fileDescriptor == null) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        options.inSampleSize = OooOo00(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
    }

    @RequiresApi(17)
    public static Bitmap o00O0O(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, to = 25.0d) float f, boolean z) {
        if (!z) {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        RenderScript renderScriptCreate = null;
        try {
            renderScriptCreate = RenderScript.create(u5.OooO00o());
            renderScriptCreate.setMessageHandler(new RenderScript.RSMessageHandler());
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
            Allocation allocationCreateTyped = Allocation.createTyped(renderScriptCreate, allocationCreateFromBitmap.getType());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.setRadius(f);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmap);
            return bitmap;
        } finally {
            if (renderScriptCreate != null) {
                renderScriptCreate.destroy();
            }
        }
    }

    public static Bitmap o00Oo0(Bitmap bitmap, int i, float f, float f2) {
        return o00Ooo(bitmap, i, f, f2, false);
    }

    public static Bitmap o00Ooo(Bitmap bitmap, int i, float f, float f2, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        if (i == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i, f, f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap o00o0O(Bitmap bitmap, float f, float f2) {
        return o00ooo(bitmap, f, f2, false);
    }

    public static Bitmap o00oO0O(Bitmap bitmap, float f, float f2) {
        return o0ooOOo(bitmap, f, f2, 0.0f, 0.0f, false);
    }

    public static Bitmap o00oO0o(Bitmap bitmap, int i, int i2, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        if (z && !bitmap.isRecycled() && bitmapCreateScaledBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateScaledBitmap;
    }

    public static Bitmap o00ooo(Bitmap bitmap, float f, float f2, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f, f2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap o0O0O00(Bitmap bitmap) {
        return o000OOo(bitmap, false);
    }

    public static Bitmap o0OO00O(Bitmap bitmap) {
        return oo0o0Oo(bitmap, Boolean.FALSE);
    }

    public static Bitmap o0OOO0o(Bitmap bitmap, int i) {
        return o0Oo0oo(bitmap, i, false);
    }

    public static Bitmap o0Oo0oo(Bitmap bitmap, int i, boolean z) {
        Bitmap bitmap2;
        int i2;
        int i3;
        int[] iArr;
        int[] iArr2;
        Bitmap bitmapCopy = z ? bitmap : bitmap.copy(bitmap.getConfig(), true);
        int i4 = i < 1 ? 1 : i;
        int width = bitmapCopy.getWidth();
        int height = bitmapCopy.getHeight();
        int i5 = width * height;
        int[] iArr3 = new int[i5];
        bitmapCopy.getPixels(iArr3, 0, width, 0, 0, width, height);
        int i6 = width - 1;
        int i7 = height - 1;
        int i8 = i4 + i4 + 1;
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[i5];
        int[] iArr6 = new int[i5];
        int[] iArr7 = new int[Math.max(width, height)];
        int i9 = (i8 + 1) >> 1;
        int i10 = i9 * i9;
        int i11 = i10 * 256;
        int[] iArr8 = new int[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            iArr8[i12] = i12 / i10;
        }
        int[][] iArr9 = (int[][]) Array.newInstance((Class<?>) int.class, i8, 3);
        int i13 = i4 + 1;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            bitmap2 = bitmapCopy;
            if (i14 >= height) {
                break;
            }
            int i17 = height;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            int i26 = -i4;
            int i27 = 0;
            while (true) {
                i3 = i7;
                iArr = iArr7;
                if (i26 > i4) {
                    break;
                }
                int i28 = iArr3[i15 + Math.min(i6, Math.max(i26, 0))];
                int[] iArr10 = iArr9[i26 + i4];
                iArr10[0] = (i28 & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
                iArr10[1] = (i28 & 65280) >> 8;
                iArr10[2] = i28 & 255;
                int iAbs = i13 - Math.abs(i26);
                i27 += iArr10[0] * iAbs;
                i18 += iArr10[1] * iAbs;
                i19 += iArr10[2] * iAbs;
                if (i26 > 0) {
                    i23 += iArr10[0];
                    i24 += iArr10[1];
                    i25 += iArr10[2];
                } else {
                    i20 += iArr10[0];
                    i21 += iArr10[1];
                    i22 += iArr10[2];
                }
                i26++;
                i7 = i3;
                iArr7 = iArr;
            }
            int i29 = i27;
            int i30 = i4;
            int i31 = 0;
            while (i31 < width) {
                iArr4[i15] = iArr8[i29];
                iArr5[i15] = iArr8[i18];
                iArr6[i15] = iArr8[i19];
                int i32 = i29 - i20;
                int i33 = i18 - i21;
                int i34 = i19 - i22;
                int[] iArr11 = iArr9[((i30 - i4) + i8) % i8];
                int i35 = i20 - iArr11[0];
                int i36 = i21 - iArr11[1];
                int i37 = i22 - iArr11[2];
                if (i14 == 0) {
                    iArr2 = iArr8;
                    iArr[i31] = Math.min(i31 + i4 + 1, i6);
                } else {
                    iArr2 = iArr8;
                }
                int i38 = iArr3[i16 + iArr[i31]];
                iArr11[0] = (i38 & ItemTouchHelper.ACTION_MODE_DRAG_MASK) >> 16;
                iArr11[1] = (i38 & 65280) >> 8;
                iArr11[2] = i38 & 255;
                int i39 = i23 + iArr11[0];
                int i40 = i24 + iArr11[1];
                int i41 = i25 + iArr11[2];
                i29 = i32 + i39;
                i18 = i33 + i40;
                i19 = i34 + i41;
                i30 = (i30 + 1) % i8;
                int[] iArr12 = iArr9[i30 % i8];
                i20 = i35 + iArr12[0];
                i21 = i36 + iArr12[1];
                i22 = i37 + iArr12[2];
                i23 = i39 - iArr12[0];
                i24 = i40 - iArr12[1];
                i25 = i41 - iArr12[2];
                i15++;
                i31++;
                iArr8 = iArr2;
            }
            i16 += width;
            i14++;
            bitmapCopy = bitmap2;
            height = i17;
            i7 = i3;
            iArr7 = iArr;
        }
        int i42 = i7;
        int[] iArr13 = iArr7;
        int i43 = height;
        int[] iArr14 = iArr8;
        int i44 = 0;
        while (i44 < width) {
            int i45 = -i4;
            int i46 = i8;
            int[] iArr15 = iArr3;
            int i47 = 0;
            int i48 = 0;
            int i49 = 0;
            int i50 = 0;
            int i51 = 0;
            int i52 = 0;
            int i53 = 0;
            int i54 = i45;
            int i55 = i45 * width;
            int i56 = 0;
            int i57 = 0;
            while (true) {
                i2 = width;
                if (i54 > i4) {
                    break;
                }
                int iMax = Math.max(0, i55) + i44;
                int[] iArr16 = iArr9[i54 + i4];
                iArr16[0] = iArr4[iMax];
                iArr16[1] = iArr5[iMax];
                iArr16[2] = iArr6[iMax];
                int iAbs2 = i13 - Math.abs(i54);
                i56 += iArr4[iMax] * iAbs2;
                i57 += iArr5[iMax] * iAbs2;
                i47 += iArr6[iMax] * iAbs2;
                if (i54 > 0) {
                    i51 += iArr16[0];
                    i52 += iArr16[1];
                    i53 += iArr16[2];
                } else {
                    i48 += iArr16[0];
                    i49 += iArr16[1];
                    i50 += iArr16[2];
                }
                int i58 = i42;
                if (i54 < i58) {
                    i55 += i2;
                }
                i54++;
                i42 = i58;
                width = i2;
            }
            int i59 = i42;
            int i60 = i44;
            int i61 = i57;
            int i62 = i4;
            int i63 = i43;
            int i64 = i56;
            int i65 = 0;
            while (i65 < i63) {
                iArr15[i60] = (iArr15[i60] & (-16777216)) | (iArr14[i64] << 16) | (iArr14[i61] << 8) | iArr14[i47];
                int i66 = i64 - i48;
                int i67 = i61 - i49;
                int i68 = i47 - i50;
                int[] iArr17 = iArr9[((i62 - i4) + i46) % i46];
                int i69 = i48 - iArr17[0];
                int i70 = i49 - iArr17[1];
                int i71 = i50 - iArr17[2];
                int i72 = i4;
                if (i44 == 0) {
                    iArr13[i65] = Math.min(i65 + i13, i59) * i2;
                }
                int i73 = iArr13[i65] + i44;
                iArr17[0] = iArr4[i73];
                iArr17[1] = iArr5[i73];
                iArr17[2] = iArr6[i73];
                int i74 = i51 + iArr17[0];
                int i75 = i52 + iArr17[1];
                int i76 = i53 + iArr17[2];
                i64 = i66 + i74;
                i61 = i67 + i75;
                i47 = i68 + i76;
                i62 = (i62 + 1) % i46;
                int[] iArr18 = iArr9[i62];
                i48 = i69 + iArr18[0];
                i49 = i70 + iArr18[1];
                i50 = i71 + iArr18[2];
                i51 = i74 - iArr18[0];
                i52 = i75 - iArr18[1];
                i53 = i76 - iArr18[2];
                i60 += i2;
                i65++;
                i4 = i72;
            }
            i44++;
            i42 = i59;
            i43 = i63;
            i8 = i46;
            iArr3 = iArr15;
            width = i2;
        }
        int i77 = width;
        bitmap2.setPixels(iArr3, 0, i77, 0, 0, i77, i43);
        return bitmap2;
    }

    private static boolean o0OoOo0(byte[] bArr) {
        return bArr.length >= 8 && bArr[0] == -119 && bArr[1] == 80 && bArr[2] == 78 && bArr[3] == 71 && bArr[4] == 13 && bArr[5] == 10 && bArr[6] == 26 && bArr[7] == 10;
    }

    public static Bitmap o0ooOO0(Bitmap bitmap, float f, float f2, float f3, float f4) {
        return o0ooOOo(bitmap, f, f2, f3, f4, false);
    }

    public static Bitmap o0ooOOo(Bitmap bitmap, float f, float f2, float f3, float f4, boolean z) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setSkew(f, f2, f3, f4);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (z && !bitmap.isRecycled() && bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    public static Bitmap o0ooOoO(Bitmap bitmap, float f, float f2, boolean z) {
        return o0ooOOo(bitmap, f, f2, 0.0f, 0.0f, z);
    }

    public static Bitmap oo000o(Bitmap bitmap, int i, int i2) {
        return o00oO0o(bitmap, i, i2, false);
    }

    public static Bitmap oo0o0Oo(Bitmap bitmap, Boolean bool) {
        if (OooooOo(bitmap)) {
            return null;
        }
        Bitmap bitmapExtractAlpha = bitmap.extractAlpha();
        if (bool.booleanValue() && !bitmap.isRecycled() && bitmapExtractAlpha != bitmap) {
            bitmap.recycle();
        }
        return bitmapExtractAlpha;
    }

    @RequiresApi(17)
    public static Bitmap ooOO(Bitmap bitmap, @FloatRange(from = 0.0d, fromInclusive = false, to = 25.0d) float f) {
        return o00O0O(bitmap, f, false);
    }
}
