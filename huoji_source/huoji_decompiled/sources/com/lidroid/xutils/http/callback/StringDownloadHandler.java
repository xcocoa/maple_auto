package com.lidroid.xutils.http.callback;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.http.HttpEntity;

/* JADX INFO: loaded from: classes2.dex */
public class StringDownloadHandler {
    public String handleEntity(HttpEntity httpEntity, RequestCallBackHandler requestCallBackHandler, String str) throws IOException {
        InputStream content = null;
        if (httpEntity == null) {
            return null;
        }
        long jSizeOfString = 0;
        long contentLength = httpEntity.getContentLength();
        if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(contentLength, 0L, true)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            content = httpEntity.getContent();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(content, str));
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line);
                    sb.append('\n');
                    jSizeOfString += OtherUtils.sizeOfString(line, str);
                    if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(contentLength, jSizeOfString, false)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            long j = jSizeOfString;
            if (requestCallBackHandler != null) {
                requestCallBackHandler.updateProgress(contentLength, j, true);
            }
            IOUtils.closeQuietly(content);
            return sb.toString().trim();
        } catch (Throwable th) {
            IOUtils.closeQuietly(content);
            throw th;
        }
    }
}
