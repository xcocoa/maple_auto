package z2;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class z7 {
    private static final String OooO00o = "MiuiUtils";

    private static boolean OooO(Intent intent, Context context) {
        return intent != null && context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static void OooO00o(Context context) throws Throwable {
        int iOooO0Oo = OooO0Oo();
        if (iOooO0Oo == 5) {
            OooO0o0(context);
            return;
        }
        if (iOooO0Oo == 6) {
            OooO0o(context);
            return;
        }
        if (iOooO0Oo == 7) {
            OooO0oO(context);
            return;
        }
        if (iOooO0Oo == 8) {
            OooO0oo(context);
            return;
        }
        Log.e(OooO00o, "this is a special MIUI rom version, its version code " + iOooO0Oo);
    }

    public static boolean OooO0O0(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return OooO0OO(context, 24);
        }
        return true;
    }

    @TargetApi(19)
    private static boolean OooO0OO(Context context, int i) {
        String stackTraceString;
        if (Build.VERSION.SDK_INT >= 19) {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            try {
                Class cls = Integer.TYPE;
                return ((Integer) AppOpsManager.class.getDeclaredMethod("checkOp", cls, cls, String.class).invoke(appOpsManager, Integer.valueOf(i), Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
            } catch (Exception e) {
                stackTraceString = Log.getStackTraceString(e);
            }
        } else {
            stackTraceString = "Below API 19 cannot invoke!";
        }
        Log.e(OooO00o, stackTraceString);
        return false;
    }

    public static int OooO0Oo() throws Throwable {
        String strOooO0oo = c8.OooO0oo("ro.miui.ui.version.name");
        if (strOooO0oo == null) {
            return -1;
        }
        try {
            return Integer.parseInt(strOooO0oo.substring(1));
        } catch (Exception e) {
            Log.e(OooO00o, "get miui version code error, version : " + strOooO0oo);
            Log.e(OooO00o, Log.getStackTraceString(e));
            return -1;
        }
    }

    public static void OooO0o(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        intent.setFlags(268435456);
        if (OooO(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(OooO00o, "Intent is not available!");
        }
    }

    public static void OooO0o0(Context context) {
        String packageName = context.getPackageName();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", packageName, null));
        intent.setFlags(268435456);
        if (OooO(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(OooO00o, "intent is not available!");
        }
    }

    public static void OooO0oO(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        intent.setFlags(268435456);
        if (OooO(intent, context)) {
            context.startActivity(intent);
        } else {
            Log.e(OooO00o, "Intent is not available!");
        }
    }

    public static void OooO0oo(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        intent.setFlags(268435456);
        if (!OooO(intent, context)) {
            intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
            intent.setPackage("com.miui.securitycenter");
            intent.putExtra("extra_pkgname", context.getPackageName());
            intent.setFlags(268435456);
            if (!OooO(intent, context)) {
                Log.e(OooO00o, "Intent is not available!");
                return;
            }
        }
        context.startActivity(intent);
    }
}
