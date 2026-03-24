package com.lidroid.xutils.http.callback;

import android.text.TextUtils;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes2.dex */
public class FileDownloadHandler {
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        r14.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0079, code lost:
    
        if (r17 == null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007b, code lost:
    
        r17.updateProgress(r11, r4, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        com.lidroid.xutils.util.IOUtils.closeQuietly(r13);
        com.lidroid.xutils.util.IOUtils.closeQuietly(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008c, code lost:
    
        if (r8.exists() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0092, code lost:
    
        if (android.text.TextUtils.isEmpty(r20) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0094, code lost:
    
        r0 = new java.io.File(r8.getParent(), r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a1, code lost:
    
        if (r0.exists() != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a7, code lost:
    
        if (r8.renameTo(r0) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a9, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00aa, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ab, code lost:
    
        r0 = new java.io.File(r8.getParent(), java.lang.String.valueOf(java.lang.System.currentTimeMillis()) + r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c9, code lost:
    
        return r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File handleEntity(HttpEntity httpEntity, RequestCallBackHandler requestCallBackHandler, String str, boolean z, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        FileOutputStream fileOutputStream;
        BufferedInputStream bufferedInputStream = null;
        if (httpEntity == null || TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                file.createNewFile();
            }
        }
        long length = 0;
        try {
            if (z) {
                length = file.length();
                fileOutputStream = new FileOutputStream(str, true);
            } else {
                fileOutputStream = new FileOutputStream(str);
            }
            long j = length;
            long contentLength = httpEntity.getContentLength() + j;
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(httpEntity.getContent());
            try {
                bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                if (requestCallBackHandler != null) {
                    try {
                        if (requestCallBackHandler.updateProgress(contentLength, j, true)) {
                            byte[] bArr = new byte[4096];
                            while (true) {
                                long j2 = j;
                                int i = bufferedInputStream2.read(bArr);
                                if (i != -1) {
                                    bufferedOutputStream.write(bArr, 0, i);
                                    j = j2 + ((long) i);
                                    if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(contentLength, j, false)) {
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedInputStream = bufferedInputStream2;
                        IOUtils.closeQuietly(bufferedInputStream);
                        IOUtils.closeQuietly(bufferedOutputStream);
                        throw th;
                    }
                }
                IOUtils.closeQuietly(bufferedInputStream2);
                IOUtils.closeQuietly(bufferedOutputStream);
                return file;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedOutputStream = null;
        }
    }
}
