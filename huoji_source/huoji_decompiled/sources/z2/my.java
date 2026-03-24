package z2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.cyjh.mobileanjian.ipc.share.proto.UiMessage;
import io.reactivex.annotations.SchedulerSupport;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okhttp3.Protocol;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ErrorCode;
import org.slf4j.helpers.MessageFormatter;
import z2.c00;
import z2.hz;
import z2.lx;
import z2.qx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class my extends hz.OooOOO0 implements yw {
    private static final String OooOOOo = "throw with null exception";
    private static final int OooOOo0 = 21;
    private l00 OooO;
    private final zw OooO0O0;
    private final ux OooO0OO;
    private Socket OooO0Oo;
    private ix OooO0o;
    private Socket OooO0o0;
    private Protocol OooO0oO;
    private hz OooO0oo;
    private k00 OooOO0;
    public boolean OooOO0O;
    public int OooOO0o;
    public int OooOOO0 = 1;
    public final List<Reference<py>> OooOOO = new ArrayList();
    public long OooOOOO = Long.MAX_VALUE;

    public class OooO00o extends c00.OooOO0O {
        public final /* synthetic */ py Ooooo0o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(boolean z, l00 l00Var, k00 k00Var, py pyVar) {
            super(z, l00Var, k00Var);
            this.Ooooo0o = pyVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            py pyVar = this.Ooooo0o;
            pyVar.OooOOo(true, pyVar.OooO0OO(), -1L, null);
        }
    }

    public my(zw zwVar, ux uxVar) {
        this.OooO0O0 = zwVar;
        this.OooO0OO = uxVar;
    }

    private void OooO(int i, int i2, tw twVar, gx gxVar) throws IOException {
        Proxy proxyOooO0O0 = this.OooO0OO.OooO0O0();
        this.OooO0Oo = (proxyOooO0O0.type() == Proxy.Type.DIRECT || proxyOooO0O0.type() == Proxy.Type.HTTP) ? this.OooO0OO.OooO00o().OooOO0().createSocket() : new Socket(proxyOooO0O0);
        gxVar.OooO0o(twVar, this.OooO0OO.OooO0Oo(), proxyOooO0O0);
        this.OooO0Oo.setSoTimeout(i2);
        try {
            uz.OooOO0O().OooO(this.OooO0Oo, this.OooO0OO.OooO0Oo(), i);
            try {
                this.OooO = w00.OooO0Oo(w00.OooOOO(this.OooO0Oo));
                this.OooOO0 = w00.OooO0OO(w00.OooO(this.OooO0Oo));
            } catch (NullPointerException e) {
                if (OooOOOo.equals(e.getMessage())) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.OooO0OO.OooO0Oo());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private void OooOO0(ly lyVar) throws Throwable {
        SSLSocket sSLSocket;
        pw pwVarOooO00o = this.OooO0OO.OooO00o();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) pwVarOooO00o.OooOO0O().createSocket(this.OooO0Oo, pwVarOooO00o.OooOO0o().OooOOOo(), pwVarOooO00o.OooOO0o().OooOooo(), true);
            } catch (AssertionError e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            ax axVarOooO00o = lyVar.OooO00o(sSLSocket);
            if (axVarOooO00o.OooO0o()) {
                uz.OooOO0O().OooO0oo(sSLSocket, pwVarOooO00o.OooOO0o().OooOOOo(), pwVarOooO00o.OooO0o());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            ix ixVarOooO0O0 = ix.OooO0O0(session);
            if (pwVarOooO00o.OooO0o0().verify(pwVarOooO00o.OooOO0o().OooOOOo(), session)) {
                pwVarOooO00o.OooO00o().OooO00o(pwVarOooO00o.OooOO0o().OooOOOo(), ixVarOooO0O0.OooO0o());
                String strOooOOO = axVarOooO00o.OooO0o() ? uz.OooOO0O().OooOOO(sSLSocket) : null;
                this.OooO0o0 = sSLSocket;
                this.OooO = w00.OooO0Oo(w00.OooOOO(sSLSocket));
                this.OooOO0 = w00.OooO0OO(w00.OooO(this.OooO0o0));
                this.OooO0o = ixVarOooO0O0;
                this.OooO0oO = strOooOOO != null ? Protocol.get(strOooOOO) : Protocol.HTTP_1_1;
                if (sSLSocket != null) {
                    uz.OooOO0O().OooO00o(sSLSocket);
                    return;
                }
                return;
            }
            X509Certificate x509Certificate = (X509Certificate) ixVarOooO0O0.OooO0o().get(0);
            throw new SSLPeerUnverifiedException("Hostname " + pwVarOooO00o.OooOO0o().OooOOOo() + " not verified:\n    certificate: " + vw.OooO0Oo(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + a00.OooO00o(x509Certificate));
        } catch (AssertionError e2) {
            e = e2;
            if (!zx.OooOoo0(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                uz.OooOO0O().OooO00o(sSLSocket2);
            }
            zx.OooO(sSLSocket2);
            throw th;
        }
    }

    private void OooOO0O(int i, int i2, int i3, tw twVar, gx gxVar) throws IOException {
        qx qxVarOooOOO0 = OooOOO0();
        kx kxVarOooOO0O = qxVarOooOOO0.OooOO0O();
        for (int i4 = 0; i4 < 21; i4++) {
            OooO(i, i2, twVar, gxVar);
            qxVarOooOOO0 = OooOO0o(i2, i3, qxVarOooOOO0, kxVarOooOO0O);
            if (qxVarOooOOO0 == null) {
                return;
            }
            zx.OooO(this.OooO0Oo);
            this.OooO0Oo = null;
            this.OooOO0 = null;
            this.OooO = null;
            gxVar.OooO0Oo(twVar, this.OooO0OO.OooO0Oo(), this.OooO0OO.OooO0O0(), null);
        }
    }

    private qx OooOO0o(int i, int i2, qx qxVar, kx kxVar) throws IOException {
        String str = "CONNECT " + zx.OooOo00(kxVar, true) + " HTTP/1.1";
        while (true) {
            cz czVar = new cz(null, null, this.OooO, this.OooOO0);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.OooO.timeout().OooO0oo(i, timeUnit);
            this.OooOO0.timeout().OooO0oo(i2, timeUnit);
            czVar.OooOOOo(qxVar.OooO0o0(), str);
            czVar.OooO00o();
            sx sxVarOooO0OO = czVar.OooO0Oo(false).OooOOo0(qxVar).OooO0OO();
            long jOooO0O0 = uy.OooO0O0(sxVarOooO0OO);
            if (jOooO0O0 == -1) {
                jOooO0O0 = 0;
            }
            e10 e10VarOooOO0o = czVar.OooOO0o(jOooO0O0);
            zx.OooOooo(e10VarOooOO0o, Integer.MAX_VALUE, timeUnit);
            e10VarOooOO0o.close();
            int iOoooooO = sxVarOooO0OO.OoooooO();
            if (iOoooooO == 200) {
                if (this.OooO.OooO00o().OooOOO() && this.OooOO0.OooO00o().OooOOO()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iOoooooO != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + sxVarOooO0OO.OoooooO());
            }
            qx qxVarOooO00o = this.OooO0OO.OooO00o().OooO0oo().OooO00o(this.OooO0OO, sxVarOooO0OO);
            if (qxVarOooO00o == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if (com.anythink.expressad.foundation.d.c.cf.equalsIgnoreCase(sxVarOooO0OO.o0OoOo0("Connection"))) {
                return qxVarOooO00o;
            }
            qxVar = qxVarOooO00o;
        }
    }

    private void OooOOO(ly lyVar, int i, tw twVar, gx gxVar) throws Throwable {
        if (this.OooO0OO.OooO00o().OooOO0O() != null) {
            gxVar.OooOo0(twVar);
            OooOO0(lyVar);
            gxVar.OooOo00(twVar, this.OooO0o);
            if (this.OooO0oO == Protocol.HTTP_2) {
                OooOo00(i);
                return;
            }
            return;
        }
        List<Protocol> listOooO0o = this.OooO0OO.OooO00o().OooO0o();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        if (!listOooO0o.contains(protocol)) {
            this.OooO0o0 = this.OooO0Oo;
            this.OooO0oO = Protocol.HTTP_1_1;
        } else {
            this.OooO0o0 = this.OooO0Oo;
            this.OooO0oO = protocol;
            OooOo00(i);
        }
    }

    private qx OooOOO0() throws IOException {
        qx qxVarOooO0O0 = new qx.OooO00o().OooOOoo(this.OooO0OO.OooO00o().OooOO0o()).OooOO0("CONNECT", null).OooO0oo(HttpHeaders.HOST, zx.OooOo00(this.OooO0OO.OooO00o().OooOO0o(), true)).OooO0oo("Proxy-Connection", com.anythink.expressad.foundation.g.f.g.b.c).OooO0oo("User-Agent", ay.OooO00o()).OooO0O0();
        qx qxVarOooO00o = this.OooO0OO.OooO00o().OooO0oo().OooO00o(this.OooO0OO, new sx.OooO00o().OooOOo0(qxVarOooO0O0).OooOOO(Protocol.HTTP_1_1).OooO0oO(UiMessage.CommandToUi.Command_Type.GET_TEXTCOLOR_VALUE).OooOO0O("Preemptive Authenticate").OooO0O0(zx.OooO0OO).OooOOo(-1L).OooOOOO(-1L).OooO("Proxy-Authenticate", "OkHttp-Preemptive").OooO0OO());
        return qxVarOooO00o != null ? qxVarOooO00o : qxVarOooO0O0;
    }

    private void OooOo00(int i) throws IOException {
        this.OooO0o0.setSoTimeout(0);
        hz hzVarOooO00o = new hz.OooOO0O(true).OooO0o(this.OooO0o0, this.OooO0OO.OooO00o().OooOO0o().OooOOOo(), this.OooO, this.OooOO0).OooO0O0(this).OooO0OO(i).OooO00o();
        this.OooO0oo = hzVarOooO00o;
        hzVarOooO00o.o000OOo();
    }

    public static my OooOo0O(zw zwVar, ux uxVar, Socket socket, long j) {
        my myVar = new my(zwVar, uxVar);
        myVar.OooO0o0 = socket;
        myVar.OooOOOO = j;
        return myVar;
    }

    @Override // z2.yw
    public Protocol OooO00o() {
        return this.OooO0oO;
    }

    @Override // z2.yw
    public ux OooO0O0() {
        return this.OooO0OO;
    }

    @Override // z2.yw
    public ix OooO0OO() {
        return this.OooO0o;
    }

    @Override // z2.yw
    public Socket OooO0Oo() {
        return this.OooO0o0;
    }

    @Override // z2.hz.OooOOO0
    public void OooO0o(jz jzVar) throws IOException {
        jzVar.OooO0o(ErrorCode.REFUSED_STREAM);
    }

    @Override // z2.hz.OooOOO0
    public void OooO0o0(hz hzVar) {
        synchronized (this.OooO0O0) {
            this.OooOOO0 = hzVar.o00Ooo();
        }
    }

    public void OooO0oO() {
        zx.OooO(this.OooO0Oo);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0142 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooO0oo(int i, int i2, int i3, int i4, boolean z, tw twVar, gx gxVar) throws Throwable {
        if (this.OooO0oO != null) {
            throw new IllegalStateException("already connected");
        }
        List<ax> listOooO0O0 = this.OooO0OO.OooO00o().OooO0O0();
        ly lyVar = new ly(listOooO0O0);
        if (this.OooO0OO.OooO00o().OooOO0O() == null) {
            if (!listOooO0O0.contains(ax.OooOO0)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strOooOOOo = this.OooO0OO.OooO00o().OooOO0o().OooOOOo();
            if (!uz.OooOO0O().OooOOOo(strOooOOOo)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication to " + strOooOOOo + " not permitted by network security policy"));
            }
        } else if (this.OooO0OO.OooO00o().OooO0o().contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
            throw new RouteException(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        RouteException routeException = null;
        do {
            try {
            } catch (IOException e) {
                e = e;
            }
            try {
                if (this.OooO0OO.OooO0OO()) {
                    OooOO0O(i, i2, i3, twVar, gxVar);
                    if (this.OooO0Oo == null) {
                        if (!this.OooO0OO.OooO0OO() && this.OooO0Oo == null) {
                            throw new RouteException(new ProtocolException("Too many tunnel connections attempted: 21"));
                        }
                        if (this.OooO0oo == null) {
                            synchronized (this.OooO0O0) {
                                this.OooOOO0 = this.OooO0oo.o00Ooo();
                            }
                            return;
                        }
                        return;
                    }
                } else {
                    try {
                        OooO(i, i2, twVar, gxVar);
                    } catch (IOException e2) {
                        e = e2;
                        zx.OooO(this.OooO0o0);
                        zx.OooO(this.OooO0Oo);
                        this.OooO0o0 = null;
                        this.OooO0Oo = null;
                        this.OooO = null;
                        this.OooOO0 = null;
                        this.OooO0o = null;
                        this.OooO0oO = null;
                        this.OooO0oo = null;
                        gxVar.OooO0o0(twVar, this.OooO0OO.OooO0Oo(), this.OooO0OO.OooO0O0(), null, e);
                        if (routeException != null) {
                            routeException = new RouteException(e);
                        } else {
                            routeException.addConnectException(e);
                        }
                        if (z) {
                            throw routeException;
                        }
                    }
                }
                OooOOO(lyVar, i4, twVar, gxVar);
                gxVar.OooO0Oo(twVar, this.OooO0OO.OooO0Oo(), this.OooO0OO.OooO0O0(), this.OooO0oO);
                if (!this.OooO0OO.OooO0OO()) {
                }
                if (this.OooO0oo == null) {
                }
            } catch (IOException e3) {
                e = e3;
                zx.OooO(this.OooO0o0);
                zx.OooO(this.OooO0Oo);
                this.OooO0o0 = null;
                this.OooO0Oo = null;
                this.OooO = null;
                this.OooOO0 = null;
                this.OooO0o = null;
                this.OooO0oO = null;
                this.OooO0oo = null;
                gxVar.OooO0o0(twVar, this.OooO0OO.OooO0Oo(), this.OooO0OO.OooO0O0(), null, e);
                if (routeException != null) {
                }
                if (z) {
                }
            }
        } while (lyVar.OooO0O0(e));
        throw routeException;
    }

    public boolean OooOOOO(pw pwVar, @Nullable ux uxVar) {
        if (this.OooOOO.size() >= this.OooOOO0 || this.OooOO0O || !xx.OooO00o.OooO0oO(this.OooO0OO.OooO00o(), pwVar)) {
            return false;
        }
        if (pwVar.OooOO0o().OooOOOo().equals(OooO0O0().OooO00o().OooOO0o().OooOOOo())) {
            return true;
        }
        if (this.OooO0oo == null || uxVar == null || uxVar.OooO0O0().type() != Proxy.Type.DIRECT || this.OooO0OO.OooO0O0().type() != Proxy.Type.DIRECT || !this.OooO0OO.OooO0Oo().equals(uxVar.OooO0Oo()) || uxVar.OooO00o().OooO0o0() != a00.OooO00o || !OooOo0(pwVar.OooOO0o())) {
            return false;
        }
        try {
            pwVar.OooO00o().OooO00o(pwVar.OooOO0o().OooOOOo(), OooO0OO().OooO0o());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean OooOOOo(boolean z) {
        if (this.OooO0o0.isClosed() || this.OooO0o0.isInputShutdown() || this.OooO0o0.isOutputShutdown()) {
            return false;
        }
        if (this.OooO0oo != null) {
            return !r0.o00Oo0();
        }
        if (z) {
            try {
                int soTimeout = this.OooO0o0.getSoTimeout();
                try {
                    this.OooO0o0.setSoTimeout(1);
                    return !this.OooO.OooOOO();
                } finally {
                    this.OooO0o0.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public sy OooOOo(ox oxVar, lx.OooO00o oooO00o, py pyVar) throws SocketException {
        if (this.OooO0oo != null) {
            return new gz(oxVar, oooO00o, pyVar, this.OooO0oo);
        }
        this.OooO0o0.setSoTimeout(oooO00o.OooO0O0());
        f10 f10VarTimeout = this.OooO.timeout();
        long jOooO0O0 = oooO00o.OooO0O0();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        f10VarTimeout.OooO0oo(jOooO0O0, timeUnit);
        this.OooOO0.timeout().OooO0oo(oooO00o.OooO0OO(), timeUnit);
        return new cz(oxVar, pyVar, this.OooO, this.OooOO0);
    }

    public boolean OooOOo0() {
        return this.OooO0oo != null;
    }

    public c00.OooOO0O OooOOoo(py pyVar) {
        return new OooO00o(true, this.OooO, this.OooOO0, pyVar);
    }

    public boolean OooOo0(kx kxVar) {
        if (kxVar.OooOooo() != this.OooO0OO.OooO00o().OooOO0o().OooOooo()) {
            return false;
        }
        if (kxVar.OooOOOo().equals(this.OooO0OO.OooO00o().OooOO0o().OooOOOo())) {
            return true;
        }
        return this.OooO0o != null && a00.OooO00o.OooO0OO(kxVar.OooOOOo(), (X509Certificate) this.OooO0o.OooO0o().get(0));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.OooO0OO.OooO00o().OooOO0o().OooOOOo());
        sb.append(":");
        sb.append(this.OooO0OO.OooO00o().OooOO0o().OooOooo());
        sb.append(", proxy=");
        sb.append(this.OooO0OO.OooO0O0());
        sb.append(" hostAddress=");
        sb.append(this.OooO0OO.OooO0Oo());
        sb.append(" cipherSuite=");
        ix ixVar = this.OooO0o;
        sb.append(ixVar != null ? ixVar.OooO00o() : SchedulerSupport.NONE);
        sb.append(" protocol=");
        sb.append(this.OooO0oO);
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }
}
