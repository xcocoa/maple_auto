package z2;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class y7 {
    private static final String OooO00o = "MeizuUtils";

    public static void OooO00o(Context context) {
        try {
            Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent.putExtra("packageName", context.getPackageName());
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            try {
                Log.e(OooO00o, "获取悬浮窗权限, 打开AppSecActivity失败, " + Log.getStackTraceString(e));
                w7.OooO0oO(context);
            } catch (Exception e2) {
                Log.e(OooO00o, "获取悬浮窗权限失败, 通用获取方法失败, " + Log.getStackTraceString(e2));
            }
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
                Method declaredMethod = AppOpsManager.class.getDeclaredMethod("checkOp", cls, cls, String.class);
                Log.e(OooO00o, "method: " + declaredMethod.getName());
                return ((Integer) declaredMethod.invoke(appOpsManager, Integer.valueOf(i), Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
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
