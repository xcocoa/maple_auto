package z2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import javax.annotation.Nullable;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class nx extends rx {
    private final ByteString OooO00o;
    private final mx OooO0O0;
    private final mx OooO0OO;
    private final List<OooO0O0> OooO0Oo;
    private long OooO0o0 = -1;
    public static final mx OooO0o = mx.OooO0OO("multipart/mixed");
    public static final mx OooO0oO = mx.OooO0OO("multipart/alternative");
    public static final mx OooO0oo = mx.OooO0OO("multipart/digest");
    public static final mx OooO = mx.OooO0OO("multipart/parallel");
    public static final mx OooOO0 = mx.OooO0OO("multipart/form-data");
    private static final byte[] OooOO0O = {58, 32};
    private static final byte[] OooOO0o = {com.umeng.commonsdk.proguard.bg.k, 10};
    private static final byte[] OooOOO0 = {45, 45};

    public static final class OooO00o {
        private final ByteString OooO00o;
        private mx OooO0O0;
        private final List<OooO0O0> OooO0OO;

        public OooO00o() {
            this(UUID.randomUUID().toString());
        }

        public OooO00o(String str) {
            this.OooO0O0 = nx.OooO0o;
            this.OooO0OO = new ArrayList();
            this.OooO00o = ByteString.encodeUtf8(str);
        }

        public OooO00o OooO00o(String str, String str2) {
            return OooO0Oo(OooO0O0.OooO0Oo(str, str2));
        }

        public OooO00o OooO0O0(String str, @Nullable String str2, rx rxVar) {
            return OooO0Oo(OooO0O0.OooO0o0(str, str2, rxVar));
        }

        public OooO00o OooO0OO(@Nullable jx jxVar, rx rxVar) {
            return OooO0Oo(OooO0O0.OooO0O0(jxVar, rxVar));
        }

        public OooO00o OooO0Oo(OooO0O0 oooO0O0) {
            Objects.requireNonNull(oooO0O0, "part == null");
            this.OooO0OO.add(oooO0O0);
            return this;
        }

        public nx OooO0o() {
            if (this.OooO0OO.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new nx(this.OooO00o, this.OooO0O0, this.OooO0OO);
        }

        public OooO00o OooO0o0(rx rxVar) {
            return OooO0Oo(OooO0O0.OooO0OO(rxVar));
        }

        public OooO00o OooO0oO(mx mxVar) {
            Objects.requireNonNull(mxVar, "type == null");
            if (mxVar.OooO0o().equals("multipart")) {
                this.OooO0O0 = mxVar;
                return this;
            }
            throw new IllegalArgumentException("multipart != " + mxVar);
        }
    }

    public static final class OooO0O0 {

        @Nullable
        public final jx OooO00o;
        public final rx OooO0O0;

        private OooO0O0(@Nullable jx jxVar, rx rxVar) {
            this.OooO00o = jxVar;
            this.OooO0O0 = rxVar;
        }

        public static OooO0O0 OooO0O0(@Nullable jx jxVar, rx rxVar) {
            Objects.requireNonNull(rxVar, "body == null");
            if (jxVar != null && jxVar.OooO0Oo("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (jxVar == null || jxVar.OooO0Oo("Content-Length") == null) {
                return new OooO0O0(jxVar, rxVar);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static OooO0O0 OooO0OO(rx rxVar) {
            return OooO0O0(null, rxVar);
        }

        public static OooO0O0 OooO0Oo(String str, String str2) {
            return OooO0o0(str, null, rx.create((mx) null, str2));
        }

        public static OooO0O0 OooO0o0(String str, @Nullable String str2, rx rxVar) {
            Objects.requireNonNull(str, "name == null");
            StringBuilder sb = new StringBuilder("form-data; name=");
            nx.OooO00o(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                nx.OooO00o(sb, str2);
            }
            return OooO0O0(jx.OooOO0O("Content-Disposition", sb.toString()), rxVar);
        }

        public rx OooO00o() {
            return this.OooO0O0;
        }

        @Nullable
        public jx OooO0o() {
            return this.OooO00o;
        }
    }

    public nx(ByteString byteString, mx mxVar, List<OooO0O0> list) {
        this.OooO00o = byteString;
        this.OooO0O0 = mxVar;
        this.OooO0OO = mx.OooO0OO(mxVar + "; boundary=" + byteString.utf8());
        this.OooO0Oo = zx.OooOo0(list);
    }

    public static StringBuilder OooO00o(StringBuilder sb, String str) {
        String str2;
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\n') {
                str2 = "%0A";
            } else if (cCharAt == '\r') {
                str2 = "%0D";
            } else if (cCharAt != '\"') {
                sb.append(cCharAt);
            } else {
                str2 = "%22";
            }
            sb.append(str2);
        }
        sb.append('\"');
        return sb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long OooO0oO(@Nullable k00 k00Var, boolean z) throws IOException {
        j00 j00Var;
        if (z) {
            k00Var = new j00();
            j00Var = k00Var;
        } else {
            j00Var = 0;
        }
        int size = this.OooO0Oo.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            OooO0O0 oooO0O0 = this.OooO0Oo.get(i);
            jx jxVar = oooO0O0.OooO00o;
            rx rxVar = oooO0O0.OooO0O0;
            k00Var.Oooo(OooOOO0);
            k00Var.OoooO0(this.OooO00o);
            k00Var.Oooo(OooOO0o);
            if (jxVar != null) {
                int iOooOO0o = jxVar.OooOO0o();
                for (int i2 = 0; i2 < iOooOO0o; i2++) {
                    k00Var.OooOoO0(jxVar.OooO0oO(i2)).Oooo(OooOO0O).OooOoO0(jxVar.OooOOO(i2)).Oooo(OooOO0o);
                }
            }
            mx mxVarContentType = rxVar.contentType();
            if (mxVarContentType != null) {
                k00Var.OooOoO0("Content-Type: ").OooOoO0(mxVarContentType.toString()).Oooo(OooOO0o);
            }
            long jContentLength = rxVar.contentLength();
            if (jContentLength != -1) {
                k00Var.OooOoO0("Content-Length: ").OoooOoO(jContentLength).Oooo(OooOO0o);
            } else if (z) {
                j00Var.OooooOo();
                return -1L;
            }
            byte[] bArr = OooOO0o;
            k00Var.Oooo(bArr);
            if (z) {
                j += jContentLength;
            } else {
                rxVar.writeTo(k00Var);
            }
            k00Var.Oooo(bArr);
        }
        byte[] bArr2 = OooOOO0;
        k00Var.Oooo(bArr2);
        k00Var.OoooO0(this.OooO00o);
        k00Var.Oooo(bArr2);
        k00Var.Oooo(OooOO0o);
        if (!z) {
            return j;
        }
        long jO00000O0 = j + j00Var.o00000O0();
        j00Var.OooooOo();
        return jO00000O0;
    }

    public String OooO0O0() {
        return this.OooO00o.utf8();
    }

    public OooO0O0 OooO0OO(int i) {
        return this.OooO0Oo.get(i);
    }

    public List<OooO0O0> OooO0Oo() {
        return this.OooO0Oo;
    }

    public mx OooO0o() {
        return this.OooO0O0;
    }

    public int OooO0o0() {
        return this.OooO0Oo.size();
    }

    @Override // z2.rx
    public long contentLength() throws IOException {
        long j = this.OooO0o0;
        if (j != -1) {
            return j;
        }
        long jOooO0oO = OooO0oO(null, true);
        this.OooO0o0 = jOooO0oO;
        return jOooO0oO;
    }

    @Override // z2.rx
    public mx contentType() {
        return this.OooO0OO;
    }

    @Override // z2.rx
    public void writeTo(k00 k00Var) throws IOException {
        OooO0oO(k00Var, false);
    }
}
