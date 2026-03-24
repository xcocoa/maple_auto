package z2;

import java.io.IOException;
import java.net.ProtocolException;
import z2.lx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class ry implements lx {
    private final boolean OooO00o;

    public static final class OooO00o extends n00 {
        public long OoooOoo;

        public OooO00o(d10 d10Var) {
            super(d10Var);
        }

        @Override // z2.n00, z2.d10
        public void OooOooO(j00 j00Var, long j) throws IOException {
            super.OooOooO(j00Var, j);
            this.OoooOoo += j;
        }
    }

    public ry(boolean z) {
        this.OooO00o = z;
    }

    @Override // z2.lx
    public sx intercept(lx.OooO00o oooO00o) throws IOException {
        sx.OooO00o oooO00oO00oO0o;
        tx txVarOooO0OO;
        wy wyVar = (wy) oooO00o;
        sy syVarOooOO0 = wyVar.OooOO0();
        py pyVarOooOO0o = wyVar.OooOO0o();
        my myVar = (my) wyVar.OooO0o();
        qx qxVarRequest = wyVar.request();
        long jCurrentTimeMillis = System.currentTimeMillis();
        wyVar.OooO().OooOOOO(wyVar.call());
        syVarOooOO0.OooO0O0(qxVarRequest);
        wyVar.OooO().OooOOO(wyVar.call(), qxVarRequest);
        sx.OooO00o oooO00oOooO0Oo = null;
        if (vy.OooO0O0(qxVarRequest.OooO0oO()) && qxVarRequest.OooO00o() != null) {
            if ("100-continue".equalsIgnoreCase(qxVarRequest.OooO0OO("Expect"))) {
                syVarOooOO0.OooO0o0();
                wyVar.OooO().OooOOoo(wyVar.call());
                oooO00oOooO0Oo = syVarOooOO0.OooO0Oo(true);
            }
            if (oooO00oOooO0Oo == null) {
                wyVar.OooO().OooOOO0(wyVar.call());
                OooO00o oooO00o2 = new OooO00o(syVarOooOO0.OooO0o(qxVarRequest, qxVarRequest.OooO00o().contentLength()));
                k00 k00VarOooO0OO = w00.OooO0OO(oooO00o2);
                qxVarRequest.OooO00o().writeTo(k00VarOooO0OO);
                k00VarOooO0OO.close();
                wyVar.OooO().OooOO0o(wyVar.call(), oooO00o2.OoooOoo);
            } else if (!myVar.OooOOo0()) {
                pyVarOooOO0o.OooOO0();
            }
        }
        syVarOooOO0.OooO00o();
        if (oooO00oOooO0Oo == null) {
            wyVar.OooO().OooOOoo(wyVar.call());
            oooO00oOooO0Oo = syVarOooOO0.OooO0Oo(false);
        }
        sx sxVarOooO0OO = oooO00oOooO0Oo.OooOOo0(qxVarRequest).OooO0oo(pyVarOooOO0o.OooO0Oo().OooO0OO()).OooOOo(jCurrentTimeMillis).OooOOOO(System.currentTimeMillis()).OooO0OO();
        int iOoooooO = sxVarOooO0OO.OoooooO();
        if (iOoooooO == 100) {
            sxVarOooO0OO = syVarOooOO0.OooO0Oo(false).OooOOo0(qxVarRequest).OooO0oo(pyVarOooOO0o.OooO0Oo().OooO0OO()).OooOOo(jCurrentTimeMillis).OooOOOO(System.currentTimeMillis()).OooO0OO();
            iOoooooO = sxVarOooO0OO.OoooooO();
        }
        wyVar.OooO().OooOOo(wyVar.call(), sxVarOooO0OO);
        if (this.OooO00o && iOoooooO == 101) {
            oooO00oO00oO0o = sxVarOooO0OO.o00oO0o();
            txVarOooO0OO = zx.OooO0OO;
        } else {
            oooO00oO00oO0o = sxVarOooO0OO.o00oO0o();
            txVarOooO0OO = syVarOooOO0.OooO0OO(sxVarOooO0OO);
        }
        sx sxVarOooO0OO2 = oooO00oO00oO0o.OooO0O0(txVarOooO0OO).OooO0OO();
        if (com.anythink.expressad.foundation.d.c.cf.equalsIgnoreCase(sxVarOooO0OO2.o0OOO0o().OooO0OO("Connection")) || com.anythink.expressad.foundation.d.c.cf.equalsIgnoreCase(sxVarOooO0OO2.o0OoOo0("Connection"))) {
            pyVarOooOO0o.OooOO0();
        }
        if ((iOoooooO != 204 && iOoooooO != 205) || sxVarOooO0OO2.OooOO0().contentLength() <= 0) {
            return sxVarOooO0OO2;
        }
        throw new ProtocolException("HTTP " + iOoooooO + " had non-zero Content-Length: " + sxVarOooO0OO2.OooOO0().contentLength());
    }
}
