package z2;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ExifInterface;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.androidquery.util.BitmapCache;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
public class o000OO00 extends o000OO0O<Bitmap, o000OO00> {
    private static int BIG_MAX = 20;
    private static int BIG_PIXELS = 160000;
    private static int BIG_TPIXELS = 1000000;
    private static boolean DELAY_WRITE = false;
    private static final int FADE_DUR = 300;
    private static int SMALL_MAX = 20;
    private static int SMALL_PIXELS = 2500;
    private static Map<String, Bitmap> bigCache;
    private static Map<String, Bitmap> invalidCache;
    private static Map<String, Bitmap> smallCache;
    private int animation;
    private Bitmap bm;
    private int fallback;
    private File imageFile;
    private boolean invalid;
    private Bitmap preset;
    private float ratio;
    private boolean rotate;
    private int round;
    private int targetWidth;
    private WeakReference<ImageView> v;
    private static HashMap<String, WeakHashMap<ImageView, o000OO00>> queueMap = new HashMap<>();
    private static Bitmap empty = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
    private static Bitmap dummy = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
    private boolean targetDim = true;
    private float anchor = Float.MAX_VALUE;

    public o000OO00() {
        type(Bitmap.class).memCache(true).fileCache(true).url("");
    }

    private void addQueue(String str, ImageView imageView) {
        HashMap<String, WeakHashMap<ImageView, o000OO00>> map;
        WeakHashMap<ImageView, o000OO00> weakHashMap;
        WeakHashMap<ImageView, o000OO00> weakHashMap2 = queueMap.get(str);
        if (weakHashMap2 != null) {
            weakHashMap2.put(imageView, this);
            return;
        }
        if (queueMap.containsKey(str)) {
            weakHashMap = new WeakHashMap<>();
            weakHashMap.put(imageView, this);
            map = queueMap;
        } else {
            map = queueMap;
            weakHashMap = null;
        }
        map.put(str, weakHashMap);
    }

    public static void async(Activity activity, Context context, ImageView imageView, String str, Object obj, o000Oo0 o000oo0, o000OOo0 o000ooo0, HttpHost httpHost, String str2) {
        async(activity, context, imageView, str, o000ooo0.OooO00o, o000ooo0.OooO0O0, o000ooo0.OooO0o0, o000ooo0.OooO0o, o000ooo0.OooO0OO, o000ooo0.OooO0oO, o000ooo0.OooO0oo, o000ooo0.OooOO0, obj, o000oo0, o000ooo0.OooO0Oo, o000ooo0.OooO, httpHost, str2);
    }

    public static void async(Activity activity, Context context, ImageView imageView, String str, boolean z, boolean z3, int i, int i2, Bitmap bitmap, int i3, float f, float f2, Object obj, o000Oo0 o000oo0, int i4, int i5, HttpHost httpHost, String str2) {
        Bitmap bitmapMemGet = z ? memGet(str, i, i5) : null;
        if (bitmapMemGet != null) {
            imageView.setTag(o00O00.OooOo0O, str);
            o00O000o.OooOOOO(obj, str, false);
            setBmAnimate(imageView, bitmapMemGet, bitmap, i2, i3, f, f2, 4);
            return;
        }
        o000OO00 o000oo00 = new o000OO00();
        o000oo00.url(str).imageView(imageView).memCache(z).fileCache(z3).targetWidth(i).fallback(i2).preset(bitmap).animation(i3).ratio(f).anchor(f2).progress(obj).auth(o000oo0).policy(i4).round(i5).networkUrl(str2);
        if (httpHost != null) {
            o000oo00.proxy(httpHost.getHostName(), httpHost.getPort());
        }
        if (activity != null) {
            o000oo00.async(activity);
        } else {
            o000oo00.async(context);
        }
    }

    private Bitmap bmGet(String str, byte[] bArr) {
        return getResizedImage(str, bArr, this.targetWidth, this.targetDim, this.round, this.rotate);
    }

    private void checkCb(o000OO00 o000oo00, String str, ImageView imageView, Bitmap bitmap, o000O o000o) {
        if (imageView == null || o000oo00 == null) {
            return;
        }
        if (str.equals(imageView.getTag(o00O00.OooOo0O))) {
            if (imageView instanceof ImageView) {
                o000oo00.callback(str, imageView, bitmap, o000o);
            } else {
                o000oo00.setBitmap(str, imageView, bitmap, false);
            }
        }
        o000oo00.showProgress(false);
    }

    public static void clearCache() {
        bigCache = null;
        smallCache = null;
        invalidCache = null;
    }

    public static void clearTasks() {
        queueMap.clear();
    }

    private static Bitmap decode(String str, byte[] bArr, BitmapFactory.Options options, boolean z) {
        Bitmap bitmapDecodeFile = str != null ? decodeFile(str, options, z) : bArr != null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options) : null;
        if (bitmapDecodeFile == null && options != null && !options.inJustDecodeBounds) {
            o00O000.OooOO0("decode image failed", str);
        }
        return bitmapDecodeFile;
    }

    private static Bitmap decodeFile(String str, BitmapFactory.Options options, boolean z) throws Throwable {
        Bitmap bitmap;
        FileInputStream fileInputStream;
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        options.inInputShareable = true;
        options.inPurgeable = true;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (IOException e) {
                e = e;
                bitmap = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
            if (bitmapDecodeFileDescriptor != null && z) {
                bitmapDecodeFileDescriptor = rotate(str, bitmapDecodeFileDescriptor);
            }
            o00O000.OooO0o(fileInputStream);
            return bitmapDecodeFileDescriptor;
        } catch (IOException e2) {
            e = e2;
            bitmap = null;
            fileInputStream2 = fileInputStream;
            o00O000.OoooO0O(e);
            o00O000.OooO0o(fileInputStream2);
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            o00O000.OooO0o(fileInputStream2);
            throw th;
        }
    }

    private static boolean fadeIn(int i, int i2) {
        if (i != -3) {
            if (i != -2) {
                return i == -1;
            }
        } else if (i2 == 3) {
            return true;
        }
        return i2 == 1;
    }

    private static Bitmap filter(View view, Bitmap bitmap, int i) {
        int i2;
        if (bitmap != null && bitmap.getWidth() == 1 && bitmap.getHeight() == 1 && bitmap != empty) {
            bitmap = null;
        }
        if (bitmap != null) {
            i2 = 0;
        } else {
            if (i != -2) {
                if (i == -1) {
                    i2 = 4;
                }
                return bitmap;
            }
            i2 = 8;
        }
        view.setVisibility(i2);
        return bitmap;
    }

    private static Map<String, Bitmap> getBCache() {
        if (bigCache == null) {
            bigCache = Collections.synchronizedMap(new BitmapCache(BIG_MAX, BIG_PIXELS, BIG_TPIXELS));
        }
        return bigCache;
    }

    public static Bitmap getEmptyBitmap() {
        return empty;
    }

    private Bitmap getFallback() {
        ImageView imageView = this.v.get();
        if (imageView == null) {
            return null;
        }
        String string = Integer.toString(this.fallback);
        Bitmap bitmapMemGet = memGet(string);
        if (bitmapMemGet != null) {
            return bitmapMemGet;
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(imageView.getResources(), this.fallback);
        if (bitmapDecodeResource == null) {
            return bitmapDecodeResource;
        }
        memPut(string, bitmapDecodeResource);
        return bitmapDecodeResource;
    }

    private static Map<String, Bitmap> getICache() {
        if (invalidCache == null) {
            invalidCache = Collections.synchronizedMap(new BitmapCache(100, BIG_PIXELS, 250000));
        }
        return invalidCache;
    }

    private static String getKey(String str, int i, int i2) {
        if (i > 0) {
            str = String.valueOf(str) + "#" + i;
        }
        if (i2 <= 0) {
            return str;
        }
        return String.valueOf(str) + "#" + i2;
    }

    public static Bitmap getMemoryCached(Context context, int i) {
        String string = Integer.toString(i);
        Bitmap bitmapMemGet = memGet(string, 0, 0);
        if (bitmapMemGet == null && (bitmapMemGet = BitmapFactory.decodeResource(context.getResources(), i)) != null) {
            memPut(string, 0, 0, bitmapMemGet, false);
        }
        return bitmapMemGet;
    }

    public static Bitmap getMemoryCached(String str, int i) {
        return memGet(str, i, 0);
    }

    public static Bitmap getResizedImage(String str, byte[] bArr, int i, boolean z, int i2) {
        return getResizedImage(str, bArr, i, z, i2, false);
    }

    public static Bitmap getResizedImage(String str, byte[] bArr, int i, boolean z, int i2, boolean z3) {
        BitmapFactory.Options options;
        Bitmap bitmapDecode = null;
        if (str == null && bArr == null) {
            return null;
        }
        if (i > 0) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = true;
            decode(str, bArr, options2, z3);
            int iMax = options2.outWidth;
            if (!z) {
                iMax = Math.max(iMax, options2.outHeight);
            }
            int iSampleSize = sampleSize(iMax, i);
            options = new BitmapFactory.Options();
            options.inSampleSize = iSampleSize;
        } else {
            options = null;
        }
        try {
            bitmapDecode = decode(str, bArr, options, z3);
        } catch (OutOfMemoryError e) {
            clearCache();
            o00O000.OoooO0O(e);
        }
        return i2 > 0 ? getRoundedCornerBitmap(bitmapDecode, i2) : bitmapDecode;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static Matrix getRotateMatrix(int i) {
        Matrix matrix = new Matrix();
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return matrix;
            case 3:
                matrix.setRotate(180.0f);
                return matrix;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return matrix;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return matrix;
            case 6:
                matrix.setRotate(90.0f);
                return matrix;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return matrix;
            case 8:
                matrix.setRotate(-90.0f);
                return matrix;
            default:
                return matrix;
        }
    }

    private static Bitmap getRoundedCornerBitmap(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f = i;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return bitmapCreateBitmap;
    }

    private static Map<String, Bitmap> getSCache() {
        if (smallCache == null) {
            smallCache = Collections.synchronizedMap(new BitmapCache(SMALL_MAX, SMALL_PIXELS, 250000));
        }
        return smallCache;
    }

    public static boolean isMemoryCached(String str) {
        return getBCache().containsKey(str) || getSCache().containsKey(str) || getICache().containsKey(str);
    }

    private static Drawable makeDrawable(ImageView imageView, Bitmap bitmap, float f, float f2) {
        return f > 0.0f ? new o00O00OO(imageView.getResources(), bitmap, imageView, f, f2) : new BitmapDrawable(imageView.getResources(), bitmap);
    }

    private static Bitmap memGet(String str, int i, int i2) {
        String key = getKey(str, i, i2);
        Bitmap bitmap = getBCache().get(key);
        if (bitmap == null) {
            bitmap = getSCache().get(key);
        }
        if (bitmap != null) {
            return bitmap;
        }
        Bitmap bitmap2 = getICache().get(key);
        if (bitmap2 == null || o000OO0O.getLastStatus() != 200) {
            return bitmap2;
        }
        invalidCache = null;
        return null;
    }

    private static void memPut(String str, int i, int i2, Bitmap bitmap, boolean z) {
        if (bitmap == null) {
            return;
        }
        Map<String, Bitmap> iCache = z ? getICache() : bitmap.getWidth() * bitmap.getHeight() <= SMALL_PIXELS ? getSCache() : getBCache();
        if (i <= 0 && i2 <= 0) {
            iCache.put(str, bitmap);
            return;
        }
        iCache.put(getKey(str, i, i2), bitmap);
        if (iCache.containsKey(str)) {
            return;
        }
        iCache.put(str, null);
    }

    private void presetBitmap(String str, ImageView imageView) {
        if (str.equals(imageView.getTag(o00O00.OooOo0O)) && this.preset == null) {
            return;
        }
        imageView.setTag(o00O00.OooOo0O, str);
        setBitmap(str, imageView, (this.preset == null || cacheAvailable(imageView.getContext())) ? null : this.preset, true);
    }

    private static Bitmap rotate(String str, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int attributeInt = 1;
        try {
            attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (Exception e) {
            o00O000.OooOO0O(e);
        }
        if (attributeInt <= 0) {
            return bitmap;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), getRotateMatrix(attributeInt), true);
        o00O000.OooOO0("before", String.valueOf(bitmap.getWidth()) + ":" + bitmap.getHeight());
        o00O000.OooOO0("after", String.valueOf(bitmapCreateBitmap.getWidth()) + ":" + bitmapCreateBitmap.getHeight());
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    private static int sampleSize(int i, int i2) {
        int i3 = 1;
        for (int i4 = 0; i4 < 10 && i >= i2 * 2; i4++) {
            i /= 2;
            i3 *= 2;
        }
        return i3;
    }

    private void setBitmap(String str, ImageView imageView, Bitmap bitmap, boolean z) {
        Drawable drawableMakeDrawable;
        if (bitmap == null) {
            drawableMakeDrawable = null;
        } else {
            if (!z) {
                o000O o000o = this.status;
                if (o000o != null) {
                    setBmAnimate(imageView, bitmap, this.preset, this.fallback, this.animation, this.ratio, this.anchor, o000o.OooOoO());
                    return;
                }
                return;
            }
            drawableMakeDrawable = makeDrawable(imageView, bitmap, this.ratio, this.anchor);
        }
        imageView.setImageDrawable(drawableMakeDrawable);
    }

    private static void setBmAnimate(ImageView imageView, Bitmap bitmap, Bitmap bitmap2, int i, int i2, float f, float f2, int i3) {
        Animation animationLoadAnimation;
        Drawable drawable;
        Bitmap bitmapFilter = filter(imageView, bitmap, i);
        if (bitmapFilter == null) {
            imageView.setImageBitmap(null);
            return;
        }
        Drawable drawableMakeDrawable = makeDrawable(imageView, bitmapFilter, f, f2);
        Drawable drawable2 = drawableMakeDrawable;
        if (fadeIn(i2, i3)) {
            if (bitmap2 == null) {
                animationLoadAnimation = new AlphaAnimation(0.0f, 1.0f);
                animationLoadAnimation.setInterpolator(new DecelerateInterpolator());
                animationLoadAnimation.setDuration(300L);
                drawable = drawableMakeDrawable;
            } else {
                TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{makeDrawable(imageView, bitmap2, f, f2), drawableMakeDrawable});
                transitionDrawable.setCrossFadeEnabled(true);
                transitionDrawable.startTransition(FADE_DUR);
                drawable2 = transitionDrawable;
                animationLoadAnimation = null;
                drawable = drawable2;
            }
        } else if (i2 > 0) {
            animationLoadAnimation = AnimationUtils.loadAnimation(imageView.getContext(), i2);
            drawable = drawableMakeDrawable;
        } else {
            animationLoadAnimation = null;
            drawable = drawable2;
        }
        imageView.setImageDrawable(drawable);
        if (animationLoadAnimation == null) {
            imageView.setAnimation(null);
        } else {
            animationLoadAnimation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
            imageView.startAnimation(animationLoadAnimation);
        }
    }

    public static void setCacheLimit(int i) {
        BIG_MAX = i;
        clearCache();
    }

    public static void setDelayWrite(boolean z) {
        DELAY_WRITE = z;
    }

    public static void setIconCacheLimit(int i) {
        SMALL_MAX = i;
        clearCache();
    }

    public static void setMaxPixelLimit(int i) {
        BIG_TPIXELS = i;
        clearCache();
    }

    public static void setPixelLimit(int i) {
        BIG_PIXELS = i;
        clearCache();
    }

    public static void setSmallPixel(int i) {
        SMALL_PIXELS = i;
        clearCache();
    }

    @Override // z2.o000OO0O
    public File accessFile(File file, String str) {
        File file2 = this.imageFile;
        return (file2 == null || !file2.exists()) ? super.accessFile(file, str) : this.imageFile;
    }

    public o000OO00 anchor(float f) {
        this.anchor = f;
        return this;
    }

    public o000OO00 animation(int i) {
        this.animation = i;
        return this;
    }

    @Override // z2.o000OO0O
    public void async(Context context) {
        String url = getUrl();
        ImageView imageView = this.v.get();
        if (url == null) {
            showProgress(false);
            setBitmap(url, imageView, null, false);
            return;
        }
        Bitmap bitmapMemGet = memGet(url);
        if (bitmapMemGet != null) {
            imageView.setTag(o00O00.OooOo0O, url);
            o000O o000oOooO0oO = new o000O().Oooo0(4).OooO0oO();
            this.status = o000oOooO0oO;
            callback(url, bitmapMemGet, o000oOooO0oO);
            return;
        }
        presetBitmap(url, imageView);
        if (queueMap.containsKey(url)) {
            showProgress(true);
            addQueue(url, imageView);
        } else {
            addQueue(url, imageView);
            super.async(imageView.getContext());
        }
    }

    public o000OO00 bitmap(Bitmap bitmap) {
        this.bm = bitmap;
        return this;
    }

    @Override // z2.o000OO0O
    public final void callback(String str, Bitmap bitmap, o000O o000o) {
        ImageView imageView = this.v.get();
        WeakHashMap<ImageView, o000OO00> weakHashMapRemove = queueMap.remove(str);
        if (weakHashMapRemove == null || !weakHashMapRemove.containsKey(imageView)) {
            checkCb(this, str, imageView, bitmap, o000o);
        }
        if (weakHashMapRemove != null) {
            for (ImageView imageView2 : weakHashMapRemove.keySet()) {
                o000OO00 o000oo00 = weakHashMapRemove.get(imageView2);
                o000oo00.status = o000o;
                checkCb(o000oo00, str, imageView2, bitmap, o000o);
            }
        }
    }

    public void callback(String str, ImageView imageView, Bitmap bitmap, o000O o000o) {
        setBitmap(str, imageView, bitmap, false);
    }

    public o000OO00 fallback(int i) {
        this.fallback = i;
        return this;
    }

    public o000OO00 file(File file) {
        this.imageFile = file;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // z2.o000OO0O
    public Bitmap fileGet(String str, File file, o000O o000o) {
        return bmGet(file.getAbsolutePath(), null);
    }

    public o000OO00 imageView(ImageView imageView) {
        this.v = new WeakReference<>(imageView);
        return this;
    }

    @Override // z2.o000OO0O
    public boolean isStreamingContent() {
        return !DELAY_WRITE;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // z2.o000OO0O
    public Bitmap memGet(String str) {
        Bitmap bitmap = this.bm;
        if (bitmap != null) {
            return bitmap;
        }
        if (this.memCache) {
            return memGet(str, this.targetWidth, this.round);
        }
        return null;
    }

    @Override // z2.o000OO0O
    public void memPut(String str, Bitmap bitmap) {
        memPut(str, this.targetWidth, this.round, bitmap, this.invalid);
    }

    public o000OO00 preset(Bitmap bitmap) {
        this.preset = bitmap;
        return this;
    }

    public o000OO00 ratio(float f) {
        this.ratio = f;
        return this;
    }

    public o000OO00 rotate(boolean z) {
        this.rotate = z;
        return this;
    }

    public o000OO00 round(int i) {
        this.round = i;
        return this;
    }

    @Override // z2.o000OO0O
    public void skip(String str, Bitmap bitmap, o000O o000o) {
        queueMap.remove(str);
    }

    public o000OO00 targetWidth(int i) {
        this.targetWidth = i;
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // z2.o000OO0O
    public Bitmap transform(String str, byte[] bArr, o000O o000o) {
        File fileOooOOo = o000o.OooOOo();
        Bitmap bitmapBmGet = bmGet(fileOooOOo != null ? fileOooOOo.getAbsolutePath() : null, bArr);
        if (bitmapBmGet == null) {
            int i = this.fallback;
            if (i > 0) {
                bitmapBmGet = getFallback();
            } else if (i == -2 || i == -1) {
                bitmapBmGet = dummy;
            } else if (i == -3) {
                bitmapBmGet = this.preset;
            }
            if (o000o.OooOO0o() != 200) {
                this.invalid = true;
            }
            if (o000o.OooOoO() == 1 && fileOooOOo != null) {
                o00O000.OooO("invalid bm from net");
                fileOooOOo.delete();
            }
        }
        return bitmapBmGet;
    }
}
