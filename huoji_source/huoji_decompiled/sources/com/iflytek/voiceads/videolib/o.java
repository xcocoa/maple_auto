package com.iflytek.voiceads.videolib;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class o {
    public static JZPlayer a;
    public static JZPlayer b;

    public static JZPlayer a() {
        return a;
    }

    public static void a(JZPlayer jZPlayer) {
        a = jZPlayer;
    }

    public static JZPlayer b() {
        return b;
    }

    public static void b(JZPlayer jZPlayer) {
        b = jZPlayer;
    }

    public static JZPlayer c() {
        return b() != null ? b() : a();
    }

    public static void d() {
        if (b != null) {
            b.u();
            b = null;
        }
        if (a != null) {
            a.u();
            a = null;
        }
    }
}
