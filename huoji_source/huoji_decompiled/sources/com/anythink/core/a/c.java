package com.anythink.core.a;

import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.o.s;
import com.anythink.core.d.f;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static c a;
    private final String b = "pacing_";

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    public static void a(String str) {
        try {
            s.a(n.a().f(), h.p, "pacing_".concat(String.valueOf(str)), System.currentTimeMillis());
        } catch (Exception unused) {
        }
    }

    public static boolean a(String str, f fVar) {
        if (fVar == null) {
            return true;
        }
        if (fVar.an() == -1) {
            return false;
        }
        long jLongValue = s.a(n.a().f(), h.p, "pacing_".concat(String.valueOf(str)), (Long) 0L).longValue();
        if (System.currentTimeMillis() - jLongValue >= 0) {
            return System.currentTimeMillis() - jLongValue < fVar.an();
        }
        a(str);
        return false;
    }

    public final void a(final String str, final String str2) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    s.a(n.a().f(), h.p, "pacing_" + str + "_" + str2, System.currentTimeMillis());
                } catch (Exception unused) {
                }
            }
        }, 2, true);
    }

    public final boolean a(String str, av avVar) {
        if (avVar == null) {
            return true;
        }
        if (avVar.t() == -1) {
            return false;
        }
        long jLongValue = s.a(n.a().f(), h.p, "pacing_" + str + "_" + avVar.u(), (Long) 0L).longValue();
        if (System.currentTimeMillis() - jLongValue >= 0) {
            return System.currentTimeMillis() - jLongValue < avVar.t();
        }
        a(str, avVar.u());
        return false;
    }
}
