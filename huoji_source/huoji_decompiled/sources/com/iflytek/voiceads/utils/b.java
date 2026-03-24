package com.iflytek.voiceads.utils;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import androidx.appcompat.widget.ActivityChooserModel;
import java.util.List;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b {
    public static Rect a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    public static boolean a(Context context) {
        String packageName = context.getPackageName();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return true;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.processName.equals(packageName)) {
                return runningAppProcessInfo.importance != 100;
            }
        }
        return true;
    }

    public static boolean a(Context context, Intent intent) {
        try {
            return !context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "deviceCanHandleIntent:" + e.getMessage());
            return false;
        }
    }

    public static boolean a(Context context, View view) {
        Rect rectC = c(context);
        Rect rectA = a(view);
        int i = (int) (((double) (rectA.bottom - rectA.top)) * 0.3d);
        Rect rect = new Rect(rectC.left, rectC.top + i, rectC.right, rectC.bottom - i);
        return Rect.intersects(rect, rectA) || rect.contains(rectA);
    }

    public static boolean a(Context context, String str) {
        try {
            if (context.getPackageManager().getPackageArchiveInfo(str, 1) != null) {
                g.b("IFLY_AD_SDK", "checkUninstallApk info not null");
                return true;
            }
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "checkUninstallApk error:" + e.getMessage());
        }
        g.b("IFLY_AD_SDK", "checkUninstallApk info is null");
        return false;
    }

    public static boolean a(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith("http:") || str.startsWith("https:")) ? false : true;
    }

    public static boolean b(Context context) {
        return ((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public static Rect c(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return new Rect(0, 0, defaultDisplay.getWidth(), defaultDisplay.getHeight());
    }
}
