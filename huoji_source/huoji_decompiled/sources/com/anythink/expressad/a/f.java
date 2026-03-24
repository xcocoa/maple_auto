package com.anythink.expressad.a;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPInputStream;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static final String a = "f";
    private static final int b = 60000;
    private com.anythink.expressad.d.a c;
    private String d;
    private boolean e = true;
    private final int f = 3145728;
    private a g;

    public static class a {
        public String a;
        public String b;
        public String c;
        public String d;
        public int e;
        public int f;
        public String g;
        public String h;

        public final String a() {
            return "statusCode=" + this.f + ", location=" + this.a + ", contentType=" + this.b + ", contentLength=" + this.e + ", contentEncoding=" + this.c + ", referer=" + this.d;
        }

        public final String toString() {
            return "http header:...\nstatusCode=" + this.f + ", location=" + this.a + ", contentType=" + this.b + ", contentLength=" + this.e + ", contentEncoding=" + this.c + ", referer=" + this.d;
        }
    }

    public f() {
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.foundation.b.a.c().f();
        com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
        this.c = aVarB;
        if (aVarB == null) {
            com.anythink.expressad.d.b.a();
            this.c = com.anythink.expressad.d.b.c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033 A[Catch: all -> 0x002c, TryCatch #5 {all -> 0x002c, blocks: (B:4:0x0008, B:5:0x000e, B:19:0x002f, B:21:0x0033, B:22:0x0040), top: B:36:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045 A[Catch: Exception -> 0x0049, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x0049, blocks: (B:10:0x0022, B:24:0x0045), top: B:39:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String a(InputStream inputStream, boolean z) throws Throwable {
        Throwable th;
        Exception e;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            if (z) {
                try {
                    try {
                        inputStream = new GZIPInputStream(inputStream);
                    } catch (Exception e2) {
                        e = e2;
                        if (this.g == null) {
                            a aVar = new a();
                            this.g = aVar;
                            aVar.h = e.getMessage();
                        }
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return sb.toString();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        break;
                    }
                    sb.append(line);
                } catch (Exception e4) {
                    e = e4;
                    bufferedReader = bufferedReader2;
                    if (this.g == null) {
                    }
                    e.printStackTrace();
                    if (bufferedReader != null) {
                    }
                    return sb.toString();
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                    }
                    throw th;
                }
            }
            bufferedReader2.close();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return sb.toString();
    }

    private void a(boolean z) {
        this.e = z;
    }

    public final a a(String str, boolean z, boolean z3, com.anythink.expressad.foundation.d.c cVar) {
        int i;
        byte[] bytes;
        HttpURLConnection httpURLConnection = null;
        if (!URLUtil.isNetworkUrl(str)) {
            return null;
        }
        String strReplace = str.replace(o4.OooO00o.OooO0Oo, "%20");
        URLUtil.isHttpsUrl(strReplace);
        this.g = new a();
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(strReplace).openConnection();
            try {
                httpURLConnection2.setRequestMethod("GET");
                if ((!z && !z3) || cVar == null) {
                    httpURLConnection2.setRequestProperty("User-Agent", com.anythink.core.common.o.e.i());
                }
                if (z && cVar != null && cVar.E() == 1) {
                    httpURLConnection2.setRequestProperty("User-Agent", com.anythink.core.common.o.e.i());
                }
                if (z3 && cVar != null && cVar.D() == 1) {
                    httpURLConnection2.setRequestProperty("User-Agent", com.anythink.core.common.o.e.i());
                }
                httpURLConnection2.setRequestProperty(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip");
                if (this.c.v() && !TextUtils.isEmpty(this.d)) {
                    httpURLConnection2.setRequestProperty(RequestParameters.SUBRESOURCE_REFERER, this.d);
                }
                httpURLConnection2.setConnectTimeout(b);
                httpURLConnection2.setReadTimeout(b);
                httpURLConnection2.setInstanceFollowRedirects(false);
                httpURLConnection2.connect();
                this.g.a = httpURLConnection2.getHeaderField("Location");
                this.g.d = httpURLConnection2.getHeaderField(HttpRequest.HEADER_REFERER);
                this.g.f = httpURLConnection2.getResponseCode();
                this.g.b = httpURLConnection2.getContentType();
                this.g.e = httpURLConnection2.getContentLength();
                this.g.c = httpURLConnection2.getContentEncoding();
                boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(this.g.c);
                a aVar = this.g;
                if (aVar.f == 200 && this.e && (i = aVar.e) > 0 && i < 3145728 && !TextUtils.isEmpty(strReplace) && !strReplace.endsWith(com.anythink.china.common.a.a.g)) {
                    try {
                        String strA = a(httpURLConnection2.getInputStream(), zEqualsIgnoreCase);
                        if (!TextUtils.isEmpty(strA) && (bytes = strA.getBytes()) != null && bytes.length > 0 && bytes.length < 3145728) {
                            this.g.g = strA.trim();
                        }
                    } catch (Throwable unused) {
                    }
                }
                this.d = strReplace;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                return this.g;
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                try {
                    this.g.h = th.getMessage();
                    return this.g;
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
