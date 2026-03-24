package z2;

import com.github.kevinsawicki.http.HttpRequest;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ww {
    private final String OooO00o;
    private final Map<String, String> OooO0O0;

    public ww(String str, String str2) {
        Objects.requireNonNull(str, "scheme == null");
        Objects.requireNonNull(str2, "realm == null");
        this.OooO00o = str;
        this.OooO0O0 = Collections.singletonMap("realm", str2);
    }

    public ww(String str, Map<String, String> map) {
        Objects.requireNonNull(str, "scheme == null");
        Objects.requireNonNull(map, "authParams == null");
        this.OooO00o = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey() == null ? null : entry.getKey().toLowerCase(Locale.US), entry.getValue());
        }
        this.OooO0O0 = Collections.unmodifiableMap(linkedHashMap);
    }

    public Map<String, String> OooO00o() {
        return this.OooO0O0;
    }

    public Charset OooO0O0() {
        String str = this.OooO0O0.get(HttpRequest.PARAM_CHARSET);
        if (str != null) {
            try {
                return Charset.forName(str);
            } catch (Exception unused) {
            }
        }
        return zx.OooOO0O;
    }

    public String OooO0OO() {
        return this.OooO0O0.get("realm");
    }

    public String OooO0Oo() {
        return this.OooO00o;
    }

    public ww OooO0o0(Charset charset) {
        Objects.requireNonNull(charset, "charset == null");
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.OooO0O0);
        linkedHashMap.put(HttpRequest.PARAM_CHARSET, charset.name());
        return new ww(this.OooO00o, linkedHashMap);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ww) {
            ww wwVar = (ww) obj;
            if (wwVar.OooO00o.equals(this.OooO00o) && wwVar.OooO0O0.equals(this.OooO0O0)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((899 + this.OooO00o.hashCode()) * 31) + this.OooO0O0.hashCode();
    }

    public String toString() {
        return this.OooO00o + " authParams=" + this.OooO0O0;
    }
}
