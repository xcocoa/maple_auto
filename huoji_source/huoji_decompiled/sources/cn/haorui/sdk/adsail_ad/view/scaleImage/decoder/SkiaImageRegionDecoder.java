package cn.haorui.sdk.adsail_ad.view.scaleImage.decoder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Keep;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.anythink.expressad.foundation.h.i;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class SkiaImageRegionDecoder implements ImageRegionDecoder {
    private static final String ASSET_PREFIX = "file:///android_asset/";
    private static final String FILE_PREFIX = "file://";
    private static final String RESOURCE_PREFIX = "android.resource://";
    private final Bitmap.Config bitmapConfig;
    private BitmapRegionDecoder decoder;
    private final ReadWriteLock decoderLock;

    @Keep
    public SkiaImageRegionDecoder() {
        this(null);
    }

    public SkiaImageRegionDecoder(Bitmap.Config config) {
        this.decoderLock = new ReentrantReadWriteLock(true);
        Bitmap.Config preferredBitmapConfig = SubsamplingScaleImageView.getPreferredBitmapConfig();
        if (config == null) {
            if (preferredBitmapConfig != null) {
                this.bitmapConfig = preferredBitmapConfig;
                return;
            }
            config = Bitmap.Config.RGB_565;
        }
        this.bitmapConfig = config;
    }

    private Lock getDecodeLock() {
        return Build.VERSION.SDK_INT < 21 ? this.decoderLock.writeLock() : this.decoderLock.readLock();
    }

    @Override // cn.haorui.sdk.adsail_ad.view.scaleImage.decoder.ImageRegionDecoder
    public Bitmap decodeRegion(Rect rect, int i) {
        getDecodeLock().lock();
        try {
            BitmapRegionDecoder bitmapRegionDecoder = this.decoder;
            if (bitmapRegionDecoder == null || bitmapRegionDecoder.isRecycled()) {
                throw new IllegalStateException("Cannot decode region after decoder has been recycled");
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i;
            options.inPreferredConfig = this.bitmapConfig;
            Bitmap bitmapDecodeRegion = this.decoder.decodeRegion(rect, options);
            if (bitmapDecodeRegion != null) {
                return bitmapDecodeRegion;
            }
            throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
        } finally {
            getDecodeLock().unlock();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.view.scaleImage.decoder.ImageRegionDecoder
    public Point init(Context context, Uri uri) throws IOException {
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        InputStream inputStreamOpen;
        int identifier;
        String string = uri.toString();
        if (string.startsWith(RESOURCE_PREFIX)) {
            String authority = uri.getAuthority();
            Resources resources = context.getPackageName().equals(authority) ? context.getResources() : context.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            int size = pathSegments.size();
            if (size != 2 || !pathSegments.get(0).equals(i.c)) {
                if (size == 1 && TextUtils.isDigitsOnly(pathSegments.get(0))) {
                    try {
                        identifier = Integer.parseInt(pathSegments.get(0));
                    } catch (NumberFormatException unused) {
                        identifier = 0;
                    }
                } else {
                    identifier = 0;
                }
                return new Point(this.decoder.getWidth(), this.decoder.getHeight());
            }
            identifier = resources.getIdentifier(pathSegments.get(1), i.c, authority);
            inputStreamOpen = context.getResources().openRawResource(identifier);
        } else {
            if (!string.startsWith("file:///android_asset/")) {
                if (string.startsWith(FILE_PREFIX)) {
                    bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(string.substring(7), false);
                    this.decoder = bitmapRegionDecoderNewInstance;
                    return new Point(this.decoder.getWidth(), this.decoder.getHeight());
                }
                InputStream inputStream = null;
                try {
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                    if (inputStreamOpenInputStream == null) {
                        throw new Exception("Content resolver returned null stream. Unable to initialise with uri.");
                    }
                    this.decoder = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Exception unused2) {
                    }
                    return new Point(this.decoder.getWidth(), this.decoder.getHeight());
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            inputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            }
            inputStreamOpen = context.getAssets().open(string.substring(22), 1);
        }
        bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(inputStreamOpen, false);
        this.decoder = bitmapRegionDecoderNewInstance;
        return new Point(this.decoder.getWidth(), this.decoder.getHeight());
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    @Override // cn.haorui.sdk.adsail_ad.view.scaleImage.decoder.ImageRegionDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isReady() {
        boolean z;
        BitmapRegionDecoder bitmapRegionDecoder = this.decoder;
        if (bitmapRegionDecoder != null) {
            z = !bitmapRegionDecoder.isRecycled();
        }
        return z;
    }

    @Override // cn.haorui.sdk.adsail_ad.view.scaleImage.decoder.ImageRegionDecoder
    public synchronized void recycle() {
        this.decoderLock.writeLock().lock();
        try {
            this.decoder.recycle();
            this.decoder = null;
        } finally {
            this.decoderLock.writeLock().unlock();
        }
    }
}
