package com.anythink.expressad.exoplayer.j;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.anythink.expressad.exoplayer.j.s;
import com.anythink.expressad.exoplayer.k.af;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class p implements s {
    public static final int a = 8000;
    public static final int b = 8000;
    private static final String d = "DefaultHttpDataSource";
    private static final int e = 20;
    private static final long f = 2048;
    private static final Pattern g = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    private static final AtomicReference<byte[]> h = new AtomicReference<>();
    private final boolean i;
    private final int j;
    private final int k;
    private final String l;
    private final com.anythink.expressad.exoplayer.k.u<String> m;
    private final s.f n;
    private final s.f o;
    private final aa<? super p> p;
    private k q;
    private HttpURLConnection r;
    private InputStream s;
    private boolean t;
    private long u;
    private long v;
    private long w;
    private long x;

    private p(String str, com.anythink.expressad.exoplayer.k.u<String> uVar) {
        this(str, uVar, null);
    }

    private p(String str, com.anythink.expressad.exoplayer.k.u<String> uVar, aa<? super p> aaVar) {
        this(str, uVar, aaVar, (byte) 0);
    }

    private p(String str, com.anythink.expressad.exoplayer.k.u<String> uVar, aa<? super p> aaVar, byte b2) {
        this(str, uVar, aaVar, 8000, 8000, false, null);
    }

    public p(String str, com.anythink.expressad.exoplayer.k.u<String> uVar, aa<? super p> aaVar, int i, int i2, boolean z, s.f fVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.l = str;
        this.m = uVar;
        this.p = aaVar;
        this.o = new s.f();
        this.j = i;
        this.k = i2;
        this.i = z;
        this.n = fVar;
    }

    private static long a(HttpURLConnection httpURLConnection) {
        long j;
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        if (TextUtils.isEmpty(headerField)) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(headerField);
            } catch (NumberFormatException unused) {
                Log.e(d, "Unexpected Content-Length [" + headerField + "]");
                j = -1;
            }
        }
        String headerField2 = httpURLConnection.getHeaderField("Content-Range");
        if (TextUtils.isEmpty(headerField2)) {
            return j;
        }
        Matcher matcher = g.matcher(headerField2);
        if (!matcher.find()) {
            return j;
        }
        try {
            long j2 = (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
            if (j < 0) {
                return j2;
            }
            if (j == j2) {
                return j;
            }
            Log.w(d, "Inconsistent headers [" + headerField + "] [" + headerField2 + "]");
            return Math.max(j, j2);
        } catch (NumberFormatException unused2) {
            Log.e(d, "Unexpected Content-Range [" + headerField2 + "]");
            return j;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private HttpURLConnection a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z3) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.j);
        httpURLConnection.setReadTimeout(this.k);
        s.f fVar = this.n;
        if (fVar != null) {
            for (Map.Entry<String, String> entry : fVar.b().entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, String> entry2 : this.o.b().entrySet()) {
            httpURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (j != 0 || j2 != -1) {
            String str = "bytes=" + j + "-";
            if (j2 != -1) {
                str = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, str);
        }
        httpURLConnection.setRequestProperty("User-Agent", this.l);
        if (!z) {
            httpURLConnection.setRequestProperty(HttpRequest.HEADER_ACCEPT_ENCODING, "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z3);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length != 0) {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
            } else {
                httpURLConnection.connect();
            }
        }
        return httpURLConnection;
    }

    private static URL a(URL url, String str) throws ProtocolException {
        if (str == null) {
            throw new ProtocolException("Null location redirect");
        }
        URL url2 = new URL(url, str);
        String protocol = url2.getProtocol();
        if ("https".equals(protocol) || "http".equals(protocol)) {
            return url2;
        }
        throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
    }

    private static void a(HttpURLConnection httpURLConnection, long j) {
        int i = af.a;
        if (i == 19 || i == 20) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (j == -1) {
                    if (inputStream.read() == -1) {
                        return;
                    }
                } else if (j <= 2048) {
                    return;
                }
                String name = inputStream.getClass().getName();
                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception unused) {
            }
        }
    }

    private int b(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.v;
        if (j != -1) {
            long j2 = j - this.x;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int i3 = this.s.read(bArr, i, i2);
        if (i3 == -1) {
            if (this.v == -1) {
                return -1;
            }
            throw new EOFException();
        }
        this.x += (long) i3;
        aa<? super p> aaVar = this.p;
        if (aaVar != null) {
            aaVar.a(i3);
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005e, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private HttpURLConnection b(k kVar) throws IOException {
        URL url = new URL(kVar.c.toString());
        byte[] bArr = kVar.d;
        long j = kVar.f;
        long j2 = kVar.g;
        boolean zA = kVar.a(1);
        if (!this.i) {
            return a(url, bArr, j, j2, zA, true);
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i > 20) {
                throw new NoRouteToHostException("Too many redirects: ".concat(String.valueOf(i2)));
            }
            HttpURLConnection httpURLConnectionA = a(url, bArr, j, j2, zA, false);
            int responseCode = httpURLConnectionA.getResponseCode();
            if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && (bArr != null || (responseCode != 307 && responseCode != 308))) {
                break;
            }
            bArr = null;
            String headerField = httpURLConnectionA.getHeaderField("Location");
            httpURLConnectionA.disconnect();
            if (headerField == null) {
                throw new ProtocolException("Null location redirect");
            }
            URL url2 = new URL(url, headerField);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !"http".equals(protocol)) {
                throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
            }
            url = url2;
            i = i2;
        }
    }

    private HttpURLConnection e() {
        return this.r;
    }

    private long f() {
        return this.w;
    }

    private long g() {
        return this.x;
    }

    private long h() {
        long j = this.v;
        return j == -1 ? j : j - this.x;
    }

    private void i() throws IOException {
        if (this.w == this.u) {
            return;
        }
        byte[] andSet = h.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (true) {
            long j = this.w;
            long j2 = this.u;
            if (j == j2) {
                h.set(andSet);
                return;
            }
            int i = this.s.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
            if (Thread.currentThread().isInterrupted()) {
                throw new InterruptedIOException();
            }
            if (i == -1) {
                throw new EOFException();
            }
            this.w += (long) i;
            aa<? super p> aaVar = this.p;
            if (aaVar != null) {
                aaVar.a(i);
            }
        }
    }

    private void j() {
        HttpURLConnection httpURLConnection = this.r;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                Log.e(d, "Unexpected error while disconnecting", e2);
            }
            this.r = null;
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.s, com.anythink.expressad.exoplayer.j.h
    public final int a(byte[] bArr, int i, int i2) throws s.c {
        try {
            if (this.w != this.u) {
                byte[] andSet = h.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (true) {
                    long j = this.w;
                    long j2 = this.u;
                    if (j == j2) {
                        h.set(andSet);
                        break;
                    }
                    int i3 = this.s.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (i3 == -1) {
                        throw new EOFException();
                    }
                    this.w += (long) i3;
                    aa<? super p> aaVar = this.p;
                    if (aaVar != null) {
                        aaVar.a(i3);
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.v;
            if (j3 != -1) {
                long j4 = j3 - this.x;
                if (j4 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j4);
            }
            int i4 = this.s.read(bArr, i, i2);
            if (i4 == -1) {
                if (this.v == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.x += (long) i4;
            aa<? super p> aaVar2 = this.p;
            if (aaVar2 != null) {
                aaVar2.a(i4);
            }
            return i4;
        } catch (IOException e2) {
            throw new s.c(e2, this.q, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00db  */
    @Override // com.anythink.expressad.exoplayer.j.s, com.anythink.expressad.exoplayer.j.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(k kVar) throws s.c {
        HttpURLConnection httpURLConnectionA;
        HttpURLConnection httpURLConnectionA2;
        long j;
        aa<? super p> aaVar;
        this.q = kVar;
        long j2 = 0;
        this.x = 0L;
        this.w = 0L;
        try {
            URL url = new URL(kVar.c.toString());
            byte[] bArr = kVar.d;
            long j3 = kVar.f;
            long j4 = kVar.g;
            boolean zA = kVar.a(1);
            if (this.i) {
                int i = 0;
                URL url2 = url;
                byte[] bArr2 = bArr;
                while (true) {
                    int i2 = i + 1;
                    if (i > 20) {
                        throw new NoRouteToHostException("Too many redirects: ".concat(String.valueOf(i2)));
                    }
                    URL url3 = url2;
                    long j5 = j4;
                    long j6 = j3;
                    httpURLConnectionA = a(url2, bArr2, j3, j4, zA, false);
                    int responseCode = httpURLConnectionA.getResponseCode();
                    if (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303 && (bArr2 != null || (responseCode != 307 && responseCode != 308))) {
                        break;
                    }
                    bArr2 = null;
                    String headerField = httpURLConnectionA.getHeaderField("Location");
                    httpURLConnectionA.disconnect();
                    if (headerField == null) {
                        throw new ProtocolException("Null location redirect");
                    }
                    url2 = new URL(url3, headerField);
                    String protocol = url2.getProtocol();
                    if (!"https".equals(protocol) && !"http".equals(protocol)) {
                        throw new ProtocolException("Unsupported protocol redirect: ".concat(String.valueOf(protocol)));
                    }
                    i = i2;
                    j4 = j5;
                    j3 = j6;
                }
                httpURLConnectionA2 = httpURLConnectionA;
            } else {
                httpURLConnectionA2 = a(url, bArr, j3, j4, zA, true);
            }
            this.r = httpURLConnectionA2;
            try {
                int responseCode2 = httpURLConnectionA2.getResponseCode();
                if (responseCode2 < 200 || responseCode2 > 299) {
                    Map<String, List<String>> headerFields = this.r.getHeaderFields();
                    j();
                    s.e eVar = new s.e(responseCode2, headerFields, kVar);
                    if (responseCode2 != 416) {
                        throw eVar;
                    }
                    eVar.initCause(new i());
                    throw eVar;
                }
                String contentType = this.r.getContentType();
                com.anythink.expressad.exoplayer.k.u<String> uVar = this.m;
                if (uVar != null && !uVar.a(contentType)) {
                    j();
                    throw new s.d(contentType, kVar);
                }
                if (responseCode2 == 200) {
                    long j7 = kVar.f;
                    if (j7 != 0) {
                        j2 = j7;
                    }
                }
                this.u = j2;
                try {
                    if (!kVar.a(1)) {
                        j = kVar.g;
                        if (j == -1) {
                            long jA = a(this.r);
                            this.v = jA != -1 ? jA - this.u : -1L;
                        }
                        this.s = this.r.getInputStream();
                        this.t = true;
                        aaVar = this.p;
                        if (aaVar != null) {
                            aaVar.b();
                        }
                        return this.v;
                    }
                    j = kVar.g;
                    this.s = this.r.getInputStream();
                    this.t = true;
                    aaVar = this.p;
                    if (aaVar != null) {
                    }
                    return this.v;
                } catch (IOException e2) {
                    j();
                    throw new s.c(e2, kVar, 1);
                }
                this.v = j;
            } catch (IOException e3) {
                j();
                throw new s.c("Unable to connect to " + kVar.c.toString(), e3, kVar);
            }
        } catch (IOException e4) {
            throw new s.c("Unable to connect to " + kVar.c.toString(), e4, kVar);
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.h
    public final Uri a() {
        HttpURLConnection httpURLConnection = this.r;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.anythink.expressad.exoplayer.j.s
    public final void a(String str) {
        com.anythink.expressad.exoplayer.k.a.a(str);
        this.o.a(str);
    }

    @Override // com.anythink.expressad.exoplayer.j.s
    public final void a(String str, String str2) {
        com.anythink.expressad.exoplayer.k.a.a(str);
        com.anythink.expressad.exoplayer.k.a.a(str2);
        this.o.a(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[Catch: Exception -> 0x0065, all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:3:0x0002, B:5:0x0006, B:9:0x0014, B:26:0x0065, B:29:0x006c, B:30:0x0074, B:14:0x001e, B:16:0x0026, B:21:0x0034, B:23:0x0044, B:25:0x004c, B:8:0x0011), top: B:45:0x0002, inners: #2 }] */
    @Override // com.anythink.expressad.exoplayer.j.s, com.anythink.expressad.exoplayer.j.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b() {
        try {
            if (this.s != null) {
                HttpURLConnection httpURLConnection = this.r;
                long j = this.v;
                if (j != -1) {
                    j -= this.x;
                }
                int i = af.a;
                if (i == 19 || i == 20) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (j == -1) {
                            if (inputStream.read() != -1) {
                                String name = inputStream.getClass().getName();
                                if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                                    declaredMethod.setAccessible(true);
                                    declaredMethod.invoke(inputStream, new Object[0]);
                                }
                            }
                        } else if (j > 2048) {
                        }
                    } catch (Exception unused) {
                    }
                }
                try {
                    this.s.close();
                } catch (IOException e2) {
                    throw new s.c(e2, this.q, 3);
                }
            }
        } finally {
            this.s = null;
            j();
            if (this.t) {
                this.t = false;
                aa<? super p> aaVar = this.p;
                if (aaVar != null) {
                    aaVar.c();
                }
            }
        }
    }

    @Override // com.anythink.expressad.exoplayer.j.s
    public final Map<String, List<String>> c() {
        HttpURLConnection httpURLConnection = this.r;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // com.anythink.expressad.exoplayer.j.s
    public final void d() {
        this.o.a();
    }
}
