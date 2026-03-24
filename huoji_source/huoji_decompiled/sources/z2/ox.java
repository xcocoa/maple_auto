package z2;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import z2.gx;
import z2.jx;
import z2.kx;
import z2.sx;
import z2.tw;
import z2.vx;

/* JADX INFO: loaded from: classes2.dex */
public class ox implements Cloneable, tw.OooO00o, vx.OooO00o {
    public final ex OoooOoO;

    @Nullable
    public final Proxy OoooOoo;
    public final List<Protocol> Ooooo00;
    public final List<ax> Ooooo0o;
    public final List<lx> OooooO0;
    public final List<lx> OooooOO;
    public final gx.OooO0OO OooooOo;
    public final cx Oooooo;
    public final ProxySelector Oooooo0;

    @Nullable
    public final rw OoooooO;

    @Nullable
    public final hy Ooooooo;
    public final yz o00O0O;
    public final HostnameVerifier o00Oo0;
    public final vw o00Ooo;
    public final qw o00o0O;
    public final boolean o00oO0O;
    public final fx o00oO0o;
    public final qw o00ooo;
    public final int o0OO00O;
    public final int o0OOO0o;
    public final int o0Oo0oo;
    public final SocketFactory o0OoOo0;
    public final boolean o0ooOO0;
    public final boolean o0ooOOo;
    public final int o0ooOoO;
    public final zw oo000o;
    public final int oo0o0Oo;
    public final SSLSocketFactory ooOO;
    public static final List<Protocol> o0O0O00 = zx.OooOo0O(Protocol.HTTP_2, Protocol.HTTP_1_1);
    public static final List<ax> o000OOo = zx.OooOo0O(ax.OooO0oo, ax.OooOO0);

    public class OooO00o extends xx {
        @Override // z2.xx
        public void OooO00o(jx.OooO00o oooO00o, String str) {
            oooO00o.OooO0o0(str);
        }

        @Override // z2.xx
        public void OooO0O0(jx.OooO00o oooO00o, String str, String str2) {
            oooO00o.OooO0o(str, str2);
        }

        @Override // z2.xx
        public void OooO0OO(ax axVar, SSLSocket sSLSocket, boolean z) {
            axVar.OooO00o(sSLSocket, z);
        }

        @Override // z2.xx
        public int OooO0Oo(sx.OooO00o oooO00o) {
            return oooO00o.OooO0OO;
        }

        @Override // z2.xx
        public Socket OooO0o(zw zwVar, pw pwVar, py pyVar) {
            return zwVar.OooO0Oo(pwVar, pyVar);
        }

        @Override // z2.xx
        public boolean OooO0o0(zw zwVar, my myVar) {
            return zwVar.OooO0O0(myVar);
        }

        @Override // z2.xx
        public boolean OooO0oO(pw pwVar, pw pwVar2) {
            return pwVar.OooO0Oo(pwVar2);
        }

        @Override // z2.xx
        public my OooO0oo(zw zwVar, pw pwVar, py pyVar, ux uxVar) {
            return zwVar.OooO0o(pwVar, pyVar, uxVar);
        }

        @Override // z2.xx
        public boolean OooOO0(IllegalArgumentException illegalArgumentException) {
            return illegalArgumentException.getMessage().startsWith(kx.OooO00o.OooO);
        }

        @Override // z2.xx
        public tw OooOO0O(ox oxVar, qx qxVar) {
            return px.OooO0o0(oxVar, qxVar, true);
        }

        @Override // z2.xx
        public void OooOO0o(zw zwVar, my myVar) {
            zwVar.OooO(myVar);
        }

        @Override // z2.xx
        public void OooOOO(OooO0O0 oooO0O0, hy hyVar) {
            oooO0O0.Oooo000(hyVar);
        }

        @Override // z2.xx
        public ny OooOOO0(zw zwVar) {
            return zwVar.OooO0o0;
        }

        @Override // z2.xx
        public py OooOOOO(tw twVar) {
            return ((px) twVar).OooO0oO();
        }

        @Override // z2.xx
        @Nullable
        public IOException OooOOOo(tw twVar, @Nullable IOException iOException) {
            return ((px) twVar).OooO0oo(iOException);
        }
    }

    public static final class OooO0O0 {
        public cx OooO;
        public ex OooO00o;

        @Nullable
        public Proxy OooO0O0;
        public List<Protocol> OooO0OO;
        public List<ax> OooO0Oo;
        public final List<lx> OooO0o;
        public final List<lx> OooO0o0;
        public gx.OooO0OO OooO0oO;
        public ProxySelector OooO0oo;

        @Nullable
        public rw OooOO0;

        @Nullable
        public hy OooOO0O;
        public SocketFactory OooOO0o;

        @Nullable
        public yz OooOOO;

        @Nullable
        public SSLSocketFactory OooOOO0;
        public HostnameVerifier OooOOOO;
        public vw OooOOOo;
        public qw OooOOo;
        public qw OooOOo0;
        public zw OooOOoo;
        public int OooOo;
        public boolean OooOo0;
        public fx OooOo00;
        public boolean OooOo0O;
        public boolean OooOo0o;
        public int OooOoO;
        public int OooOoO0;
        public int OooOoOO;
        public int OooOoo0;

        public OooO0O0() {
            this.OooO0o0 = new ArrayList();
            this.OooO0o = new ArrayList();
            this.OooO00o = new ex();
            this.OooO0OO = ox.o0O0O00;
            this.OooO0Oo = ox.o000OOo;
            this.OooO0oO = gx.OooOO0O(gx.OooO00o);
            ProxySelector proxySelector = ProxySelector.getDefault();
            this.OooO0oo = proxySelector;
            if (proxySelector == null) {
                this.OooO0oo = new vz();
            }
            this.OooO = cx.OooO00o;
            this.OooOO0o = SocketFactory.getDefault();
            this.OooOOOO = a00.OooO00o;
            this.OooOOOo = vw.OooO0OO;
            qw qwVar = qw.OooO00o;
            this.OooOOo0 = qwVar;
            this.OooOOo = qwVar;
            this.OooOOoo = new zw();
            this.OooOo00 = fx.OooO00o;
            this.OooOo0 = true;
            this.OooOo0O = true;
            this.OooOo0o = true;
            this.OooOo = 0;
            this.OooOoO0 = 10000;
            this.OooOoO = 10000;
            this.OooOoOO = 10000;
            this.OooOoo0 = 0;
        }

        public OooO0O0(ox oxVar) {
            ArrayList arrayList = new ArrayList();
            this.OooO0o0 = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.OooO0o = arrayList2;
            this.OooO00o = oxVar.OoooOoO;
            this.OooO0O0 = oxVar.OoooOoo;
            this.OooO0OO = oxVar.Ooooo00;
            this.OooO0Oo = oxVar.Ooooo0o;
            arrayList.addAll(oxVar.OooooO0);
            arrayList2.addAll(oxVar.OooooOO);
            this.OooO0oO = oxVar.OooooOo;
            this.OooO0oo = oxVar.Oooooo0;
            this.OooO = oxVar.Oooooo;
            this.OooOO0O = oxVar.Ooooooo;
            this.OooOO0 = oxVar.OoooooO;
            this.OooOO0o = oxVar.o0OoOo0;
            this.OooOOO0 = oxVar.ooOO;
            this.OooOOO = oxVar.o00O0O;
            this.OooOOOO = oxVar.o00Oo0;
            this.OooOOOo = oxVar.o00Ooo;
            this.OooOOo0 = oxVar.o00o0O;
            this.OooOOo = oxVar.o00ooo;
            this.OooOOoo = oxVar.oo000o;
            this.OooOo00 = oxVar.o00oO0o;
            this.OooOo0 = oxVar.o00oO0O;
            this.OooOo0O = oxVar.o0ooOO0;
            this.OooOo0o = oxVar.o0ooOOo;
            this.OooOo = oxVar.o0ooOoO;
            this.OooOoO0 = oxVar.o0OOO0o;
            this.OooOoO = oxVar.o0Oo0oo;
            this.OooOoOO = oxVar.o0OO00O;
            this.OooOoo0 = oxVar.oo0o0Oo;
        }

        public OooO0O0 OooO(long j, TimeUnit timeUnit) {
            this.OooOoO0 = zx.OooO0o0("timeout", j, timeUnit);
            return this;
        }

        public OooO0O0 OooO00o(lx lxVar) {
            if (lxVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.OooO0o0.add(lxVar);
            return this;
        }

        public OooO0O0 OooO0O0(lx lxVar) {
            if (lxVar == null) {
                throw new IllegalArgumentException("interceptor == null");
            }
            this.OooO0o.add(lxVar);
            return this;
        }

        public OooO0O0 OooO0OO(qw qwVar) {
            Objects.requireNonNull(qwVar, "authenticator == null");
            this.OooOOo = qwVar;
            return this;
        }

        public ox OooO0Oo() {
            return new ox(this);
        }

        public OooO0O0 OooO0o(long j, TimeUnit timeUnit) {
            this.OooOo = zx.OooO0o0("timeout", j, timeUnit);
            return this;
        }

        public OooO0O0 OooO0o0(@Nullable rw rwVar) {
            this.OooOO0 = rwVar;
            this.OooOO0O = null;
            return this;
        }

        @IgnoreJRERequirement
        public OooO0O0 OooO0oO(Duration duration) {
            this.OooOo = zx.OooO0o0("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public OooO0O0 OooO0oo(vw vwVar) {
            Objects.requireNonNull(vwVar, "certificatePinner == null");
            this.OooOOOo = vwVar;
            return this;
        }

        @IgnoreJRERequirement
        public OooO0O0 OooOO0(Duration duration) {
            this.OooOoO0 = zx.OooO0o0("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public OooO0O0 OooOO0O(zw zwVar) {
            Objects.requireNonNull(zwVar, "connectionPool == null");
            this.OooOOoo = zwVar;
            return this;
        }

        public OooO0O0 OooOO0o(List<ax> list) {
            this.OooO0Oo = zx.OooOo0(list);
            return this;
        }

        public OooO0O0 OooOOO(ex exVar) {
            if (exVar == null) {
                throw new IllegalArgumentException("dispatcher == null");
            }
            this.OooO00o = exVar;
            return this;
        }

        public OooO0O0 OooOOO0(cx cxVar) {
            Objects.requireNonNull(cxVar, "cookieJar == null");
            this.OooO = cxVar;
            return this;
        }

        public OooO0O0 OooOOOO(fx fxVar) {
            Objects.requireNonNull(fxVar, "dns == null");
            this.OooOo00 = fxVar;
            return this;
        }

        public OooO0O0 OooOOOo(gx gxVar) {
            Objects.requireNonNull(gxVar, "eventListener == null");
            this.OooO0oO = gx.OooOO0O(gxVar);
            return this;
        }

        public OooO0O0 OooOOo(boolean z) {
            this.OooOo0O = z;
            return this;
        }

        public OooO0O0 OooOOo0(gx.OooO0OO oooO0OO) {
            Objects.requireNonNull(oooO0OO, "eventListenerFactory == null");
            this.OooO0oO = oooO0OO;
            return this;
        }

        public OooO0O0 OooOOoo(boolean z) {
            this.OooOo0 = z;
            return this;
        }

        @IgnoreJRERequirement
        public OooO0O0 OooOo(Duration duration) {
            this.OooOoo0 = zx.OooO0o0("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public List<lx> OooOo0() {
            return this.OooO0o0;
        }

        public OooO0O0 OooOo00(HostnameVerifier hostnameVerifier) {
            Objects.requireNonNull(hostnameVerifier, "hostnameVerifier == null");
            this.OooOOOO = hostnameVerifier;
            return this;
        }

        public List<lx> OooOo0O() {
            return this.OooO0o;
        }

        public OooO0O0 OooOo0o(long j, TimeUnit timeUnit) {
            this.OooOoo0 = zx.OooO0o0(com.umeng.commonsdk.proguard.v.av, j, timeUnit);
            return this;
        }

        public OooO0O0 OooOoO(@Nullable Proxy proxy) {
            this.OooO0O0 = proxy;
            return this;
        }

        public OooO0O0 OooOoO0(List<Protocol> list) {
            ArrayList arrayList = new ArrayList(list);
            Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
            if (!arrayList.contains(protocol) && !arrayList.contains(Protocol.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols must contain h2_prior_knowledge or http/1.1: " + arrayList);
            }
            if (arrayList.contains(protocol) && arrayList.size() > 1) {
                throw new IllegalArgumentException("protocols containing h2_prior_knowledge cannot use other protocols: " + arrayList);
            }
            if (arrayList.contains(Protocol.HTTP_1_0)) {
                throw new IllegalArgumentException("protocols must not contain http/1.0: " + arrayList);
            }
            if (arrayList.contains(null)) {
                throw new IllegalArgumentException("protocols must not contain null");
            }
            arrayList.remove(Protocol.SPDY_3);
            this.OooO0OO = Collections.unmodifiableList(arrayList);
            return this;
        }

        public OooO0O0 OooOoOO(qw qwVar) {
            Objects.requireNonNull(qwVar, "proxyAuthenticator == null");
            this.OooOOo0 = qwVar;
            return this;
        }

        public OooO0O0 OooOoo(long j, TimeUnit timeUnit) {
            this.OooOoO = zx.OooO0o0("timeout", j, timeUnit);
            return this;
        }

        public OooO0O0 OooOoo0(ProxySelector proxySelector) {
            Objects.requireNonNull(proxySelector, "proxySelector == null");
            this.OooO0oo = proxySelector;
            return this;
        }

        @IgnoreJRERequirement
        public OooO0O0 OooOooO(Duration duration) {
            this.OooOoO = zx.OooO0o0("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }

        public OooO0O0 OooOooo(boolean z) {
            this.OooOo0o = z;
            return this;
        }

        public OooO0O0 Oooo0(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
            Objects.requireNonNull(sSLSocketFactory, "sslSocketFactory == null");
            Objects.requireNonNull(x509TrustManager, "trustManager == null");
            this.OooOOO0 = sSLSocketFactory;
            this.OooOOO = yz.OooO0O0(x509TrustManager);
            return this;
        }

        public void Oooo000(@Nullable hy hyVar) {
            this.OooOO0O = hyVar;
            this.OooOO0 = null;
        }

        public OooO0O0 Oooo00O(SocketFactory socketFactory) {
            Objects.requireNonNull(socketFactory, "socketFactory == null");
            this.OooOO0o = socketFactory;
            return this;
        }

        public OooO0O0 Oooo00o(SSLSocketFactory sSLSocketFactory) {
            Objects.requireNonNull(sSLSocketFactory, "sslSocketFactory == null");
            this.OooOOO0 = sSLSocketFactory;
            this.OooOOO = uz.OooOO0O().OooO0OO(sSLSocketFactory);
            return this;
        }

        public OooO0O0 Oooo0O0(long j, TimeUnit timeUnit) {
            this.OooOoOO = zx.OooO0o0("timeout", j, timeUnit);
            return this;
        }

        @IgnoreJRERequirement
        public OooO0O0 Oooo0OO(Duration duration) {
            this.OooOoOO = zx.OooO0o0("timeout", duration.toMillis(), TimeUnit.MILLISECONDS);
            return this;
        }
    }

    static {
        xx.OooO00o = new OooO00o();
    }

    public ox() {
        this(new OooO0O0());
    }

    public ox(OooO0O0 oooO0O0) {
        boolean z;
        yz yzVarOooO0O0;
        this.OoooOoO = oooO0O0.OooO00o;
        this.OoooOoo = oooO0O0.OooO0O0;
        this.Ooooo00 = oooO0O0.OooO0OO;
        List<ax> list = oooO0O0.OooO0Oo;
        this.Ooooo0o = list;
        this.OooooO0 = zx.OooOo0(oooO0O0.OooO0o0);
        this.OooooOO = zx.OooOo0(oooO0O0.OooO0o);
        this.OooooOo = oooO0O0.OooO0oO;
        this.Oooooo0 = oooO0O0.OooO0oo;
        this.Oooooo = oooO0O0.OooO;
        this.OoooooO = oooO0O0.OooOO0;
        this.Ooooooo = oooO0O0.OooOO0O;
        this.o0OoOo0 = oooO0O0.OooOO0o;
        Iterator<ax> it = list.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                z = z || it.next().OooO0Oo();
            }
        }
        SSLSocketFactory sSLSocketFactory = oooO0O0.OooOOO0;
        if (sSLSocketFactory == null && z) {
            X509TrustManager x509TrustManagerOooOooO = zx.OooOooO();
            this.ooOO = OooOo0O(x509TrustManagerOooOooO);
            yzVarOooO0O0 = yz.OooO0O0(x509TrustManagerOooOooO);
        } else {
            this.ooOO = sSLSocketFactory;
            yzVarOooO0O0 = oooO0O0.OooOOO;
        }
        this.o00O0O = yzVarOooO0O0;
        if (this.ooOO != null) {
            uz.OooOO0O().OooO0oO(this.ooOO);
        }
        this.o00Oo0 = oooO0O0.OooOOOO;
        this.o00Ooo = oooO0O0.OooOOOo.OooO0oO(this.o00O0O);
        this.o00o0O = oooO0O0.OooOOo0;
        this.o00ooo = oooO0O0.OooOOo;
        this.oo000o = oooO0O0.OooOOoo;
        this.o00oO0o = oooO0O0.OooOo00;
        this.o00oO0O = oooO0O0.OooOo0;
        this.o0ooOO0 = oooO0O0.OooOo0O;
        this.o0ooOOo = oooO0O0.OooOo0o;
        this.o0ooOoO = oooO0O0.OooOo;
        this.o0OOO0o = oooO0O0.OooOoO0;
        this.o0Oo0oo = oooO0O0.OooOoO;
        this.o0OO00O = oooO0O0.OooOoOO;
        this.oo0o0Oo = oooO0O0.OooOoo0;
        if (this.OooooO0.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.OooooO0);
        }
        if (this.OooooOO.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.OooooOO);
        }
    }

    private static SSLSocketFactory OooOo0O(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContextOooOOO0 = uz.OooOO0O().OooOOO0();
            sSLContextOooOOO0.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContextOooOOO0.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw zx.OooO0O0("No System TLS", e);
        }
    }

    public List<ax> OooO() {
        return this.Ooooo0o;
    }

    @Override // z2.tw.OooO00o
    public tw OooO00o(qx qxVar) {
        return px.OooO0o0(this, qxVar, false);
    }

    @Override // z2.vx.OooO00o
    public vx OooO0O0(qx qxVar, wx wxVar) {
        c00 c00Var = new c00(qxVar, wxVar, new Random(), this.oo0o0Oo);
        c00Var.OooOOO0(this);
        return c00Var;
    }

    public qw OooO0OO() {
        return this.o00ooo;
    }

    @Nullable
    public rw OooO0Oo() {
        return this.OoooooO;
    }

    public vw OooO0o() {
        return this.o00Ooo;
    }

    public int OooO0o0() {
        return this.o0ooOoO;
    }

    public int OooO0oO() {
        return this.o0OOO0o;
    }

    public zw OooO0oo() {
        return this.oo000o;
    }

    public cx OooOO0O() {
        return this.Oooooo;
    }

    public ex OooOO0o() {
        return this.OoooOoO;
    }

    public gx.OooO0OO OooOOO() {
        return this.OooooOo;
    }

    public fx OooOOO0() {
        return this.o00oO0o;
    }

    public boolean OooOOOO() {
        return this.o0ooOO0;
    }

    public boolean OooOOOo() {
        return this.o00oO0O;
    }

    public List<lx> OooOOo() {
        return this.OooooO0;
    }

    public HostnameVerifier OooOOo0() {
        return this.o00Oo0;
    }

    public hy OooOOoo() {
        rw rwVar = this.OoooooO;
        return rwVar != null ? rwVar.OoooOoO : this.Ooooooo;
    }

    public List<Protocol> OooOo() {
        return this.Ooooo00;
    }

    public OooO0O0 OooOo0() {
        return new OooO0O0(this);
    }

    public List<lx> OooOo00() {
        return this.OooooOO;
    }

    public int OooOo0o() {
        return this.oo0o0Oo;
    }

    public qw OooOoO() {
        return this.o00o0O;
    }

    @Nullable
    public Proxy OooOoO0() {
        return this.OoooOoo;
    }

    public ProxySelector OooOoOO() {
        return this.Oooooo0;
    }

    public boolean OooOoo() {
        return this.o0ooOOo;
    }

    public int OooOoo0() {
        return this.o0Oo0oo;
    }

    public SocketFactory OooOooO() {
        return this.o0OoOo0;
    }

    public SSLSocketFactory OooOooo() {
        return this.ooOO;
    }

    public int Oooo000() {
        return this.o0OO00O;
    }
}
