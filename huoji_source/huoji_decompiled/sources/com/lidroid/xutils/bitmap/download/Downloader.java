package com.lidroid.xutils.bitmap.download;

import android.content.Context;
import com.lidroid.xutils.BitmapUtils;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Downloader {
    private Context context;
    private int defaultConnectTimeout;
    private long defaultExpiry;
    private int defaultReadTimeout;

    public abstract long downloadToStream(String str, OutputStream outputStream, BitmapUtils.BitmapLoadTask<?> bitmapLoadTask);

    public Context getContext() {
        return this.context;
    }

    public int getDefaultConnectTimeout() {
        return this.defaultConnectTimeout;
    }

    public long getDefaultExpiry() {
        return this.defaultExpiry;
    }

    public int getDefaultReadTimeout() {
        return this.defaultReadTimeout;
    }

    public void setContext(Context context) {
        this.context = context;
    }

    public void setDefaultConnectTimeout(int i) {
        this.defaultConnectTimeout = i;
    }

    public void setDefaultExpiry(long j) {
        this.defaultExpiry = j;
    }

    public void setDefaultReadTimeout(int i) {
        this.defaultReadTimeout = i;
    }
}
