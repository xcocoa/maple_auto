package com.anythink.core.basead;

import android.content.Context;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.s;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static volatile b a;

    private b() {
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b();
                }
            }
        }
        return a;
    }

    public static String a(Context context, String str) {
        return s.b(context, h.z, str, "");
    }

    public static String a(m mVar) {
        return mVar == null ? "" : a(mVar.b, mVar.c, mVar.f);
    }

    public static String a(String str, String str2, int i) {
        return str + "_" + str2 + "_" + i;
    }

    public static void a(Context context, String str, String str2) {
        s.a(context, h.z, str, str2);
    }

    public static void b(Context context, String str) {
        s.a(context, h.z, str);
    }
}
