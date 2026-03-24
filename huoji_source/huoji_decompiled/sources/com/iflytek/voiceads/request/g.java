package com.iflytek.voiceads.request;

import java.security.SecureRandom;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class g {
    public static HostnameVerifier a = new i();

    public static SSLContext a() {
        SSLContext sSLContext;
        Exception e;
        try {
            sSLContext = SSLContext.getInstance("TLS");
            try {
                sSLContext.init(null, new TrustManager[]{new h()}, new SecureRandom());
            } catch (Exception e2) {
                e = e2;
                com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getSLLContext:" + e.getMessage());
            }
        } catch (Exception e3) {
            sSLContext = null;
            e = e3;
        }
        return sSLContext;
    }
}
