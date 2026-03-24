package cn.haorui.sdk.core.utils;

import android.os.Build;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import z2.o000OO0O;

/* JADX INFO: loaded from: classes.dex */
public class AqueryHttpsUtil {
    public static void noVerify() {
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
                X509HostnameVerifier hostnameVerifier = socketFactory.getHostnameVerifier();
                X509HostnameVerifier x509HostnameVerifier = SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER;
                if (hostnameVerifier != x509HostnameVerifier) {
                    socketFactory.setHostnameVerifier(x509HostnameVerifier);
                    o000OO0O.setSSF(socketFactory);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void resetVerify() {
        try {
            o000OO0O.setSSF(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
