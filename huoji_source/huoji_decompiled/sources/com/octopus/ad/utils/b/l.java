package com.octopus.ad.utils.b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import com.octopus.ad.internal.utilities.SPUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    private static String a = "SystemUtil";

    public static long a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static String a() {
        return (new File("/system/bin/su").exists() && a("/system/bin/su")) ? "yes" : (new File("/system/xbin/su").exists() && a("/system/xbin/su")) ? "yes" : "no";
    }

    public static String a(Context context, String str) {
        try {
            PackageInfo packageInfoB = b(context, str);
            if (packageInfoB == null) {
                return null;
            }
            return String.valueOf(packageInfoB.versionCode);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static boolean a(String str) {
        Process processExec = null;
        try {
            try {
                processExec = Runtime.getRuntime().exec("ls -l " + str);
                String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
                if (line != null && line.length() >= 4) {
                    char cCharAt = line.charAt(3);
                    if (cCharAt == 's' || cCharAt == 'x') {
                        if (processExec != null) {
                            processExec.destroy();
                        }
                        return true;
                    }
                }
                if (processExec == null) {
                    return false;
                }
            } catch (IOException e) {
                e.printStackTrace();
                if (processExec == null) {
                    return false;
                }
            }
            processExec.destroy();
            return false;
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
    }

    public static PackageInfo b(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                return packageManager.getPackageInfo(str, 128);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String b() {
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                return "";
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSize = statFs.getBlockSize();
            return (statFs.getBlockCount() * blockSize) + "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String b(Context context) {
        String string = SPUtils.getString(context, "codeList");
        return string == null ? "" : string;
    }

    public static long c() {
        long jCurrentTimeMillis;
        Long lValueOf = 0L;
        switch (Calendar.getInstance().get(7)) {
            case 1:
            case 2:
            case 4:
            case 6:
                jCurrentTimeMillis = System.currentTimeMillis() / 1000;
                break;
            case 3:
            case 5:
            case 7:
                jCurrentTimeMillis = System.currentTimeMillis();
                break;
            default:
                return lValueOf.longValue();
        }
        lValueOf = Long.valueOf(jCurrentTimeMillis);
        return lValueOf.longValue();
    }

    public static long c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public static boolean c(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || str == null || str.isEmpty()) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static String d(Context context) {
        return context.getPackageName();
    }

    public static String e(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String f(Context context) {
        String str;
        try {
            str = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return TextUtils.isEmpty(str) ? d(context) : str;
    }

    public static String g(Context context) {
        return String.valueOf(context.getResources().getDisplayMetrics().widthPixels);
    }

    public static String h(Context context) {
        return String.valueOf(context.getResources().getDisplayMetrics().heightPixels);
    }

    public static String i(Context context) {
        return context.getResources().getConfiguration().orientation == 2 ? "2" : "1";
    }

    public static String j(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            if (Build.VERSION.SDK_INT < 16) {
                return "";
            }
            return memoryInfo.totalMem + "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String k(Context context) {
        String strA = a(context, "com.huawei.appmarket");
        return strA == null ? "" : strA;
    }

    public static String l(Context context) {
        String strA = a(context, "com.huawei.hwid");
        return strA == null ? "" : strA;
    }
}
