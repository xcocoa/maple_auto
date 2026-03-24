package z2;

import com.github.kevinsawicki.http.HttpRequest;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;
import org.slf4j.helpers.MessageFormatter;
import z2.jx;
import z2.o000000O;

/* JADX INFO: loaded from: classes2.dex */
public final class qx {
    public final kx OooO00o;
    public final String OooO0O0;
    public final jx OooO0OO;

    @Nullable
    public final rx OooO0Oo;

    @Nullable
    private volatile sw OooO0o;
    public final Map<Class<?>, Object> OooO0o0;

    public static class OooO00o {

        @Nullable
        public kx OooO00o;
        public String OooO0O0;
        public jx.OooO00o OooO0OO;

        @Nullable
        public rx OooO0Oo;
        public Map<Class<?>, Object> OooO0o0;

        public OooO00o() {
            this.OooO0o0 = Collections.emptyMap();
            this.OooO0O0 = "GET";
            this.OooO0OO = new jx.OooO00o();
        }

        public OooO00o(qx qxVar) {
            this.OooO0o0 = Collections.emptyMap();
            this.OooO00o = qxVar.OooO00o;
            this.OooO0O0 = qxVar.OooO0O0;
            this.OooO0Oo = qxVar.OooO0Oo;
            this.OooO0o0 = qxVar.OooO0o0.isEmpty() ? Collections.emptyMap() : new LinkedHashMap<>(qxVar.OooO0o0);
            this.OooO0OO = qxVar.OooO0OO.OooO();
        }

        public OooO00o OooO(jx jxVar) {
            this.OooO0OO = jxVar.OooO();
            return this;
        }

        public OooO00o OooO00o(String str, String str2) {
            this.OooO0OO.OooO0O0(str, str2);
            return this;
        }

        public qx OooO0O0() {
            if (this.OooO00o != null) {
                return new qx(this);
            }
            throw new IllegalStateException("url == null");
        }

        public OooO00o OooO0OO(sw swVar) {
            String string = swVar.toString();
            return string.isEmpty() ? OooOOO("Cache-Control") : OooO0oo("Cache-Control", string);
        }

        public OooO00o OooO0Oo() {
            return OooO0o0(zx.OooO0Oo);
        }

        public OooO00o OooO0o() {
            return OooOO0("GET", null);
        }

        public OooO00o OooO0o0(@Nullable rx rxVar) {
            return OooOO0(HttpRequest.METHOD_DELETE, rxVar);
        }

        public OooO00o OooO0oO() {
            return OooOO0("HEAD", null);
        }

        public OooO00o OooO0oo(String str, String str2) {
            this.OooO0OO.OooOO0O(str, str2);
            return this;
        }

        public OooO00o OooOO0(String str, @Nullable rx rxVar) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (rxVar != null && !vy.OooO0O0(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (rxVar != null || !vy.OooO0o0(str)) {
                this.OooO0O0 = str;
                this.OooO0Oo = rxVar;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        public OooO00o OooOO0O(rx rxVar) {
            return OooOO0(o000000O.OooO00o.OooO00o, rxVar);
        }

        public OooO00o OooOO0o(rx rxVar) {
            return OooOO0("POST", rxVar);
        }

        public OooO00o OooOOO(String str) {
            this.OooO0OO.OooOO0(str);
            return this;
        }

        public OooO00o OooOOO0(rx rxVar) {
            return OooOO0(HttpRequest.METHOD_PUT, rxVar);
        }

        public <T> OooO00o OooOOOO(Class<? super T> cls, @Nullable T t) {
            Objects.requireNonNull(cls, "type == null");
            if (t == null) {
                this.OooO0o0.remove(cls);
            } else {
                if (this.OooO0o0.isEmpty()) {
                    this.OooO0o0 = new LinkedHashMap();
                }
                this.OooO0o0.put(cls, cls.cast(t));
            }
            return this;
        }

        public OooO00o OooOOOo(@Nullable Object obj) {
            return OooOOOO(Object.class, obj);
        }

        public OooO00o OooOOo(URL url) {
            Objects.requireNonNull(url, "url == null");
            return OooOOoo(kx.OooOOO0(url.toString()));
        }

        public OooO00o OooOOo0(String str) {
            StringBuilder sb;
            int i;
            Objects.requireNonNull(str, "url == null");
            if (!str.regionMatches(true, 0, "ws:", 0, 3)) {
                if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    sb = new StringBuilder();
                    sb.append("https:");
                    i = 4;
                }
                return OooOOoo(kx.OooOOO0(str));
            }
            sb = new StringBuilder();
            sb.append("http:");
            i = 3;
            sb.append(str.substring(i));
            str = sb.toString();
            return OooOOoo(kx.OooOOO0(str));
        }

        public OooO00o OooOOoo(kx kxVar) {
            Objects.requireNonNull(kxVar, "url == null");
            this.OooO00o = kxVar;
            return this;
        }
    }

    public qx(OooO00o oooO00o) {
        this.OooO00o = oooO00o.OooO00o;
        this.OooO0O0 = oooO00o.OooO0O0;
        this.OooO0OO = oooO00o.OooO0OO.OooO0oo();
        this.OooO0Oo = oooO00o.OooO0Oo;
        this.OooO0o0 = zx.OooOo0o(oooO00o.OooO0o0);
    }

    @Nullable
    public Object OooO() {
        return OooOO0(Object.class);
    }

    @Nullable
    public rx OooO00o() {
        return this.OooO0Oo;
    }

    public sw OooO0O0() {
        sw swVar = this.OooO0o;
        if (swVar != null) {
            return swVar;
        }
        sw swVarOooOOO0 = sw.OooOOO0(this.OooO0OO);
        this.OooO0o = swVarOooOOO0;
        return swVarOooOOO0;
    }

    @Nullable
    public String OooO0OO(String str) {
        return this.OooO0OO.OooO0Oo(str);
    }

    public List<String> OooO0Oo(String str) {
        return this.OooO0OO.OooOOOO(str);
    }

    public boolean OooO0o() {
        return this.OooO00o.OooOOo0();
    }

    public jx OooO0o0() {
        return this.OooO0OO;
    }

    public String OooO0oO() {
        return this.OooO0O0;
    }

    public OooO00o OooO0oo() {
        return new OooO00o(this);
    }

    @Nullable
    public <T> T OooOO0(Class<? extends T> cls) {
        return cls.cast(this.OooO0o0.get(cls));
    }

    public kx OooOO0O() {
        return this.OooO00o;
    }

    public String toString() {
        return "Request{method=" + this.OooO0O0 + ", url=" + this.OooO00o + ", tags=" + this.OooO0o0 + MessageFormatter.DELIM_STOP;
    }
}
