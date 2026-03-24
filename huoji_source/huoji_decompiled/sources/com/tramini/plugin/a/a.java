package com.tramini.plugin.a;

import android.text.TextUtils;
import com.tramini.plugin.a.b.a;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a a;

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    private static String a(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : str;
    }

    public static String b() {
        com.tramini.plugin.b.b bVarB = com.tramini.plugin.b.c.b(com.tramini.plugin.a.b.c.a().b());
        return bVarB != null ? a(bVarB.o(), a.C0224a.b) : a.C0224a.b;
    }

    public static String c() {
        com.tramini.plugin.b.b bVarB = com.tramini.plugin.b.c.b(com.tramini.plugin.a.b.c.a().b());
        return bVarB != null ? a(bVarB.p(), a.C0224a.c) : a.C0224a.c;
    }
}
