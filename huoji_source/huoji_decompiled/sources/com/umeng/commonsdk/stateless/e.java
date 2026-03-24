package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.ssl.X509HostnameVerifier;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private String a = "10.0.0.172";
    private int b = 80;
    private Context c;

    public e(Context context) {
        this.c = context;
    }

    private boolean a() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        Context context = this.c;
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.c, "android.permission.ACCESS_NETWORK_STATE") && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            com.umeng.commonsdk.proguard.e.a(this.c, th);
        }
        return false;
    }

    public boolean a(byte[] bArr, String str) {
        HttpsURLConnection httpsURLConnection;
        URLConnection uRLConnectionOpenConnection;
        if (bArr == null || str == null) {
            com.umeng.commonsdk.statistics.common.e.a("walle", "[stateless] sendMessage, envelopeByte == null || path == null ");
            return false;
        }
        OutputStream outputStream = null;
        try {
            if (a()) {
                uRLConnectionOpenConnection = new URL("https://plbslog.umeng.com/" + str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.a, this.b)));
            } else {
                uRLConnectionOpenConnection = new URL("https://plbslog.umeng.com/" + str).openConnection();
            }
            httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
        } catch (Throwable th) {
            th = th;
            httpsURLConnection = null;
        }
        try {
            HttpsURLConnection.setDefaultHostnameVerifier(new X509HostnameVerifier() { // from class: com.umeng.commonsdk.stateless.e.1
                @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                public void verify(String str2, X509Certificate x509Certificate) throws SSLException {
                }

                @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                public void verify(String str2, SSLSocket sSLSocket) throws IOException {
                }

                @Override // org.apache.http.conn.ssl.X509HostnameVerifier
                public void verify(String str2, String[] strArr, String[] strArr2) throws SSLException {
                }

                @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
                public boolean verify(String str2, SSLSession sSLSession) {
                    return true;
                }
            });
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, null, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
            httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
            httpsURLConnection.setConnectTimeout(30000);
            httpsURLConnection.setReadTimeout(30000);
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setUseCaches(false);
            outputStream = httpsURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.flush();
            httpsURLConnection.connect();
            z = httpsURLConnection.getResponseCode() == 200;
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused) {
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                com.umeng.commonsdk.proguard.e.a(this.c, th);
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                if (httpsURLConnection != null) {
                }
                return z;
            } finally {
            }
        }
        if (httpsURLConnection != null) {
            httpsURLConnection.disconnect();
        }
        return z;
    }

    public boolean b(byte[] bArr, String str) {
        HttpURLConnection httpURLConnection;
        URLConnection uRLConnectionOpenConnection;
        if (bArr == null || str == null) {
            return false;
        }
        OutputStream outputStream = null;
        try {
            if (a()) {
                uRLConnectionOpenConnection = new URL("https://plbslog.umeng.com/" + str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.a, this.b)));
            } else {
                uRLConnectionOpenConnection = new URL("https://plbslog.umeng.com/" + str).openConnection();
            }
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            try {
                httpURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                httpURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setReadTimeout(30000);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setUseCaches(false);
                outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.flush();
                httpURLConnection.connect();
                z = httpURLConnection.getResponseCode() == 200;
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                try {
                    com.umeng.commonsdk.proguard.e.a(this.c, th);
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    if (httpURLConnection != null) {
                    }
                    return z;
                } finally {
                }
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        return z;
    }
}
