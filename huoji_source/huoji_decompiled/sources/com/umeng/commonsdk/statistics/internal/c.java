package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.noise.ABTest;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
public class c {
    private static boolean e;
    private String a = "10.0.0.172";
    private int b = 80;
    private Context c;
    private b d;

    public c(Context context) {
        this.c = context;
    }

    private void a() {
        String strImprintProperty = UMEnvelopeBuild.imprintProperty(this.c, "domain_p", "");
        String strImprintProperty2 = UMEnvelopeBuild.imprintProperty(this.c, "domain_s", "");
        if (!TextUtils.isEmpty(strImprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(strImprintProperty);
        }
        if (!TextUtils.isEmpty(strImprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(strImprintProperty2);
        }
        com.umeng.commonsdk.statistics.b.e = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
        int testPolicy = ABTest.getService(this.c).getTestPolicy();
        if (testPolicy != -1) {
            if (testPolicy == 0) {
                com.umeng.commonsdk.statistics.b.e = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
            } else if (testPolicy == 1) {
                com.umeng.commonsdk.statistics.b.e = new String[]{UMServerURL.SECONDARY_URL, UMServerURL.DEFAULT_URL};
            }
        }
    }

    private boolean b() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        if (this.c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.c.getPackageName()) != 0) {
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
            e.a(this.c, th);
        }
        return false;
    }

    public void a(b bVar) {
        this.d = bVar;
    }

    public byte[] a(byte[] bArr, String str) {
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        URLConnection uRLConnectionOpenConnection;
        try {
            b bVar = this.d;
            if (bVar != null) {
                bVar.onRequestStart();
            }
            if (b()) {
                uRLConnectionOpenConnection = new URL(str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.a, this.b)));
            } else {
                uRLConnectionOpenConnection = new URL(str).openConnection();
            }
            httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
            try {
                boolean z = true;
                if (!e) {
                    HttpsURLConnection.setDefaultHostnameVerifier(new X509HostnameVerifier() { // from class: com.umeng.commonsdk.statistics.internal.c.1
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
                    e = true;
                }
                httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                httpsURLConnection.setRequestProperty("X-Umeng-Sdk", a.a(this.c).b());
                httpsURLConnection.setRequestProperty("Content-Type", a.a(this.c).a());
                httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                httpsURLConnection.setConnectTimeout(30000);
                httpsURLConnection.setReadTimeout(30000);
                httpsURLConnection.setRequestMethod("POST");
                httpsURLConnection.setDoOutput(true);
                httpsURLConnection.setDoInput(true);
                httpsURLConnection.setUseCaches(false);
                outputStream = httpsURLConnection.getOutputStream();
                try {
                    outputStream.write(bArr);
                    outputStream.flush();
                    httpsURLConnection.connect();
                    b bVar2 = this.d;
                    if (bVar2 != null) {
                        bVar2.onRequestEnd();
                    }
                    int responseCode = httpsURLConnection.getResponseCode();
                    String headerField = httpsURLConnection.getHeaderField("Content-Type");
                    if (TextUtils.isEmpty(headerField) || !headerField.equalsIgnoreCase("application/thrift")) {
                        z = false;
                    }
                    if (com.umeng.commonsdk.statistics.b.f) {
                        MLog.d("status code : " + responseCode + "; isThrifit:" + z);
                    }
                    if (responseCode != 200 || !z) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused) {
                            }
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    }
                    MLog.i("Send message to server. status code is: " + responseCode);
                    InputStream inputStream = httpsURLConnection.getInputStream();
                    try {
                        byte[] streamToByteArray = HelperUtils.readStreamToByteArray(inputStream);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        return streamToByteArray;
                    } finally {
                        HelperUtils.safeClose(inputStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        MLog.e("IOException,Failed to send message.", th);
                        e.a(this.c, th);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } finally {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            httpsURLConnection = null;
            outputStream = null;
        }
    }

    public byte[] a(byte[] bArr, boolean z) {
        a();
        byte[] bArrA = null;
        int i = 0;
        while (true) {
            String[] strArr = com.umeng.commonsdk.statistics.b.e;
            if (i >= strArr.length) {
                break;
            }
            bArrA = a(bArr, strArr[i]);
            if (bArrA != null) {
                b bVar = this.d;
                if (bVar != null) {
                    bVar.onRequestSucceed(z);
                }
            } else {
                b bVar2 = this.d;
                if (bVar2 != null) {
                    bVar2.onRequestFailed();
                }
                i++;
            }
        }
        return bArrA;
    }
}
