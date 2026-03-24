package com.anythink.core.common;

import com.anythink.core.common.b.h;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class l {
    private static volatile l c;
    public com.anythink.core.common.c.h a;
    private final String b = getClass().getSimpleName();
    private ConcurrentHashMap<String, String> d = new ConcurrentHashMap<>(3);

    public l() {
        com.anythink.core.common.c.h hVarA = com.anythink.core.common.c.h.a(com.anythink.core.common.c.c.a(com.anythink.core.common.b.n.a().f()));
        this.a = hVarA;
        List<com.anythink.core.common.f.w> listD = hVarA.d();
        if (listD != null) {
            Iterator<com.anythink.core.common.f.w> it = listD.iterator();
            while (it.hasNext()) {
                this.d.put(it.next().a(), "1");
            }
        }
    }

    public static l a() {
        if (c == null) {
            synchronized (l.class) {
                if (c == null) {
                    c = new l();
                }
            }
        }
        return c;
    }

    public static int b() {
        return com.anythink.core.common.o.s.b(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, h.v.q, 0);
    }

    public final void a(String str) {
        Map<String, Object> mapC = com.anythink.core.common.o.i.c(com.anythink.core.common.o.d.c(str));
        if (mapC.size() == 0) {
            com.anythink.core.common.o.s.a(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, h.v.q, 0);
            return;
        }
        for (Map.Entry<String, Object> entry : mapC.entrySet()) {
            try {
                if (com.anythink.core.common.o.i.a(com.anythink.core.common.b.n.a().f(), entry.getValue().toString())) {
                    this.d.put(entry.getKey(), "1");
                    this.a.a(entry.getKey());
                }
            } catch (Throwable unused) {
            }
        }
        com.anythink.core.common.o.s.a(com.anythink.core.common.b.n.a().f(), com.anythink.core.common.b.h.p, h.v.q, b() + mapC.size());
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.l.1
            @Override // java.lang.Runnable
            public final void run() {
                l.this.a.c();
            }
        }, 13, true);
    }

    public final JSONArray c() {
        Iterator<Map.Entry<String, String>> it = this.d.entrySet().iterator();
        JSONArray jSONArray = new JSONArray();
        while (it.hasNext()) {
            try {
                jSONArray.put(Long.parseLong(it.next().getKey()));
            } catch (Throwable unused) {
            }
        }
        return jSONArray;
    }
}
