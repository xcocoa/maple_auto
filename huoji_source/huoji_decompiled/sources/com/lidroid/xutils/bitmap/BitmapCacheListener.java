package com.lidroid.xutils.bitmap;

/* JADX INFO: loaded from: classes2.dex */
public interface BitmapCacheListener {
    void onClearCacheFinished();

    void onClearCacheFinished(String str);

    void onClearDiskCacheFinished();

    void onClearDiskCacheFinished(String str);

    void onClearMemoryCacheFinished();

    void onClearMemoryCacheFinished(String str);

    void onCloseCacheFinished();

    void onFlushCacheFinished();

    void onInitDiskFinished();

    void onInitMemoryCacheFinished();
}
