package cn.haorui.sdk.core.utils;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class AddressUtils {
    public static String getMac(Context context) {
        if (context == null) {
            return "";
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            if (i == 23) {
                String macByJavaAPI = getMacByJavaAPI();
                return TextUtils.isEmpty(macByJavaAPI) ? getMacShell() : macByJavaAPI;
            }
            String macByJavaAPI2 = getMacByJavaAPI();
            if (!TextUtils.isEmpty(macByJavaAPI2)) {
                return macByJavaAPI2;
            }
        }
        return getMacBySystemInterface(context);
    }

    private static String getMacByJavaAPI() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("wlan0".equals(networkInterfaceNextElement.getName()) || "eth0".equals(networkInterfaceNextElement.getName())) {
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress == null || hardwareAddress.length == 0) {
                        return null;
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b : hardwareAddress) {
                        sb.append(String.format("%02X:", Byte.valueOf(b)));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString().toLowerCase(Locale.getDefault());
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String getMacBySystemInterface(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        return wifiManager != null ? wifiManager.getConnectionInfo().getMacAddress() : "";
    }

    private static String getMacShell() throws Throwable {
        String strReaMac;
        try {
            String[] strArr = {"/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address"};
            for (int i = 0; i < 3; i++) {
                try {
                    strReaMac = reaMac(strArr[i]);
                } catch (Exception unused) {
                }
                if (strReaMac != null) {
                    return strReaMac;
                }
            }
            return null;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static String reaMac(String str) throws Throwable {
        BufferedReader bufferedReader;
        FileReader fileReader;
        FileReader fileReader2 = null;
        str = null;
        String str2 = null;
        try {
            fileReader = new FileReader(str);
            try {
                bufferedReader = new BufferedReader(new FileReader(str), 1024);
                try {
                    String line = bufferedReader.readLine();
                    try {
                        fileReader.close();
                    } catch (Exception unused) {
                    }
                    str2 = line;
                } catch (Exception unused2) {
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception unused3) {
                        }
                    }
                    if (bufferedReader != null) {
                    }
                    return str2;
                } catch (Throwable th) {
                    th = th;
                    fileReader2 = fileReader;
                    if (fileReader2 != null) {
                        try {
                            fileReader2.close();
                        } catch (Exception unused4) {
                        }
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    try {
                        bufferedReader.close();
                        throw th;
                    } catch (Exception unused5) {
                        throw th;
                    }
                }
            } catch (Exception unused6) {
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Exception unused7) {
            fileReader = null;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (Exception unused8) {
        }
        return str2;
    }
}
