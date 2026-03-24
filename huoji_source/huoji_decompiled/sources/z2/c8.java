package z2;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.octopus.ad.ADBidEvent;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class c8 {
    private static final String OooO00o = "RomUtils";

    public static boolean OooO00o() {
        String str = Build.MANUFACTURER;
        return str.contains("QiKU") || str.contains("360");
    }

    public static boolean OooO0O0() {
        return Build.MANUFACTURER.contains(ADBidEvent.HUAWEI);
    }

    public static boolean OooO0OO() throws Throwable {
        String strOooO0oo = OooO0oo("ro.build.display.id");
        Log.d("FloatTAG", "meizuFlymeOSFlag:" + strOooO0oo);
        if (TextUtils.isEmpty(strOooO0oo)) {
            return false;
        }
        return strOooO0oo.contains("flyme") || strOooO0oo.toLowerCase().contains("flyme");
    }

    public static boolean OooO0Oo() {
        return !TextUtils.isEmpty(OooO0oo("ro.miui.ui.version.name"));
    }

    public static double OooO0o() throws Throwable {
        try {
            String strOooO0oo = OooO0oo("ro.build.version.emui");
            return Double.parseDouble(strOooO0oo.substring(strOooO0oo.indexOf("_") + 1));
        } catch (Exception e) {
            e.printStackTrace();
            return 4.0d;
        }
    }

    public static boolean OooO0o0() {
        String str = Build.MANUFACTURER;
        return str.contains("OPPO") || str.contains("oppo");
    }

    public static int OooO0oO() throws Throwable {
        String strOooO0oo = OooO0oo("ro.miui.ui.version.name");
        if (strOooO0oo == null) {
            return -1;
        }
        try {
            return Integer.parseInt(strOooO0oo.substring(1));
        } catch (Exception unused) {
            Log.e(OooO00o, "get miui version code error, version : " + strOooO0oo);
            return -1;
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0064: MOVE (r2 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:24:0x0064 */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String OooO0oo(String str) throws Throwable {
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
                        Log.e(OooO00o, "Exception while closing InputStream", e);
                    }
                    return line;
                } catch (IOException e2) {
                    e = e2;
                    Log.e(OooO00o, "Unable to read sysprop " + str, e);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e3) {
                            Log.e(OooO00o, "Exception while closing InputStream", e3);
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
                        Log.e(OooO00o, "Exception while closing InputStream", e4);
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
}
