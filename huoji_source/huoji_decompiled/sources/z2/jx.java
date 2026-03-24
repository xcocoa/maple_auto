package z2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class jx {
    private final String[] OooO00o;

    public static final class OooO00o {
        public final List<String> OooO00o = new ArrayList(20);

        public String OooO(String str) {
            for (int size = this.OooO00o.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.OooO00o.get(size))) {
                    return this.OooO00o.get(size + 1);
                }
            }
            return null;
        }

        public OooO00o OooO00o(String str) {
            int iIndexOf = str.indexOf(":");
            if (iIndexOf != -1) {
                return OooO0O0(str.substring(0, iIndexOf).trim(), str.substring(iIndexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        public OooO00o OooO0O0(String str, String str2) {
            jx.OooO0O0(str);
            jx.OooO0OO(str2, str);
            return OooO0o(str, str2);
        }

        public OooO00o OooO0OO(String str, Date date) {
            if (date != null) {
                OooO0O0(str, ty.OooO00o(date));
                return this;
            }
            throw new NullPointerException("value for name " + str + " == null");
        }

        public OooO00o OooO0Oo(jx jxVar) {
            int iOooOO0o = jxVar.OooOO0o();
            for (int i = 0; i < iOooOO0o; i++) {
                OooO0o(jxVar.OooO0oO(i), jxVar.OooOOO(i));
            }
            return this;
        }

        public OooO00o OooO0o(String str, String str2) {
            this.OooO00o.add(str);
            this.OooO00o.add(str2.trim());
            return this;
        }

        public OooO00o OooO0o0(String str) {
            int iIndexOf = str.indexOf(":", 1);
            return iIndexOf != -1 ? OooO0o(str.substring(0, iIndexOf), str.substring(iIndexOf + 1)) : str.startsWith(":") ? OooO0o("", str.substring(1)) : OooO0o("", str);
        }

        public OooO00o OooO0oO(String str, String str2) {
            jx.OooO0O0(str);
            return OooO0o(str, str2);
        }

        public jx OooO0oo() {
            return new jx(this);
        }

        public OooO00o OooOO0(String str) {
            int i = 0;
            while (i < this.OooO00o.size()) {
                if (str.equalsIgnoreCase(this.OooO00o.get(i))) {
                    this.OooO00o.remove(i);
                    this.OooO00o.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public OooO00o OooOO0O(String str, String str2) {
            jx.OooO0O0(str);
            jx.OooO0OO(str2, str);
            OooOO0(str);
            OooO0o(str, str2);
            return this;
        }

        public OooO00o OooOO0o(String str, Date date) {
            if (date != null) {
                OooOO0O(str, ty.OooO00o(date));
                return this;
            }
            throw new NullPointerException("value for name " + str + " == null");
        }
    }

    public jx(OooO00o oooO00o) {
        List<String> list = oooO00o.OooO00o;
        this.OooO00o = (String[]) list.toArray(new String[list.size()]);
    }

    private jx(String[] strArr) {
        this.OooO00o = strArr;
    }

    public static void OooO0O0(String str) {
        Objects.requireNonNull(str, "name == null");
        if (str.isEmpty()) {
            throw new IllegalArgumentException("name is empty");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= ' ' || cCharAt >= 127) {
                throw new IllegalArgumentException(zx.OooOOoo("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str));
            }
        }
    }

    public static void OooO0OO(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("value for name " + str2 + " == null");
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                throw new IllegalArgumentException(zx.OooOOoo("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str2, str));
            }
        }
    }

    private static String OooO0o0(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static jx OooOO0(Map<String, String> map) {
        Objects.requireNonNull(map, "headers == null");
        String[] strArr = new String[map.size() * 2];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null || entry.getValue() == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            String strTrim = entry.getKey().trim();
            String strTrim2 = entry.getValue().trim();
            OooO0O0(strTrim);
            OooO0OO(strTrim2, strTrim);
            strArr[i] = strTrim;
            strArr[i + 1] = strTrim2;
            i += 2;
        }
        return new jx(strArr);
    }

    public static jx OooOO0O(String... strArr) {
        Objects.requireNonNull(strArr, "namesAndValues == null");
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            if (strArr2[i] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i] = strArr2[i].trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str = strArr2[i2];
            String str2 = strArr2[i2 + 1];
            OooO0O0(str);
            OooO0OO(str2, str);
        }
        return new jx(strArr2);
    }

    public OooO00o OooO() {
        OooO00o oooO00o = new OooO00o();
        Collections.addAll(oooO00o.OooO00o, this.OooO00o);
        return oooO00o;
    }

    public long OooO00o() {
        String[] strArr = this.OooO00o;
        long length = strArr.length * 2;
        int length2 = strArr.length;
        for (int i = 0; i < length2; i++) {
            length += (long) this.OooO00o[i].length();
        }
        return length;
    }

    @Nullable
    public String OooO0Oo(String str) {
        return OooO0o0(this.OooO00o, str);
    }

    @Nullable
    public Date OooO0o(String str) {
        String strOooO0Oo = OooO0Oo(str);
        if (strOooO0Oo != null) {
            return ty.OooO0O0(strOooO0Oo);
        }
        return null;
    }

    public String OooO0oO(int i) {
        return this.OooO00o[i * 2];
    }

    public Set<String> OooO0oo() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int iOooOO0o = OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            treeSet.add(OooO0oO(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public int OooOO0o() {
        return this.OooO00o.length / 2;
    }

    public String OooOOO(int i) {
        return this.OooO00o[(i * 2) + 1];
    }

    public Map<String, List<String>> OooOOO0() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int iOooOO0o = OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            String lowerCase = OooO0oO(i).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(OooOOO(i));
        }
        return treeMap;
    }

    public List<String> OooOOOO(String str) {
        int iOooOO0o = OooOO0o();
        ArrayList arrayList = null;
        for (int i = 0; i < iOooOO0o; i++) {
            if (str.equalsIgnoreCase(OooO0oO(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(OooOOO(i));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof jx) && Arrays.equals(((jx) obj).OooO00o, this.OooO00o);
    }

    public int hashCode() {
        return Arrays.hashCode(this.OooO00o);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iOooOO0o = OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            sb.append(OooO0oO(i));
            sb.append(": ");
            sb.append(OooOOO(i));
            sb.append("\n");
        }
        return sb.toString();
    }
}
