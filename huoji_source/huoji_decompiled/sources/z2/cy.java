package z2;

import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import z2.ey;
import z2.jx;
import z2.lx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class cy implements lx {
    public final hy OooO00o;

    public class OooO00o implements e10 {
        public boolean OoooOoO;
        public final /* synthetic */ l00 OoooOoo;
        public final /* synthetic */ dy Ooooo00;
        public final /* synthetic */ k00 Ooooo0o;

        public OooO00o(l00 l00Var, dy dyVar, k00 k00Var) {
            this.OoooOoo = l00Var;
            this.Ooooo00 = dyVar;
            this.Ooooo0o = k00Var;
        }

        @Override // z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            if (!this.OoooOoO && !zx.OooOOo0(this, 100, TimeUnit.MILLISECONDS)) {
                this.OoooOoO = true;
                this.Ooooo00.abort();
            }
            this.OoooOoo.close();
        }

        @Override // z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            try {
                long j2 = this.OoooOoo.read(j00Var, j);
                if (j2 != -1) {
                    j00Var.o0OoOo0(this.Ooooo0o.OooO00o(), j00Var.o00000O0() - j2, j2);
                    this.Ooooo0o.OooOo0();
                    return j2;
                }
                if (!this.OoooOoO) {
                    this.OoooOoO = true;
                    this.Ooooo0o.close();
                }
                return -1L;
            } catch (IOException e) {
                if (!this.OoooOoO) {
                    this.OoooOoO = true;
                    this.Ooooo00.abort();
                }
                throw e;
            }
        }

        @Override // z2.e10
        public f10 timeout() {
            return this.OoooOoo.timeout();
        }
    }

    public cy(hy hyVar) {
        this.OooO00o = hyVar;
    }

    private sx OooO00o(dy dyVar, sx sxVar) throws IOException {
        d10 d10VarOooO00o;
        if (dyVar == null || (d10VarOooO00o = dyVar.OooO00o()) == null) {
            return sxVar;
        }
        return sxVar.o00oO0o().OooO0O0(new xy(sxVar.o0OoOo0("Content-Type"), sxVar.OooOO0().contentLength(), w00.OooO0Oo(new OooO00o(sxVar.OooOO0().source(), dyVar, w00.OooO0OO(d10VarOooO00o))))).OooO0OO();
    }

    private static jx OooO0O0(jx jxVar, jx jxVar2) {
        jx.OooO00o oooO00o = new jx.OooO00o();
        int iOooOO0o = jxVar.OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            String strOooO0oO = jxVar.OooO0oO(i);
            String strOooOOO = jxVar.OooOOO(i);
            if ((!"Warning".equalsIgnoreCase(strOooO0oO) || !strOooOOO.startsWith("1")) && (OooO0OO(strOooO0oO) || !OooO0Oo(strOooO0oO) || jxVar2.OooO0Oo(strOooO0oO) == null)) {
                xx.OooO00o.OooO0O0(oooO00o, strOooO0oO, strOooOOO);
            }
        }
        int iOooOO0o2 = jxVar2.OooOO0o();
        for (int i2 = 0; i2 < iOooOO0o2; i2++) {
            String strOooO0oO2 = jxVar2.OooO0oO(i2);
            if (!OooO0OO(strOooO0oO2) && OooO0Oo(strOooO0oO2)) {
                xx.OooO00o.OooO0O0(oooO00o, strOooO0oO2, jxVar2.OooOOO(i2));
            }
        }
        return oooO00o.OooO0oo();
    }

    public static boolean OooO0OO(String str) {
        return "Content-Length".equalsIgnoreCase(str) || "Content-Encoding".equalsIgnoreCase(str) || "Content-Type".equalsIgnoreCase(str);
    }

    public static boolean OooO0Oo(String str) {
        return ("Connection".equalsIgnoreCase(str) || com.anythink.expressad.foundation.g.f.g.b.c.equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || HttpRequest.HEADER_PROXY_AUTHORIZATION.equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    private static sx OooO0o0(sx sxVar) {
        return (sxVar == null || sxVar.OooOO0() == null) ? sxVar : sxVar.o00oO0o().OooO0O0(null).OooO0OO();
    }

    @Override // z2.lx
    public sx intercept(lx.OooO00o oooO00o) throws IOException {
        hy hyVar = this.OooO00o;
        sx sxVarOooO0o0 = hyVar != null ? hyVar.OooO0o0(oooO00o.request()) : null;
        ey eyVarOooO0OO = new ey.OooO00o(System.currentTimeMillis(), oooO00o.request(), sxVarOooO0o0).OooO0OO();
        qx qxVar = eyVarOooO0OO.OooO00o;
        sx sxVar = eyVarOooO0OO.OooO0O0;
        hy hyVar2 = this.OooO00o;
        if (hyVar2 != null) {
            hyVar2.OooO0O0(eyVarOooO0OO);
        }
        if (sxVarOooO0o0 != null && sxVar == null) {
            zx.OooO0oO(sxVarOooO0o0.OooOO0());
        }
        if (qxVar == null && sxVar == null) {
            return new sx.OooO00o().OooOOo0(oooO00o.request()).OooOOO(Protocol.HTTP_1_1).OooO0oO(504).OooOO0O("Unsatisfiable Request (only-if-cached)").OooO0O0(zx.OooO0OO).OooOOo(-1L).OooOOOO(System.currentTimeMillis()).OooO0OO();
        }
        if (qxVar == null) {
            return sxVar.o00oO0o().OooO0Oo(OooO0o0(sxVar)).OooO0OO();
        }
        try {
            sx sxVarOooO0o02 = oooO00o.OooO0o0(qxVar);
            if (sxVarOooO0o02 == null && sxVarOooO0o0 != null) {
            }
            if (sxVar != null) {
                if (sxVarOooO0o02.OoooooO() == 304) {
                    sx sxVarOooO0OO = sxVar.o00oO0o().OooOO0(OooO0O0(sxVar.o00Oo0(), sxVarOooO0o02.o00Oo0())).OooOOo(sxVarOooO0o02.o0Oo0oo()).OooOOOO(sxVarOooO0o02.o0ooOoO()).OooO0Oo(OooO0o0(sxVar)).OooOO0o(OooO0o0(sxVarOooO0o02)).OooO0OO();
                    sxVarOooO0o02.OooOO0().close();
                    this.OooO00o.OooO00o();
                    this.OooO00o.OooO0o(sxVar, sxVarOooO0OO);
                    return sxVarOooO0OO;
                }
                zx.OooO0oO(sxVar.OooOO0());
            }
            sx sxVarOooO0OO2 = sxVarOooO0o02.o00oO0o().OooO0Oo(OooO0o0(sxVar)).OooOO0o(OooO0o0(sxVarOooO0o02)).OooO0OO();
            if (this.OooO00o != null) {
                if (uy.OooO0OO(sxVarOooO0OO2) && ey.OooO00o(sxVarOooO0OO2, qxVar)) {
                    return OooO00o(this.OooO00o.OooO0Oo(sxVarOooO0OO2), sxVarOooO0OO2);
                }
                if (vy.OooO00o(qxVar.OooO0oO())) {
                    try {
                        this.OooO00o.OooO0OO(qxVar);
                    } catch (IOException unused) {
                    }
                }
            }
            return sxVarOooO0OO2;
        } finally {
            if (sxVarOooO0o0 != null) {
                zx.OooO0oO(sxVarOooO0o0.OooOO0());
            }
        }
    }
}
