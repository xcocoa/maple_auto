package z2;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import z2.v2;

/* JADX INFO: loaded from: classes.dex */
public class oOo000o0 {
    private final o2<o0O0O0Oo, String> OooO00o = new o2<>(1000);
    private final Pools.Pool<OooO0O0> OooO0O0 = v2.OooO0o0(10, new OooO00o());

    public class OooO00o implements v2.OooO0o<OooO0O0> {
        public OooO00o() {
        }

        @Override // z2.v2.OooO0o
        /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
        public OooO0O0 OooO00o() {
            try {
                return new OooO0O0(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static final class OooO0O0 implements v2.OooOO0 {
        public final MessageDigest OoooOoO;
        private final x2 OoooOoo = x2.OooO00o();

        public OooO0O0(MessageDigest messageDigest) {
            this.OoooOoO = messageDigest;
        }

        @Override // z2.v2.OooOO0
        @NonNull
        public x2 OooO0oO() {
            return this.OoooOoo;
        }
    }

    private String OooO00o(o0O0O0Oo o0o0o0oo) {
        OooO0O0 oooO0O0 = (OooO0O0) r2.OooO0Oo(this.OooO0O0.acquire());
        try {
            o0o0o0oo.OooO00o(oooO0O0.OoooOoO);
            return t2.OooOo0o(oooO0O0.OoooOoO.digest());
        } finally {
            this.OooO0O0.release(oooO0O0);
        }
    }

    public String OooO0O0(o0O0O0Oo o0o0o0oo) {
        String strOooOO0O;
        synchronized (this.OooO00o) {
            strOooOO0O = this.OooO00o.OooOO0O(o0o0o0oo);
        }
        if (strOooOO0O == null) {
            strOooOO0O = OooO00o(o0o0o0oo);
        }
        synchronized (this.OooO00o) {
            this.OooO00o.OooOOOO(o0o0o0oo, strOooOO0O);
        }
        return strOooOO0O;
    }
}
