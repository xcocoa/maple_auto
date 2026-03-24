package z2;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public final class vf {
    private static String OooO00o = "";

    private static String OooO(Context context) {
        String line;
        String str = "unknown";
        String strOooO0OO = OooO0OO(context, true);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            while (true) {
                line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.startsWith("model name")) {
                    line = line.split(":")[1].trim().replaceAll(o4.OooO00o.OooO0Oo, "_");
                    break;
                }
            }
            bufferedReader.close();
            str = line;
        } catch (FileNotFoundException | IOException | Exception unused) {
        }
        return strOooO0OO + "[x86]@_@" + str;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String OooO00o() {
        String strTrim;
        int i;
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            strTrim = "";
        } catch (IOException unused) {
            strTrim = "";
        }
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.startsWith("Serial")) {
                    strTrim = line.substring(line.indexOf(":") + 1).trim();
                }
            } catch (IOException unused2) {
            }
            if (strTrim == null) {
                strTrim = "";
            }
            i = 0;
            while (i < strTrim.length() && strTrim.charAt(i) == '0') {
                i++;
            }
            return i != strTrim.length() ? "" : strTrim;
        }
        bufferedReader.close();
        if (strTrim == null) {
        }
        i = 0;
        while (i < strTrim.length()) {
            i++;
        }
        if (i != strTrim.length()) {
        }
    }

    public static String OooO0O0(Context context) {
        String strOooO0oO = OooO0oO(context);
        return (strOooO0oO.endsWith("null") || strOooO0oO.endsWith("unknown")) ? OooO(context) : strOooO0oO;
    }

    private static String OooO0OO(Context context, boolean z) {
        String strValueOf;
        String str;
        String strOooO0o = OooO0o(context);
        String strOooO00o = OooO00o();
        String strOooO0Oo = OooO0Oo();
        if (!z || strOooO0o == null || strOooO0o == "") {
            if (strOooO0o != null && strOooO0o != "") {
                strOooO00o = strOooO0o;
            }
            if (strOooO00o != null && strOooO00o != "") {
                strOooO0Oo = strOooO00o;
            }
        } else if (strOooO0Oo == null || strOooO0Oo == "") {
            strOooO0Oo = strOooO0o;
        } else {
            strOooO0Oo = strOooO0o + "-" + strOooO0Oo;
        }
        if (strOooO0o == "") {
            strValueOf = String.valueOf(strOooO0Oo);
            str = "imei:none-";
        } else {
            strValueOf = String.valueOf(strOooO0Oo);
            str = "imei:";
        }
        return str.concat(strValueOf);
    }

    private static String OooO0Oo() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.serialno", "cyjhuser");
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return "";
        }
    }

    private static String OooO0o(Context context) {
        int phoneType;
        String deviceId;
        String deviceId2;
        StringBuilder sb;
        int phoneType2 = 0;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            phoneType = telephonyManager.getPhoneType();
            try {
                deviceId = telephonyManager.getDeviceId();
            } catch (Exception unused) {
                deviceId = "";
            }
        } catch (Exception unused2) {
            phoneType = 0;
        }
        try {
            TelephonyManager telephonyManager2 = (TelephonyManager) context.getSystemService("phone");
            phoneType2 = telephonyManager2.getPhoneType();
            deviceId2 = telephonyManager2.getDeviceId();
        } catch (Exception unused3) {
            deviceId2 = "";
        }
        if (phoneType == 1) {
            if (phoneType2 == 2) {
                sb = new StringBuilder();
                sb.append(deviceId);
                sb.append(com.anythink.expressad.foundation.g.a.bQ);
                sb.append(deviceId2);
                return sb.toString();
            }
            return deviceId;
        }
        if (phoneType2 != 1) {
            if (phoneType != 2) {
                return "";
            }
            return deviceId;
        }
        if (phoneType != 2) {
            return deviceId2;
        }
        sb = new StringBuilder();
        sb.append(deviceId2);
        sb.append(com.anythink.expressad.foundation.g.a.bQ);
        sb.append(deviceId);
        return sb.toString();
    }

    public static boolean OooO0o0(Context context) {
        String strOooO0oO = OooO0oO(context);
        return strOooO0oO.endsWith("null") || strOooO0oO.endsWith("unknown");
    }

    private static String OooO0oO(Context context) {
        String line;
        String str = "unknown";
        String strOooO0OO = OooO0OO(context, false);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            while (true) {
                line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.startsWith("Hardware")) {
                    line = line.split(":")[1].trim().replaceAll(o4.OooO00o.OooO0Oo, "_");
                    break;
                }
            }
            bufferedReader.close();
            str = line;
        } catch (FileNotFoundException | IOException | Exception unused) {
        }
        return strOooO0OO + "[arm]@_@" + str;
    }

    private static String OooO0oo(Context context) {
        return OooO0OO(context, true) + "[x86]@_@model";
    }

    private static String OooOO0(Context context) {
        String str = OooO00o;
        if (str != "") {
            return str;
        }
        String strOooO0oO = OooO0oO(context);
        if (strOooO0oO.endsWith("null") || strOooO0oO.endsWith("unknown")) {
            strOooO0oO = OooO0OO(context, true) + "[x86]@_@model";
        }
        OooO00o = strOooO0oO;
        return strOooO0oO;
    }
}
