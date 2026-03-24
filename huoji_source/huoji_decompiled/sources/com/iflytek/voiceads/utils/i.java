package com.iflytek.voiceads.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.iflytek.voiceads.download.DownloadService;
import com.iflytek.voiceads.request.IFLYBrowser;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class i {
    private static String[] a = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", com.anythink.china.common.d.a, "android.permission.ACCESS_WIFI_STATE", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.GET_TASKS", "android.permission.RECORD_AUDIO", com.anythink.china.common.d.b, "android.permission.REQUEST_INSTALL_PACKAGES"};

    private static void a(Context context, String[] strArr) {
        for (String str : strArr) {
            if (!a(context, str)) {
                g.b("IFLY_AD_SDK", str + " must be enabled in AndroidManifest.xml");
            }
        }
    }

    public static boolean a(Context context) {
        a(context, a);
        return a(context, (Class<?>) DownloadService.class) && b(context, (Class<?>) IFLYBrowser.class);
    }

    public static boolean a(Context context, Class<?> cls) {
        Intent intent = new Intent();
        intent.setClass(context, cls);
        if (context.getPackageManager().resolveService(intent, 65536) != null) {
            return true;
        }
        g.b("IFLY_AD_SDK", "Can not found " + cls.toString() + ", please set it in AndroidManifest.xml");
        return false;
    }

    public static boolean a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static boolean b(Context context, Class<?> cls) {
        Intent intent = new Intent();
        intent.setClass(context, cls);
        if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
            return true;
        }
        g.b("IFLY_AD_SDK", "Can not found " + cls.toString() + ", please set it in AndroidManifest.xml");
        return false;
    }

    public static boolean b(Context context, String str) {
        boolean zA = false;
        try {
            int i = context.getApplicationInfo().targetSdkVersion;
            if (Build.VERSION.SDK_INT < 23 || i < 23) {
                zA = a(context, str);
            } else if (context.checkCallingOrSelfPermission(str) == 0) {
                zA = true;
            }
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "checkPermissionGrant:" + e.getMessage());
        }
        return zA;
    }
}
