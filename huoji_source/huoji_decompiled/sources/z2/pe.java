package z2;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public final class pe {
    public static final String OooO00o = "com.cyjh.mobileanjian";
    private static boolean OooO0O0 = true;
    private static String OooO0OO = "12345678-0000-0000-0000-BA9876543210";
    private static String OooO0Oo = "2015-06-24";
    private static String OooO0o0 = "";

    public static String OooO() {
        return OooO0OO;
    }

    private static String OooO00o(Context context) {
        return context.getApplicationContext().getPackageName();
    }

    private static void OooO0O0(String str) {
        OooO0Oo = str;
    }

    private static void OooO0OO(boolean z) {
        OooO0O0 = z;
    }

    public static boolean OooO0Oo() {
        return OooO0O0;
    }

    private static String OooO0o(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "NOT_FOUND";
        }
    }

    public static String OooO0o0() {
        return OooO0Oo;
    }

    private static void OooO0oO(String str) {
        OooO0OO = str;
    }

    private static int OooO0oo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -2000;
        }
    }

    private static void OooOO0(String str) {
        OooO0o0 = str;
    }

    private static String OooOO0O() {
        return OooO0o0;
    }

    private static boolean OooOO0o(Context context) {
        return context.getApplicationContext().getPackageName().equals("com.cyjh.mobileanjian");
    }
}
