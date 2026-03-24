package z2;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

/* JADX INFO: loaded from: classes.dex */
public class x7 {
    private static final String OooO00o = "HuaweiUtils";

    public static void OooO00o(Context context) {
        String stackTraceString;
        Throwable th;
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"));
            if (c8.OooO0o() != 3.1d) {
                intent.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.notificationmanager.ui.NotificationManagmentActivity"));
            }
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Intent intent2 = new Intent();
            intent2.setFlags(268435456);
            intent2.setComponent(new ComponentName("com.Android.settings", "com.android.settings.permission.TabItem"));
            context.startActivity(intent2);
            e.printStackTrace();
            th = e;
            stackTraceString = Log.getStackTraceString(th);
            Log.e(OooO00o, stackTraceString);
        } catch (SecurityException e2) {
            Intent intent3 = new Intent();
            intent3.setFlags(268435456);
            intent3.setComponent(new ComponentName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity"));
            context.startActivity(intent3);
            stackTraceString = Log.getStackTraceString(e2);
            Log.e(OooO00o, stackTraceString);
        } catch (Exception e3) {
            Toast.makeText(context, "进入设置页面失败，请手动设置", 1).show();
            th = e3;
            stackTraceString = Log.getStackTraceString(th);
            Log.e(OooO00o, stackTraceString);
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
