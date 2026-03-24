package z2;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public final class ooo0o implements ooOOO0Oo {
    private final Map<String, List<ooOOO00O>> OooO0OO;
    private volatile Map<String, String> OooO0Oo;

    public static final class OooO00o {
        private static final String OooO0Oo = "User-Agent";
        private static final Map<String, List<ooOOO00O>> OooO0o;
        private static final String OooO0o0;
        private boolean OooO00o = true;
        private Map<String, List<ooOOO00O>> OooO0O0 = OooO0o;
        private boolean OooO0OO = true;

        static {
            String strOooO0oO = OooO0oO();
            OooO0o0 = strOooO0oO;
            HashMap map = new HashMap(2);
            if (!TextUtils.isEmpty(strOooO0oO)) {
                map.put("User-Agent", Collections.singletonList(new OooO0O0(strOooO0oO)));
            }
            OooO0o = Collections.unmodifiableMap(map);
        }

        private Map<String, List<ooOOO00O>> OooO0Oo() {
            HashMap map = new HashMap(this.OooO0O0.size());
            for (Map.Entry<String, List<ooOOO00O>> entry : this.OooO0O0.entrySet()) {
                map.put(entry.getKey(), new ArrayList(entry.getValue()));
            }
            return map;
        }

        private List<ooOOO00O> OooO0o(String str) {
            List<ooOOO00O> list = this.OooO0O0.get(str);
            if (list != null) {
                return list;
            }
            ArrayList arrayList = new ArrayList();
            this.OooO0O0.put(str, arrayList);
            return arrayList;
        }

        private void OooO0o0() {
            if (this.OooO00o) {
                this.OooO00o = false;
                this.OooO0O0 = OooO0Oo();
            }
        }

        @VisibleForTesting
        public static String OooO0oO() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char cCharAt = property.charAt(i);
                if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                    cCharAt = '?';
                }
                sb.append(cCharAt);
            }
            return sb.toString();
        }

        public OooO00o OooO(@NonNull String str, @Nullable String str2) {
            return OooO0oo(str, str2 == null ? null : new OooO0O0(str2));
        }

        public OooO00o OooO00o(@NonNull String str, @NonNull ooOOO00O ooooo00o) {
            if (this.OooO0OO && "User-Agent".equalsIgnoreCase(str)) {
                return OooO0oo(str, ooooo00o);
            }
            OooO0o0();
            OooO0o(str).add(ooooo00o);
            return this;
        }

        public OooO00o OooO0O0(@NonNull String str, @NonNull String str2) {
            return OooO00o(str, new OooO0O0(str2));
        }

        public ooo0o OooO0OO() {
            this.OooO00o = true;
            return new ooo0o(this.OooO0O0);
        }

        public OooO00o OooO0oo(@NonNull String str, @Nullable ooOOO00O ooooo00o) {
            OooO0o0();
            if (ooooo00o == null) {
                this.OooO0O0.remove(str);
            } else {
                List<ooOOO00O> listOooO0o = OooO0o(str);
                listOooO0o.clear();
                listOooO0o.add(ooooo00o);
            }
            if (this.OooO0OO && "User-Agent".equalsIgnoreCase(str)) {
                this.OooO0OO = false;
            }
            return this;
        }
    }

    public static final class OooO0O0 implements ooOOO00O {

        @NonNull
        private final String OooO00o;

        public OooO0O0(@NonNull String str) {
            this.OooO00o = str;
        }

        @Override // z2.ooOOO00O
        public String OooO00o() {
            return this.OooO00o;
        }

        public boolean equals(Object obj) {
            if (obj instanceof OooO0O0) {
                return this.OooO00o.equals(((OooO0O0) obj).OooO00o);
            }
            return false;
        }

        public int hashCode() {
            return this.OooO00o.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.OooO00o + '\'' + MessageFormatter.DELIM_STOP;
        }
    }

    public ooo0o(Map<String, List<ooOOO00O>> map) {
        this.OooO0OO = Collections.unmodifiableMap(map);
    }

    @NonNull
    private String OooO0O0(@NonNull List<ooOOO00O> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String strOooO00o = list.get(i).OooO00o();
            if (!TextUtils.isEmpty(strOooO00o)) {
                sb.append(strOooO00o);
                if (i != list.size() - 1) {
                    sb.append(',');
                }
            }
        }
        return sb.toString();
    }

    private Map<String, String> OooO0OO() {
        HashMap map = new HashMap();
        for (Map.Entry<String, List<ooOOO00O>> entry : this.OooO0OO.entrySet()) {
            String strOooO0O0 = OooO0O0(entry.getValue());
            if (!TextUtils.isEmpty(strOooO0O0)) {
                map.put(entry.getKey(), strOooO0O0);
            }
        }
        return map;
    }

    @Override // z2.ooOOO0Oo
    public Map<String, String> OooO00o() {
        if (this.OooO0Oo == null) {
            synchronized (this) {
                if (this.OooO0Oo == null) {
                    this.OooO0Oo = Collections.unmodifiableMap(OooO0OO());
                }
            }
        }
        return this.OooO0Oo;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ooo0o) {
            return this.OooO0OO.equals(((ooo0o) obj).OooO0OO);
        }
        return false;
    }

    public int hashCode() {
        return this.OooO0OO.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.OooO0OO + MessageFormatter.DELIM_STOP;
    }
}
