package z2;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes2.dex */
public final class ly {
    private final List<ax> OooO00o;
    private int OooO0O0 = 0;
    private boolean OooO0OO;
    private boolean OooO0Oo;

    public ly(List<ax> list) {
        this.OooO00o = list;
    }

    private boolean OooO0OO(SSLSocket sSLSocket) {
        for (int i = this.OooO0O0; i < this.OooO00o.size(); i++) {
            if (this.OooO00o.get(i).OooO0OO(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public ax OooO00o(SSLSocket sSLSocket) throws IOException {
        ax axVar;
        int i = this.OooO0O0;
        int size = this.OooO00o.size();
        while (true) {
            if (i >= size) {
                axVar = null;
                break;
            }
            axVar = this.OooO00o.get(i);
            i++;
            if (axVar.OooO0OO(sSLSocket)) {
                this.OooO0O0 = i;
                break;
            }
        }
        if (axVar != null) {
            this.OooO0OO = OooO0OO(sSLSocket);
            xx.OooO00o.OooO0OO(axVar, sSLSocket, this.OooO0Oo);
            return axVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.OooO0Oo + ", modes=" + this.OooO00o + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean OooO0O0(IOException iOException) {
        this.OooO0Oo = true;
        if (!this.OooO0OO || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }
}
