package z2;

import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class u4 {
    private static final String OooO00o = "MobileAnJian";
    private static final String OooO0O0 = "Script";
    private static final String OooO0OO = "CSTemp";
    private static final String OooO0Oo = "MQTemp";
    private static final String OooO0o0 = "UIConfig";

    public static String OooO00o() {
        return OooO0oo(OooO0oO(OooO0O0(), OooO0OO));
    }

    public static String OooO0O0() {
        return OooO0oO(OooO0o(), OooO00o);
    }

    public static String OooO0OO() {
        return OooO0oO(OooO0O0(), "Script");
    }

    public static String OooO0Oo() {
        return OooO0oo(OooO0oO(OooO0O0(), OooO0o0));
    }

    public static String OooO0o() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static String OooO0o0() {
        return OooO0oo(OooO0oO(OooO0O0(), OooO0Oo));
    }

    private static String OooO0oO(String str, String str2) {
        String str3 = File.separator;
        if (str.endsWith(str3)) {
            return str + str2;
        }
        return str + str3 + str2;
    }

    private static String OooO0oo(String str) {
        File file = new File(str);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file.getAbsolutePath();
    }
}
