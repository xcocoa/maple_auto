package com.iflytek.voiceads.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class c {
    public static long a(Context context, String str) {
        return a(context).getLong(str, 0L);
    }

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("IFLY_AD_SHARED", 0);
    }

    public static void a(Context context, String str, long j) {
        a(context).edit().putLong(str, j).apply();
    }

    public static void a(Context context, String str, String str2) {
        a(context).edit().putString(str, str2).apply();
    }

    public static void a(Context context, String str, boolean z) {
        a(context).edit().putBoolean(str, z).apply();
    }

    public static String b(Context context, String str) {
        return a(context).getString(str, "");
    }

    public static boolean c(Context context, String str) {
        return a(context).getBoolean(str, false);
    }
}
