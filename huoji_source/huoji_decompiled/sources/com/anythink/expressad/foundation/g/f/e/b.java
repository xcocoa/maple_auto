package com.anythink.expressad.foundation.g.f.e;

import android.text.TextUtils;
import com.anythink.expressad.foundation.g.f.c.c;
import com.anythink.expressad.foundation.g.f.d.f;
import com.anythink.expressad.foundation.g.f.i;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import z2.o000000O;

/* JADX INFO: loaded from: classes.dex */
public final class b implements com.anythink.expressad.foundation.g.f.e.a {
    private static final int a = 100;
    private com.anythink.expressad.foundation.g.f.c.a b;
    private SSLSocketFactory c;

    public static class a extends FilterInputStream {
        private final HttpURLConnection a;

        public a(HttpURLConnection httpURLConnection) {
            super(b.b(httpURLConnection));
            this.a = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            super.close();
            this.a.disconnect();
        }
    }

    public b(SSLSocketFactory sSLSocketFactory, com.anythink.expressad.foundation.g.f.c.a aVar) {
        this.c = sSLSocketFactory;
        this.b = aVar;
    }

    private HttpURLConnection a(URL url) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        com.anythink.expressad.foundation.g.f.c.a aVar = this.b;
        if (aVar == null || TextUtils.isEmpty(aVar.b) || TextUtils.isEmpty(this.b.c)) {
            uRLConnectionOpenConnection = url.openConnection();
        } else {
            Proxy.Type type = Proxy.Type.HTTP;
            com.anythink.expressad.foundation.g.f.c.a aVar2 = this.b;
            uRLConnectionOpenConnection = url.openConnection(new Proxy(type, new InetSocketAddress(aVar2.b, Integer.valueOf(aVar2.c).intValue())));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
        return httpURLConnection;
    }

    private HttpURLConnection a(URL url, i<?> iVar) throws IOException {
        URLConnection uRLConnectionOpenConnection;
        SSLSocketFactory sSLSocketFactory;
        com.anythink.expressad.foundation.g.f.c.a aVar = this.b;
        if (aVar == null || TextUtils.isEmpty(aVar.b) || TextUtils.isEmpty(this.b.c)) {
            uRLConnectionOpenConnection = url.openConnection();
        } else {
            Proxy.Type type = Proxy.Type.HTTP;
            com.anythink.expressad.foundation.g.f.c.a aVar2 = this.b;
            uRLConnectionOpenConnection = url.openConnection(new Proxy(type, new InetSocketAddress(aVar2.b, Integer.valueOf(aVar2.c).intValue())));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
        int iK = iVar.k();
        httpURLConnection.setConnectTimeout(iK);
        httpURLConnection.setReadTimeout(iK);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.c) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpURLConnection;
    }

    private static List<c> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new c(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static void a(HttpURLConnection httpURLConnection, i<?> iVar) throws ProtocolException {
        switch (iVar.a()) {
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, iVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_PUT);
                b(httpURLConnection, iVar);
                return;
            case 3:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_DELETE);
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_OPTIONS);
                return;
            case 6:
                httpURLConnection.setRequestMethod(HttpRequest.METHOD_TRACE);
                return;
            case 7:
                b(httpURLConnection, iVar);
                httpURLConnection.setRequestMethod(o000000O.OooO00o.OooO00o);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static boolean a(int i, int i2) {
        if (i != 4) {
            return ((100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream b(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static void b(HttpURLConnection httpURLConnection, i<?> iVar) {
        byte[] bArrH = iVar.h();
        if (bArrH != null) {
            boolean z = iVar instanceof f;
            if (z) {
                httpURLConnection.setChunkedStreamingMode(2048);
            }
            httpURLConnection.setDoOutput(true);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(bArrH);
            if (z) {
                iVar.a((OutputStream) dataOutputStream);
            }
            dataOutputStream.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0 A[Catch: all -> 0x0121, TryCatch #1 {all -> 0x0121, blocks: (B:15:0x006f, B:16:0x007b, B:18:0x0081, B:19:0x0097, B:20:0x009b, B:21:0x009e, B:56:0x011b, B:57:0x0120, B:22:0x00a2, B:23:0x00a7, B:32:0x00c9, B:34:0x00d0, B:47:0x00ec, B:54:0x0113, B:55:0x011a, B:28:0x00b7, B:29:0x00bc, B:30:0x00c0), top: B:64:0x006f }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0113 A[Catch: all -> 0x0121, TRY_ENTER, TryCatch #1 {all -> 0x0121, blocks: (B:15:0x006f, B:16:0x007b, B:18:0x0081, B:19:0x0097, B:20:0x009b, B:21:0x009e, B:56:0x011b, B:57:0x0120, B:22:0x00a2, B:23:0x00a7, B:32:0x00c9, B:34:0x00d0, B:47:0x00ec, B:54:0x0113, B:55:0x011a, B:28:0x00b7, B:29:0x00bc, B:30:0x00c0), top: B:64:0x006f }] */
    @Override // com.anythink.expressad.foundation.g.f.e.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.anythink.expressad.foundation.g.f.f.b a(i<?> iVar) throws Throwable {
        URLConnection uRLConnectionOpenConnection;
        String str;
        int responseCode;
        SSLSocketFactory sSLSocketFactory;
        URL url = new URL(iVar.d());
        com.anythink.expressad.foundation.g.f.c.a aVar = this.b;
        if (aVar == null || TextUtils.isEmpty(aVar.b) || TextUtils.isEmpty(this.b.c)) {
            uRLConnectionOpenConnection = url.openConnection();
        } else {
            Proxy.Type type = Proxy.Type.HTTP;
            com.anythink.expressad.foundation.g.f.c.a aVar2 = this.b;
            uRLConnectionOpenConnection = url.openConnection(new Proxy(type, new InetSocketAddress(aVar2.b, Integer.valueOf(aVar2.c).intValue())));
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        boolean z = false;
        httpURLConnection.setInstanceFollowRedirects(false);
        int iK = iVar.k();
        httpURLConnection.setConnectTimeout(iK);
        httpURLConnection.setReadTimeout(iK);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        if ("https".equals(url.getProtocol()) && (sSLSocketFactory = this.c) != null) {
            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        try {
            for (Map.Entry<String, String> entry : iVar.g().entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
            switch (iVar.a()) {
                case 0:
                    str = "GET";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                        throw new IOException("Could not retrieve response code from HttpUrlConnection.");
                    }
                    if (!((iVar.a() == 4 || (100 <= responseCode && responseCode < 200) || responseCode == 204 || responseCode == 304) ? false : true)) {
                        com.anythink.expressad.foundation.g.f.f.b bVar = new com.anythink.expressad.foundation.g.f.f.b(responseCode, a(httpURLConnection.getHeaderFields()));
                        httpURLConnection.disconnect();
                        return bVar;
                    }
                    try {
                        return new com.anythink.expressad.foundation.g.f.f.b(responseCode, a(httpURLConnection.getHeaderFields()), new a(httpURLConnection));
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        if (!z) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                case 1:
                    httpURLConnection.setRequestMethod("POST");
                    b(httpURLConnection, iVar);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 2:
                    httpURLConnection.setRequestMethod(HttpRequest.METHOD_PUT);
                    b(httpURLConnection, iVar);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 3:
                    str = HttpRequest.METHOD_DELETE;
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 4:
                    str = "HEAD";
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 5:
                    str = HttpRequest.METHOD_OPTIONS;
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 6:
                    str = HttpRequest.METHOD_TRACE;
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                case 7:
                    b(httpURLConnection, iVar);
                    str = o000000O.OooO00o.OooO00o;
                    httpURLConnection.setRequestMethod(str);
                    responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != -1) {
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown method type.");
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
