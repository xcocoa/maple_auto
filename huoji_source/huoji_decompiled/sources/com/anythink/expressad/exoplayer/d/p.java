package com.anythink.expressad.exoplayer.d;

import android.util.Pair;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final String a = "LicenseDurationRemaining";
    public static final String b = "PlaybackDurationRemaining";

    private p() {
    }

    private static long a(Map<String, String> map, String str) {
        if (map == null) {
            return com.anythink.expressad.exoplayer.b.b;
        }
        try {
            String str2 = map.get(str);
            return str2 != null ? Long.parseLong(str2) : com.anythink.expressad.exoplayer.b.b;
        } catch (NumberFormatException unused) {
            return com.anythink.expressad.exoplayer.b.b;
        }
    }

    public static Pair<Long, Long> a(f<?> fVar) {
        Map<String, String> mapH = fVar.h();
        if (mapH == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(mapH, a)), Long.valueOf(a(mapH, b)));
    }
}
