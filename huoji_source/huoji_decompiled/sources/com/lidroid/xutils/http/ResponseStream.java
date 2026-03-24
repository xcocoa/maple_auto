package com.lidroid.xutils.http;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Locale;
import org.apache.http.HttpResponse;

/* JADX INFO: loaded from: classes2.dex */
public class ResponseStream extends InputStream {
    private String _directResult;
    private HttpResponse baseResponse;
    private InputStream baseStream;
    private String charset;
    private long expiry;
    private String requestMethod;
    private String requestUrl;

    public ResponseStream(String str) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("result may not be null");
        }
        this._directResult = str;
    }

    public ResponseStream(HttpResponse httpResponse, String str, long j) throws IOException {
        this(httpResponse, "UTF-8", str, j);
    }

    public ResponseStream(HttpResponse httpResponse, String str, String str2, long j) throws IOException {
        if (httpResponse == null) {
            throw new IllegalArgumentException("baseResponse may not be null");
        }
        this.baseResponse = httpResponse;
        this.baseStream = httpResponse.getEntity().getContent();
        this.charset = str;
        this.requestUrl = str2;
        this.expiry = j;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return 0;
        }
        return inputStream.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return;
        }
        inputStream.close();
    }

    public HttpResponse getBaseResponse() {
        return this.baseResponse;
    }

    public InputStream getBaseStream() {
        return this.baseStream;
    }

    public long getContentLength() {
        if (this.baseStream == null) {
            return 0L;
        }
        return this.baseResponse.getEntity().getContentLength();
    }

    public Locale getLocale() {
        return this._directResult != null ? Locale.getDefault() : this.baseResponse.getLocale();
    }

    public String getReasonPhrase() {
        return this._directResult != null ? "" : this.baseResponse.getStatusLine().getReasonPhrase();
    }

    public String getRequestMethod() {
        return this.requestMethod;
    }

    public String getRequestUrl() {
        return this.requestUrl;
    }

    public int getStatusCode() {
        if (this._directResult != null) {
            return 200;
        }
        return this.baseResponse.getStatusLine().getStatusCode();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return;
        }
        inputStream.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return false;
        }
        return inputStream.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return -1;
        }
        return inputStream.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return -1;
        }
        return inputStream.read(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return -1;
        }
        return inputStream.read(bArr, i, i2);
    }

    public void readFile(String str) throws Throwable {
        if (this._directResult != null || this.baseStream == null) {
            return;
        }
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str));
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.baseStream);
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i == -1) {
                        bufferedOutputStream2.flush();
                        IOUtils.closeQuietly(bufferedOutputStream2);
                        IOUtils.closeQuietly(this.baseStream);
                        return;
                    }
                    bufferedOutputStream2.write(bArr, 0, i);
                }
            } catch (Throwable th) {
                th = th;
                bufferedOutputStream = bufferedOutputStream2;
                IOUtils.closeQuietly(bufferedOutputStream);
                IOUtils.closeQuietly(this.baseStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public String readString() throws IOException {
        String str = this._directResult;
        if (str != null) {
            return str;
        }
        if (this.baseStream == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.baseStream, this.charset));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            this._directResult = sb.toString();
            if (this.requestUrl != null) {
                HttpCache httpCache = HttpUtils.sHttpCache;
                if (httpCache.isEnabled(this.requestMethod)) {
                    httpCache.put(this.requestUrl, this._directResult, this.expiry);
                }
            }
            return this._directResult;
        } finally {
            IOUtils.closeQuietly(this.baseStream);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return;
        }
        inputStream.reset();
    }

    public void setRequestMethod(String str) {
        this.requestMethod = str;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        InputStream inputStream = this.baseStream;
        if (inputStream == null) {
            return 0L;
        }
        return inputStream.skip(j);
    }
}
