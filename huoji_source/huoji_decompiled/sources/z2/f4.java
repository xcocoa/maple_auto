package z2;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class f4 {
    public static boolean OooO00o() {
        String strOooO0o = OooO0o();
        Log.e("zzz", "EmulatorUtils--checkIsNotRealPhone--" + strOooO0o);
        return strOooO0o.contains("intel") || strOooO0o.contains("amd");
    }

    public static boolean OooO0O0(Context context) {
        return OooO0Oo() || OooO0o0(context).booleanValue() || OooO0OO(context) || OooO00o();
    }

    public static boolean OooO0OO(Context context) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("tel:123456"));
        intent.setAction("android.intent.action.DIAL");
        boolean z = intent.resolveActivity(context.getPackageManager()) != null;
        String str = Build.FINGERPRINT;
        if (str.startsWith("generic") || str.toLowerCase().contains("vbox") || str.toLowerCase().contains("test-keys")) {
            return true;
        }
        String str2 = Build.MODEL;
        if (str2.contains("google_sdk") || str2.contains("Emulator")) {
            return true;
        }
        String str3 = Build.SERIAL;
        if (str3.equalsIgnoreCase("unknown") || str3.equalsIgnoreCase(g6.OooO0O0) || str2.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT) || g6.OooO0O0.equals(((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName().toLowerCase()) || !z;
    }

    public static boolean OooO0Oo() {
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        if (defaultAdapter == null) {
            return true;
        }
        String name = defaultAdapter.getName();
        Log.e("zzz", "notHasBlueTooth:" + name);
        return TextUtils.isEmpty(name);
    }

    private static String OooO0o() {
        String lowerCase = "";
        try {
            Process processStart = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream(), "utf-8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    lowerCase = sb.toString().toLowerCase();
                    Log.e("zzz", "readCpuInfo:" + lowerCase);
                    return lowerCase;
                }
                sb.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
            return lowerCase;
        }
    }

    public static Boolean OooO0o0(Context context) {
        SensorManager sensorManager = (SensorManager) context.getSystemService(com.umeng.commonsdk.proguard.v.W);
        if (sensorManager != null) {
            return Boolean.valueOf(sensorManager.getDefaultSensor(5) == null);
        }
        return Boolean.FALSE;
    }
}
