package com.anythink.core.c;

import com.anythink.core.c.a.d;
import com.anythink.core.c.b.c;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.av;
import com.anythink.core.d.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static volatile b a;
    private final c b = new c();

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

    public final d a(String str, f fVar, com.anythink.core.d.d dVar) {
        return this.b.a(str, fVar.ao(), dVar);
    }

    public final JSONObject a(String str) {
        return this.b.a(str, 0);
    }

    public final JSONObject a(String str, int i) {
        return this.b.a(str, 4, i);
    }

    public final void a(au auVar, av avVar) {
        this.b.a(auVar, avVar);
    }

    public final void a(String str, String str2, int i, av avVar) {
        this.b.a(str, str2, i, avVar);
    }

    public final void b(String str) {
        this.b.b(str);
    }
}
