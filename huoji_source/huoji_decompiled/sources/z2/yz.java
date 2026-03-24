package z2;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class yz {
    public static yz OooO0O0(X509TrustManager x509TrustManager) {
        return uz.OooOO0O().OooO0Oo(x509TrustManager);
    }

    public static yz OooO0OO(X509Certificate... x509CertificateArr) {
        return new wz(new xz(x509CertificateArr));
    }

    public abstract List<Certificate> OooO00o(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}
