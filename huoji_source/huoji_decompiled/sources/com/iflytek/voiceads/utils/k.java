package com.iflytek.voiceads.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class k {
    public static String a() {
        String strB = b();
        if (strB != null && strB.contains("%")) {
            String str = strB.split("%")[0];
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return "";
    }

    public static boolean a(Context context) {
        if (i.a(context, "android.permission.INTERNET") || i.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
        }
        g.b("IFLY_AD_SDK", "INTERNET and ACCESS_NETWORK_STATE permission must be enabled in AndroidManifest.xml");
        return false;
    }

    public static String b() {
        Enumeration<NetworkInterface> networkInterfaces;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "IP Address" + e.getMessage());
        }
        while (networkInterfaces.hasMoreElements()) {
            Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
            while (inetAddresses.hasMoreElements()) {
                InetAddress inetAddressNextElement = inetAddresses.nextElement();
                if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet6Address)) {
                    return inetAddressNextElement.getHostAddress();
                }
                return "";
            }
        }
        return "";
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static String c(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "";
        }
        try {
            if (activeNetworkInfo.getType() == 1) {
                return "wifi";
            }
            String lowerCase = activeNetworkInfo.getExtraInfo().toLowerCase();
            int subtype = activeNetworkInfo.getSubtype();
            if (TextUtils.isEmpty(lowerCase)) {
                return "";
            }
            switch (subtype) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return "2g";
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return "3g";
                case 13:
                    return "4g";
                case 16:
                default:
                    return "";
            }
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "get net class" + e.getMessage());
            return "";
        }
    }
}
