package com.octopus.ad.utils.a;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    private static boolean a;

    public static void a(Object obj) {
        if (a) {
            if (obj == null) {
                obj = "<null>";
            }
            Log.d("OAID", obj.toString());
        }
    }

    public static void b(Object obj) {
        if (obj == null) {
            obj = "<null>";
        }
        Log.d("OAID", obj.toString());
    }
}
