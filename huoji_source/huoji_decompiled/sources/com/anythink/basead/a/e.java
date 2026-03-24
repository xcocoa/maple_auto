package com.anythink.basead.a;

import com.anythink.basead.a.b.b;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ab;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static final String a = "e";
    private static volatile e b;

    private e() {
    }

    public static e a() {
        if (b == null) {
            synchronized (e.class) {
                if (b == null) {
                    b = new e();
                }
            }
        }
        return b;
    }

    public static String a(int i, String str) {
        return com.anythink.core.common.res.d.a(n.a().f()).c(i, com.anythink.core.common.o.g.a(str));
    }

    public static void a(String str, l lVar, m mVar, b.InterfaceC0049b interfaceC0049b) {
        a(str, false, lVar, mVar, interfaceC0049b);
    }

    private static void a(String str, List<z> list, ab abVar) {
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m mVar = new m();
            mVar.n = abVar;
            a(str, true, list.get(i), mVar, null);
        }
    }

    public static void a(String str, boolean z, l lVar, m mVar, b.InterfaceC0049b interfaceC0049b) {
        new com.anythink.basead.a.b.b(str, z, lVar, mVar).a(interfaceC0049b);
    }

    public static boolean a(z zVar, int i, com.anythink.core.common.f.n nVar) {
        return com.anythink.basead.a.b.c.a(zVar, i, nVar);
    }

    public static boolean a(z zVar, m mVar) {
        return com.anythink.basead.a.b.c.a(zVar, mVar);
    }

    public static boolean a(String str, InputStream inputStream) {
        if (str == null || inputStream == null) {
            return false;
        }
        return com.anythink.core.common.res.d.a(n.a().f()).a(1, com.anythink.core.common.o.g.a(str), inputStream);
    }

    private static FileInputStream b(int i, String str) {
        return com.anythink.core.common.res.d.a(n.a().f()).a(i, com.anythink.core.common.o.g.a(str));
    }
}
