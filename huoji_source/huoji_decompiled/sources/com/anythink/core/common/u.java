package com.anythink.core.common;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.common.f.an;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class u {
    private static volatile u a;
    private ConcurrentHashMap<String, an> b = new ConcurrentHashMap<>(4);

    private u() {
    }

    public static u a() {
        if (a == null) {
            synchronized (u.class) {
                if (a == null) {
                    a = new u();
                }
            }
        }
        return a;
    }

    private synchronized void a(String str, String str2, Object obj) {
        g(str).a(str2, obj);
    }

    private synchronized an g(String str) {
        an anVar;
        anVar = this.b.get(str);
        if (anVar == null) {
            anVar = new an();
            this.b.put(str, anVar);
        }
        return anVar;
    }

    public final f a(String str, String str2) {
        return g(str).a(str2);
    }

    public final Object a(String str) {
        return g(str).a();
    }

    public final String a(String str, int i) {
        return g(str).c(String.valueOf(i));
    }

    public final void a(String str, int i, String str2) {
        g(str).b(String.valueOf(i), str2);
    }

    public final void a(String str, ATAdInfo aTAdInfo) {
        g(str).a(aTAdInfo);
    }

    public final void a(String str, String str2, f fVar) {
        g(str).a(str2, fVar);
    }

    public final void a(String str, String str2, String str3) {
        g(str).a(str2, str3);
    }

    public final synchronized void a(String str, Map<String, Object> map) {
        ConcurrentHashMap concurrentHashMap = null;
        if (map != null) {
            try {
                concurrentHashMap = new ConcurrentHashMap(map);
            } catch (Throwable unused) {
            }
        }
        g(str).a(concurrentHashMap);
    }

    public final void a(String str, boolean z) {
        g(str).a(z);
    }

    public final void a(String str, Object[] objArr) {
        g(str).a(objArr);
    }

    public final String b(String str, String str2) {
        return g(str).b(str2);
    }

    public final synchronized Map<String, Object> b(String str) {
        HashMap map;
        map = new HashMap(2);
        Map<String, Object> mapB = g(str).b();
        if (mapB != null) {
            map.putAll(mapB);
        }
        return map;
    }

    public final com.anythink.core.common.f.e c(String str) {
        return g(str).c();
    }

    public final void d(String str) {
        g(str).a((ATAdInfo) null);
    }

    public final boolean e(String str) {
        return g(str).d();
    }

    public final String f(String str) {
        return g(str).e();
    }
}
