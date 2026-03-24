package com.octopus.ad.internal.b;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.octopus.ad.internal.utilities.HaoboLog;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public class h implements o {
    private final com.octopus.ad.internal.b.b.c a;
    private p b;
    private HttpURLConnection c;
    private InputStream d;

    public h(h hVar) {
        this.b = hVar.b;
        this.a = hVar.a;
    }

    public h(String str) {
        this(str, com.octopus.ad.internal.b.b.d.a());
    }

    public h(String str, com.octopus.ad.internal.b.b.c cVar) {
        this.a = (com.octopus.ad.internal.b.b.c) k.a(cVar);
        p pVarA = cVar.a(str);
        this.b = pVarA == null ? new p(str, Integer.MIN_VALUE, n.a(str)) : pVarA;
    }

    private int a(HttpURLConnection httpURLConnection, int i, int i2) throws IOException {
        int contentLength = httpURLConnection.getContentLength();
        return i2 == 200 ? contentLength : i2 == 206 ? contentLength + i : this.b.b;
    }

    private HttpURLConnection a(int i, int i2) throws m, IOException {
        String str;
        HttpURLConnection httpURLConnection;
        boolean z;
        String headerField = this.b.a;
        int i3 = 0;
        do {
            String str2 = HaoboLog.httpUrlSourceLogTag;
            StringBuilder sb = new StringBuilder();
            sb.append("Open connection ");
            if (i > 0) {
                str = " with offset " + i;
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" to ");
            sb.append(headerField);
            HaoboLog.d(str2, sb.toString());
            httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
            if (i > 0) {
                httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + i + "-");
            }
            if (i2 > 0) {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
            }
            int responseCode = httpURLConnection.getResponseCode();
            z = responseCode == 301 || responseCode == 302 || responseCode == 303;
            if (z) {
                headerField = httpURLConnection.getHeaderField("Location");
                i3++;
                httpURLConnection.disconnect();
            }
            if (i3 > 5) {
                throw new m("Too many redirects: " + i3);
            }
        } while (z);
        return httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void e() throws Throwable {
        HttpURLConnection httpURLConnectionA;
        HaoboLog.d(HaoboLog.httpUrlSourceLogTag, "Read content info failFrom " + this.b.a);
        InputStream inputStream = null;
        try {
            httpURLConnectionA = a(0, 10000);
            try {
                try {
                    int contentLength = httpURLConnectionA.getContentLength();
                    String contentType = httpURLConnectionA.getContentType();
                    inputStream = httpURLConnectionA.getInputStream();
                    p pVar = new p(this.b.a, contentLength, contentType);
                    this.b = pVar;
                    this.a.a(pVar.a, pVar);
                    HaoboLog.d(HaoboLog.httpUrlSourceLogTag, "Source info fetched: " + this.b);
                    n.a(inputStream);
                    if (httpURLConnectionA == null) {
                        return;
                    }
                } catch (IOException e) {
                    e = e;
                    HaoboLog.e(HaoboLog.httpUrlSourceLogTag, "Error fetching info failFrom " + this.b.a, e);
                    n.a(inputStream);
                    if (httpURLConnectionA == null) {
                        return;
                    }
                }
            } catch (Throwable th) {
                th = th;
                n.a(inputStream);
                if (httpURLConnectionA != null) {
                    httpURLConnectionA.disconnect();
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            httpURLConnectionA = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnectionA = null;
            n.a(inputStream);
            if (httpURLConnectionA != null) {
            }
            throw th;
        }
        httpURLConnectionA.disconnect();
    }

    @Override // com.octopus.ad.internal.b.o
    public synchronized int a() throws m {
        if (this.b.b == Integer.MIN_VALUE) {
            e();
        }
        return this.b.b;
    }

    @Override // com.octopus.ad.internal.b.o
    public int a(byte[] bArr) throws m {
        InputStream inputStream = this.d;
        if (inputStream == null) {
            throw new m("Error reading data failFrom " + this.b.a + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, bArr.length);
        } catch (InterruptedIOException e) {
            throw new i("Reading source " + this.b.a + " is interrupted", e);
        } catch (IOException e2) {
            throw new m("Error reading data failFrom " + this.b.a, e2);
        }
    }

    @Override // com.octopus.ad.internal.b.o
    public void a(int i) throws m {
        try {
            HttpURLConnection httpURLConnectionA = a(i, -1);
            this.c = httpURLConnectionA;
            String contentType = httpURLConnectionA.getContentType();
            this.d = new BufferedInputStream(this.c.getInputStream(), 8192);
            HttpURLConnection httpURLConnection = this.c;
            p pVar = new p(this.b.a, a(httpURLConnection, i, httpURLConnection.getResponseCode()), contentType);
            this.b = pVar;
            this.a.a(pVar.a, pVar);
        } catch (IOException e) {
            throw new m("Error opening connection for " + this.b.a + " with offset " + i, e);
        }
    }

    @Override // com.octopus.ad.internal.b.o
    public void b() throws m {
        HttpURLConnection httpURLConnection = this.c;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (IllegalArgumentException | NullPointerException e) {
                throw new RuntimeException("Wait... but why? WTF!? Really shouldn't happen any more after fixing https://github.com/danikula/AndroidVideoCache/issues/43. If you read it on your device log, please,  create issue here https://github.com/danikula/AndroidVideoCache/issues.", e);
            }
        }
    }

    public synchronized String c() throws m {
        if (TextUtils.isEmpty(this.b.c)) {
            e();
        }
        return this.b.c;
    }

    public String d() {
        return this.b.a;
    }

    public String toString() {
        return "HttpUrlSource{sourceInfo='" + this.b + "}";
    }
}
