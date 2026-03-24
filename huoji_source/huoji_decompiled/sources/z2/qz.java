package z2;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import org.conscrypt.Conscrypt;

/* JADX INFO: loaded from: classes2.dex */
public class qz extends uz {
    private qz() {
    }

    public static qz OooOo0O() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new qz();
            }
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private Provider OooOo0o() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }

    @Override // z2.uz
    public void OooO0oO(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // z2.uz
    public void OooO0oo(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.OooO0oo(sSLSocket, str, list);
            return;
        }
        if (str != null) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setHostname(sSLSocket, str);
        }
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) uz.OooO0O0(list).toArray(new String[0]));
    }

    @Override // z2.uz
    @Nullable
    public String OooOOO(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.OooOOO(sSLSocket);
    }

    @Override // z2.uz
    public SSLContext OooOOO0() {
        try {
            return SSLContext.getInstance("TLSv1.3", OooOo0o());
        } catch (NoSuchAlgorithmException e) {
            try {
                return SSLContext.getInstance("TLS", OooOo0o());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e);
            }
        }
    }

    @Override // z2.uz
    @Nullable
    public X509TrustManager OooOo0(SSLSocketFactory sSLSocketFactory) {
        if (!Conscrypt.isConscrypt(sSLSocketFactory)) {
            return super.OooOo0(sSLSocketFactory);
        }
        try {
            Object objOooOo00 = uz.OooOo00(sSLSocketFactory, Object.class, "sslParameters");
            if (objOooOo00 != null) {
                return (X509TrustManager) uz.OooOo00(objOooOo00, X509TrustManager.class, "x509TrustManager");
            }
            return null;
        } catch (Exception e) {
            throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt", e);
        }
    }
}
