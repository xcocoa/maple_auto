package com.iflytek.voiceads.download.b.b;

import android.os.Process;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import com.iflytek.voiceads.download.d.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a implements Runnable {
    private b a;
    private com.iflytek.voiceads.download.b.a b;
    private com.iflytek.voiceads.download.d.a c;
    private InterfaceC0182a d;
    private InputStream e;
    private long f;

    /* JADX INFO: renamed from: com.iflytek.voiceads.download.b.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0182a {
        void c();

        void d();

        void e();
    }

    public a(b bVar, com.iflytek.voiceads.download.b.a aVar, com.iflytek.voiceads.download.d.a aVar2, InterfaceC0182a interfaceC0182a) {
        this.a = bVar;
        this.b = aVar;
        this.c = aVar2;
        this.f = bVar.d();
        this.d = interfaceC0182a;
    }

    private void a() throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.a.a()).openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (com.iflytek.voiceads.download.e.a e) {
            e = e;
        } catch (ProtocolException e2) {
            e = e2;
        } catch (IOException e3) {
            e = e3;
        } catch (Exception e4) {
            e = e4;
        }
        try {
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty(HttpRequest.HEADER_ACCEPT, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
            httpURLConnection.setRequestProperty("Accept-Language", "zh-CN");
            httpURLConnection.setRequestProperty("Charset", "UTF-8");
            httpURLConnection.setRequestProperty("Connection", com.anythink.expressad.foundation.g.f.g.b.c);
            long jB = this.a.b() + this.f;
            if (this.c.i()) {
                httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=" + jB + "-" + this.a.c());
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 206 && responseCode != 200) {
                throw new com.iflytek.voiceads.download.e.a(8, "UnSupported response code:" + responseCode);
            }
            b();
            this.e = httpURLConnection.getInputStream();
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.c.c(), "rwd");
            randomAccessFile.seek(jB);
            byte[] bArr = new byte[4096];
            int i = 0;
            while (true) {
                int i2 = this.e.read(bArr);
                if (i2 == -1) {
                    break;
                }
                randomAccessFile.write(bArr, 0, i2);
                i += i2;
                synchronized (this.d) {
                    this.a.a(this.f + ((long) i));
                    this.d.c();
                }
            }
            this.d.d();
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (com.iflytek.voiceads.download.e.a e5) {
            e = e5;
            throw new com.iflytek.voiceads.download.e.a(7, "illegal error", e);
        } catch (ProtocolException e6) {
            e = e6;
            throw new com.iflytek.voiceads.download.e.a(4, "Protocol error", e);
        } catch (IOException e7) {
            e = e7;
            throw new com.iflytek.voiceads.download.e.a(5, "IO error", e);
        } catch (Exception e8) {
            e = e8;
            throw new com.iflytek.voiceads.download.e.a(9, "other error", e);
        } catch (Throwable th2) {
            httpURLConnection2 = httpURLConnection;
            th = th2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    private void b() {
        if (this.c != null && this.c.k()) {
            throw new com.iflytek.voiceads.download.e.a(7);
        }
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Process.setThreadPriority(10);
        try {
            b();
            a();
        } catch (com.iflytek.voiceads.download.e.a e) {
            this.d.e();
            this.c.a(e);
            this.c.a(5);
            this.b.a(this.c);
        }
    }
}
