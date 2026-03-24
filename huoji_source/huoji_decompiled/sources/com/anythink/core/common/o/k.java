package com.anythink.core.common.o;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.BatteryManager;
import android.os.Build;
import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    private static final String[] a = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    public static String a() {
        try {
            String[] strArr = a;
            int length = strArr.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (new File(strArr[i]).exists()) {
                    z = true;
                    break;
                }
                i++;
            }
            String str = Build.TAGS;
            if (str != null) {
                if (str.contains("test-keys")) {
                    return "1";
                }
            }
            return z ? "1" : "2";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a(Context context) {
        int port;
        String property;
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                property = System.getProperty("http.proxyHost");
                String property2 = System.getProperty("http.proxyPort");
                if (property2 == null) {
                    property2 = HRConfig.GENDER_UNKNOWN;
                }
                port = Integer.parseInt(property2);
            } else {
                String host = Proxy.getHost(context);
                port = Proxy.getPort(context);
                property = host;
            }
            return (TextUtils.isEmpty(property) || port == -1) ? "2" : "1";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String a(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            Class<?> clsLoadClass = context.getClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class).invoke(clsLoadClass, str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b() {
        String str;
        try {
            str = Build.CPU_ABI;
            String str2 = Build.CPU_ABI2;
            if (!TextUtils.isEmpty(str2)) {
                str = str + com.anythink.expressad.foundation.g.a.bQ + str2;
            }
        } catch (Throwable unused) {
        }
        return str != null ? str : "";
    }

    public static String b(Context context) {
        int i = 2;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            boolean z = intExtra == 2 || intExtra == 5;
            int intExtra2 = intentRegisterReceiver.getIntExtra("plugged", -1);
            boolean z3 = intExtra2 == 2;
            boolean z4 = intExtra2 == 1;
            if (z && (z3 || z4)) {
                i = 1;
            }
        } catch (Throwable unused) {
        }
        return String.valueOf(i);
    }

    public static String c(Context context) {
        return g(context) ? "1" : "2";
    }

    public static String d(Context context) {
        String strA = a(context, "ro.product.cpu.abi");
        return strA != null && !TextUtils.isEmpty(strA) && strA.contains("x86") ? "1" : "2";
    }

    public static String e(Context context) {
        return "1".equals(a(context, "ro.kernel.qemu")) ? "1" : "2";
    }

    public static String f(Context context) {
        try {
            return Build.VERSION.SDK_INT >= 21 ? String.valueOf(((BatteryManager) context.getSystemService("batterymanager")).getIntProperty(4)) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static boolean g(Context context) {
        NetworkInfo networkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (networkInfo = connectivityManager.getNetworkInfo(17)) != null) {
                return networkInfo.isConnected();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean h(Context context) {
        return "1".equals(a(context, "ro.kernel.qemu"));
    }

    private static boolean i(Context context) {
        String strA = a(context, "ro.product.cpu.abi");
        return (strA == null || TextUtils.isEmpty(strA) || !strA.contains("x86")) ? false : true;
    }
}
