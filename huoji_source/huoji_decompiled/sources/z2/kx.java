package z2;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.commons.io.IOUtils;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes2.dex */
public final class kx {
    private static final char[] OooOO0 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final String OooOO0O = " \"':;<=>@[]^`{}|/\\?#";
    public static final String OooOO0o = " \"':;<=>@[]^`{}|/\\?#";
    public static final String OooOOO = "[]";
    public static final String OooOOO0 = " \"<>^`{}|/\\?#";
    public static final String OooOOOO = " \"'<>#";
    public static final String OooOOOo = " \"'<>#&=";
    public static final String OooOOo = "\\^`{|}";
    public static final String OooOOo0 = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    public static final String OooOOoo = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    public static final String OooOo0 = " \"#<>\\^`{|}";
    public static final String OooOo00 = "";
    private final String OooO;
    public final String OooO00o;
    private final String OooO0O0;
    private final String OooO0OO;
    public final String OooO0Oo;
    private final List<String> OooO0o;
    public final int OooO0o0;

    @Nullable
    private final List<String> OooO0oO;

    @Nullable
    private final String OooO0oo;

    public static final class OooO00o {
        public static final String OooO = "Invalid URL host";

        @Nullable
        public String OooO00o;

        @Nullable
        public String OooO0Oo;
        public final List<String> OooO0o;

        @Nullable
        public List<String> OooO0oO;

        @Nullable
        public String OooO0oo;
        public String OooO0O0 = "";
        public String OooO0OO = "";
        public int OooO0o0 = -1;

        public OooO00o() {
            ArrayList arrayList = new ArrayList();
            this.OooO0o = arrayList;
            arrayList.add("");
        }

        private static String OooO(String str, int i, int i2) {
            return zx.OooO0Oo(kx.OooOoO(str, i, i2, false));
        }

        private OooO00o OooO0o(String str, boolean z) {
            int i = 0;
            do {
                int iOooOOOo = zx.OooOOOo(str, i, str.length(), "/\\");
                OooOoO(str, i, iOooOOOo, iOooOOOo < str.length(), z);
                i = iOooOOOo + 1;
            } while (i <= str.length());
            return this;
        }

        private boolean OooOOo(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean OooOOoo(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int OooOo0(String str, int i, int i2) {
            int i3;
            try {
                i3 = Integer.parseInt(kx.OooO00o(str, i, i2, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i3 <= 0 || i3 > 65535) {
                return -1;
            }
            return i3;
        }

        private void OooOo0o() {
            if (!this.OooO0o.remove(r0.size() - 1).isEmpty() || this.OooO0o.isEmpty()) {
                this.OooO0o.add("");
            } else {
                this.OooO0o.set(r0.size() - 1, "");
            }
        }

        private void OooOoO(String str, int i, int i2, boolean z, boolean z3) {
            String strOooO00o = kx.OooO00o(str, i, i2, kx.OooOOO0, z3, false, false, true, null);
            if (OooOOo(strOooO00o)) {
                return;
            }
            if (OooOOoo(strOooO00o)) {
                OooOo0o();
                return;
            }
            if (this.OooO0o.get(r11.size() - 1).isEmpty()) {
                this.OooO0o.set(r11.size() - 1, strOooO00o);
            } else {
                this.OooO0o.add(strOooO00o);
            }
            if (z) {
                this.OooO0o.add("");
            }
        }

        private static int OooOoO0(String str, int i, int i2) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt == ':') {
                    return i;
                }
                if (cCharAt == '[') {
                    do {
                        i++;
                        if (i < i2) {
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        private void OooOoo(String str) {
            for (int size = this.OooO0oO.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.OooO0oO.get(size))) {
                    this.OooO0oO.remove(size + 1);
                    this.OooO0oO.remove(size);
                    if (this.OooO0oO.isEmpty()) {
                        this.OooO0oO = null;
                        return;
                    }
                }
            }
        }

        private static int Oooo0(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private void Oooo00O(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.OooO0o.clear();
                this.OooO0o.add("");
                i++;
            } else {
                List<String> list = this.OooO0o;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                if (i3 >= i2) {
                    return;
                }
                i = zx.OooOOOo(str, i3, i2, "/\\");
                boolean z = i < i2;
                OooOoO(str, i3, i, z, true);
                if (z) {
                    i++;
                }
            }
        }

        private static int Oooo0oO(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        public OooO00o OooO00o(String str) {
            Objects.requireNonNull(str, "encodedPathSegment == null");
            OooOoO(str, 0, str.length(), false, true);
            return this;
        }

        public OooO00o OooO0O0(String str) {
            Objects.requireNonNull(str, "encodedPathSegments == null");
            return OooO0o(str, true);
        }

        public OooO00o OooO0OO(String str, @Nullable String str2) {
            Objects.requireNonNull(str, "encodedName == null");
            if (this.OooO0oO == null) {
                this.OooO0oO = new ArrayList();
            }
            this.OooO0oO.add(kx.OooO0O0(str, kx.OooOOOo, true, false, true, true));
            this.OooO0oO.add(str2 != null ? kx.OooO0O0(str2, kx.OooOOOo, true, false, true, true) : null);
            return this;
        }

        public OooO00o OooO0Oo(String str) {
            Objects.requireNonNull(str, "pathSegment == null");
            OooOoO(str, 0, str.length(), false, false);
            return this;
        }

        public OooO00o OooO0o0(String str) {
            Objects.requireNonNull(str, "pathSegments == null");
            return OooO0o(str, false);
        }

        public OooO00o OooO0oO(String str, @Nullable String str2) {
            Objects.requireNonNull(str, "name == null");
            if (this.OooO0oO == null) {
                this.OooO0oO = new ArrayList();
            }
            this.OooO0oO.add(kx.OooO0O0(str, kx.OooOOo0, false, false, true, true));
            this.OooO0oO.add(str2 != null ? kx.OooO0O0(str2, kx.OooOOo0, false, false, true, true) : null);
            return this;
        }

        public kx OooO0oo() {
            if (this.OooO00o == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.OooO0Oo != null) {
                return new kx(this);
            }
            throw new IllegalStateException("host == null");
        }

        public int OooOO0() {
            int i = this.OooO0o0;
            return i != -1 ? i : kx.OooO0o0(this.OooO00o);
        }

        public OooO00o OooOO0O(@Nullable String str) {
            this.OooO0oo = str != null ? kx.OooO0O0(str, "", true, false, false, false) : null;
            return this;
        }

        public OooO00o OooOO0o(String str) {
            Objects.requireNonNull(str, "encodedPassword == null");
            this.OooO0OO = kx.OooO0O0(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public OooO00o OooOOO(@Nullable String str) {
            this.OooO0oO = str != null ? kx.Oooo0o(kx.OooO0O0(str, kx.OooOOOO, true, false, true, true)) : null;
            return this;
        }

        public OooO00o OooOOO0(String str) {
            Objects.requireNonNull(str, "encodedPath == null");
            if (str.startsWith("/")) {
                Oooo00O(str, 0, str.length());
                return this;
            }
            throw new IllegalArgumentException("unexpected encodedPath: " + str);
        }

        public OooO00o OooOOOO(String str) {
            Objects.requireNonNull(str, "encodedUsername == null");
            this.OooO0O0 = kx.OooO0O0(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        public OooO00o OooOOOo(@Nullable String str) {
            this.OooO0oo = str != null ? kx.OooO0O0(str, "", false, false, false, false) : null;
            return this;
        }

        public OooO00o OooOOo0(String str) {
            Objects.requireNonNull(str, "host == null");
            String strOooO = OooO(str, 0, str.length());
            if (strOooO != null) {
                this.OooO0Oo = strOooO;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public OooO00o OooOo(int i) {
            if (i > 0 && i <= 65535) {
                this.OooO0o0 = i;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i);
        }

        public OooO00o OooOo00(@Nullable kx kxVar, String str) {
            int iOooOOOo;
            int i;
            int iOooo000 = zx.Oooo000(str, 0, str.length());
            int iOooo00O = zx.Oooo00O(str, iOooo000, str.length());
            int iOooo0 = Oooo0(str, iOooo000, iOooo00O);
            if (iOooo0 != -1) {
                if (str.regionMatches(true, iOooo000, "https:", 0, 6)) {
                    this.OooO00o = "https";
                    iOooo000 += 6;
                } else {
                    if (!str.regionMatches(true, iOooo000, "http:", 0, 5)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, iOooo0) + "'");
                    }
                    this.OooO00o = "http";
                    iOooo000 += 5;
                }
            } else {
                if (kxVar == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.OooO00o = kxVar.OooO00o;
            }
            int iOooo0oO = Oooo0oO(str, iOooo000, iOooo00O);
            char c = '?';
            char c2 = '#';
            if (iOooo0oO >= 2 || kxVar == null || !kxVar.OooO00o.equals(this.OooO00o)) {
                int i2 = iOooo000 + iOooo0oO;
                boolean z = false;
                boolean z3 = false;
                while (true) {
                    iOooOOOo = zx.OooOOOo(str, i2, iOooo00O, "@/\\?#");
                    byte bCharAt = iOooOOOo != iOooo00O ? str.charAt(iOooOOOo) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c2 || bCharAt == 47 || bCharAt == 92 || bCharAt == c) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z) {
                            i = iOooOOOo;
                            this.OooO0OO += "%40" + kx.OooO00o(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iOooOOOO = zx.OooOOOO(str, i2, iOooOOOo, ':');
                            i = iOooOOOo;
                            String strOooO00o = kx.OooO00o(str, i2, iOooOOOO, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z3) {
                                strOooO00o = this.OooO0O0 + "%40" + strOooO00o;
                            }
                            this.OooO0O0 = strOooO00o;
                            if (iOooOOOO != i) {
                                this.OooO0OO = kx.OooO00o(str, iOooOOOO + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z = true;
                            }
                            z3 = true;
                        }
                        i2 = i + 1;
                    }
                    c = '?';
                    c2 = '#';
                }
                int iOooOoO0 = OooOoO0(str, i2, iOooOOOo);
                int i3 = iOooOoO0 + 1;
                if (i3 < iOooOOOo) {
                    this.OooO0Oo = OooO(str, i2, iOooOoO0);
                    int iOooOo0 = OooOo0(str, i3, iOooOOOo);
                    this.OooO0o0 = iOooOo0;
                    if (iOooOo0 == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i3, iOooOOOo) + '\"');
                    }
                } else {
                    this.OooO0Oo = OooO(str, i2, iOooOoO0);
                    this.OooO0o0 = kx.OooO0o0(this.OooO00o);
                }
                if (this.OooO0Oo == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i2, iOooOoO0) + '\"');
                }
                iOooo000 = iOooOOOo;
            } else {
                this.OooO0O0 = kxVar.OooOO0O();
                this.OooO0OO = kxVar.OooO0oO();
                this.OooO0Oo = kxVar.OooO0Oo;
                this.OooO0o0 = kxVar.OooO0o0;
                this.OooO0o.clear();
                this.OooO0o.addAll(kxVar.OooO());
                if (iOooo000 == iOooo00O || str.charAt(iOooo000) == '#') {
                    OooOOO(kxVar.OooOO0());
                }
            }
            int iOooOOOo2 = zx.OooOOOo(str, iOooo000, iOooo00O, "?#");
            Oooo00O(str, iOooo000, iOooOOOo2);
            if (iOooOOOo2 < iOooo00O && str.charAt(iOooOOOo2) == '?') {
                int iOooOOOO2 = zx.OooOOOO(str, iOooOOOo2, iOooo00O, '#');
                this.OooO0oO = kx.Oooo0o(kx.OooO00o(str, iOooOOOo2 + 1, iOooOOOO2, kx.OooOOOO, true, false, true, true, null));
                iOooOOOo2 = iOooOOOO2;
            }
            if (iOooOOOo2 < iOooo00O && str.charAt(iOooOOOo2) == '#') {
                this.OooO0oo = kx.OooO00o(str, 1 + iOooOOOo2, iOooo00O, "", true, false, false, false, null);
            }
            return this;
        }

        public OooO00o OooOo0O(String str) {
            Objects.requireNonNull(str, "password == null");
            this.OooO0OO = kx.OooO0O0(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public OooO00o OooOoOO(@Nullable String str) {
            this.OooO0oO = str != null ? kx.Oooo0o(kx.OooO0O0(str, kx.OooOOOO, false, false, true, true)) : null;
            return this;
        }

        public OooO00o OooOoo0() {
            int size = this.OooO0o.size();
            for (int i = 0; i < size; i++) {
                this.OooO0o.set(i, kx.OooO0O0(this.OooO0o.get(i), kx.OooOOO, true, true, false, true));
            }
            List<String> list = this.OooO0oO;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.OooO0oO.get(i2);
                    if (str != null) {
                        this.OooO0oO.set(i2, kx.OooO0O0(str, kx.OooOOo, true, true, true, true));
                    }
                }
            }
            String str2 = this.OooO0oo;
            if (str2 != null) {
                this.OooO0oo = kx.OooO0O0(str2, kx.OooOo0, true, true, false, false);
            }
            return this;
        }

        public OooO00o OooOooO(String str) {
            Objects.requireNonNull(str, "encodedName == null");
            if (this.OooO0oO == null) {
                return this;
            }
            OooOoo(kx.OooO0O0(str, kx.OooOOOo, true, false, true, true));
            return this;
        }

        public OooO00o OooOooo(String str) {
            Objects.requireNonNull(str, "name == null");
            if (this.OooO0oO == null) {
                return this;
            }
            OooOoo(kx.OooO0O0(str, kx.OooOOo0, false, false, true, true));
            return this;
        }

        public OooO00o Oooo000(int i) {
            this.OooO0o.remove(i);
            if (this.OooO0o.isEmpty()) {
                this.OooO0o.add("");
            }
            return this;
        }

        public OooO00o Oooo00o(String str) {
            Objects.requireNonNull(str, "scheme == null");
            String str2 = "http";
            if (!str.equalsIgnoreCase("http")) {
                str2 = "https";
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
            }
            this.OooO00o = str2;
            return this;
        }

        public OooO00o Oooo0O0(int i, String str) {
            Objects.requireNonNull(str, "encodedPathSegment == null");
            String strOooO00o = kx.OooO00o(str, 0, str.length(), kx.OooOOO0, true, false, false, true, null);
            this.OooO0o.set(i, strOooO00o);
            if (!OooOOo(strOooO00o) && !OooOOoo(strOooO00o)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public OooO00o Oooo0OO(String str, @Nullable String str2) {
            OooOooO(str);
            OooO0OO(str, str2);
            return this;
        }

        public OooO00o Oooo0o(String str, @Nullable String str2) {
            OooOooo(str);
            OooO0oO(str, str2);
            return this;
        }

        public OooO00o Oooo0o0(int i, String str) {
            Objects.requireNonNull(str, "pathSegment == null");
            String strOooO00o = kx.OooO00o(str, 0, str.length(), kx.OooOOO0, false, false, false, true, null);
            if (!OooOOo(strOooO00o) && !OooOOoo(strOooO00o)) {
                this.OooO0o.set(i, strOooO00o);
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public OooO00o Oooo0oo(String str) {
            Objects.requireNonNull(str, "username == null");
            this.OooO0O0 = kx.OooO0O0(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public String toString() {
            String str;
            StringBuilder sb = new StringBuilder();
            String str2 = this.OooO00o;
            if (str2 != null) {
                sb.append(str2);
                str = "://";
            } else {
                str = "//";
            }
            sb.append(str);
            if (!this.OooO0O0.isEmpty() || !this.OooO0OO.isEmpty()) {
                sb.append(this.OooO0O0);
                if (!this.OooO0OO.isEmpty()) {
                    sb.append(':');
                    sb.append(this.OooO0OO);
                }
                sb.append('@');
            }
            String str3 = this.OooO0Oo;
            if (str3 != null) {
                if (str3.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.OooO0Oo);
                    sb.append(']');
                } else {
                    sb.append(this.OooO0Oo);
                }
            }
            if (this.OooO0o0 != -1 || this.OooO00o != null) {
                int iOooOO0 = OooOO0();
                String str4 = this.OooO00o;
                if (str4 == null || iOooOO0 != kx.OooO0o0(str4)) {
                    sb.append(':');
                    sb.append(iOooOO0);
                }
            }
            kx.OooOo(sb, this.OooO0o);
            if (this.OooO0oO != null) {
                sb.append('?');
                kx.OooOOo(sb, this.OooO0oO);
            }
            if (this.OooO0oo != null) {
                sb.append('#');
                sb.append(this.OooO0oo);
            }
            return sb.toString();
        }
    }

    public kx(OooO00o oooO00o) {
        this.OooO00o = oooO00o.OooO00o;
        this.OooO0O0 = OooOoOO(oooO00o.OooO0O0, false);
        this.OooO0OO = OooOoOO(oooO00o.OooO0OO, false);
        this.OooO0Oo = oooO00o.OooO0Oo;
        this.OooO0o0 = oooO00o.OooOO0();
        this.OooO0o = OooOoo0(oooO00o.OooO0o, false);
        List<String> list = oooO00o.OooO0oO;
        this.OooO0oO = list != null ? OooOoo0(list, true) : null;
        String str = oooO00o.OooO0oo;
        this.OooO0oo = str != null ? OooOoOO(str, false) : null;
        this.OooO = oooO00o.toString();
    }

    public static String OooO00o(String str, int i, int i2, String str2, boolean z, boolean z3, boolean z4, boolean z5, Charset charset) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || (iCodePointAt >= 128 && z5)) {
                j00 j00Var = new j00();
                j00Var.OooOooo(str, i, iCharCount);
                OooO0Oo(j00Var, str, iCharCount, i2, str2, z, z3, z4, z5, charset);
                return j00Var.Oooo0oo();
            }
            if (str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z || (z3 && !OooOooO(str, iCharCount, i2)))) || (iCodePointAt == 43 && z4))) {
                j00 j00Var2 = new j00();
                j00Var2.OooOooo(str, i, iCharCount);
                OooO0Oo(j00Var2, str, iCharCount, i2, str2, z, z3, z4, z5, charset);
                return j00Var2.Oooo0oo();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i, i2);
    }

    public static String OooO0O0(String str, String str2, boolean z, boolean z3, boolean z4, boolean z5) {
        return OooO00o(str, 0, str.length(), str2, z, z3, z4, z5, null);
    }

    public static String OooO0OO(String str, String str2, boolean z, boolean z3, boolean z4, boolean z5, Charset charset) {
        return OooO00o(str, 0, str.length(), str2, z, z3, z4, z5, charset);
    }

    public static void OooO0Oo(j00 j00Var, String str, int i, int i2, String str2, boolean z, boolean z3, boolean z4, boolean z5, Charset charset) {
        j00 j00Var2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z4) {
                    j00Var.OooOoO0(z ? Marker.ANY_NON_NULL_MARKER : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z5) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z3 && !OooOooO(str, i, i2)))))) {
                    if (j00Var2 == null) {
                        j00Var2 = new j00();
                    }
                    if (charset == null || charset.equals(zx.OooOO0)) {
                        j00Var2.OooO0oO(iCodePointAt);
                    } else {
                        j00Var2.o000oOoO(str, i, Character.charCount(iCodePointAt) + i, charset);
                    }
                    while (!j00Var2.OooOOO()) {
                        int i3 = j00Var2.readByte() & 255;
                        j00Var.OooOOOO(37);
                        char[] cArr = OooOO0;
                        j00Var.OooOOOO(cArr[(i3 >> 4) & 15]);
                        j00Var.OooOOOO(cArr[i3 & 15]);
                    }
                } else {
                    j00Var.OooO0oO(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    public static int OooO0o0(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    @Nullable
    public static kx OooOOO(URI uri) {
        return OooOo0(uri.toString());
    }

    public static kx OooOOO0(String str) {
        return new OooO00o().OooOo00(null, str).OooO0oo();
    }

    @Nullable
    public static kx OooOOOO(URL url) {
        return OooOo0(url.toString());
    }

    public static void OooOOo(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    public static void OooOo(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(list.get(i));
        }
    }

    @Nullable
    public static kx OooOo0(String str) {
        try {
            return OooOOO0(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String OooOoO(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                j00 j00Var = new j00();
                j00Var.OooOooo(str, i, i3);
                OooOoo(j00Var, str, i3, i2, z);
                return j00Var.Oooo0oo();
            }
        }
        return str.substring(i, i2);
    }

    public static String OooOoOO(String str, boolean z) {
        return OooOoO(str, 0, str.length(), z);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void OooOoo(j00 j00Var, String str, int i, int i2, boolean z) {
        int i3;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (iCodePointAt == 37 && (i3 = i + 2) < i2) {
                int iOooOO0o = zx.OooOO0o(str.charAt(i + 1));
                int iOooOO0o2 = zx.OooOO0o(str.charAt(i3));
                if (iOooOO0o != -1 && iOooOO0o2 != -1) {
                    j00Var.OooOOOO((iOooOO0o << 4) + iOooOO0o2);
                    i = i3;
                }
            } else if (iCodePointAt == 43 && z) {
                j00Var.OooOOOO(32);
            } else {
                j00Var.OooO0oO(iCodePointAt);
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    private List<String> OooOoo0(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? OooOoOO(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static boolean OooOooO(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && zx.OooOO0o(str.charAt(i + 1)) != -1 && zx.OooOO0o(str.charAt(i3)) != -1;
    }

    public static List<String> Oooo0o(String str) {
        String strSubstring;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iIndexOf = str.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i, iIndexOf));
                strSubstring = null;
            } else {
                arrayList.add(str.substring(i, iIndexOf2));
                strSubstring = str.substring(iIndexOf2 + 1, iIndexOf);
            }
            arrayList.add(strSubstring);
            i = iIndexOf + 1;
        }
        return arrayList;
    }

    public List<String> OooO() {
        int iIndexOf = this.OooO.indexOf(47, this.OooO00o.length() + 3);
        String str = this.OooO;
        int iOooOOOo = zx.OooOOOo(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iOooOOOo) {
            int i = iIndexOf + 1;
            int iOooOOOO = zx.OooOOOO(this.OooO, i, iOooOOOo, IOUtils.DIR_SEPARATOR_UNIX);
            arrayList.add(this.OooO.substring(i, iOooOOOO));
            iIndexOf = iOooOOOO;
        }
        return arrayList;
    }

    @Nullable
    public String OooO0o() {
        if (this.OooO0oo == null) {
            return null;
        }
        return this.OooO.substring(this.OooO.indexOf(35) + 1);
    }

    public String OooO0oO() {
        if (this.OooO0OO.isEmpty()) {
            return "";
        }
        return this.OooO.substring(this.OooO.indexOf(58, this.OooO00o.length() + 3) + 1, this.OooO.indexOf(64));
    }

    public String OooO0oo() {
        int iIndexOf = this.OooO.indexOf(47, this.OooO00o.length() + 3);
        String str = this.OooO;
        return this.OooO.substring(iIndexOf, zx.OooOOOo(str, iIndexOf, str.length(), "?#"));
    }

    @Nullable
    public String OooOO0() {
        if (this.OooO0oO == null) {
            return null;
        }
        int iIndexOf = this.OooO.indexOf(63) + 1;
        String str = this.OooO;
        return this.OooO.substring(iIndexOf, zx.OooOOOO(str, iIndexOf, str.length(), '#'));
    }

    public String OooOO0O() {
        if (this.OooO0O0.isEmpty()) {
            return "";
        }
        int length = this.OooO00o.length() + 3;
        String str = this.OooO;
        return this.OooO.substring(length, zx.OooOOOo(str, length, str.length(), ":@"));
    }

    @Nullable
    public String OooOO0o() {
        return this.OooO0oo;
    }

    public String OooOOOo() {
        return this.OooO0Oo;
    }

    public boolean OooOOo0() {
        return this.OooO00o.equals("https");
    }

    public OooO00o OooOOoo() {
        OooO00o oooO00o = new OooO00o();
        oooO00o.OooO00o = this.OooO00o;
        oooO00o.OooO0O0 = OooOO0O();
        oooO00o.OooO0OO = OooO0oO();
        oooO00o.OooO0Oo = this.OooO0Oo;
        oooO00o.OooO0o0 = this.OooO0o0 != OooO0o0(this.OooO00o) ? this.OooO0o0 : -1;
        oooO00o.OooO0o.clear();
        oooO00o.OooO0o.addAll(OooO());
        oooO00o.OooOOO(OooOO0());
        oooO00o.OooO0oo = OooO0o();
        return oooO00o;
    }

    @Nullable
    public OooO00o OooOo00(String str) {
        try {
            return new OooO00o().OooOo00(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public String OooOo0O() {
        return this.OooO0OO;
    }

    public List<String> OooOo0o() {
        return this.OooO0o;
    }

    public int OooOoO0() {
        return this.OooO0o.size();
    }

    public int OooOooo() {
        return this.OooO0o0;
    }

    public String Oooo() {
        return this.OooO00o;
    }

    public Set<String> Oooo0() {
        if (this.OooO0oO == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.OooO0oO.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.OooO0oO.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    @Nullable
    public String Oooo000() {
        if (this.OooO0oO == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        OooOOo(sb, this.OooO0oO);
        return sb.toString();
    }

    @Nullable
    public String Oooo00O(String str) {
        List<String> list = this.OooO0oO;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.OooO0oO.get(i))) {
                return this.OooO0oO.get(i + 1);
            }
        }
        return null;
    }

    public String Oooo00o(int i) {
        List<String> list = this.OooO0oO;
        if (list != null) {
            return list.get(i * 2);
        }
        throw new IndexOutOfBoundsException();
    }

    public String Oooo0O0(int i) {
        List<String> list = this.OooO0oO;
        if (list != null) {
            return list.get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public List<String> Oooo0OO(String str) {
        if (this.OooO0oO == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.OooO0oO.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.OooO0oO.get(i))) {
                arrayList.add(this.OooO0oO.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int Oooo0o0() {
        List<String> list = this.OooO0oO;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public String Oooo0oO() {
        return OooOo00("/...").Oooo0oo("").OooOo0O("").OooO0oo().toString();
    }

    @Nullable
    public kx Oooo0oo(String str) {
        OooO00o oooO00oOooOo00 = OooOo00(str);
        if (oooO00oOooOo00 != null) {
            return oooO00oOooOo00.OooO0oo();
        }
        return null;
    }

    public String OoooO() {
        return this.OooO0O0;
    }

    public URI OoooO0() {
        String string = OooOOoo().OooOoo0().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    @Nullable
    public String OoooO00() {
        if (zx.Oooo0OO(this.OooO0Oo)) {
            return null;
        }
        return PublicSuffixDatabase.OooO0OO().OooO0Oo(this.OooO0Oo);
    }

    public URL OoooO0O() {
        try {
            return new URL(this.OooO);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof kx) && ((kx) obj).OooO.equals(this.OooO);
    }

    public int hashCode() {
        return this.OooO.hashCode();
    }

    public String toString() {
        return this.OooO;
    }
}
