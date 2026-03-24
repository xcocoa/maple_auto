package com.iflytek.voiceads.request;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
final class i implements HostnameVerifier {
    i() {
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return true;
    }
}
