package com.iflytek.voiceads.download.b.a;

import android.os.Process;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a implements Runnable {
    private com.iflytek.voiceads.download.b.a a;
    private com.iflytek.voiceads.download.d.a b;
    private InterfaceC0181a c;
    private final int d = 10000;
    private final int e = 10000;

    /* JADX INFO: renamed from: com.iflytek.voiceads.download.b.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0181a {
        void a(long j, boolean z);

        void b();
    }

    public a(com.iflytek.voiceads.download.b.a aVar, com.iflytek.voiceads.download.d.a aVar2, InterfaceC0181a interfaceC0181a) {
        this.a = aVar;
        this.b = aVar2;
        this.c = interfaceC0181a;
    }

    private void a() throws Throwable {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.b.b()).openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (MalformedURLException e) {
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
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, "bytes=0-");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                a(httpURLConnection, false);
            } else {
                if (responseCode != 206) {
                    throw new com.iflytek.voiceads.download.e.a(3, "UnSupported response code:" + responseCode);
                }
                a(httpURLConnection, true);
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        } catch (MalformedURLException e5) {
            e = e5;
            throw new com.iflytek.voiceads.download.e.a(2, "Bad url.", e);
        } catch (ProtocolException e6) {
            e = e6;
            throw new com.iflytek.voiceads.download.e.a(4, "Protocol error", e);
        } catch (IOException e7) {
            e = e7;
            throw new com.iflytek.voiceads.download.e.a(5, "IO error", e);
        } catch (Exception e8) {
            e = e8;
            throw new com.iflytek.voiceads.download.e.a(5, "Unknown error", e);
        } catch (Throwable th2) {
            httpURLConnection2 = httpURLConnection;
            th = th2;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    private void a(HttpURLConnection httpURLConnection, boolean z) throws com.iflytek.voiceads.download.e.a {
        String headerField = httpURLConnection.getHeaderField("Content-Length");
        long contentLength = (TextUtils.isEmpty(headerField) || headerField.equals("0") || headerField.equals(HRConfig.GENDER_UNKNOWN)) ? httpURLConnection.getContentLength() : Long.parseLong(headerField);
        if (contentLength <= 0) {
            throw new com.iflytek.voiceads.download.e.a(6, "length <= 0");
        }
        if (this.b.k()) {
            throw new com.iflytek.voiceads.download.e.a(7);
        }
        this.c.a(contentLength, z);
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Process.setThreadPriority(10);
        try {
            a();
        } catch (com.iflytek.voiceads.download.e.a e) {
            this.c.b();
            this.b.a(e);
            this.b.a(5);
            this.a.a(this.b);
        }
    }
}
