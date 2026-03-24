package com.anythink.china.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.anythink.core.common.b.n;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static String a(Context context) {
        if (n.a().c("imei")) {
            return "";
        }
        try {
            int i = Build.VERSION.SDK_INT;
            if (i < 23) {
                return b(context);
            }
            return a(i < 26 ? c(context) : d(context));
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String a(Map map) {
        return map != null ? (String) map.get("imei1") : "";
    }

    private static String b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        try {
            return telephonyManager.getDeviceId();
        } catch (Throwable unused) {
            return null;
        }
    }

    @TargetApi(23)
    private static Map c(Context context) {
        String str;
        String deviceId;
        String[] strArrSplit;
        HashMap map = new HashMap();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Method method = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class);
            str = (String) method.invoke(null, "ril.gsm.imei", "");
            map.put("meid", (String) method.invoke(null, "ril.cdma.meid", ""));
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(",")) != null && strArrSplit.length > 0) {
            map.put("imei1", strArrSplit[0]);
            if (strArrSplit.length > 1) {
                deviceId = strArrSplit[1];
            }
            map.put("imei2", deviceId);
            return map;
        }
        map.put("imei1", telephonyManager.getDeviceId(0));
        deviceId = telephonyManager.getDeviceId(1);
        map.put("imei2", deviceId);
        return map;
    }

    @TargetApi(26)
    private static Map d(Context context) {
        HashMap map = new HashMap();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String imei = telephonyManager.getImei(0);
            String imei2 = telephonyManager.getImei(1);
            if (TextUtils.isEmpty(imei) && TextUtils.isEmpty(imei2)) {
                map.put("imei1", telephonyManager.getMeid());
            } else {
                map.put("imei1", imei);
                map.put("imei2", imei2);
            }
        } catch (Throwable unused) {
        }
        return map;
    }
}
