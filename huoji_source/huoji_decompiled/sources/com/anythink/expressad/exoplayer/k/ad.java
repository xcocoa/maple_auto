package com.anythink.expressad.exoplayer.k;

import android.annotation.TargetApi;
import android.os.Trace;

/* JADX INFO: loaded from: classes.dex */
public final class ad {
    private ad() {
    }

    public static void a() {
        if (af.a >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (af.a >= 18) {
            Trace.beginSection(str);
        }
    }

    @TargetApi(18)
    private static void b() {
        Trace.endSection();
    }

    @TargetApi(18)
    private static void b(String str) {
        Trace.beginSection(str);
    }
}
