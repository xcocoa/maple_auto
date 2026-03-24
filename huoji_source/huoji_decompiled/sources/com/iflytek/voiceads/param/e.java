package com.iflytek.voiceads.param;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.Proxy;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import cn.haorui.sdk.core.HRConfig;
import com.iflytek.voiceads.utils.i;
import com.umeng.commonsdk.proguard.v;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class e {
    private static SimpleDateFormat a = new SimpleDateFormat("yyyy/MM/dd_HH:mm:ss");
    private static final String[] b = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};

    private static int a() {
        return Build.VERSION.SDK_INT;
    }

    private static String a(long j) {
        return a.format(new Date(j));
    }

    private static String a(Context context, String str) {
        for (Signature signature : g(context)) {
            if ("SHA1".equals(str)) {
                return a(signature, "SHA1");
            }
        }
        return null;
    }

    private static String a(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "";
            }
            byte[] bArrDigest = messageDigest.digest(byteArray);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDigest) {
                sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return "";
        }
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("and_ver", a());
            jSONObject.put("build_info", b());
            jSONObject.put("time_zone", c());
            jSONObject.put("imsi", c(context));
            jSONObject.put("local_ip", d());
            jSONObject.put("cpu_freq", e());
            jSONObject.put("cpu_info", f());
            jSONObject.put("cpu_hardware", g());
            jSONObject.put("mem_info", e(context));
            jSONObject.put("sign", a(context, "SHA1"));
            jSONObject.put("pkg_info", h(context));
            jSONObject.put("task_info", j(context));
            jSONObject.put("launcher_pkg", n(context));
            jSONObject.put("wifi_proxy", o(context));
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - com.iflytek.voiceads.utils.c.a(context, "extraInfoTime") >= 3600000) {
                jSONObject.put("scan_ssid", d(context));
                jSONObject.put("sensor_info", i(context));
                com.iflytek.voiceads.utils.c.a(context, "extraInfoTime", jCurrentTimeMillis);
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONObject;
    }

    public static int b(Context context) {
        try {
            BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
            if (Build.VERSION.SDK_INT > 20) {
                return batteryManager.getIntProperty(4);
            }
            return 100;
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return 100;
        }
    }

    private static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("build_id", Build.ID);
            jSONObject.put("build_hardware", Build.HARDWARE);
            jSONObject.put("build_finger", Build.FINGERPRINT);
            jSONObject.put("build_cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_cpu_abi2", Build.CPU_ABI2);
            jSONObject.put("build_display", Build.DISPLAY);
        } catch (JSONException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONObject;
    }

    private static String c() {
        return TimeZone.getDefault().getDisplayName(true, 0);
    }

    private static String c(Context context) {
        String subscriberId;
        if (!i.b(context, com.anythink.china.common.d.a)) {
            return "";
        }
        try {
            subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            subscriberId = "";
        }
        return TextUtils.isEmpty(subscriberId) ? "" : subscriberId;
    }

    private static String d() {
        Enumeration<NetworkInterface> networkInterfaces;
        try {
            networkInterfaces = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        while (networkInterfaces.hasMoreElements()) {
            Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
            while (inetAddresses.hasMoreElements()) {
                InetAddress inetAddressNextElement = inetAddresses.nextElement();
                if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                    return inetAddressNextElement.getHostAddress();
                }
                return "";
            }
        }
        return "";
    }

    private static JSONArray d(Context context) {
        List<ScanResult> scanResults;
        JSONArray jSONArray = new JSONArray();
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (wifiManager != null && (scanResults = wifiManager.getScanResults()) != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= scanResults.size()) {
                        break;
                    }
                    jSONArray.put(scanResults.get(i2).SSID);
                    i = i2 + 1;
                }
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONArray;
    }

    private static JSONObject e() {
        String str = "";
        String str2 = "";
        JSONObject jSONObject = new JSONObject();
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[1024];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
            String str3 = TextUtils.isEmpty(str) ? "null" : str;
            InputStream inputStream2 = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] bArr2 = new byte[1024];
            while (inputStream2.read(bArr2) != -1) {
                str2 = str2 + new String(bArr2);
            }
            inputStream2.close();
            String str4 = TextUtils.isEmpty(str2) ? "null" : str2;
            String line = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")).readLine();
            if (TextUtils.isEmpty(line)) {
                line = "null";
            }
            jSONObject.put("max_freq", str3.trim());
            jSONObject.put("min_freq", str4.trim());
            jSONObject.put("cur_freq", line);
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONObject;
    }

    private static JSONObject e(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ava_mem", f(context));
            jSONObject.put("total_in", h());
            jSONObject.put("ava_in", i());
            jSONObject.put("total_ex", j());
            jSONObject.put("ava_ex", k());
        } catch (JSONException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONObject;
    }

    private static long f(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return memoryInfo.availMem;
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return 0L;
        }
    }

    private static String f() {
        try {
            return new BufferedReader(new FileReader("/proc/cpuinfo")).readLine();
        } catch (IOException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String g() throws Throwable {
        Scanner scanner;
        HashMap map = new HashMap();
        try {
            scanner = new Scanner(new File("/proc/cpuinfo"));
            while (scanner.hasNextLine()) {
                try {
                    try {
                        String[] strArrSplit = scanner.nextLine().split(": ");
                        if (strArrSplit.length > 1) {
                            map.put(strArrSplit[0].trim(), strArrSplit[1].trim());
                        }
                    } catch (Exception e) {
                        e = e;
                        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
                        if (scanner != null) {
                            scanner.close();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    if (scanner != null) {
                        scanner.close();
                    }
                    throw th;
                }
            }
            if (scanner != null) {
                scanner.close();
            }
        } catch (Exception e2) {
            e = e2;
            scanner = null;
        } catch (Throwable th2) {
            th = th2;
            scanner = null;
            if (scanner != null) {
            }
            throw th;
        }
        return (String) map.get("Hardware");
    }

    private static Signature[] g(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        } catch (PackageManager.NameNotFoundException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return null;
        }
    }

    private static long h() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
    }

    private static JSONObject h(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            PackageInfo packageInfo = context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str = packageInfo.packageName;
            String str2 = packageInfo.versionName;
            long j = packageInfo.firstInstallTime;
            long j2 = packageInfo.lastUpdateTime;
            jSONObject.put("first_install", a(j));
            jSONObject.put("last_update", a(j2));
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONObject;
    }

    private static long i() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    private static JSONArray i(Context context) {
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<Sensor> it = ((SensorManager) context.getSystemService(v.W)).getSensorList(-1).iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().getName());
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONArray;
    }

    private static long j() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
    }

    private static JSONObject j(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("recent_task", k(context));
            jSONObject.put("install_app", l(context));
            jSONObject.put("running_app", m(context));
        } catch (JSONException e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return jSONObject;
    }

    private static int k(Context context) {
        try {
            List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRecentTasks(30, 2);
            if (recentTasks != null) {
                return recentTasks.size();
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return 0;
    }

    private static long k() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    private static int l(Context context) {
        try {
            return context.getPackageManager().getInstalledPackages(0).size();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
            return 0;
        }
    }

    private static int m(Context context) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                return runningAppProcesses.size();
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", e.getMessage());
        }
        return 0;
    }

    private static String n(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        return resolveInfoResolveActivity.activityInfo == null ? "" : resolveInfoResolveActivity.activityInfo.packageName;
    }

    private static String o(Context context) {
        String host;
        int port;
        if (Build.VERSION.SDK_INT >= 14) {
            host = System.getProperty("http.proxyHost");
            String property = System.getProperty("http.proxyPort");
            if (property == null) {
                property = HRConfig.GENDER_UNKNOWN;
            }
            port = Integer.parseInt(property);
        } else {
            host = Proxy.getHost(context);
            port = Proxy.getPort(context);
        }
        return !TextUtils.isEmpty(host) ? host + ":" + port : "";
    }
}
