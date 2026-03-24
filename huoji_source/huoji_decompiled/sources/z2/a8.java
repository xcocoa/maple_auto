package z2;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class a8 {
    private static final String OooO00o = "OppoUtils";

    public static void OooO00o(Context context) {
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.coloros.safecenter", "com.coloros.safecenter.sysfloatwindow.FloatWindowListActivity"));
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
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
}
