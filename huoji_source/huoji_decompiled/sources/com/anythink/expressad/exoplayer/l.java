package com.anythink.expressad.exoplayer;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    public static final String a = "ExoPlayer";
    public static final String b = "2.8.4";
    public static final String c = "ExoPlayerLib/2.8.4";
    public static final int d = 2008004;
    public static final boolean e = true;
    public static final boolean f = true;
    private static final HashSet<String> g = new HashSet<>();
    private static String h = "goog.exo.core";

    private l() {
    }

    public static synchronized String a() {
        return h;
    }

    private static synchronized void a(String str) {
        if (g.add(str)) {
            h += ", " + str;
        }
    }
}
