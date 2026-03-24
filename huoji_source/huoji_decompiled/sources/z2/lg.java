package z2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public final class lg {
    public static String OooO00o(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
            return applicationInfo != null ? (String) packageManager.getApplicationLabel(applicationInfo) : "NULL";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "NULL";
        }
    }

    public static String OooO0O0(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
            return packageInfo != null ? packageInfo.versionName : "NULL";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "NULL";
        }
    }

    private static int OooO0OO(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    private static String OooO0Oo(Context context) {
        return context.getPackageName();
    }
}
