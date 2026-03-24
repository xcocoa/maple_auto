package z2;

import java.io.Closeable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.Protocol;
import org.slf4j.helpers.MessageFormatter;
import z2.jx;

/* JADX INFO: loaded from: classes2.dex */
public final class sx implements Closeable {
    public final qx OoooOoO;
    public final Protocol OoooOoo;
    public final int Ooooo00;
    public final String Ooooo0o;

    @Nullable
    public final ix OooooO0;
    public final jx OooooOO;

    @Nullable
    public final tx OooooOo;

    @Nullable
    public final sx Oooooo;

    @Nullable
    public final sx Oooooo0;

    @Nullable
    public final sx OoooooO;
    public final long Ooooooo;
    public final long o0OoOo0;

    @Nullable
    private volatile sw ooOO;

    public static class OooO00o {

        @Nullable
        public sx OooO;

        @Nullable
        public qx OooO00o;

        @Nullable
        public Protocol OooO0O0;
        public int OooO0OO;
        public String OooO0Oo;
        public jx.OooO00o OooO0o;

        @Nullable
        public ix OooO0o0;

        @Nullable
        public tx OooO0oO;

        @Nullable
        public sx OooO0oo;

        @Nullable
        public sx OooOO0;
        public long OooOO0O;
        public long OooOO0o;

        public OooO00o() {
            this.OooO0OO = -1;
            this.OooO0o = new jx.OooO00o();
        }

        public OooO00o(sx sxVar) {
            this.OooO0OO = -1;
            this.OooO00o = sxVar.OoooOoO;
            this.OooO0O0 = sxVar.OoooOoo;
            this.OooO0OO = sxVar.Ooooo00;
            this.OooO0Oo = sxVar.Ooooo0o;
            this.OooO0o0 = sxVar.OooooO0;
            this.OooO0o = sxVar.OooooOO.OooO();
            this.OooO0oO = sxVar.OooooOo;
            this.OooO0oo = sxVar.Oooooo0;
            this.OooO = sxVar.Oooooo;
            this.OooOO0 = sxVar.OoooooO;
            this.OooOO0O = sxVar.Ooooooo;
            this.OooOO0o = sxVar.o0OoOo0;
        }

        private void OooO0o(String str, sx sxVar) {
            if (sxVar.OooooOo != null) {
                throw new IllegalArgumentException(str + ".body != null");
            }
            if (sxVar.Oooooo0 != null) {
                throw new IllegalArgumentException(str + ".networkResponse != null");
            }
            if (sxVar.Oooooo != null) {
                throw new IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (sxVar.OoooooO == null) {
                return;
            }
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }

        private void OooO0o0(sx sxVar) {
            if (sxVar.OooooOo != null) {
                throw new IllegalArgumentException("priorResponse.body != null");
            }
        }

        public OooO00o OooO(String str, String str2) {
            this.OooO0o.OooOO0O(str, str2);
            return this;
        }

        public OooO00o OooO00o(String str, String str2) {
            this.OooO0o.OooO0O0(str, str2);
            return this;
        }

        public OooO00o OooO0O0(@Nullable tx txVar) {
            this.OooO0oO = txVar;
            return this;
        }

        public sx OooO0OO() {
            if (this.OooO00o == null) {
                throw new IllegalStateException("request == null");
            }
            if (this.OooO0O0 == null) {
                throw new IllegalStateException("protocol == null");
            }
            if (this.OooO0OO >= 0) {
                if (this.OooO0Oo != null) {
                    return new sx(this);
                }
                throw new IllegalStateException("message == null");
            }
            throw new IllegalStateException("code < 0: " + this.OooO0OO);
        }

        public OooO00o OooO0Oo(@Nullable sx sxVar) {
            if (sxVar != null) {
                OooO0o("cacheResponse", sxVar);
            }
            this.OooO = sxVar;
            return this;
        }

        public OooO00o OooO0oO(int i) {
            this.OooO0OO = i;
            return this;
        }

        public OooO00o OooO0oo(@Nullable ix ixVar) {
            this.OooO0o0 = ixVar;
            return this;
        }

        public OooO00o OooOO0(jx jxVar) {
            this.OooO0o = jxVar.OooO();
            return this;
        }

        public OooO00o OooOO0O(String str) {
            this.OooO0Oo = str;
            return this;
        }

        public OooO00o OooOO0o(@Nullable sx sxVar) {
            if (sxVar != null) {
                OooO0o("networkResponse", sxVar);
            }
            this.OooO0oo = sxVar;
            return this;
        }

        public OooO00o OooOOO(Protocol protocol) {
            this.OooO0O0 = protocol;
            return this;
        }

        public OooO00o OooOOO0(@Nullable sx sxVar) {
            if (sxVar != null) {
                OooO0o0(sxVar);
            }
            this.OooOO0 = sxVar;
            return this;
        }

        public OooO00o OooOOOO(long j) {
            this.OooOO0o = j;
            return this;
        }

        public OooO00o OooOOOo(String str) {
            this.OooO0o.OooOO0(str);
            return this;
        }

        public OooO00o OooOOo(long j) {
            this.OooOO0O = j;
            return this;
        }

        public OooO00o OooOOo0(qx qxVar) {
            this.OooO00o = qxVar;
            return this;
        }
    }

    public sx(OooO00o oooO00o) {
        this.OoooOoO = oooO00o.OooO00o;
        this.OoooOoo = oooO00o.OooO0O0;
        this.Ooooo00 = oooO00o.OooO0OO;
        this.Ooooo0o = oooO00o.OooO0Oo;
        this.OooooO0 = oooO00o.OooO0o0;
        this.OooooOO = oooO00o.OooO0o.OooO0oo();
        this.OooooOo = oooO00o.OooO0oO;
        this.Oooooo0 = oooO00o.OooO0oo;
        this.Oooooo = oooO00o.OooO;
        this.OoooooO = oooO00o.OooOO0;
        this.Ooooooo = oooO00o.OooOO0O;
        this.o0OoOo0 = oooO00o.OooOO0o;
    }

    @Nullable
    public tx OooOO0() {
        return this.OooooOo;
    }

    public sw OooooOo() {
        sw swVar = this.ooOO;
        if (swVar != null) {
            return swVar;
        }
        sw swVarOooOOO0 = sw.OooOOO0(this.OooooOO);
        this.ooOO = swVarOooOOO0;
        return swVarOooOOO0;
    }

    public List<ww> Oooooo() {
        String str;
        int i = this.Ooooo00;
        if (i == 401) {
            str = "WWW-Authenticate";
        } else {
            if (i != 407) {
                return Collections.emptyList();
            }
            str = "Proxy-Authenticate";
        }
        return uy.OooO0oO(o00Oo0(), str);
    }

    @Nullable
    public sx Oooooo0() {
        return this.Oooooo;
    }

    public int OoooooO() {
        return this.Ooooo00;
    }

    @Nullable
    public ix Ooooooo() {
        return this.OooooO0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        tx txVar = this.OooooOo;
        if (txVar == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        txVar.close();
    }

    public List<String> o00O0O(String str) {
        return this.OooooOO.OooOOOO(str);
    }

    public jx o00Oo0() {
        return this.OooooOO;
    }

    public boolean o00Ooo() {
        int i = this.Ooooo00;
        if (i == 307 || i == 308) {
            return true;
        }
        switch (i) {
            case 300:
            case SET_ENABLED_VALUE:
            case 302:
            case SET_TITLE_TEXT_VALUE:
                return true;
            default:
                return false;
        }
    }

    public boolean o00o0O() {
        int i = this.Ooooo00;
        return i >= 200 && i < 300;
    }

    public tx o00oO0O(long j) throws IOException {
        l00 l00VarSource = this.OooooOo.source();
        l00VarSource.request(j);
        j00 j00VarClone = l00VarSource.OooO00o().clone();
        if (j00VarClone.o00000O0() > j) {
            j00 j00Var = new j00();
            j00Var.OooOooO(j00VarClone, j);
            j00VarClone.OooooOo();
            j00VarClone = j00Var;
        }
        return tx.create(this.OooooOo.contentType(), j00VarClone.o00000O0(), j00VarClone);
    }

    public OooO00o o00oO0o() {
        return new OooO00o(this);
    }

    public String o00ooo() {
        return this.Ooooo0o;
    }

    public qx o0OOO0o() {
        return this.OoooOoO;
    }

    public long o0Oo0oo() {
        return this.Ooooooo;
    }

    @Nullable
    public String o0OoOo0(String str) {
        return ooOO(str, null);
    }

    @Nullable
    public sx o0ooOO0() {
        return this.OoooooO;
    }

    public Protocol o0ooOOo() {
        return this.OoooOoo;
    }

    public long o0ooOoO() {
        return this.o0OoOo0;
    }

    @Nullable
    public sx oo000o() {
        return this.Oooooo0;
    }

    @Nullable
    public String ooOO(String str, @Nullable String str2) {
        String strOooO0Oo = this.OooooOO.OooO0Oo(str);
        return strOooO0Oo != null ? strOooO0Oo : str2;
    }

    public String toString() {
        return "Response{protocol=" + this.OoooOoo + ", code=" + this.Ooooo00 + ", message=" + this.Ooooo0o + ", url=" + this.OoooOoO.OooOO0O() + MessageFormatter.DELIM_STOP;
    }
}
