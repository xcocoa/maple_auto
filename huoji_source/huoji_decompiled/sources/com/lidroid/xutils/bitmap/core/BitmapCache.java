package com.lidroid.xutils.bitmap.core;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import cn.haorui.sdk.adsail_ad.view.scaleImage.SubsamplingScaleImageView;
import com.lidroid.xutils.BitmapUtils;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.cache.LruDiskCache;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapCache {
    private BitmapGlobalConfig globalConfig;
    private LruDiskCache mDiskLruCache;
    private LruMemoryCache<MemoryCacheKey, Bitmap> mMemoryCache;
    private final int DISK_CACHE_INDEX = 0;
    private final Object mDiskCacheLock = new Object();

    public class BitmapMeta {
        public byte[] data;
        public long expiryTimestamp;
        public FileInputStream inputStream;

        private BitmapMeta() {
        }

        public /* synthetic */ BitmapMeta(BitmapCache bitmapCache, BitmapMeta bitmapMeta) {
            this();
        }
    }

    public class MemoryCacheKey {
        private String subKey;
        private String uri;

        private MemoryCacheKey(String str, BitmapDisplayConfig bitmapDisplayConfig) {
            this.uri = str;
            this.subKey = bitmapDisplayConfig == null ? null : bitmapDisplayConfig.toString();
        }

        public /* synthetic */ MemoryCacheKey(BitmapCache bitmapCache, String str, BitmapDisplayConfig bitmapDisplayConfig, MemoryCacheKey memoryCacheKey) {
            this(str, bitmapDisplayConfig);
        }

        public boolean equals(Object obj) {
            String str;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MemoryCacheKey)) {
                return false;
            }
            MemoryCacheKey memoryCacheKey = (MemoryCacheKey) obj;
            if (!this.uri.equals(memoryCacheKey.uri)) {
                return false;
            }
            String str2 = this.subKey;
            if (str2 == null || (str = memoryCacheKey.subKey) == null) {
                return true;
            }
            return str2.equals(str);
        }

        public int hashCode() {
            return this.uri.hashCode();
        }
    }

    public BitmapCache(BitmapGlobalConfig bitmapGlobalConfig) {
        if (bitmapGlobalConfig == null) {
            throw new IllegalArgumentException("globalConfig may not be null");
        }
        this.globalConfig = bitmapGlobalConfig;
    }

    private Bitmap decodeBitmapMeta(BitmapMeta bitmapMeta, BitmapDisplayConfig bitmapDisplayConfig) throws IOException {
        if (bitmapMeta == null) {
            return null;
        }
        if (bitmapMeta.inputStream != null) {
            return (bitmapDisplayConfig == null || bitmapDisplayConfig.isShowOriginal()) ? BitmapDecoder.decodeFileDescriptor(bitmapMeta.inputStream.getFD()) : BitmapDecoder.decodeSampledBitmapFromDescriptor(bitmapMeta.inputStream.getFD(), bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
        }
        if (bitmapMeta.data != null) {
            return (bitmapDisplayConfig == null || bitmapDisplayConfig.isShowOriginal()) ? BitmapDecoder.decodeByteArray(bitmapMeta.data) : BitmapDecoder.decodeSampledBitmapFromByteArray(bitmapMeta.data, bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
        }
        return null;
    }

    private synchronized Bitmap rotateBitmapIfNeeded(String str, BitmapDisplayConfig bitmapDisplayConfig, Bitmap bitmap) {
        File bitmapFileFromDiskCache;
        if (bitmapDisplayConfig != null) {
            if (bitmapDisplayConfig.isAutoRotation() && (bitmapFileFromDiskCache = getBitmapFileFromDiskCache(str)) != null && bitmapFileFromDiskCache.exists()) {
                try {
                    int i = 0;
                    int attributeInt = new ExifInterface(bitmapFileFromDiskCache.getPath()).getAttributeInt("Orientation", 0);
                    if (attributeInt == 3) {
                        i = 180;
                    } else if (attributeInt == 6) {
                        i = 90;
                    } else if (attributeInt == 8) {
                        i = SubsamplingScaleImageView.ORIENTATION_270;
                    }
                    if (i != 0) {
                        Matrix matrix = new Matrix();
                        matrix.postRotate(i);
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                        bitmap.recycle();
                        bitmap = bitmapCreateBitmap;
                    }
                } catch (Throwable unused) {
                    return bitmap;
                }
            }
        }
        return bitmap;
    }

    public Bitmap addBitmapToMemoryCache(String str, BitmapDisplayConfig bitmapDisplayConfig, Bitmap bitmap, long j) throws IOException {
        BitmapFactory bitmapFactory;
        if (bitmapDisplayConfig != null && (bitmapFactory = bitmapDisplayConfig.getBitmapFactory()) != null) {
            bitmap = bitmapFactory.cloneNew().createBitmap(bitmap);
        }
        if (str != null && bitmap != null && this.globalConfig.isMemoryCacheEnabled() && this.mMemoryCache != null) {
            this.mMemoryCache.put(new MemoryCacheKey(this, str, bitmapDisplayConfig, null), bitmap, j);
        }
        return bitmap;
    }

    public void clearCache() {
        clearMemoryCache();
        clearDiskCache();
    }

    public void clearCache(String str) {
        clearMemoryCache(str);
        clearDiskCache(str);
    }

    public void clearDiskCache() {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null && !lruDiskCache.isClosed()) {
                try {
                    this.mDiskLruCache.delete();
                    this.mDiskLruCache.close();
                } catch (Throwable th) {
                    LogUtils.e(th.getMessage(), th);
                }
                this.mDiskLruCache = null;
            }
        }
        initDiskCache();
    }

    public void clearDiskCache(String str) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null && !lruDiskCache.isClosed()) {
                try {
                    this.mDiskLruCache.remove(str);
                } catch (Throwable th) {
                    LogUtils.e(th.getMessage(), th);
                }
            }
        }
    }

    public void clearMemoryCache() {
        LruMemoryCache<MemoryCacheKey, Bitmap> lruMemoryCache = this.mMemoryCache;
        if (lruMemoryCache != null) {
            lruMemoryCache.evictAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clearMemoryCache(String str) {
        MemoryCacheKey memoryCacheKey = new MemoryCacheKey(this, str, null, 0 == true ? 1 : 0);
        if (this.mMemoryCache != null) {
            while (this.mMemoryCache.containsKey(memoryCacheKey)) {
                this.mMemoryCache.remove(memoryCacheKey);
            }
        }
    }

    public void close() {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                try {
                    if (!lruDiskCache.isClosed()) {
                        this.mDiskLruCache.close();
                    }
                } catch (Throwable th) {
                    LogUtils.e(th.getMessage(), th);
                }
                this.mDiskLruCache = null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0062 A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #5 {all -> 0x0078, blocks: (B:16:0x0035, B:18:0x0045, B:22:0x004f, B:27:0x0062), top: B:75:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008e A[Catch: all -> 0x00b7, TRY_LEAVE, TryCatch #4 {all -> 0x00b7, blocks: (B:42:0x008e, B:54:0x00bb, B:39:0x0081), top: B:73:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bb A[Catch: all -> 0x00b7, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00b7, blocks: (B:42:0x008e, B:54:0x00bb, B:39:0x0081), top: B:73:0x0081 }] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11, types: [java.io.Closeable, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v2, types: [com.lidroid.xutils.bitmap.download.Downloader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bitmap downloadBitmap(String str, BitmapDisplayConfig bitmapDisplayConfig, BitmapUtils.BitmapLoadTask<?> bitmapLoadTask) {
        LruDiskCache.Snapshot snapshot;
        ?? NewOutputStream;
        Bitmap bitmapAddBitmapToMemoryCache;
        LruDiskCache.Editor editorEdit;
        long jDownloadToStream;
        BitmapMeta bitmapMeta = new BitmapMeta(this, null);
        try {
            if (this.globalConfig.isDiskCacheEnabled()) {
                if (this.mDiskLruCache == null) {
                    initDiskCache();
                }
                LruDiskCache lruDiskCache = this.mDiskLruCache;
                if (lruDiskCache != null) {
                    try {
                        snapshot = lruDiskCache.get(str);
                    } catch (Throwable th) {
                        th = th;
                        snapshot = null;
                        bitmapAddBitmapToMemoryCache = null;
                    }
                    if (snapshot == null) {
                        try {
                            editorEdit = this.mDiskLruCache.edit(str);
                        } catch (Throwable th2) {
                            th = th2;
                            bitmapAddBitmapToMemoryCache = null;
                            NewOutputStream = bitmapAddBitmapToMemoryCache;
                            try {
                                LogUtils.e(th.getMessage(), th);
                                NewOutputStream = NewOutputStream;
                                if (bitmapAddBitmapToMemoryCache == null) {
                                }
                                if (bitmapAddBitmapToMemoryCache != null) {
                                }
                                return bitmapAddBitmapToMemoryCache;
                            } catch (Throwable th3) {
                                th = th3;
                                try {
                                    LogUtils.e(th.getMessage(), th);
                                    return null;
                                } finally {
                                    IOUtils.closeQuietly((Closeable) NewOutputStream);
                                    IOUtils.closeQuietly(snapshot);
                                }
                            }
                        }
                        if (editorEdit != null) {
                            NewOutputStream = editorEdit.newOutputStream(0);
                            try {
                                jDownloadToStream = this.globalConfig.getDownloader().downloadToStream(str, NewOutputStream, bitmapLoadTask);
                                bitmapMeta.expiryTimestamp = jDownloadToStream;
                            } catch (Throwable th4) {
                                th = th4;
                                bitmapAddBitmapToMemoryCache = null;
                                LogUtils.e(th.getMessage(), th);
                                NewOutputStream = NewOutputStream;
                                if (bitmapAddBitmapToMemoryCache == null) {
                                }
                                if (bitmapAddBitmapToMemoryCache != null) {
                                }
                                return bitmapAddBitmapToMemoryCache;
                            }
                            if (jDownloadToStream < 0) {
                                editorEdit.abort();
                                IOUtils.closeQuietly((Closeable) NewOutputStream);
                                IOUtils.closeQuietly(snapshot);
                                return null;
                            }
                            editorEdit.setEntryExpiryTimestamp(jDownloadToStream);
                            editorEdit.commit();
                            snapshot = this.mDiskLruCache.get(str);
                            NewOutputStream = NewOutputStream;
                        }
                        if (snapshot == null) {
                            bitmapMeta.inputStream = snapshot.getInputStream(0);
                            bitmapAddBitmapToMemoryCache = decodeBitmapMeta(bitmapMeta, bitmapDisplayConfig);
                            NewOutputStream = NewOutputStream;
                            if (bitmapAddBitmapToMemoryCache == null) {
                                try {
                                    bitmapMeta.inputStream = null;
                                    this.mDiskLruCache.remove(str);
                                    NewOutputStream = NewOutputStream;
                                } catch (Throwable th5) {
                                    th = th5;
                                    LogUtils.e(th.getMessage(), th);
                                    NewOutputStream = NewOutputStream;
                                }
                            }
                        } else {
                            bitmapAddBitmapToMemoryCache = null;
                            NewOutputStream = NewOutputStream;
                        }
                    }
                    NewOutputStream = 0;
                    if (snapshot == null) {
                    }
                }
                if (bitmapAddBitmapToMemoryCache == null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        long jDownloadToStream2 = this.globalConfig.getDownloader().downloadToStream(str, byteArrayOutputStream, bitmapLoadTask);
                        bitmapMeta.expiryTimestamp = jDownloadToStream2;
                        if (jDownloadToStream2 < 0) {
                            IOUtils.closeQuietly(byteArrayOutputStream);
                            IOUtils.closeQuietly(snapshot);
                            return null;
                        }
                        bitmapMeta.data = byteArrayOutputStream.toByteArray();
                        NewOutputStream = byteArrayOutputStream;
                        bitmapAddBitmapToMemoryCache = decodeBitmapMeta(bitmapMeta, bitmapDisplayConfig);
                    } catch (Throwable th6) {
                        th = th6;
                        NewOutputStream = byteArrayOutputStream;
                        LogUtils.e(th.getMessage(), th);
                        return null;
                    }
                }
                if (bitmapAddBitmapToMemoryCache != null) {
                    bitmapAddBitmapToMemoryCache = addBitmapToMemoryCache(str, bitmapDisplayConfig, rotateBitmapIfNeeded(str, bitmapDisplayConfig, bitmapAddBitmapToMemoryCache), bitmapMeta.expiryTimestamp);
                }
                return bitmapAddBitmapToMemoryCache;
            }
            snapshot = null;
            bitmapAddBitmapToMemoryCache = null;
            NewOutputStream = 0;
            if (bitmapAddBitmapToMemoryCache == null) {
            }
            if (bitmapAddBitmapToMemoryCache != null) {
            }
            return bitmapAddBitmapToMemoryCache;
        } catch (Throwable th7) {
            th = th7;
            snapshot = null;
            NewOutputStream = 0;
        }
    }

    public void flush() {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                try {
                    lruDiskCache.flush();
                } catch (Throwable th) {
                    LogUtils.e(th.getMessage(), th);
                }
            }
        }
    }

    public File getBitmapFileFromDiskCache(String str) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache == null) {
                return null;
            }
            return lruDiskCache.getCacheFile(str, 0);
        }
    }

    public Bitmap getBitmapFromDiskCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        LruDiskCache.Snapshot snapshot;
        Bitmap bitmapDecodeFileDescriptor;
        if (str != null && this.globalConfig.isDiskCacheEnabled()) {
            if (this.mDiskLruCache == null) {
                initDiskCache();
            }
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                try {
                    snapshot = lruDiskCache.get(str);
                    if (snapshot != null) {
                        if (bitmapDisplayConfig != null) {
                            try {
                                bitmapDecodeFileDescriptor = bitmapDisplayConfig.isShowOriginal() ? BitmapDecoder.decodeFileDescriptor(snapshot.getInputStream(0).getFD()) : BitmapDecoder.decodeSampledBitmapFromDescriptor(snapshot.getInputStream(0).getFD(), bitmapDisplayConfig.getBitmapMaxSize(), bitmapDisplayConfig.getBitmapConfig());
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    LogUtils.e(th.getMessage(), th);
                                    return null;
                                } finally {
                                    IOUtils.closeQuietly(snapshot);
                                }
                            }
                        }
                        return addBitmapToMemoryCache(str, bitmapDisplayConfig, rotateBitmapIfNeeded(str, bitmapDisplayConfig, bitmapDecodeFileDescriptor), this.mDiskLruCache.getExpiryTimestamp(str));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    snapshot = null;
                }
            }
        }
        return null;
    }

    public Bitmap getBitmapFromMemCache(String str, BitmapDisplayConfig bitmapDisplayConfig) {
        MemoryCacheKey memoryCacheKey = null;
        if (this.mMemoryCache == null || !this.globalConfig.isMemoryCacheEnabled()) {
            return null;
        }
        return this.mMemoryCache.get(new MemoryCacheKey(this, str, bitmapDisplayConfig, memoryCacheKey));
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005b A[Catch: all -> 0x005d, DONT_GENERATE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000b, B:8:0x000f, B:10:0x0015, B:12:0x0026, B:14:0x002c, B:23:0x0054, B:24:0x005b, B:19:0x003d), top: B:31:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initDiskCache() {
        LruDiskCache lruDiskCache;
        synchronized (this.mDiskCacheLock) {
            if (this.globalConfig.isDiskCacheEnabled() && ((lruDiskCache = this.mDiskLruCache) == null || lruDiskCache.isClosed())) {
                File file = new File(this.globalConfig.getDiskCachePath());
                if (file.exists() || file.mkdirs()) {
                    long availableSpace = OtherUtils.getAvailableSpace(file);
                    long diskCacheSize = this.globalConfig.getDiskCacheSize();
                    if (availableSpace > diskCacheSize) {
                        availableSpace = diskCacheSize;
                    }
                    try {
                        LruDiskCache lruDiskCacheOpen = LruDiskCache.open(file, 1, 1, availableSpace);
                        this.mDiskLruCache = lruDiskCacheOpen;
                        lruDiskCacheOpen.setFileNameGenerator(this.globalConfig.getFileNameGenerator());
                        LogUtils.d("create disk cache success");
                    } catch (Throwable th) {
                        this.mDiskLruCache = null;
                        LogUtils.e("create disk cache error", th);
                    }
                }
            }
        }
    }

    public void initMemoryCache() {
        if (this.globalConfig.isMemoryCacheEnabled()) {
            if (this.mMemoryCache != null) {
                try {
                    clearMemoryCache();
                } catch (Throwable unused) {
                }
            }
            this.mMemoryCache = new LruMemoryCache<MemoryCacheKey, Bitmap>(this.globalConfig.getMemoryCacheSize()) { // from class: com.lidroid.xutils.bitmap.core.BitmapCache.1
                @Override // com.lidroid.xutils.cache.LruMemoryCache
                public int sizeOf(MemoryCacheKey memoryCacheKey, Bitmap bitmap) {
                    if (bitmap == null) {
                        return 0;
                    }
                    return bitmap.getRowBytes() * bitmap.getHeight();
                }
            };
        }
    }

    public void setDiskCacheFileNameGenerator(FileNameGenerator fileNameGenerator) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null && fileNameGenerator != null) {
                lruDiskCache.setFileNameGenerator(fileNameGenerator);
            }
        }
    }

    public void setDiskCacheSize(int i) {
        synchronized (this.mDiskCacheLock) {
            LruDiskCache lruDiskCache = this.mDiskLruCache;
            if (lruDiskCache != null) {
                lruDiskCache.setMaxSize(i);
            }
        }
    }

    public void setMemoryCacheSize(int i) {
        LruMemoryCache<MemoryCacheKey, Bitmap> lruMemoryCache = this.mMemoryCache;
        if (lruMemoryCache != null) {
            lruMemoryCache.setMaxSize(i);
        }
    }
}
