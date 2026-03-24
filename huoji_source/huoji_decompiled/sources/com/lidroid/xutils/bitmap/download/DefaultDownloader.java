package com.lidroid.xutils.bitmap.download;

import com.lidroid.xutils.BitmapUtils;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultDownloader extends Downloader {
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c5 A[SYNTHETIC] */
    @Override // com.lidroid.xutils.bitmap.download.Downloader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long downloadToStream(String str, OutputStream outputStream, BitmapUtils.BitmapLoadTask<?> bitmapLoadTask) {
        BufferedInputStream bufferedInputStream;
        long jCurrentTimeMillis;
        long contentLength;
        byte[] bArr;
        int i;
        if (bitmapLoadTask == null || bitmapLoadTask.isCancelled() || bitmapLoadTask.getTargetContainer() == null) {
            return -1L;
        }
        BufferedInputStream bufferedInputStream2 = null;
        OtherUtils.trustAllHttpsURLConnection();
        long j = 0;
        try {
        } catch (Throwable th) {
            th = th;
        }
        if (!str.startsWith("/")) {
            if (str.startsWith("assets/")) {
                InputStream inputStreamOpen = getContext().getAssets().open(str.substring(7, str.length()));
                contentLength = inputStreamOpen.available();
                bufferedInputStream = new BufferedInputStream(inputStreamOpen);
                jCurrentTimeMillis = Long.MAX_VALUE;
            } else {
                URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
                uRLConnectionOpenConnection.setConnectTimeout(getDefaultConnectTimeout());
                uRLConnectionOpenConnection.setReadTimeout(getDefaultReadTimeout());
                bufferedInputStream = new BufferedInputStream(uRLConnectionOpenConnection.getInputStream());
                try {
                    long expiration = uRLConnectionOpenConnection.getExpiration();
                    if (expiration < System.currentTimeMillis()) {
                        expiration = System.currentTimeMillis() + getDefaultExpiry();
                    }
                    jCurrentTimeMillis = expiration;
                    contentLength = uRLConnectionOpenConnection.getContentLength();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream2 = bufferedInputStream;
                }
            }
            bufferedInputStream2 = bufferedInputStream;
            if (!bitmapLoadTask.isCancelled()) {
                bArr = new byte[4096];
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
                while (true) {
                    i = bufferedInputStream2.read(bArr);
                    if (i == -1) {
                    }
                    LogUtils.e(th.getMessage(), th);
                    return -1L;
                    bitmapLoadTask.updateProgress(contentLength, j);
                }
                return -1L;
            }
            return -1L;
        }
        FileInputStream fileInputStream = new FileInputStream(str);
        contentLength = fileInputStream.available();
        BufferedInputStream bufferedInputStream3 = new BufferedInputStream(fileInputStream);
        try {
            jCurrentTimeMillis = System.currentTimeMillis() + getDefaultExpiry();
            bufferedInputStream2 = bufferedInputStream3;
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream2 = bufferedInputStream3;
        }
        if (!bitmapLoadTask.isCancelled() && bitmapLoadTask.getTargetContainer() != null) {
            bArr = new byte[4096];
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(outputStream);
            while (true) {
                i = bufferedInputStream2.read(bArr);
                if (i == -1) {
                    bufferedOutputStream2.write(bArr, 0, i);
                    j += (long) i;
                    if (bitmapLoadTask.isCancelled() || bitmapLoadTask.getTargetContainer() == null) {
                        break;
                    }
                    bitmapLoadTask.updateProgress(contentLength, j);
                } else {
                    bufferedOutputStream2.flush();
                    IOUtils.closeQuietly(bufferedInputStream2);
                    return jCurrentTimeMillis;
                }
                try {
                    LogUtils.e(th.getMessage(), th);
                    return -1L;
                } finally {
                    IOUtils.closeQuietly(bufferedInputStream2);
                }
            }
            return -1L;
        }
        return -1L;
    }
}
