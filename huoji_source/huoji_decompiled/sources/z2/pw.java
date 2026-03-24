package z2;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Protocol;
import z2.kx;

/* JADX INFO: loaded from: classes2.dex */
public final class pw {

    @Nullable
    public final SSLSocketFactory OooO;
    public final kx OooO00o;
    public final fx OooO0O0;
    public final SocketFactory OooO0OO;
    public final qw OooO0Oo;
    public final List<ax> OooO0o;
    public final List<Protocol> OooO0o0;
    public final ProxySelector OooO0oO;

    @Nullable
    public final Proxy OooO0oo;

    @Nullable
    public final HostnameVerifier OooOO0;

    @Nullable
    public final vw OooOO0O;

    public pw(String str, int i, fx fxVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable vw vwVar, qw qwVar, @Nullable Proxy proxy, List<Protocol> list, List<ax> list2, ProxySelector proxySelector) {
        this.OooO00o = new kx.OooO00o().Oooo00o(sSLSocketFactory != null ? "https" : "http").OooOOo0(str).OooOo(i).OooO0oo();
        Objects.requireNonNull(fxVar, "dns == null");
        this.OooO0O0 = fxVar;
        Objects.requireNonNull(socketFactory, "socketFactory == null");
        this.OooO0OO = socketFactory;
        Objects.requireNonNull(qwVar, "proxyAuthenticator == null");
        this.OooO0Oo = qwVar;
        Objects.requireNonNull(list, "protocols == null");
        this.OooO0o0 = zx.OooOo0(list);
        Objects.requireNonNull(list2, "connectionSpecs == null");
        this.OooO0o = zx.OooOo0(list2);
        Objects.requireNonNull(proxySelector, "proxySelector == null");
        this.OooO0oO = proxySelector;
        this.OooO0oo = proxy;
        this.OooO = sSLSocketFactory;
        this.OooOO0 = hostnameVerifier;
        this.OooOO0O = vwVar;
    }

    public ProxySelector OooO() {
        return this.OooO0oO;
    }

    @Nullable
    public vw OooO00o() {
        return this.OooOO0O;
    }

    public List<ax> OooO0O0() {
        return this.OooO0o;
    }

    public fx OooO0OO() {
        return this.OooO0O0;
    }

    public boolean OooO0Oo(pw pwVar) {
        return this.OooO0O0.equals(pwVar.OooO0O0) && this.OooO0Oo.equals(pwVar.OooO0Oo) && this.OooO0o0.equals(pwVar.OooO0o0) && this.OooO0o.equals(pwVar.OooO0o) && this.OooO0oO.equals(pwVar.OooO0oO) && zx.OooOOo(this.OooO0oo, pwVar.OooO0oo) && zx.OooOOo(this.OooO, pwVar.OooO) && zx.OooOOo(this.OooOO0, pwVar.OooOO0) && zx.OooOOo(this.OooOO0O, pwVar.OooOO0O) && OooOO0o().OooOooo() == pwVar.OooOO0o().OooOooo();
    }

    public List<Protocol> OooO0o() {
        return this.OooO0o0;
    }

    @Nullable
    public HostnameVerifier OooO0o0() {
        return this.OooOO0;
    }

    @Nullable
    public Proxy OooO0oO() {
        return this.OooO0oo;
    }

    public qw OooO0oo() {
        return this.OooO0Oo;
    }

    public SocketFactory OooOO0() {
        return this.OooO0OO;
    }

    @Nullable
    public SSLSocketFactory OooOO0O() {
        return this.OooO;
    }

    public kx OooOO0o() {
        return this.OooO00o;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof pw) {
            pw pwVar = (pw) obj;
            if (this.OooO00o.equals(pwVar.OooO00o) && OooO0Oo(pwVar)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (((((((((((527 + this.OooO00o.hashCode()) * 31) + this.OooO0O0.hashCode()) * 31) + this.OooO0Oo.hashCode()) * 31) + this.OooO0o0.hashCode()) * 31) + this.OooO0o.hashCode()) * 31) + this.OooO0oO.hashCode()) * 31;
        Proxy proxy = this.OooO0oo;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.OooO;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.OooOO0;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        vw vwVar = this.OooOO0O;
        return iHashCode4 + (vwVar != null ? vwVar.hashCode() : 0);
    }

    public String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.OooO00o.OooOOOo());
        sb.append(":");
        sb.append(this.OooO00o.OooOooo());
        if (this.OooO0oo != null) {
            sb.append(", proxy=");
            obj = this.OooO0oo;
        } else {
            sb.append(", proxySelector=");
            obj = this.OooO0oO;
        }
        sb.append(obj);
        sb.append("}");
        return sb.toString();
    }
}
