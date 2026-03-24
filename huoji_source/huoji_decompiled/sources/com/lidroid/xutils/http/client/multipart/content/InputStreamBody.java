package com.lidroid.xutils.http.client.multipart.content;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.anythink.expressad.d.a.b;
import com.lidroid.xutils.http.client.multipart.MIME;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class InputStreamBody extends AbstractContentBody {
    private final String filename;
    private final InputStream in;
    private long length;

    public InputStreamBody(InputStream inputStream, long j) {
        this(inputStream, j, "no_name", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
    }

    public InputStreamBody(InputStream inputStream, long j, String str) {
        this(inputStream, j, str, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
    }

    public InputStreamBody(InputStream inputStream, long j, String str, String str2) {
        super(str2);
        if (inputStream == null) {
            throw new IllegalArgumentException("Input stream may not be null");
        }
        this.in = inputStream;
        this.filename = str;
        this.length = j;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getCharset() {
        return null;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public long getContentLength() {
        return this.length;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public String getFilename() {
        return this.filename;
    }

    public InputStream getInputStream() {
        return this.in;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
    public String getTransferEncoding() {
        return MIME.ENC_BINARY;
    }

    @Override // com.lidroid.xutils.http.client.multipart.content.ContentBody
    public void writeTo(OutputStream outputStream) throws IOException {
        MultipartEntity.CallBackInfo callBackInfo;
        if (outputStream == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        try {
            byte[] bArr = new byte[4096];
            do {
                int i = this.in.read(bArr);
                if (i == -1) {
                    outputStream.flush();
                    return;
                } else {
                    outputStream.write(bArr, 0, i);
                    callBackInfo = this.callBackInfo;
                    callBackInfo.pos += (long) i;
                }
            } while (callBackInfo.doCallBack(false));
            throw new InterruptedIOException(b.dO);
        } finally {
            IOUtils.closeQuietly(this.in);
        }
    }
}
