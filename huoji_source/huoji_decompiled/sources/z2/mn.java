package z2;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class mn {
    private static final mn[] OooO00o = {new ym(), new vm(), new cn(), new um(), new xn(), new xm(), new yn(), new bn(), new qn(), new sn(), new nn(), new pn(), new gn(), new co(), new wn(), new vn(), new in(), new ln(), new en(), new ao()};
    private static final Pattern OooO0O0 = Pattern.compile("\\d+");
    private static final Pattern OooO0OO = Pattern.compile("&");
    private static final Pattern OooO0Oo = Pattern.compile("=");
    private static final String OooO0o0 = "\ufeff";

    public static void OooO(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                sb.append('\n');
                sb.append(str);
            }
        }
    }

    private static void OooO00o(CharSequence charSequence, Map<String, String> map) {
        String[] strArrSplit = OooO0Oo.split(charSequence, 2);
        if (strArrSplit.length == 2) {
            try {
                map.put(strArrSplit[0], OooOOOo(strArrSplit[1]));
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    private static int OooO0O0(CharSequence charSequence, int i) {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0 && charSequence.charAt(i3) == '\\'; i3--) {
            i2++;
        }
        return i2;
    }

    public static String OooO0OO(em emVar) {
        String strOooO0oO = emVar.OooO0oO();
        return strOooO0oO.startsWith(OooO0o0) ? strOooO0oO.substring(1) : strOooO0oO;
    }

    public static boolean OooO0Oo(CharSequence charSequence, int i) {
        return charSequence != null && i > 0 && i == charSequence.length() && OooO0O0.matcher(charSequence).matches();
    }

    public static String[] OooO0o(String str, String str2, char c, boolean z) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i = 0;
        while (i < length) {
            int iIndexOf = str2.indexOf(str, i);
            if (iIndexOf < 0) {
                break;
            }
            int length2 = iIndexOf + str.length();
            ArrayList arrayList2 = arrayList;
            boolean z3 = true;
            int length3 = length2;
            while (z3) {
                int iIndexOf2 = str2.indexOf(c, length3);
                if (iIndexOf2 < 0) {
                    length3 = str2.length();
                } else if (OooO0O0(str2, iIndexOf2) % 2 != 0) {
                    length3 = iIndexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String strOooOOOO = OooOOOO(str2.substring(length2, iIndexOf2));
                    if (z) {
                        strOooOOOO = strOooOOOO.trim();
                    }
                    if (!strOooOOOO.isEmpty()) {
                        arrayList2.add(strOooOOOO);
                    }
                    length3 = iIndexOf2 + 1;
                }
                z3 = false;
            }
            i = length3;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean OooO0o0(CharSequence charSequence, int i, int i2) {
        int i3;
        return charSequence != null && i2 > 0 && charSequence.length() >= (i3 = i2 + i) && OooO0O0.matcher(charSequence.subSequence(i, i3)).matches();
    }

    public static String OooO0oO(String str, String str2, char c, boolean z) {
        String[] strArrOooO0o = OooO0o(str, str2, c, z);
        if (strArrOooO0o == null) {
            return null;
        }
        return strArrOooO0o[0];
    }

    public static void OooO0oo(String str, StringBuilder sb) {
        if (str != null) {
            sb.append('\n');
            sb.append(str);
        }
    }

    public static String[] OooOO0(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    public static int OooOO0o(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    public static jn OooOOO(em emVar) {
        for (mn mnVar : OooO00o) {
            jn jnVarOooOO0O = mnVar.OooOO0O(emVar);
            if (jnVarOooOO0O != null) {
                return jnVarOooOO0O;
            }
        }
        return new tn(emVar.OooO0oO(), null);
    }

    public static Map<String, String> OooOOO0(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0) {
            return null;
        }
        HashMap map = new HashMap(3);
        for (String str2 : OooO0OO.split(str.substring(iIndexOf + 1))) {
            OooO00o(str2, map);
        }
        return map;
    }

    public static String OooOOOO(String str) {
        int iIndexOf = str.indexOf(92);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, iIndexOf);
        boolean z = false;
        while (iIndexOf < length) {
            char cCharAt = str.charAt(iIndexOf);
            if (z || cCharAt != '\\') {
                sb.append(cCharAt);
                z = false;
            } else {
                z = true;
            }
            iIndexOf++;
        }
        return sb.toString();
    }

    public static String OooOOOo(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    public abstract jn OooOO0O(em emVar);
}
