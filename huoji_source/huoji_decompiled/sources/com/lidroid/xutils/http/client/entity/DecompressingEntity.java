package com.lidroid.xutils.http.client.entity;

import com.anythink.expressad.d.a.b;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DecompressingEntity extends HttpEntityWrapper implements UploadEntity {
    private RequestCallBackHandler callBackHandler;
    private InputStream content;
    private long uncompressedLength;
    private long uploadedSize;

    public DecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
        this.uploadedSize = 0L;
        this.callBackHandler = null;
        this.uncompressedLength = httpEntity.getContentLength();
    }

    private InputStream getDecompressingStream() throws IOException {
        try {
            return decorate(((HttpEntityWrapper) this).wrappedEntity.getContent());
        } catch (IOException e) {
            IOUtils.closeQuietly((Closeable) null);
            throw e;
        }
    }

    public abstract InputStream decorate(InputStream inputStream) throws IOException;

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public InputStream getContent() throws IOException {
        if (!((HttpEntityWrapper) this).wrappedEntity.isStreaming()) {
            return getDecompressingStream();
        }
        if (this.content == null) {
            this.content = getDecompressingStream();
        }
        return this.content;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public long getContentLength() {
        return -1L;
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        try {
            InputStream content = getContent();
            byte[] bArr = new byte[4096];
            while (true) {
                int i = content.read(bArr);
                if (i == -1) {
                    outputStream.flush();
                    RequestCallBackHandler requestCallBackHandler = this.callBackHandler;
                    if (requestCallBackHandler != null) {
                        requestCallBackHandler.updateProgress(this.uncompressedLength, this.uploadedSize, true);
                    }
                    IOUtils.closeQuietly(content);
                    return;
                }
                outputStream.write(bArr, 0, i);
                long j = this.uploadedSize + ((long) i);
                this.uploadedSize = j;
                RequestCallBackHandler requestCallBackHandler2 = this.callBackHandler;
                if (requestCallBackHandler2 != null && !requestCallBackHandler2.updateProgress(this.uncompressedLength, j, false)) {
                    throw new InterruptedIOException(b.dO);
                }
            }
        } catch (Throwable th) {
            IOUtils.closeQuietly((Closeable) null);
            throw th;
        }
    }
}
