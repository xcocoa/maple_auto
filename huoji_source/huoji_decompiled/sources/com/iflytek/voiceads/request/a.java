package com.iflytek.voiceads.request;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import z2.o4;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a extends Thread {
    private URL a;
    private Context b;
    private int d;
    private int e;
    private long f;
    private int c = 0;
    private boolean g = true;
    private ArrayList<byte[]> h = new ArrayList<>();
    private InterfaceC0184a i = null;

    /* JADX INFO: renamed from: com.iflytek.voiceads.request.a$a, reason: collision with other inner class name */
    public interface InterfaceC0184a {
        void a(Exception exc, int i);

        void a(byte[] bArr);
    }

    public static URL a(String str, String str2) throws MalformedURLException {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (!str.endsWith("?")) {
                str = str + "?";
            }
            str = str + str2;
        }
        if (str.contains(o4.OooO00o.OooO0Oo)) {
            str = str.replaceAll(o4.OooO00o.OooO0Oo, "%20");
        }
        return new URL(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5 A[Catch: Exception -> 0x00c9, TRY_LEAVE, TryCatch #3 {Exception -> 0x00c9, blocks: (B:30:0x00c0, B:32:0x00c5), top: B:49:0x00c0 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a() throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        inputStream2 = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            HttpURLConnection httpURLConnection3 = (HttpURLConnection) this.a.openConnection();
            try {
                try {
                    httpURLConnection3.setRequestMethod("GET");
                    a(httpURLConnection3);
                    httpURLConnection3.setConnectTimeout(this.e);
                    httpURLConnection3.setReadTimeout(this.e);
                    httpURLConnection3.setRequestProperty("User-Agent", com.iflytek.voiceads.param.d.b(null));
                    int responseCode = httpURLConnection3.getResponseCode();
                    if (200 == responseCode) {
                        inputStream3 = httpURLConnection3.getInputStream();
                        try {
                            b(a(inputStream3));
                        } catch (Exception e) {
                            inputStream = inputStream3;
                            httpURLConnection2 = httpURLConnection3;
                            e = e;
                            try {
                                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "runGet error!\n" + e.toString());
                                a(e, 71003);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e2) {
                                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "in close1:" + e2.getMessage());
                                        return;
                                    }
                                }
                                if (httpURLConnection2 != null) {
                                    httpURLConnection2.disconnect();
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                InputStream inputStream4 = inputStream;
                                httpURLConnection = httpURLConnection2;
                                inputStream2 = inputStream4;
                                if (inputStream2 != null) {
                                }
                                if (httpURLConnection != null) {
                                }
                                throw th;
                            }
                        }
                    } else {
                        a(new Exception("Http Request Failed!"), responseCode);
                    }
                    if (inputStream3 != null) {
                        try {
                            inputStream3.close();
                        } catch (Exception e3) {
                            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "in close1:" + e3.getMessage());
                            return;
                        }
                    }
                    if (httpURLConnection3 != null) {
                        httpURLConnection3.disconnect();
                    }
                } catch (Exception e4) {
                    inputStream = null;
                    httpURLConnection2 = httpURLConnection3;
                    e = e4;
                }
            } catch (Throwable th2) {
                httpURLConnection = httpURLConnection3;
                th = th2;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e5) {
                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "in close1:" + e5.getMessage());
                        throw th;
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Exception e6) {
            e = e6;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
        }
    }

    private void a(Exception exc, int i) {
        if (this.i != null) {
            this.i.a(exc, i);
        }
        if (this.g) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f;
            switch (this.d) {
                case 0:
                    com.iflytek.voiceads.utils.c.a(this.b, "reqDuration", jCurrentTimeMillis);
                    com.iflytek.voiceads.utils.c.a(this.b, "reqFailCnt", com.iflytek.voiceads.utils.c.a(this.b, "reqFailCnt") + 1);
                    break;
                case 1:
                    com.iflytek.voiceads.utils.c.a(this.b, "impDuration", jCurrentTimeMillis);
                    com.iflytek.voiceads.utils.c.a(this.b, "impFailCnt", com.iflytek.voiceads.utils.c.a(this.b, "impFailCnt") + 1);
                    break;
                case 2:
                    com.iflytek.voiceads.utils.c.a(this.b, "clkDuration", jCurrentTimeMillis);
                    com.iflytek.voiceads.utils.c.a(this.b, "clkFailCnt", com.iflytek.voiceads.utils.c.a(this.b, "clkFailCnt") + 1);
                    break;
            }
        }
    }

    private void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection instanceof HttpsURLConnection) {
            SSLContext sSLContextA = g.a();
            if (sSLContextA != null) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sSLContextA.getSocketFactory());
            }
            if (g.a != null) {
                ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(g.a);
            }
        }
    }

    private void a(byte[] bArr) {
        if (bArr != null) {
            this.h.add(bArr);
        }
    }

    private byte[] a(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i = bufferedInputStream.read(bArr, 0, bArr.length);
            if (i == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x010a A[Catch: Exception -> 0x0132, TryCatch #11 {Exception -> 0x0132, blocks: (B:39:0x0105, B:41:0x010a, B:43:0x010f), top: B:69:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010f A[Catch: Exception -> 0x0132, TRY_LEAVE, TryCatch #11 {Exception -> 0x0132, blocks: (B:39:0x0105, B:41:0x010a, B:43:0x010f), top: B:69:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b() throws Throwable {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        OutputStream outputStream = null;
        InputStream inputStream2 = null;
        outputStream = null;
        outputStream = null;
        outputStream = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) this.a.openConnection();
            try {
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setRequestMethod("POST");
                a(httpURLConnection2);
                httpURLConnection2.setConnectTimeout(this.e);
                httpURLConnection2.setReadTimeout(this.e);
                httpURLConnection2.setRequestProperty("Charset", "utf-8");
                httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                httpURLConnection2.setRequestProperty("User-Agent", com.iflytek.voiceads.param.d.b(null));
                OutputStream outputStream2 = httpURLConnection2.getOutputStream();
                try {
                    Iterator<byte[]> it = this.h.iterator();
                    while (it.hasNext()) {
                        outputStream2.write(it.next());
                    }
                    outputStream2.flush();
                    outputStream2.close();
                    int responseCode = httpURLConnection2.getResponseCode();
                    com.iflytek.voiceads.utils.g.a("IFLY_AD_SDK", "HttpRequest response code: " + responseCode);
                    if (200 == responseCode) {
                        inputStream2 = httpURLConnection2.getInputStream();
                        try {
                            b(a(inputStream2));
                        } catch (Exception e) {
                            httpURLConnection = httpURLConnection2;
                            e = e;
                            inputStream = inputStream2;
                            outputStream = outputStream2;
                            try {
                                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "runPost error!\n" + e.toString());
                                a(e, 71003);
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e2) {
                                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "in close2:" + e2.getMessage());
                                        return;
                                    }
                                }
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception e3) {
                                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "in close2:" + e3.getMessage());
                                        throw th;
                                    }
                                }
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            httpURLConnection = httpURLConnection2;
                            th = th2;
                            inputStream = inputStream2;
                            outputStream = outputStream2;
                            if (inputStream != null) {
                            }
                            if (outputStream != null) {
                            }
                            if (httpURLConnection != null) {
                            }
                            throw th;
                        }
                    } else {
                        a(new Exception("Http Request Failed."), responseCode);
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Exception e4) {
                            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "in close2:" + e4.getMessage());
                            return;
                        }
                    }
                    if (outputStream2 != null) {
                        outputStream2.close();
                    }
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (Exception e5) {
                    httpURLConnection = httpURLConnection2;
                    e = e5;
                    inputStream = null;
                    outputStream = outputStream2;
                } catch (Throwable th3) {
                    httpURLConnection = httpURLConnection2;
                    th = th3;
                    inputStream = null;
                    outputStream = outputStream2;
                }
            } catch (Exception e6) {
                inputStream = null;
                e = e6;
                httpURLConnection = httpURLConnection2;
            } catch (Throwable th4) {
                inputStream = null;
                th = th4;
                httpURLConnection = httpURLConnection2;
            }
        } catch (Exception e7) {
            e = e7;
            httpURLConnection = null;
            inputStream = null;
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
            inputStream = null;
        }
    }

    private void b(byte[] bArr) {
        if (this.i != null) {
            this.i.a(bArr);
        }
        if (this.g) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f;
            switch (this.d) {
                case 0:
                    com.iflytek.voiceads.utils.c.a(this.b, "reqDuration", jCurrentTimeMillis);
                    com.iflytek.voiceads.utils.c.a(this.b, "reqFailCnt", 0L);
                    break;
                case 1:
                    com.iflytek.voiceads.utils.c.a(this.b, "impDuration", jCurrentTimeMillis);
                    com.iflytek.voiceads.utils.c.a(this.b, "impFailCnt", 0L);
                    break;
                case 2:
                    com.iflytek.voiceads.utils.c.a(this.b, "clkDuration", jCurrentTimeMillis);
                    com.iflytek.voiceads.utils.c.a(this.b, "clkFailCnt", 0L);
                    break;
            }
        }
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(Context context) {
        this.b = context.getApplicationContext();
    }

    public void a(InterfaceC0184a interfaceC0184a) {
        if (this.g) {
            this.f = System.currentTimeMillis();
        }
        this.i = interfaceC0184a;
        start();
    }

    public void a(String str, String str2, byte[] bArr) {
        this.h.clear();
        a(bArr);
        try {
            this.a = a(str, str2);
        } catch (MalformedURLException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "url error:" + e);
        }
    }

    public void a(boolean z) {
        this.g = z;
    }

    public void b(int i) {
        this.c = i;
    }

    public void c(int i) {
        this.e = i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws Throwable {
        if (this.c == 1) {
            b();
        } else {
            a();
        }
    }
}
