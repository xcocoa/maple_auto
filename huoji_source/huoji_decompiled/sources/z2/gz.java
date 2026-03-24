package z2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;
import z2.jx;
import z2.lx;
import z2.sx;

/* JADX INFO: loaded from: classes2.dex */
public final class gz implements sy {
    private final lx.OooO00o OooO0O0;
    public final py OooO0OO;
    private final hz OooO0Oo;
    private final Protocol OooO0o;
    private jz OooO0o0;
    private static final String OooO0oO = "connection";
    private static final String OooO0oo = "host";
    private static final String OooO = "keep-alive";
    private static final String OooOO0 = "proxy-connection";
    private static final String OooOO0o = "te";
    private static final String OooOO0O = "transfer-encoding";
    private static final String OooOOO0 = "encoding";
    private static final String OooOOO = "upgrade";
    private static final List<String> OooOOOO = zx.OooOo0O(OooO0oO, OooO0oo, OooO, OooOO0, OooOO0o, OooOO0O, OooOOO0, OooOOO, dz.OooO0o, dz.OooO0oO, dz.OooO0oo, dz.OooO);
    private static final List<String> OooOOOo = zx.OooOo0O(OooO0oO, OooO0oo, OooO, OooOO0, OooOO0o, OooOO0O, OooOOO0, OooOOO);

    public class OooO00o extends p00 {
        public boolean OoooOoO;
        public long OoooOoo;

        public OooO00o(e10 e10Var) {
            super(e10Var);
            this.OoooOoO = false;
            this.OoooOoo = 0L;
        }

        private void OooOO0(IOException iOException) {
            if (this.OoooOoO) {
                return;
            }
            this.OoooOoO = true;
            gz gzVar = gz.this;
            gzVar.OooO0OO.OooOOo(false, gzVar, this.OoooOoo, iOException);
        }

        @Override // z2.p00, z2.e10, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
        public void close() throws IOException {
            super.close();
            OooOO0(null);
        }

        @Override // z2.p00, z2.e10
        public long read(j00 j00Var, long j) throws IOException {
            try {
                long j2 = delegate().read(j00Var, j);
                if (j2 > 0) {
                    this.OoooOoo += j2;
                }
                return j2;
            } catch (IOException e) {
                OooOO0(e);
                throw e;
            }
        }
    }

    public gz(ox oxVar, lx.OooO00o oooO00o, py pyVar, hz hzVar) {
        this.OooO0O0 = oooO00o;
        this.OooO0OO = pyVar;
        this.OooO0Oo = hzVar;
        List<Protocol> listOooOo = oxVar.OooOo();
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.OooO0o = listOooOo.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    public static List<dz> OooO0oO(qx qxVar) {
        jx jxVarOooO0o0 = qxVar.OooO0o0();
        ArrayList arrayList = new ArrayList(jxVarOooO0o0.OooOO0o() + 4);
        arrayList.add(new dz(dz.OooOO0O, qxVar.OooO0oO()));
        arrayList.add(new dz(dz.OooOO0o, yy.OooO0OO(qxVar.OooOO0O())));
        String strOooO0OO = qxVar.OooO0OO(HttpHeaders.HOST);
        if (strOooO0OO != null) {
            arrayList.add(new dz(dz.OooOOO, strOooO0OO));
        }
        arrayList.add(new dz(dz.OooOOO0, qxVar.OooOO0O().Oooo()));
        int iOooOO0o = jxVarOooO0o0.OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8(jxVarOooO0o0.OooO0oO(i).toLowerCase(Locale.US));
            if (!OooOOOO.contains(byteStringEncodeUtf8.utf8())) {
                arrayList.add(new dz(byteStringEncodeUtf8, jxVarOooO0o0.OooOOO(i)));
            }
        }
        return arrayList;
    }

    public static sx.OooO00o OooO0oo(jx jxVar, Protocol protocol) throws IOException {
        jx.OooO00o oooO00o = new jx.OooO00o();
        int iOooOO0o = jxVar.OooOO0o();
        az azVarOooO0O0 = null;
        for (int i = 0; i < iOooOO0o; i++) {
            String strOooO0oO = jxVar.OooO0oO(i);
            String strOooOOO = jxVar.OooOOO(i);
            if (strOooO0oO.equals(dz.OooO0o0)) {
                azVarOooO0O0 = az.OooO0O0("HTTP/1.1 " + strOooOOO);
            } else if (!OooOOOo.contains(strOooO0oO)) {
                xx.OooO00o.OooO0O0(oooO00o, strOooO0oO, strOooOOO);
            }
        }
        if (azVarOooO0O0 != null) {
            return new sx.OooO00o().OooOOO(protocol).OooO0oO(azVarOooO0O0.OooO0O0).OooOO0O(azVarOooO0O0.OooO0OO).OooOO0(oooO00o.OooO0oo());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // z2.sy
    public void OooO00o() throws IOException {
        this.OooO0o0.OooOO0o().close();
    }

    @Override // z2.sy
    public void OooO0O0(qx qxVar) throws IOException {
        if (this.OooO0o0 != null) {
            return;
        }
        jz jzVarO00ooo = this.OooO0Oo.o00ooo(OooO0oO(qxVar), qxVar.OooO00o() != null);
        this.OooO0o0 = jzVarO00ooo;
        f10 f10VarOooOOOo = jzVarO00ooo.OooOOOo();
        long jOooO0O0 = this.OooO0O0.OooO0O0();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        f10VarOooOOOo.OooO0oo(jOooO0O0, timeUnit);
        this.OooO0o0.OooOoO0().OooO0oo(this.OooO0O0.OooO0OO(), timeUnit);
    }

    @Override // z2.sy
    public tx OooO0OO(sx sxVar) throws IOException {
        py pyVar = this.OooO0OO;
        pyVar.OooO0o.OooOOo0(pyVar.OooO0o0);
        return new xy(sxVar.o0OoOo0("Content-Type"), uy.OooO0O0(sxVar), w00.OooO0Oo(new OooO00o(this.OooO0o0.OooOOO0())));
    }

    @Override // z2.sy
    public sx.OooO00o OooO0Oo(boolean z) throws IOException {
        sx.OooO00o oooO00oOooO0oo = OooO0oo(this.OooO0o0.OooOo0O(), this.OooO0o);
        if (z && xx.OooO00o.OooO0Oo(oooO00oOooO0oo) == 100) {
            return null;
        }
        return oooO00oOooO0oo;
    }

    @Override // z2.sy
    public d10 OooO0o(qx qxVar, long j) {
        return this.OooO0o0.OooOO0o();
    }

    @Override // z2.sy
    public void OooO0o0() throws IOException {
        this.OooO0Oo.flush();
    }

    @Override // z2.sy
    public void cancel() {
        jz jzVar = this.OooO0o0;
        if (jzVar != null) {
            jzVar.OooO0oo(ErrorCode.CANCEL);
        }
    }
}
