package z2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.github.kevinsawicki.http.HttpRequest;
import java.io.IOException;
import java.util.List;
import z2.lx;
import z2.qx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class qy implements lx {
    private final cx OooO00o;

    public qy(cx cxVar) {
        this.OooO00o = cxVar;
    }

    private String OooO00o(List<bx> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append("; ");
            }
            bx bxVar = list.get(i);
            sb.append(bxVar.OooO0oo());
            sb.append('=');
            sb.append(bxVar.OooOo00());
        }
        return sb.toString();
    }

    @Override // z2.lx
    public sx intercept(lx.OooO00o oooO00o) throws IOException {
        qx qxVarRequest = oooO00o.request();
        qx.OooO00o oooO00oOooO0oo = qxVarRequest.OooO0oo();
        rx rxVarOooO00o = qxVarRequest.OooO00o();
        if (rxVarOooO00o != null) {
            mx mxVarContentType = rxVarOooO00o.contentType();
            if (mxVarContentType != null) {
                oooO00oOooO0oo.OooO0oo("Content-Type", mxVarContentType.toString());
            }
            long jContentLength = rxVarOooO00o.contentLength();
            if (jContentLength != -1) {
                oooO00oOooO0oo.OooO0oo("Content-Length", Long.toString(jContentLength));
                oooO00oOooO0oo.OooOOO("Transfer-Encoding");
            } else {
                oooO00oOooO0oo.OooO0oo("Transfer-Encoding", "chunked");
                oooO00oOooO0oo.OooOOO("Content-Length");
            }
        }
        boolean z = false;
        if (qxVarRequest.OooO0OO(HttpHeaders.HOST) == null) {
            oooO00oOooO0oo.OooO0oo(HttpHeaders.HOST, zx.OooOo00(qxVarRequest.OooOO0O(), false));
        }
        if (qxVarRequest.OooO0OO("Connection") == null) {
            oooO00oOooO0oo.OooO0oo("Connection", com.anythink.expressad.foundation.g.f.g.b.c);
        }
        if (qxVarRequest.OooO0OO(HttpRequest.HEADER_ACCEPT_ENCODING) == null && qxVarRequest.OooO0OO(HttpHeaders.RANGE) == null) {
            z = true;
            oooO00oOooO0oo.OooO0oo(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip");
        }
        List<bx> listOooO0O0 = this.OooO00o.OooO0O0(qxVarRequest.OooOO0O());
        if (!listOooO0O0.isEmpty()) {
            oooO00oOooO0oo.OooO0oo("Cookie", OooO00o(listOooO0O0));
        }
        if (qxVarRequest.OooO0OO("User-Agent") == null) {
            oooO00oOooO0oo.OooO0oo("User-Agent", ay.OooO00o());
        }
        sx sxVarOooO0o0 = oooO00o.OooO0o0(oooO00oOooO0oo.OooO0O0());
        uy.OooOO0O(this.OooO00o, qxVarRequest.OooOO0O(), sxVarOooO0o0.o00Oo0());
        sx.OooO00o oooO00oOooOOo0 = sxVarOooO0o0.o00oO0o().OooOOo0(qxVarRequest);
        if (z && "gzip".equalsIgnoreCase(sxVarOooO0o0.o0OoOo0("Content-Encoding")) && uy.OooO0OO(sxVarOooO0o0)) {
            s00 s00Var = new s00(sxVarOooO0o0.OooOO0().source());
            oooO00oOooOOo0.OooOO0(sxVarOooO0o0.o00Oo0().OooO().OooOO0("Content-Encoding").OooOO0("Content-Length").OooO0oo());
            oooO00oOooOOo0.OooO0O0(new xy(sxVarOooO0o0.o0OoOo0("Content-Type"), -1L, w00.OooO0Oo(s00Var)));
        }
        return oooO00oOooOOo0.OooO0OO();
    }
}
