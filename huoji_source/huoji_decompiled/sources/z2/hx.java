package z2;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class hx extends rx {
    private static final mx OooO0OO = mx.OooO0OO("application/x-www-form-urlencoded");
    private final List<String> OooO00o;
    private final List<String> OooO0O0;

    public static final class OooO00o {
        private final List<String> OooO00o;
        private final List<String> OooO0O0;
        private final Charset OooO0OO;

        public OooO00o() {
            this(null);
        }

        public OooO00o(Charset charset) {
            this.OooO00o = new ArrayList();
            this.OooO0O0 = new ArrayList();
            this.OooO0OO = charset;
        }

        public OooO00o OooO00o(String str, String str2) {
            Objects.requireNonNull(str, "name == null");
            Objects.requireNonNull(str2, "value == null");
            this.OooO00o.add(kx.OooO0OO(str, kx.OooOOoo, false, false, true, true, this.OooO0OO));
            this.OooO0O0.add(kx.OooO0OO(str2, kx.OooOOoo, false, false, true, true, this.OooO0OO));
            return this;
        }

        public OooO00o OooO0O0(String str, String str2) {
            Objects.requireNonNull(str, "name == null");
            Objects.requireNonNull(str2, "value == null");
            this.OooO00o.add(kx.OooO0OO(str, kx.OooOOoo, true, false, true, true, this.OooO0OO));
            this.OooO0O0.add(kx.OooO0OO(str2, kx.OooOOoo, true, false, true, true, this.OooO0OO));
            return this;
        }

        public hx OooO0OO() {
            return new hx(this.OooO00o, this.OooO0O0);
        }
    }

    public hx(List<String> list, List<String> list2) {
        this.OooO00o = zx.OooOo0(list);
        this.OooO0O0 = zx.OooOo0(list2);
    }

    private long OooO0o(@Nullable k00 k00Var, boolean z) {
        j00 j00Var = z ? new j00() : k00Var.OooO00o();
        int size = this.OooO00o.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                j00Var.OooOOOO(38);
            }
            j00Var.OooOoO0(this.OooO00o.get(i));
            j00Var.OooOOOO(61);
            j00Var.OooOoO0(this.OooO0O0.get(i));
        }
        if (!z) {
            return 0L;
        }
        long jO00000O0 = j00Var.o00000O0();
        j00Var.OooooOo();
        return jO00000O0;
    }

    public String OooO00o(int i) {
        return this.OooO00o.get(i);
    }

    public String OooO0O0(int i) {
        return this.OooO0O0.get(i);
    }

    public String OooO0OO(int i) {
        return kx.OooOoOO(OooO00o(i), true);
    }

    public int OooO0Oo() {
        return this.OooO00o.size();
    }

    public String OooO0o0(int i) {
        return kx.OooOoOO(OooO0O0(i), true);
    }

    @Override // z2.rx
    public long contentLength() {
        return OooO0o(null, true);
    }

    @Override // z2.rx
    public mx contentType() {
        return OooO0OO;
    }

    @Override // z2.rx
    public void writeTo(k00 k00Var) throws IOException {
        OooO0o(k00Var, false);
    }
}
