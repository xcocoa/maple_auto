package z2;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.Reader;
import java.net.NetworkInterface;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class of {
    private of() {
        throw new RuntimeException();
    }

    private static String OooO00o() {
        String strTrim;
        LineNumberReader lineNumberReader;
        String line;
        try {
            lineNumberReader = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ").getInputStream()));
            line = "";
        } catch (Exception e) {
            e.printStackTrace();
        }
        while (line != null) {
            line = lineNumberReader.readLine();
            if (line != null) {
                strTrim = line.trim();
                break;
            }
            strTrim = "";
        }
        strTrim = "";
        if (strTrim != null && !"".equals(strTrim)) {
            return strTrim;
        }
        try {
            FileReader fileReader = new FileReader("/sys/class/net/eth0/address");
            String strOooO0OO = OooO0OO(fileReader);
            fileReader.close();
            return strOooO0OO.toUpperCase().substring(0, 17);
        } catch (Exception e2) {
            e2.printStackTrace();
            return OooO0o0();
        }
    }

    private static String OooO0O0(Context context) {
        try {
            String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
            return deviceId == null ? "" : deviceId;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static String OooO0OO(Reader reader) throws Exception {
        StringBuilder sb = new StringBuilder();
        char[] cArr = new char[4096];
        while (true) {
            int i = reader.read(cArr);
            if (i < 0) {
                return sb.toString();
            }
            sb.append(cArr, 0, i);
        }
    }

    private static String OooO0Oo(String str) throws Exception {
        FileReader fileReader = new FileReader(str);
        String strOooO0OO = OooO0OO(fileReader);
        fileReader.close();
        return strOooO0OO;
    }

    private static String OooO0o(Context context) {
        try {
            String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            return subscriberId == null ? "" : subscriberId;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static String OooO0o0() {
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
        } catch (Exception unused) {
            return "";
        }
    }

    private static String OooO0oO(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return OooO00o();
        }
        try {
            String macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            return macAddress == null ? "" : macAddress;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
