package com.iflytek.voiceads.param;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.iflytek.voiceads.utils.h;
import com.iflytek.voiceads.utils.i;
import com.iflytek.voiceads.utils.k;
import com.umeng.commonsdk.proguard.v;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class d {
    private static String a;

    public static long a() {
        return System.currentTimeMillis() / 1000;
    }

    public static JSONObject a(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(v.ab, e(context));
            jSONObject.put("os", b());
            jSONObject.put("osv", c());
            jSONObject.put("adid", g(context));
            jSONObject.put("adid_md5", com.iflytek.voiceads.utils.d.a(g(context)));
            jSONObject.put("imei", h(context));
            jSONObject.put("imei_md5", com.iflytek.voiceads.utils.d.a(h(context)));
            jSONObject.put("mac", h.a(context));
            jSONObject.put("mac_md5", com.iflytek.voiceads.utils.d.a(h.a(context)));
            jSONObject.put("density", j(context));
            jSONObject.put(v.K, k(context));
            jSONObject.put("net", l(context));
            jSONObject.put("ip", d());
            jSONObject.put("ua", b(context));
            jSONObject.put("dvw", c(context));
            jSONObject.put("dvh", d(context));
            jSONObject.put("orientation", n(context));
            jSONObject.put("make", e());
            jSONObject.put("model", f());
            jSONObject.put("lan", o(context));
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get device:" + e.getMessage());
        }
        return jSONObject;
    }

    private static int b() {
        return 0;
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(a)) {
            try {
                if (Build.VERSION.SDK_INT >= 19) {
                    a = WebSettings.getDefaultUserAgent(context);
                } else {
                    a = new WebView(context).getSettings().getUserAgentString();
                }
            } catch (Exception e) {
                a = "";
            }
        }
        return a;
    }

    public static int c(Context context) {
        return m(context).widthPixels;
    }

    private static String c() {
        return Build.VERSION.RELEASE;
    }

    public static int d(Context context) {
        return m(context).heightPixels;
    }

    private static String d() {
        return k.a();
    }

    private static int e(Context context) {
        String strB = b(context);
        if (TextUtils.isEmpty(strB)) {
            return -1;
        }
        return (!(strB.contains("Mobile") && strB.contains("Android")) && strB.contains("Android") && f(context)) ? 1 : 0;
    }

    private static String e() {
        return Build.MANUFACTURER;
    }

    private static String f() {
        return Build.MODEL;
    }

    private static boolean f(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private static String g(Context context) {
        try {
            return Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getAndroidID:" + e.getMessage());
            return "";
        }
    }

    private static String h(Context context) {
        String deviceId;
        Exception e;
        if (!i.b(context, com.anythink.china.common.d.a)) {
            return "";
        }
        String deviceId2 = "";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            deviceId2 = telephonyManager.getDeviceId();
            if (!TextUtils.isEmpty(deviceId2)) {
                return deviceId2;
            }
            deviceId = Build.VERSION.SDK_INT >= 23 ? telephonyManager.getDeviceId(0) : deviceId2;
            try {
                return TextUtils.isEmpty(deviceId) ? i(context) : deviceId;
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            deviceId = deviceId2;
            e = e3;
        }
        com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "get IMEI:" + e.getMessage());
        return deviceId;
    }

    private static String i(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            return telephonyManager.getClass().getDeclaredMethod("getImei", Integer.TYPE).invoke(telephonyManager, 1).toString();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "Get invoke imei:" + e.getMessage());
            return "";
        }
    }

    private static int j(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    private static int k(Context context) {
        try {
            String networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            if (!TextUtils.isEmpty(networkOperatorName)) {
                if (networkOperatorName.contains("46000") || networkOperatorName.contains("46002") || networkOperatorName.contains("46004") || networkOperatorName.contains("46007")) {
                    return 1;
                }
                if (networkOperatorName.contains("46001") || networkOperatorName.contains("46006") || networkOperatorName.contains("46009")) {
                    return 2;
                }
                if (!networkOperatorName.contains("46003") && !networkOperatorName.contains("46005")) {
                    if (!networkOperatorName.contains("46011")) {
                        return 0;
                    }
                }
                return 3;
            }
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "Get carrier failed:" + e.getMessage());
        }
        return 0;
    }

    private static int l(Context context) {
        if (!i.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return 0;
        }
        String strC = k.c(context);
        if (strC.contains("wifi")) {
            return 2;
        }
        if (strC.contains("2g")) {
            return 4;
        }
        if (strC.contains("3g")) {
            return 5;
        }
        return strC.contains("4g") ? 6 : 0;
    }

    private static DisplayMetrics m(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if ((context instanceof Activity) && Build.VERSION.SDK_INT >= 17) {
            ((Activity) context).getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    private static int n(Context context) {
        return 0;
    }

    private static String o(Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        return locale != null ? locale.getLanguage() + "-" + locale.getCountry() : "";
    }
}
