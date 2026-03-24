package com.iflytek.voiceads.utils;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.NetworkInterface;
import java.util.Collections;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class h {
    private static String a;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
    
        r0 = r1.trim();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String a() {
        String line = "";
        String strTrim = "";
        try {
            LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address").getInputStream()));
            while (true) {
                if (line == null) {
                    break;
                }
                line = lineNumberReader.readLine();
                if (line != null) {
                    break;
                }
            }
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "mac error1:" + e.getMessage());
        }
        if (!TextUtils.isEmpty(strTrim)) {
            return strTrim;
        }
        try {
            return a("/sys/class/net/eth0/address").toUpperCase().substring(0, 17);
        } catch (Exception e2) {
            g.b("IFLY_AD_SDK", "mac error2:" + e2.getMessage());
            return strTrim;
        }
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        try {
            if (Build.VERSION.SDK_INT < 23) {
                a = b(context);
            } else if (Build.VERSION.SDK_INT < 24) {
                a = a();
            } else {
                a = b();
            }
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "getMac:" + e.getMessage());
        }
        return !TextUtils.isEmpty(a) ? a : "02:00:00:00:00:00";
    }

    public static String a(String str) throws Exception {
        FileReader fileReader = new FileReader(str);
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[4096];
        for (int i = fileReader.read(cArr); i >= 0; i = fileReader.read(cArr)) {
            sb.append(cArr, 0, i);
        }
        String string = sb.toString();
        fileReader.close();
        return string;
    }

    private static String b() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = networkInterface.getHardwareAddress();
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return "";
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "mac error3:" + e.getMessage());
            return "";
        }
    }

    private static String b(Context context) {
        return ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    }
}
