package com.iflytek.voiceads.request;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
final class h implements X509TrustManager {
    h() {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        try {
            x509CertificateArr[0].checkValidity();
        } catch (Exception e) {
            try {
                throw new CertificateEncodingException("Certificate not valid or trusted.");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}
