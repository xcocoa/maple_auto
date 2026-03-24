package com.anythink.core.api;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.b.n;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class ATInitMediation {
    public static final String KEY_LOCAL = "anythink_local";
    public String devBundleName;

    public static boolean getBooleanFromMap(Map<String, Object> map, String str) {
        return getBooleanFromMap(map, str, false);
    }

    public static boolean getBooleanFromMap(Map<String, Object> map, String str, boolean z) {
        return ((Boolean) getValueFromMap(map, str, Boolean.valueOf(z))).booleanValue();
    }

    public static double getDoubleFromMap(Map<String, Object> map, String str) {
        return getDoubleFromMap(map, str, 0.0d);
    }

    public static double getDoubleFromMap(Map<String, Object> map, String str, double d) {
        return ((Double) getValueFromMap(map, str, Double.valueOf(d))).doubleValue();
    }

    public static int getIntFromMap(Map<String, Object> map, String str) {
        return getIntFromMap(map, str, 0);
    }

    public static int getIntFromMap(Map<String, Object> map, String str, int i) {
        return ((Integer) getValueFromMap(map, str, Integer.valueOf(i))).intValue();
    }

    public static long getLongFromMap(Map<String, Object> map, String str) {
        return getLongFromMap(map, str, 0L);
    }

    public static long getLongFromMap(Map<String, Object> map, String str, long j) {
        return ((Long) getValueFromMap(map, str, Long.valueOf(j))).longValue();
    }

    public static String getStringFromMap(Map<String, Object> map, String str) {
        return getStringFromMap(map, str, "");
    }

    public static String getStringFromMap(Map<String, Object> map, String str, String str2) {
        return (String) getValueFromMap(map, str, str2);
    }

    private static <T> T getValueFromMap(Map<String, Object> map, String str, T t) {
        Object obj;
        try {
            if (TextUtils.isEmpty(str) || map == null || map.size() <= 0 || (obj = map.get(str)) == null) {
                return t;
            }
            String str2 = (T) obj.toString();
            Object obj2 = t instanceof String ? str2 : t instanceof Integer ? (T) Integer.valueOf(Integer.parseInt(str2)) : t instanceof Long ? (T) Long.valueOf(Long.parseLong(str2)) : t instanceof Double ? (T) Double.valueOf(Double.parseDouble(str2)) : t instanceof Float ? (T) Float.valueOf(Float.parseFloat(str2)) : t instanceof Boolean ? (T) Boolean.valueOf(Boolean.parseBoolean(str2)) : t;
            if (ATSDK.isNetworkLogDebug()) {
                Log.d("ATInitMediation", "key = " + str + " getValueFromMap() >>> result = " + obj2 + " defaultValue = " + t);
            }
            return (T) obj2;
        } catch (Exception e) {
            if (ATSDK.isNetworkLogDebug()) {
                Log.e("ATInitMediation", "getValueFromMap() >>> errorMsg = " + e.getMessage());
            }
            return t;
        }
    }

    public final void checkToSaveInitData(String str, Map<String, Object> map, String... strArr) {
        n.a().a(str, map, strArr);
    }

    public List getActivityStatus() {
        return null;
    }

    public String getAdapterVersion() {
        return "";
    }

    public String getBundleName() {
        return n.a().L();
    }

    public String getDevBundleName() {
        return this.devBundleName;
    }

    public List getMetaValutStatus() {
        return null;
    }

    public String getNetworkName() {
        return "";
    }

    public String getNetworkSDKClass() {
        return "";
    }

    public String getNetworkVersion() {
        return "";
    }

    public List getPermissionStatus() {
        return null;
    }

    public Map<String, Boolean> getPluginClassStatus() {
        return null;
    }

    public List getProviderStatus() {
        return null;
    }

    public List getResourceStatus() {
        return null;
    }

    public List getServiceStatus() {
        return null;
    }

    public String getUserId() {
        Map<String, Object> mapL = n.a().l();
        return mapL != null ? getStringFromMap(mapL, "user_id") : "";
    }

    public abstract void initSDK(Context context, Map<String, Object> map, MediationInitCallback mediationInitCallback);

    public boolean needCheckAdapterVersion() {
        return true;
    }

    public final void runOnMainThread(Runnable runnable) {
        n.a().b(runnable);
    }

    public final void runOnThreadPool(Runnable runnable) {
        n.a();
        n.c(runnable);
    }

    public void setDevBundleName(String str) {
        this.devBundleName = str;
    }

    public boolean setUserDataConsent(Context context, boolean z, boolean z3) {
        return false;
    }
}
