package cn.haorui.sdk.core.utils;

import android.util.Log;
import cn.haorui.sdk.core.AdSdk;

/* JADX INFO: loaded from: classes.dex */
public class LogUtil {
    public static final String TAG = "HrSdk";

    public static void d(String str, String str2) {
        if (AdSdk.adConfig().enableDebug()) {
            Log.d(getTag(str), str2);
        }
    }

    public static void e(String str, String str2) {
        Log.e(getTag(str), str2);
    }

    public static void e(String str, String str2, Exception exc) {
        Log.e(getTag(str), str2, exc);
    }

    private static String getTag(String str) {
        StringBuffer stringBuffer = new StringBuffer(TAG);
        stringBuffer.append("_");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    public static void i(String str, String str2) {
        if (AdSdk.adConfig().enableDebug()) {
            Log.i(getTag(str), str2);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (AdSdk.adConfig().enableDebug()) {
            Log.i(getTag(str), str2, th);
        }
    }

    public static void w(String str, String str2) {
        Log.w(getTag(str), str2);
    }
}
