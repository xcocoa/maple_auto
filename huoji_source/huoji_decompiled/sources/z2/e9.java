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

/* JADX INFO: loaded from: classes.dex */
public class e9 {
    private static String OooO00o(Context context) {
        String line;
        String str = "unknown";
        String strOooO0oO = OooO0oO(context, false);
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            while (true) {
                line = bufferedReader.readLine();
                if (line != null) {
                    if (line.startsWith("Hardware")) {
                        line = line.split(":")[1].trim().replaceAll(o4.OooO00o.OooO0Oo, "_");
                        break;
                    }
                } else {
                    break;
                }
            }
            bufferedReader.close();
            str = line;
        } catch (FileNotFoundException | IOException | Exception unused) {
        }
        return strOooO0oO + "-" + str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String OooO0O0() {
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

    private static String OooO0OO(Context context) {
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
            TelephonyManager telephonyManager2 = (TelephonyManager) context.getSystemService("phone2");
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

    private static String OooO0Oo(Context context) {
        String strOooO0oO = OooO0oO(context, true);
        String line = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/cpuinfo")));
            while (true) {
                line = bufferedReader.readLine();
                if (line != null) {
                    if (line.startsWith("model name")) {
                        line = line.split(":")[1].trim().replaceAll(o4.OooO00o.OooO0Oo, "_");
                        break;
                    }
                } else {
                    break;
                }
            }
            bufferedReader.close();
        } catch (FileNotFoundException | IOException | Exception unused) {
        }
        if (line == null) {
            return strOooO0oO;
        }
        return strOooO0oO + "-" + line;
    }

    public static String OooO0o(Context context) {
        return System.getProperty("os.arch").indexOf("arm") != -1 ? OooO00o(context) : OooO0Oo(context);
    }

    private static String OooO0o0() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, "ro.serialno", "cyjhuser");
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return "";
        }
    }

    private static String OooO0oO(Context context, boolean z) {
        StringBuilder sb;
        String str;
        String strOooO0OO = OooO0OO(context);
        String strOooO0O0 = OooO0O0();
        String strOooO0o0 = OooO0o0();
        if (!z || strOooO0OO == null || strOooO0OO == "") {
            if (strOooO0OO != null && strOooO0OO != "") {
                strOooO0O0 = strOooO0OO;
            }
            if (strOooO0O0 != null && strOooO0O0 != "") {
                strOooO0o0 = strOooO0O0;
            }
        } else if (strOooO0o0 == null || strOooO0o0 == "") {
            strOooO0o0 = strOooO0OO;
        } else {
            strOooO0o0 = strOooO0OO + "-" + strOooO0o0;
        }
        if (strOooO0OO == "") {
            sb = new StringBuilder();
            str = "imei:none-";
        } else {
            sb = new StringBuilder();
            str = "imei:";
        }
        sb.append(str);
        sb.append(strOooO0o0);
        return sb.toString();
    }
}
