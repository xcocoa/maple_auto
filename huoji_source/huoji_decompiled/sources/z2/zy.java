package z2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import z2.lx;
import z2.qx;

/* JADX INFO: loaded from: classes2.dex */
public final class zy implements lx {
    private static final int OooO0o = 20;
    private final ox OooO00o;
    private final boolean OooO0O0;
    private volatile py OooO0OO;
    private Object OooO0Oo;
    private volatile boolean OooO0o0;

    public zy(ox oxVar, boolean z) {
        this.OooO00o = oxVar;
        this.OooO0O0 = z;
    }

    private pw OooO0O0(kx kxVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifierOooOOo0;
        vw vwVarOooO0o;
        if (kxVar.OooOOo0()) {
            SSLSocketFactory sSLSocketFactoryOooOooo = this.OooO00o.OooOooo();
            hostnameVerifierOooOOo0 = this.OooO00o.OooOOo0();
            sSLSocketFactory = sSLSocketFactoryOooOooo;
            vwVarOooO0o = this.OooO00o.OooO0o();
        } else {
            sSLSocketFactory = null;
            hostnameVerifierOooOOo0 = null;
            vwVarOooO0o = null;
        }
        return new pw(kxVar.OooOOOo(), kxVar.OooOooo(), this.OooO00o.OooOOO0(), this.OooO00o.OooOooO(), sSLSocketFactory, hostnameVerifierOooOOo0, vwVarOooO0o, this.OooO00o.OooOoO(), this.OooO00o.OooOoO0(), this.OooO00o.OooOo(), this.OooO00o.OooO(), this.OooO00o.OooOoOO());
    }

    private qx OooO0OO(sx sxVar, ux uxVar) throws IOException {
        String strO0OoOo0;
        kx kxVarOooo0oo;
        if (sxVar == null) {
            throw new IllegalStateException();
        }
        int iOoooooO = sxVar.OoooooO();
        String strOooO0oO = sxVar.o0OOO0o().OooO0oO();
        if (iOoooooO == 307 || iOoooooO == 308) {
            if (!strOooO0oO.equals("GET") && !strOooO0oO.equals("HEAD")) {
                return null;
            }
        } else {
            if (iOoooooO == 401) {
                return this.OooO00o.OooO0OO().OooO00o(uxVar, sxVar);
            }
            if (iOoooooO == 503) {
                if ((sxVar.o0ooOO0() == null || sxVar.o0ooOO0().OoooooO() != 503) && OooO0oO(sxVar, Integer.MAX_VALUE) == 0) {
                    return sxVar.o0OOO0o();
                }
                return null;
            }
            if (iOoooooO == 407) {
                if ((uxVar != null ? uxVar.OooO0O0() : this.OooO00o.OooOoO0()).type() == Proxy.Type.HTTP) {
                    return this.OooO00o.OooOoO().OooO00o(uxVar, sxVar);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iOoooooO == 408) {
                if (!this.OooO00o.OooOoo() || (sxVar.o0OOO0o().OooO00o() instanceof bz)) {
                    return null;
                }
                if ((sxVar.o0ooOO0() == null || sxVar.o0ooOO0().OoooooO() != 408) && OooO0oO(sxVar, 0) <= 0) {
                    return sxVar.o0OOO0o();
                }
                return null;
            }
            switch (iOoooooO) {
                case 300:
                case SET_ENABLED_VALUE:
                case 302:
                case SET_TITLE_TEXT_VALUE:
                    break;
                default:
                    return null;
            }
        }
        if (!this.OooO00o.OooOOOO() || (strO0OoOo0 = sxVar.o0OoOo0("Location")) == null || (kxVarOooo0oo = sxVar.o0OOO0o().OooOO0O().Oooo0oo(strO0OoOo0)) == null) {
            return null;
        }
        if (!kxVarOooo0oo.Oooo().equals(sxVar.o0OOO0o().OooOO0O().Oooo()) && !this.OooO00o.OooOOOo()) {
            return null;
        }
        qx.OooO00o oooO00oOooO0oo = sxVar.o0OOO0o().OooO0oo();
        if (vy.OooO0O0(strOooO0oO)) {
            boolean zOooO0Oo = vy.OooO0Oo(strOooO0oO);
            if (vy.OooO0OO(strOooO0oO)) {
                oooO00oOooO0oo.OooOO0("GET", null);
            } else {
                oooO00oOooO0oo.OooOO0(strOooO0oO, zOooO0Oo ? sxVar.o0OOO0o().OooO00o() : null);
            }
            if (!zOooO0Oo) {
                oooO00oOooO0oo.OooOOO("Transfer-Encoding");
                oooO00oOooO0oo.OooOOO("Content-Length");
                oooO00oOooO0oo.OooOOO("Content-Type");
            }
        }
        if (!OooO0oo(sxVar, kxVarOooo0oo)) {
            oooO00oOooO0oo.OooOOO("Authorization");
        }
        return oooO00oOooO0oo.OooOOoo(kxVarOooo0oo).OooO0O0();
    }

    private boolean OooO0o(IOException iOException, py pyVar, boolean z, qx qxVar) {
        pyVar.OooOOo0(iOException);
        if (this.OooO00o.OooOoo()) {
            return !(z && (qxVar.OooO00o() instanceof bz)) && OooO0o0(iOException, z) && pyVar.OooO0oo();
        }
        return false;
    }

    private boolean OooO0o0(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private int OooO0oO(sx sxVar, int i) {
        String strO0OoOo0 = sxVar.o0OoOo0("Retry-After");
        if (strO0OoOo0 == null) {
            return i;
        }
        if (strO0OoOo0.matches("\\d+")) {
            return Integer.valueOf(strO0OoOo0).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean OooO0oo(sx sxVar, kx kxVar) {
        kx kxVarOooOO0O = sxVar.o0OOO0o().OooOO0O();
        return kxVarOooOO0O.OooOOOo().equals(kxVar.OooOOOo()) && kxVarOooOO0O.OooOooo() == kxVar.OooOooo() && kxVarOooOO0O.Oooo().equals(kxVar.Oooo());
    }

    public void OooO(Object obj) {
        this.OooO0Oo = obj;
    }

    public void OooO00o() {
        this.OooO0o0 = true;
        py pyVar = this.OooO0OO;
        if (pyVar != null) {
            pyVar.OooO0O0();
        }
    }

    public boolean OooO0Oo() {
        return this.OooO0o0;
    }

    public py OooOO0() {
        return this.OooO0OO;
    }

    @Override // z2.lx
    public sx intercept(lx.OooO00o oooO00o) throws IOException {
        sx sxVarOooOO0O;
        qx qxVarOooO0OO;
        qx qxVarRequest = oooO00o.request();
        wy wyVar = (wy) oooO00o;
        tw twVarCall = wyVar.call();
        gx gxVarOooO = wyVar.OooO();
        py pyVar = new py(this.OooO00o.OooO0oo(), OooO0O0(qxVarRequest.OooOO0O()), twVarCall, gxVarOooO, this.OooO0Oo);
        this.OooO0OO = pyVar;
        sx sxVar = null;
        int i = 0;
        while (!this.OooO0o0) {
            try {
                try {
                    sxVarOooOO0O = wyVar.OooOO0O(qxVarRequest, pyVar, null, null);
                    if (sxVar != null) {
                        sxVarOooOO0O = sxVarOooOO0O.o00oO0o().OooOOO0(sxVar.o00oO0o().OooO0O0(null).OooO0OO()).OooO0OO();
                    }
                    try {
                        qxVarOooO0OO = OooO0OO(sxVarOooOO0O, pyVar.OooOOOO());
                    } catch (IOException e) {
                        pyVar.OooOO0O();
                        throw e;
                    }
                } catch (IOException e2) {
                    if (!OooO0o(e2, pyVar, !(e2 instanceof ConnectionShutdownException), qxVarRequest)) {
                        throw e2;
                    }
                } catch (RouteException e3) {
                    if (!OooO0o(e3.getLastConnectException(), pyVar, false, qxVarRequest)) {
                        throw e3.getFirstConnectException();
                    }
                }
                if (qxVarOooO0OO == null) {
                    pyVar.OooOO0O();
                    return sxVarOooOO0O;
                }
                zx.OooO0oO(sxVarOooOO0O.OooOO0());
                int i2 = i + 1;
                if (i2 > 20) {
                    pyVar.OooOO0O();
                    throw new ProtocolException("Too many follow-up requests: " + i2);
                }
                if (qxVarOooO0OO.OooO00o() instanceof bz) {
                    pyVar.OooOO0O();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", sxVarOooOO0O.OoooooO());
                }
                if (!OooO0oo(sxVarOooOO0O, qxVarOooO0OO.OooOO0O())) {
                    pyVar.OooOO0O();
                    pyVar = new py(this.OooO00o.OooO0oo(), OooO0O0(qxVarOooO0OO.OooOO0O()), twVarCall, gxVarOooO, this.OooO0Oo);
                    this.OooO0OO = pyVar;
                } else if (pyVar.OooO0OO() != null) {
                    throw new IllegalStateException("Closing the body of " + sxVarOooOO0O + " didn't close its backing stream. Bad interceptor?");
                }
                sxVar = sxVarOooOO0O;
                qxVarRequest = qxVarOooO0OO;
                i = i2;
            } catch (Throwable th) {
                pyVar.OooOOo0(null);
                pyVar.OooOO0O();
                throw th;
            }
        }
        pyVar.OooOO0O();
        throw new IOException("Canceled");
    }
}
