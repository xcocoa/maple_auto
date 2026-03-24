package z2;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class w4 {
    private static final String OooO = "ro.miui.ui.version.name";
    private static final String OooO00o = "Rom";
    public static final String OooO0O0 = "MIUI";
    public static final String OooO0OO = "EMUI";
    public static final String OooO0Oo = "FLYME";
    public static final String OooO0o = "SMARTISAN";
    public static final String OooO0o0 = "OPPO";
    public static final String OooO0oO = "VIVO";
    public static final String OooO0oo = "QIKU";
    private static final String OooOO0 = "ro.build.version.emui";
    private static final String OooOO0O = "ro.build.version.opporom";
    private static final String OooOO0o = "ro.smartisan.version";
    private static String OooOOO = null;
    private static final String OooOOO0 = "ro.vivo.os.version";
    private static String OooOOOO;

    public static boolean OooO() {
        return OooO00o(OooO0O0);
    }

    public static boolean OooO00o(String str) throws Throwable {
        String upperCase;
        String str2 = OooOOO;
        if (str2 != null) {
            return str2.equals(str);
        }
        String strOooO0Oo = OooO0Oo(OooO);
        OooOOOO = strOooO0Oo;
        if (TextUtils.isEmpty(strOooO0Oo)) {
            String strOooO0Oo2 = OooO0Oo(OooOO0);
            OooOOOO = strOooO0Oo2;
            if (TextUtils.isEmpty(strOooO0Oo2)) {
                String strOooO0Oo3 = OooO0Oo(OooOO0O);
                OooOOOO = strOooO0Oo3;
                if (TextUtils.isEmpty(strOooO0Oo3)) {
                    String strOooO0Oo4 = OooO0Oo(OooOOO0);
                    OooOOOO = strOooO0Oo4;
                    if (TextUtils.isEmpty(strOooO0Oo4)) {
                        String strOooO0Oo5 = OooO0Oo(OooOO0o);
                        OooOOOO = strOooO0Oo5;
                        if (TextUtils.isEmpty(strOooO0Oo5)) {
                            String str3 = Build.DISPLAY;
                            OooOOOO = str3;
                            if (str3.toUpperCase().contains(OooO0Oo)) {
                                OooOOO = OooO0Oo;
                                return OooOOO.equals(str);
                            }
                            OooOOOO = "unknown";
                            upperCase = Build.MANUFACTURER.toUpperCase();
                        } else {
                            upperCase = OooO0o;
                        }
                    } else {
                        upperCase = "VIVO";
                    }
                } else {
                    upperCase = "OPPO";
                }
            } else {
                upperCase = OooO0OO;
            }
        } else {
            upperCase = OooO0O0;
        }
        OooOOO = upperCase;
        return OooOOO.equals(str);
    }

    public static String OooO0O0() throws Throwable {
        if (OooOOO == null) {
            OooO00o("");
        }
        return OooOOO;
    }

    public static String OooO0OO() throws Throwable {
        String strOooO0Oo = OooO0Oo(OooO);
        OooOOOO = strOooO0Oo;
        if (!TextUtils.isEmpty(strOooO0Oo)) {
            return OooO0O0;
        }
        String strOooO0Oo2 = OooO0Oo(OooOO0);
        OooOOOO = strOooO0Oo2;
        if (!TextUtils.isEmpty(strOooO0Oo2)) {
            return OooO0OO;
        }
        String strOooO0Oo3 = OooO0Oo(OooOO0O);
        OooOOOO = strOooO0Oo3;
        if (!TextUtils.isEmpty(strOooO0Oo3)) {
            return "OPPO";
        }
        String strOooO0Oo4 = OooO0Oo(OooOOO0);
        OooOOOO = strOooO0Oo4;
        if (!TextUtils.isEmpty(strOooO0Oo4)) {
            return "VIVO";
        }
        String strOooO0Oo5 = OooO0Oo(OooOO0o);
        OooOOOO = strOooO0Oo5;
        if (!TextUtils.isEmpty(strOooO0Oo5)) {
            return OooO0o;
        }
        String str = Build.DISPLAY;
        OooOOOO = str;
        if (str.toUpperCase().contains(OooO0Oo)) {
            return OooO0Oo;
        }
        OooOOOO = "unknown";
        String upperCase = Build.MANUFACTURER.toUpperCase();
        return TextUtils.isEmpty(upperCase) ? String.valueOf(0) : upperCase;
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0062: MOVE (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:24:0x0062 */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO0Oo(String str) throws Throwable {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    String line = bufferedReader.readLine();
                    bufferedReader.close();
                    try {
                        bufferedReader.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return line;
                } catch (IOException e2) {
                    e = e2;
                    Log.e(OooO00o, "Unable to read prop " + str, e);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader3 = bufferedReader2;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader3 != null) {
            }
            throw th;
        }
    }

    public static boolean OooO0o() {
        return OooO00o(OooO0oo) || OooO00o("360");
    }

    public static String OooO0o0() throws Throwable {
        if (OooOOOO == null) {
            OooO00o("");
        }
        return OooOOOO;
    }

    public static boolean OooO0oO() {
        return OooO00o(OooO0OO);
    }

    public static boolean OooO0oo() {
        return OooO00o(OooO0Oo);
    }

    public static boolean OooOO0() {
        return OooO00o("OPPO");
    }

    public static boolean OooOO0O() {
        return OooO00o(OooO0o);
    }

    public static boolean OooOO0o() {
        return OooO00o("VIVO");
    }
}
