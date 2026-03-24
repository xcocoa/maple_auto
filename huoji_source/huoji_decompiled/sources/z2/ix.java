package z2;

import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.TlsVersion;

/* JADX INFO: loaded from: classes2.dex */
public final class ix {
    private final TlsVersion OooO00o;
    private final xw OooO0O0;
    private final List<Certificate> OooO0OO;
    private final List<Certificate> OooO0Oo;

    private ix(TlsVersion tlsVersion, xw xwVar, List<Certificate> list, List<Certificate> list2) {
        this.OooO00o = tlsVersion;
        this.OooO0O0 = xwVar;
        this.OooO0OO = list;
        this.OooO0Oo = list2;
    }

    public static ix OooO0O0(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        xw xwVarOooO00o = xw.OooO00o(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        TlsVersion tlsVersionForJavaName = TlsVersion.forJavaName(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listOooOo0O = peerCertificates != null ? zx.OooOo0O(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new ix(tlsVersionForJavaName, xwVarOooO00o, listOooOo0O, localCertificates != null ? zx.OooOo0O(localCertificates) : Collections.emptyList());
    }

    public static ix OooO0OO(TlsVersion tlsVersion, xw xwVar, List<Certificate> list, List<Certificate> list2) {
        Objects.requireNonNull(tlsVersion, "tlsVersion == null");
        Objects.requireNonNull(xwVar, "cipherSuite == null");
        return new ix(tlsVersion, xwVar, zx.OooOo0(list), zx.OooOo0(list2));
    }

    public xw OooO00o() {
        return this.OooO0O0;
    }

    public List<Certificate> OooO0Oo() {
        return this.OooO0Oo;
    }

    public List<Certificate> OooO0o() {
        return this.OooO0OO;
    }

    @Nullable
    public Principal OooO0o0() {
        if (this.OooO0Oo.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.OooO0Oo.get(0)).getSubjectX500Principal();
    }

    @Nullable
    public Principal OooO0oO() {
        if (this.OooO0OO.isEmpty()) {
            return null;
        }
        return ((X509Certificate) this.OooO0OO.get(0)).getSubjectX500Principal();
    }

    public TlsVersion OooO0oo() {
        return this.OooO00o;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ix)) {
            return false;
        }
        ix ixVar = (ix) obj;
        return this.OooO00o.equals(ixVar.OooO00o) && this.OooO0O0.equals(ixVar.OooO0O0) && this.OooO0OO.equals(ixVar.OooO0OO) && this.OooO0Oo.equals(ixVar.OooO0Oo);
    }

    public int hashCode() {
        return ((((((527 + this.OooO00o.hashCode()) * 31) + this.OooO0O0.hashCode()) * 31) + this.OooO0OO.hashCode()) * 31) + this.OooO0Oo.hashCode();
    }
}
