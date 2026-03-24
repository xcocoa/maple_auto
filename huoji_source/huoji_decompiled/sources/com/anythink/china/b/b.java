package com.anythink.china.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static String a() {
        BufferedReader bufferedReader;
        FileReader fileReader = null;
        try {
            File file = new File("/proc/sys/kernel/random/boot_id");
            if (file.exists()) {
                FileReader fileReader2 = new FileReader(file);
                try {
                    bufferedReader = new BufferedReader(fileReader2);
                    String str = "";
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line != null) {
                                str = str + line;
                            } else {
                                try {
                                    break;
                                } catch (Throwable unused) {
                                }
                            }
                        } catch (Throwable unused2) {
                            fileReader = fileReader2;
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Throwable unused3) {
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused4) {
                                }
                            }
                            return "";
                        }
                    }
                    fileReader2.close();
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused5) {
                    }
                    return str;
                } catch (Throwable unused6) {
                    bufferedReader = null;
                }
            }
        } catch (Throwable unused7) {
            bufferedReader = null;
        }
        return "";
    }

    public static String[] a(Context context) {
        try {
            PackageInfo packageInfo = context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0);
            StringBuilder sb = new StringBuilder();
            sb.append(packageInfo.firstInstallTime);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(packageInfo.lastUpdateTime);
            return new String[]{sb.toString(), sb2.toString()};
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String b() {
        try {
            File file = new File("/data/data");
            if (!file.exists()) {
                return "";
            }
            return (file.lastModified() / 1000) + ".000000000";
        } catch (Throwable unused) {
            return "";
        }
    }

    @SuppressLint({"MissingPermission"})
    public static String b(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                String subscriberId = telephonyManager.getSubscriberId();
                return subscriberId == null ? "" : subscriberId;
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    public static String c(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                boolean zIsProviderEnabled = ((LocationManager) context.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).isProviderEnabled("gps");
                PackageManager packageManager = context.getApplicationContext().getPackageManager();
                boolean z = false;
                boolean z3 = packageManager.checkPermission("android.permission.ACCESS_FINE_LOCATION", context.getPackageName()) == 0 || packageManager.checkPermission("android.permission.ACCESS_COARSE_LOCATION", context.getPackageName()) == 0;
                if (zIsProviderEnabled && z3) {
                    z = true;
                }
                if (!z) {
                    return "";
                }
            }
            return e(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static boolean d(Context context) {
        boolean zIsProviderEnabled = ((LocationManager) context.getApplicationContext().getSystemService(RequestParameters.SUBRESOURCE_LOCATION)).isProviderEnabled("gps");
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return zIsProviderEnabled && (packageManager.checkPermission("android.permission.ACCESS_FINE_LOCATION", context.getPackageName()) == 0 || packageManager.checkPermission("android.permission.ACCESS_COARSE_LOCATION", context.getPackageName()) == 0);
    }

    @SuppressLint({"MissingPermission"})
    private static String e(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo();
            String ssid = connectionInfo == null ? "" : connectionInfo.getSSID();
            if ("<unknown ssid>".equalsIgnoreCase(ssid)) {
                ssid = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo().getExtraInfo();
            }
            return "<unknown ssid>".equalsIgnoreCase(ssid) ? "" : ssid;
        } catch (Throwable unused) {
            return "";
        }
    }
}
