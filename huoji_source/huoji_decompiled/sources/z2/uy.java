package z2;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import okio.ByteString;
import org.slf4j.Marker;
import z2.jx;

/* JADX INFO: loaded from: classes2.dex */
public final class uy {
    private static final ByteString OooO00o = ByteString.encodeUtf8("\"\\");
    private static final ByteString OooO0O0 = ByteString.encodeUtf8("\t ,=");

    private uy() {
    }

    private static String OooO(j00 j00Var) {
        if (j00Var.readByte() != 34) {
            throw new IllegalArgumentException();
        }
        j00 j00Var2 = new j00();
        while (true) {
            long jOooOOoo = j00Var.OooOOoo(OooO00o);
            if (jOooOOoo == -1) {
                return null;
            }
            if (j00Var.o00Oo0(jOooOOoo) == 34) {
                j00Var2.OooOooO(j00Var, jOooOOoo);
                j00Var.readByte();
                return j00Var2.Oooo0oo();
            }
            if (j00Var.o00000O0() == jOooOOoo + 1) {
                return null;
            }
            j00Var2.OooOooO(j00Var, jOooOOoo);
            j00Var.readByte();
            j00Var2.OooOooO(j00Var, 1L);
        }
    }

    public static long OooO00o(jx jxVar) {
        return OooOOo0(jxVar.OooO0Oo("Content-Length"));
    }

    public static long OooO0O0(sx sxVar) {
        return OooO00o(sxVar.o00Oo0());
    }

    public static boolean OooO0OO(sx sxVar) {
        if (sxVar.o0OOO0o().OooO0oO().equals("HEAD")) {
            return false;
        }
        int iOoooooO = sxVar.OoooooO();
        return (((iOoooooO >= 100 && iOoooooO < 200) || iOoooooO == 204 || iOoooooO == 304) && OooO0O0(sxVar) == -1 && !"chunked".equalsIgnoreCase(sxVar.o0OoOo0("Transfer-Encoding"))) ? false : true;
    }

    public static boolean OooO0Oo(jx jxVar) {
        return OooOOo(jxVar).contains(Marker.ANY_MARKER);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x007d, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x007d, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void OooO0o(List<ww> list, j00 j00Var) {
        String strOooOO0;
        int iOooOOO0;
        LinkedHashMap linkedHashMap;
        while (true) {
            String strOooOO02 = null;
            while (true) {
                if (strOooOO02 == null) {
                    OooOOOo(j00Var);
                    strOooOO02 = OooOO0(j00Var);
                    if (strOooOO02 == null) {
                        return;
                    }
                }
                boolean zOooOOOo = OooOOOo(j00Var);
                strOooOO0 = OooOO0(j00Var);
                if (strOooOO0 == null) {
                    if (j00Var.OooOOO()) {
                        list.add(new ww(strOooOO02, (Map<String, String>) Collections.emptyMap()));
                        return;
                    }
                    return;
                }
                iOooOOO0 = OooOOO0(j00Var, (byte) 61);
                boolean zOooOOOo2 = OooOOOo(j00Var);
                if (zOooOOOo || (!zOooOOOo2 && !j00Var.OooOOO())) {
                    linkedHashMap = new LinkedHashMap();
                    int iOooOOO02 = iOooOOO0 + OooOOO0(j00Var, (byte) 61);
                    while (true) {
                        if (strOooOO0 == null) {
                            strOooOO0 = OooOO0(j00Var);
                            if (OooOOOo(j00Var)) {
                                break;
                            }
                            iOooOOO02 = OooOOO0(j00Var, (byte) 61);
                            if (iOooOOO02 != 0) {
                                break;
                            }
                            if (iOooOOO02 > 1 || OooOOOo(j00Var)) {
                                return;
                            }
                            String strOooOO03 = (j00Var.OooOOO() || j00Var.o00Oo0(0L) != 34) ? OooOO0(j00Var) : OooO(j00Var);
                            if (strOooOO03 == null || ((String) linkedHashMap.put(strOooOO0, strOooOO03)) != null) {
                                return;
                            }
                            if (!OooOOOo(j00Var) && !j00Var.OooOOO()) {
                                return;
                            } else {
                                strOooOO0 = null;
                            }
                        } else if (iOooOOO02 != 0) {
                        }
                    }
                }
                list.add(new ww(strOooOO02, linkedHashMap));
                strOooOO02 = strOooOO0;
            }
            list.add(new ww(strOooOO02, (Map<String, String>) Collections.singletonMap(null, strOooOO0 + OooOO0o('=', iOooOOO0))));
        }
    }

    public static boolean OooO0o0(sx sxVar) {
        return OooO0Oo(sxVar.o00Oo0());
    }

    public static List<ww> OooO0oO(jx jxVar, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jxVar.OooOO0o(); i++) {
            if (str.equalsIgnoreCase(jxVar.OooO0oO(i))) {
                OooO0o(arrayList, new j00().OooOoO0(jxVar.OooOOO(i)));
            }
        }
        return arrayList;
    }

    public static int OooO0oo(String str, int i) {
        try {
            long j = Long.parseLong(str);
            if (j > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    private static String OooOO0(j00 j00Var) {
        try {
            long jOooOOoo = j00Var.OooOOoo(OooO0O0);
            if (jOooOOoo == -1) {
                jOooOOoo = j00Var.o00000O0();
            }
            if (jOooOOoo != 0) {
                return j00Var.OooO0O0(jOooOOoo);
            }
            return null;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public static void OooOO0O(cx cxVar, kx kxVar, jx jxVar) {
        if (cxVar == cx.OooO00o) {
            return;
        }
        List<bx> listOooOO0O = bx.OooOO0O(kxVar, jxVar);
        if (listOooOO0O.isEmpty()) {
            return;
        }
        cxVar.OooO00o(kxVar, listOooOO0O);
    }

    private static String OooOO0o(char c, int i) {
        char[] cArr = new char[i];
        Arrays.fill(cArr, c);
        return new String(cArr);
    }

    public static int OooOOO(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    private static int OooOOO0(j00 j00Var, byte b) {
        int i = 0;
        while (!j00Var.OooOOO() && j00Var.o00Oo0(0L) == b) {
            i++;
            j00Var.readByte();
        }
        return i;
    }

    public static int OooOOOO(String str, int i) {
        char cCharAt;
        while (i < str.length() && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\t')) {
            i++;
        }
        return i;
    }

    private static boolean OooOOOo(j00 j00Var) {
        boolean z = false;
        while (!j00Var.OooOOO()) {
            byte bO00Oo0 = j00Var.o00Oo0(0L);
            if (bO00Oo0 != 44) {
                if (bO00Oo0 != 32 && bO00Oo0 != 9) {
                    break;
                }
                j00Var.readByte();
            } else {
                j00Var.readByte();
                z = true;
            }
        }
        return z;
    }

    public static Set<String> OooOOo(jx jxVar) {
        Set<String> setEmptySet = Collections.emptySet();
        int iOooOO0o = jxVar.OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            if ("Vary".equalsIgnoreCase(jxVar.OooO0oO(i))) {
                String strOooOOO = jxVar.OooOOO(i);
                if (setEmptySet.isEmpty()) {
                    setEmptySet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : strOooOOO.split(",")) {
                    setEmptySet.add(str.trim());
                }
            }
        }
        return setEmptySet;
    }

    private static long OooOOo0(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private static Set<String> OooOOoo(sx sxVar) {
        return OooOOo(sxVar.o00Oo0());
    }

    public static jx OooOo0(sx sxVar) {
        return OooOo00(sxVar.oo000o().o0OOO0o().OooO0o0(), sxVar.o00Oo0());
    }

    public static jx OooOo00(jx jxVar, jx jxVar2) {
        Set<String> setOooOOo = OooOOo(jxVar2);
        if (setOooOOo.isEmpty()) {
            return new jx.OooO00o().OooO0oo();
        }
        jx.OooO00o oooO00o = new jx.OooO00o();
        int iOooOO0o = jxVar.OooOO0o();
        for (int i = 0; i < iOooOO0o; i++) {
            String strOooO0oO = jxVar.OooO0oO(i);
            if (setOooOOo.contains(strOooO0oO)) {
                oooO00o.OooO0O0(strOooO0oO, jxVar.OooOOO(i));
            }
        }
        return oooO00o.OooO0oo();
    }

    public static boolean OooOo0O(sx sxVar, jx jxVar, qx qxVar) {
        for (String str : OooOOoo(sxVar)) {
            if (!zx.OooOOo(jxVar.OooOOOO(str), qxVar.OooO0Oo(str))) {
                return false;
            }
        }
        return true;
    }
}
