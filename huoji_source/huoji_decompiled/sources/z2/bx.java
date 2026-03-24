package z2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* JADX INFO: loaded from: classes2.dex */
public final class bx {
    private static final Pattern OooOO0 = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern OooOO0O = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern OooOO0o = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern OooOOO0 = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    private final boolean OooO;
    private final String OooO00o;
    private final String OooO0O0;
    private final long OooO0OO;
    private final String OooO0Oo;
    private final boolean OooO0o;
    private final String OooO0o0;
    private final boolean OooO0oO;
    private final boolean OooO0oo;

    public static final class OooO00o {
        public boolean OooO;

        @Nullable
        public String OooO00o;

        @Nullable
        public String OooO0O0;

        @Nullable
        public String OooO0Oo;
        public boolean OooO0o;
        public boolean OooO0oO;
        public boolean OooO0oo;
        public long OooO0OO = ty.OooO00o;
        public String OooO0o0 = "/";

        private OooO00o OooO0OO(String str, boolean z) {
            Objects.requireNonNull(str, "domain == null");
            String strOooO0Oo = zx.OooO0Oo(str);
            if (strOooO0Oo != null) {
                this.OooO0Oo = strOooO0Oo;
                this.OooO = z;
                return this;
            }
            throw new IllegalArgumentException("unexpected domain: " + str);
        }

        public OooO00o OooO() {
            this.OooO0o = true;
            return this;
        }

        public bx OooO00o() {
            return new bx(this);
        }

        public OooO00o OooO0O0(String str) {
            return OooO0OO(str, false);
        }

        public OooO00o OooO0Oo(long j) {
            if (j <= 0) {
                j = Long.MIN_VALUE;
            }
            if (j > ty.OooO00o) {
                j = 253402300799999L;
            }
            this.OooO0OO = j;
            this.OooO0oo = true;
            return this;
        }

        public OooO00o OooO0o() {
            this.OooO0oO = true;
            return this;
        }

        public OooO00o OooO0o0(String str) {
            return OooO0OO(str, true);
        }

        public OooO00o OooO0oO(String str) {
            Objects.requireNonNull(str, "name == null");
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("name is not trimmed");
            }
            this.OooO00o = str;
            return this;
        }

        public OooO00o OooO0oo(String str) {
            if (!str.startsWith("/")) {
                throw new IllegalArgumentException("path must start with '/'");
            }
            this.OooO0o0 = str;
            return this;
        }

        public OooO00o OooOO0(String str) {
            Objects.requireNonNull(str, "value == null");
            if (!str.trim().equals(str)) {
                throw new IllegalArgumentException("value is not trimmed");
            }
            this.OooO0O0 = str;
            return this;
        }
    }

    private bx(String str, String str2, long j, String str3, String str4, boolean z, boolean z3, boolean z4, boolean z5) {
        this.OooO00o = str;
        this.OooO0O0 = str2;
        this.OooO0OO = j;
        this.OooO0Oo = str3;
        this.OooO0o0 = str4;
        this.OooO0o = z;
        this.OooO0oO = z3;
        this.OooO = z4;
        this.OooO0oo = z5;
    }

    public bx(OooO00o oooO00o) {
        String str = oooO00o.OooO00o;
        Objects.requireNonNull(str, "builder.name == null");
        String str2 = oooO00o.OooO0O0;
        Objects.requireNonNull(str2, "builder.value == null");
        String str3 = oooO00o.OooO0Oo;
        Objects.requireNonNull(str3, "builder.domain == null");
        this.OooO00o = str;
        this.OooO0O0 = str2;
        this.OooO0OO = oooO00o.OooO0OO;
        this.OooO0Oo = str3;
        this.OooO0o0 = oooO00o.OooO0o0;
        this.OooO0o = oooO00o.OooO0o;
        this.OooO0oO = oooO00o.OooO0oO;
        this.OooO0oo = oooO00o.OooO0oo;
        this.OooO = oooO00o.OooO;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c0 A[PHI: r0
      0x00c0: PHI (r0v15 long) = (r0v2 long), (r0v5 long) binds: [B:42:0x00be, B:53:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static bx OooO(long j, kx kxVar, String str) {
        long j2;
        bx bxVar;
        String str2;
        String strSubstring;
        int length = str.length();
        char c = ';';
        int iOooOOOO = zx.OooOOOO(str, 0, length, ';');
        char c2 = '=';
        int iOooOOOO2 = zx.OooOOOO(str, 0, iOooOOOO, '=');
        if (iOooOOOO2 == iOooOOOO) {
            return null;
        }
        String strOooo0O0 = zx.Oooo0O0(str, 0, iOooOOOO2);
        if (strOooo0O0.isEmpty() || zx.OooOoO0(strOooo0O0) != -1) {
            return null;
        }
        String strOooo0O02 = zx.Oooo0O0(str, iOooOOOO2 + 1, iOooOOOO);
        if (zx.OooOoO0(strOooo0O02) != -1) {
            return null;
        }
        int i = iOooOOOO + 1;
        String str3 = null;
        String strOooOO0o = null;
        long jOooOOO = -1;
        long jOooOOO0 = 253402300799999L;
        boolean z = false;
        boolean z3 = false;
        boolean z4 = true;
        boolean z5 = false;
        while (i < length) {
            int iOooOOOO3 = zx.OooOOOO(str, i, length, c);
            int iOooOOOO4 = zx.OooOOOO(str, i, iOooOOOO3, c2);
            String strOooo0O03 = zx.Oooo0O0(str, i, iOooOOOO4);
            String strOooo0O04 = iOooOOOO4 < iOooOOOO3 ? zx.Oooo0O0(str, iOooOOOO4 + 1, iOooOOOO3) : "";
            if (strOooo0O03.equalsIgnoreCase("expires")) {
                try {
                    jOooOOO0 = OooOOO0(strOooo0O04, 0, strOooo0O04.length());
                    z5 = true;
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (strOooo0O03.equalsIgnoreCase("max-age")) {
                jOooOOO = OooOOO(strOooo0O04);
                z5 = true;
            } else if (strOooo0O03.equalsIgnoreCase("domain")) {
                strOooOO0o = OooOO0o(strOooo0O04);
                z4 = false;
            } else if (strOooo0O03.equalsIgnoreCase("path")) {
                str3 = strOooo0O04;
            } else if (strOooo0O03.equalsIgnoreCase("secure")) {
                z = true;
            } else if (strOooo0O03.equalsIgnoreCase("httponly")) {
                z3 = true;
            }
            i = iOooOOOO3 + 1;
            c = ';';
            c2 = '=';
        }
        long j3 = Long.MIN_VALUE;
        if (jOooOOO != Long.MIN_VALUE) {
            if (jOooOOO != -1) {
                j3 = j + (jOooOOO <= 9223372036854775L ? jOooOOO * 1000 : Long.MAX_VALUE);
                j2 = (j3 < j || j3 > ty.OooO00o) ? 253402300799999L : j3;
            } else {
                j2 = jOooOOO0;
            }
        }
        String strOooOOOo = kxVar.OooOOOo();
        if (strOooOO0o == null) {
            str2 = strOooOOOo;
            bxVar = null;
        } else {
            if (!OooO0OO(strOooOOOo, strOooOO0o)) {
                return null;
            }
            bxVar = null;
            str2 = strOooOO0o;
        }
        if (strOooOOOo.length() != str2.length() && PublicSuffixDatabase.OooO0OO().OooO0Oo(str2) == null) {
            return bxVar;
        }
        if (str3 == null || !str3.startsWith("/")) {
            String strOooO0oo = kxVar.OooO0oo();
            int iLastIndexOf = strOooO0oo.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strOooO0oo.substring(0, iLastIndexOf) : "/";
        } else {
            strSubstring = str3;
        }
        return new bx(strOooo0O0, strOooo0O02, j2, str2, strSubstring, z, z3, z4, z5);
    }

    private static int OooO00o(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    private static boolean OooO0OO(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !zx.Oooo0OO(str);
    }

    @Nullable
    public static bx OooOO0(kx kxVar, String str) {
        return OooO(System.currentTimeMillis(), kxVar, str);
    }

    public static List<bx> OooOO0O(kx kxVar, jx jxVar) {
        List<String> listOooOOOO = jxVar.OooOOOO("Set-Cookie");
        int size = listOooOOOO.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            bx bxVarOooOO0 = OooOO0(kxVar, listOooOOOO.get(i));
            if (bxVarOooOO0 != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(bxVarOooOO0);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private static String OooOO0o(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strOooO0Oo = zx.OooO0Oo(str);
        if (strOooO0Oo != null) {
            return strOooO0Oo;
        }
        throw new IllegalArgumentException();
    }

    private static long OooOOO(String str) {
        try {
            long j = Long.parseLong(str);
            if (j <= 0) {
                return Long.MIN_VALUE;
            }
            return j;
        } catch (NumberFormatException e) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static long OooOOO0(String str, int i, int i2) {
        int iOooO00o = OooO00o(str, i, i2, false);
        Matcher matcher = OooOOO0.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int iIndexOf = -1;
        int i6 = -1;
        int i7 = -1;
        while (iOooO00o < i2) {
            int iOooO00o2 = OooO00o(str, iOooO00o + 1, i2, true);
            matcher.region(iOooO00o, iOooO00o2);
            if (i4 == -1 && matcher.usePattern(OooOOO0).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i6 = Integer.parseInt(matcher.group(2));
                i7 = Integer.parseInt(matcher.group(3));
            } else if (i5 == -1 && matcher.usePattern(OooOO0o).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1) {
                Pattern pattern = OooOO0O;
                if (matcher.usePattern(pattern).matches()) {
                    iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                } else if (i3 == -1 && matcher.usePattern(OooOO0).matches()) {
                    i3 = Integer.parseInt(matcher.group(1));
                }
            }
            iOooO00o = OooO00o(str, iOooO00o2 + 1, i2, false);
        }
        if (i3 >= 70 && i3 <= 99) {
            i3 += 1900;
        }
        if (i3 >= 0 && i3 <= 69) {
            i3 += 2000;
        }
        if (i3 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i5 < 1 || i5 > 31) {
            throw new IllegalArgumentException();
        }
        if (i4 < 0 || i4 > 23) {
            throw new IllegalArgumentException();
        }
        if (i6 < 0 || i6 > 59) {
            throw new IllegalArgumentException();
        }
        if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(zx.OooOOOo);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i3);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i5);
        gregorianCalendar.set(11, i4);
        gregorianCalendar.set(12, i6);
        gregorianCalendar.set(13, i7);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    private static boolean OooOOOo(kx kxVar, String str) {
        String strOooO0oo = kxVar.OooO0oo();
        if (strOooO0oo.equals(str)) {
            return true;
        }
        if (strOooO0oo.startsWith(str)) {
            return str.endsWith("/") || strOooO0oo.charAt(str.length()) == '/';
        }
        return false;
    }

    public String OooO0O0() {
        return this.OooO0Oo;
    }

    public long OooO0Oo() {
        return this.OooO0OO;
    }

    public boolean OooO0o() {
        return this.OooO0oO;
    }

    public boolean OooO0o0() {
        return this.OooO;
    }

    public boolean OooO0oO(kx kxVar) {
        if ((this.OooO ? kxVar.OooOOOo().equals(this.OooO0Oo) : OooO0OO(kxVar.OooOOOo(), this.OooO0Oo)) && OooOOOo(kxVar, this.OooO0o0)) {
            return !this.OooO0o || kxVar.OooOOo0();
        }
        return false;
    }

    public String OooO0oo() {
        return this.OooO00o;
    }

    public String OooOOOO() {
        return this.OooO0o0;
    }

    public boolean OooOOo() {
        return this.OooO0o;
    }

    public boolean OooOOo0() {
        return this.OooO0oo;
    }

    public String OooOOoo(boolean z) {
        String strOooO00o;
        StringBuilder sb = new StringBuilder();
        sb.append(this.OooO00o);
        sb.append('=');
        sb.append(this.OooO0O0);
        if (this.OooO0oo) {
            if (this.OooO0OO == Long.MIN_VALUE) {
                strOooO00o = "; max-age=0";
            } else {
                sb.append("; expires=");
                strOooO00o = ty.OooO00o(new Date(this.OooO0OO));
            }
            sb.append(strOooO00o);
        }
        if (!this.OooO) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.OooO0Oo);
        }
        sb.append("; path=");
        sb.append(this.OooO0o0);
        if (this.OooO0o) {
            sb.append("; secure");
        }
        if (this.OooO0oO) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public String OooOo00() {
        return this.OooO0O0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof bx)) {
            return false;
        }
        bx bxVar = (bx) obj;
        return bxVar.OooO00o.equals(this.OooO00o) && bxVar.OooO0O0.equals(this.OooO0O0) && bxVar.OooO0Oo.equals(this.OooO0Oo) && bxVar.OooO0o0.equals(this.OooO0o0) && bxVar.OooO0OO == this.OooO0OO && bxVar.OooO0o == this.OooO0o && bxVar.OooO0oO == this.OooO0oO && bxVar.OooO0oo == this.OooO0oo && bxVar.OooO == this.OooO;
    }

    public int hashCode() {
        int iHashCode = (((((((527 + this.OooO00o.hashCode()) * 31) + this.OooO0O0.hashCode()) * 31) + this.OooO0Oo.hashCode()) * 31) + this.OooO0o0.hashCode()) * 31;
        long j = this.OooO0OO;
        return ((((((((iHashCode + ((int) (j ^ (j >>> 32)))) * 31) + (!this.OooO0o ? 1 : 0)) * 31) + (!this.OooO0oO ? 1 : 0)) * 31) + (!this.OooO0oo ? 1 : 0)) * 31) + (!this.OooO ? 1 : 0);
    }

    public String toString() {
        return OooOOoo(false);
    }
}
