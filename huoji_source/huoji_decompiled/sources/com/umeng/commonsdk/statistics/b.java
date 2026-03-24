package com.umeng.commonsdk.statistics;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static final String a = "Android";
    public static final String b = "Android";
    public static final String c = "MobclickAgent";
    public static boolean d = true;
    public static String[] e = {UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
    public static final boolean f = com.umeng.commonsdk.statistics.common.e.a;
    private static int g = 1;

    public static synchronized int a() {
        return g;
    }

    public static void a(int i) {
        g = i;
    }
}
