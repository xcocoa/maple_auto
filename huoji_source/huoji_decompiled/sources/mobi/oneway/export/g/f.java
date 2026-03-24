package mobi.oneway.export.g;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import io.reactivex.annotations.SchedulerSupport;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: mobi.oneway.export.g.f$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[a.values().length];
            a = iArr;
            try {
                iArr[a.MAC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.SSID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[a.BSSID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum a {
        MAC,
        SSID,
        BSSID
    }

    @SuppressLint({"MissingPermission"})
    public static String a() {
        String imei;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) mobi.oneway.export.a.b.a().getSystemService("phone");
            if (Build.VERSION.SDK_INT >= 26) {
                imei = TextUtils.isEmpty(telephonyManager.getImei()) ? "" : telephonyManager.getImei();
            } else {
                Method declaredMethod = telephonyManager.getClass().getDeclaredMethod("getImei", new Class[0]);
                declaredMethod.setAccessible(true);
                imei = (String) declaredMethod.invoke(telephonyManager, new Object[0]);
            }
            return TextUtils.isEmpty(imei) ? "" : imei;
        } catch (Exception unused) {
            return "";
        }
    }

    private static String a(String str) {
        return str == null ? "" : (str.startsWith("\"") && str.endsWith("\"")) ? str.substring(1, str.length() - 1) : str;
    }

    private static String a(a aVar) {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) mobi.oneway.export.a.b.a().getApplicationContext().getSystemService("wifi");
        if (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return "";
        }
        int i = AnonymousClass1.a[aVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? "" : connectionInfo.getBSSID() : a(connectionInfo.getSSID()) : connectionInfo.getMacAddress();
    }

    public static String b() {
        try {
            return mobi.oneway.export.a.b.a().getPackageName();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c() {
        try {
            return mobi.oneway.export.a.b.a().getPackageManager().getPackageInfo(b(), 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String d() {
        String str = System.getProperty("http.agent") + " AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Mobile Safari/537.36 ";
        return TextUtils.isEmpty(str) ? "Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Mobile Safari/537.36 OneWaySDK" : str;
    }

    public static String e() {
        try {
            return Settings.Secure.getString(mobi.oneway.export.a.b.a().getContentResolver(), "android_id");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String f() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) mobi.oneway.export.a.b.a().getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            return SchedulerSupport.NONE;
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? type != 1 ? SchedulerSupport.NONE : "wifi" : "moblie";
    }

    public static int g() {
        try {
            if (f().equals("wifi")) {
                return 99;
            }
            return ((TelephonyManager) mobi.oneway.export.a.b.a().getSystemService("phone")).getNetworkType();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String h() {
        return a(a.SSID);
    }

    public static String i() {
        return a(a.BSSID);
    }

    public static String j() {
        try {
            return ((TelephonyManager) mobi.oneway.export.a.b.a().getSystemService("phone")).getSimOperator();
        } catch (Exception e) {
            e.printStackTrace();
            return SchedulerSupport.NONE;
        }
    }

    public static String k() {
        try {
            return ((TelephonyManager) mobi.oneway.export.a.b.a().getApplicationContext().getSystemService("phone")).getSimSerialNumber();
        } catch (Exception e) {
            e.printStackTrace();
            return SchedulerSupport.NONE;
        }
    }
}
