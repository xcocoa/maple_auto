package com.octopus.ad.internal.utilities;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.octopus.ad.b.e;

/* JADX INFO: loaded from: classes2.dex */
public class UserEnvInfoUtil {
    private static e.d getNetworkClass(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager != null ? connectivityManager.getNetworkInfo(1) : null;
        if (networkInfo != null && networkInfo.isConnected()) {
            return e.d.NET_WIFI;
        }
        try {
            switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return e.d.NET_2G;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    return e.d.NET_3G;
                case 13:
                    return e.d.NET_4G;
                default:
                    return e.d.NET_OTHER;
            }
        } catch (Exception unused) {
            return e.d.NET_OTHER;
        }
    }

    public static String getVersionName(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static boolean isUsingWifi(Context context) {
        return ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getNetworkInfo(1).isConnected();
    }

    public static void retrieveUserEnvInfo(Context context) {
        e.c cVar;
        if (context != null) {
            UserEnvInfo userEnvInfo = UserEnvInfo.getInstance();
            try {
                userEnvInfo.f5net = getNetworkClass(context);
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && 5 == telephonyManager.getSimState()) {
                    String simOperator = telephonyManager.getSimOperator();
                    if (simOperator == null) {
                        cVar = e.c.ISP_UNKNOWN;
                    } else if (simOperator.equals("46000") || simOperator.equals("46002") || simOperator.equals("46007")) {
                        cVar = e.c.ISP_CN_MOBILE;
                    } else if (simOperator.equals("46001")) {
                        cVar = e.c.ISP_CN_UNICOM;
                    } else if (simOperator.equals("46003")) {
                        cVar = e.c.ISP_CN_TEL;
                    }
                    userEnvInfo.isp = cVar;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            userEnvInfo.ip = "0.0.0.0";
        }
    }
}
