package com.umeng.commonsdk.framework;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static final String a = "analytics";
    public static final String b = "push";
    public static final String c = "share";
    public static final String d = "internal";
    private static HashMap<String, UMLogDataProtocol> e = null;
    private static Context f = null;
    private static final int g = 16385;
    private static final int h = 20480;
    private static final int i = 24577;
    private static final int j = 28672;
    private static final int k = 32769;
    private static final int l = 36864;

    public static Context a() {
        return f;
    }

    public static UMLogDataProtocol a(String str) {
        if (e.containsKey(str)) {
            return e.get(str);
        }
        return null;
    }

    public static String a(int i2) {
        String str = (i2 < g || i2 > 20480) ? "analytics" : "push";
        if (i2 >= i && i2 <= j) {
            str = "share";
        }
        return (i2 < 32769 || i2 > l) ? str : d;
    }

    public static void a(Context context) {
        if (f == null) {
            f = context.getApplicationContext();
        }
    }

    public static boolean a(int i2, UMLogDataProtocol uMLogDataProtocol) {
        if (e == null) {
            e = new HashMap<>();
        }
        String strA = a(i2);
        if (e.containsKey(strA)) {
            return true;
        }
        if (!a().getPackageName().equals(b.a(a().getApplicationContext()))) {
            return false;
        }
        e.put(strA, uMLogDataProtocol);
        return true;
    }
}
