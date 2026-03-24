package com.iflytek.voiceads.utils;

import android.util.Log;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class g {
    private static boolean a = false;

    public static void a(String str, String str2) {
        if (a) {
            Log.d(str, str2);
        }
    }

    public static void a(boolean z) {
        a = z;
    }

    public static void b(String str, String str2) {
        if (a) {
            Log.e(str, str2);
            f.a(str2);
        }
    }
}
