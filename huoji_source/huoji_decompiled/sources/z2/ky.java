package z2;

import java.io.IOException;
import z2.lx;

/* JADX INFO: loaded from: classes2.dex */
public final class ky implements lx {
    public final ox OooO00o;

    public ky(ox oxVar) {
        this.OooO00o = oxVar;
    }

    @Override // z2.lx
    public sx intercept(lx.OooO00o oooO00o) throws IOException {
        wy wyVar = (wy) oooO00o;
        qx qxVarRequest = wyVar.request();
        py pyVarOooOO0o = wyVar.OooOO0o();
        return wyVar.OooOO0O(qxVarRequest, pyVarOooOO0o, pyVarOooOO0o.OooO(this.OooO00o, oooO00o, !qxVarRequest.OooO0oO().equals("GET")), pyVarOooOO0o.OooO0Oo());
    }
}
