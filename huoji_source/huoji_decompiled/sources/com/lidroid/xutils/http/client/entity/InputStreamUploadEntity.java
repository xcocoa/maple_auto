package com.lidroid.xutils.http.client.entity;

import android.support.v4.media.session.PlaybackStateCompat;
import com.anythink.expressad.d.a.b;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;

/* JADX INFO: loaded from: classes2.dex */
public class InputStreamUploadEntity extends AbstractHttpEntity implements UploadEntity {
    private static final int BUFFER_SIZE = 2048;
    private final InputStream content;
    private final long length;
    private long uploadedSize = 0;
    private RequestCallBackHandler callBackHandler = null;

    public InputStreamUploadEntity(InputStream inputStream, long j) {
        if (inputStream == null) {
            throw new IllegalArgumentException("Source input stream may not be null");
        }
        this.content = inputStream;
        this.length = j;
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public void consumeContent() throws IOException {
        this.content.close();
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        return this.content;
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        return this.length;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return true;
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        int i;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        InputStream inputStream = this.content;
        try {
            byte[] bArr = new byte[2048];
            long j = this.length;
            if (j < 0) {
                while (true) {
                    int i2 = inputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, i2);
                    long j2 = this.uploadedSize + ((long) i2);
                    this.uploadedSize = j2;
                    RequestCallBackHandler requestCallBackHandler = this.callBackHandler;
                    if (requestCallBackHandler != null && !requestCallBackHandler.updateProgress(j2 + 1, j2, false)) {
                        throw new InterruptedIOException(b.dO);
                    }
                }
            } else {
                while (j > 0 && (i = inputStream.read(bArr, 0, (int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, j))) != -1) {
                    outputStream.write(bArr, 0, i);
                    long j3 = i;
                    j -= j3;
                    long j4 = j3 + this.uploadedSize;
                    this.uploadedSize = j4;
                    RequestCallBackHandler requestCallBackHandler2 = this.callBackHandler;
                    if (requestCallBackHandler2 != null && !requestCallBackHandler2.updateProgress(this.length, j4, false)) {
                        throw new InterruptedIOException(b.dO);
                    }
                }
            }
            outputStream.flush();
            RequestCallBackHandler requestCallBackHandler3 = this.callBackHandler;
            if (requestCallBackHandler3 != null) {
                requestCallBackHandler3.updateProgress(this.length, this.uploadedSize, true);
            }
        } finally {
            IOUtils.closeQuietly(inputStream);
        }
    }
}
