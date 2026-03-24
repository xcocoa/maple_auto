package net.grandcentrix.tray.core;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class TrayLog {
    public static boolean DEBUG = false;
    private static String TAG = "net.grandcentrix.tray.core.TrayLog";

    public TrayLog() {
        throw new IllegalStateException("no instances");
    }

    public static void d(String str) {
        if (str == null) {
            str = "";
        }
        Log.d(TAG, str);
    }

    public static void e(String str) {
        if (str == null) {
            str = "";
        }
        Log.e(TAG, str);
    }

    public static void e(Throwable th, String str) {
        Log.e(TAG, str, th);
    }

    public static void setTag(String str) {
        d("Changing log tag to " + str);
        TAG = str;
        DEBUG = Log.isLoggable(str, 2);
    }

    public static void v(String str) {
        if (DEBUG) {
            if (str == null) {
                str = "";
            }
            Log.v(TAG, str);
        }
    }

    public static void w(String str) {
        if (str == null) {
            str = "";
        }
        Log.w(TAG, str);
    }

    public static void wtf(String str) {
        if (str == null) {
            str = "";
        }
        Log.wtf(TAG, str);
    }

    public static void wtf(Throwable th, String str) {
        Log.wtf(TAG, str, th);
    }
}
