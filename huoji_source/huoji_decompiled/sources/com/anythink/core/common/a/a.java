package com.anythink.core.common.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ag;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.r;
import com.anythink.core.common.o.s;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a b;
    public ConcurrentHashMap<String, r> a;
    private com.anythink.core.common.c.k c;

    private a() {
        if (n.a().f() != null) {
            this.c = com.anythink.core.common.c.k.a(com.anythink.core.common.c.c.a(n.a().f()));
        }
        this.a = new ConcurrentHashMap<>(3);
    }

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    private static void b(q qVar) {
        if (TextUtils.isEmpty(qVar.i)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(qVar.i);
            com.anythink.core.common.f.j jVarA = e.a(qVar.token, jSONObject, qVar.d, true);
            if (jVarA == null) {
                qVar.i = "";
                return;
            }
            qVar.i = jSONObject.toString();
            jVarA.c(qVar.f);
            if (qVar.d == 67) {
                com.anythink.core.common.d.c.a(n.a().f()).a(jVarA.t(), jVarA.Z());
                com.anythink.core.common.d.b.a(n.a().f()).a(jVarA.u(), jVarA.Z());
            }
        } catch (Throwable unused) {
        }
    }

    public static void c(Context context, String str) {
        s.a(context, com.anythink.core.common.b.h.C, str + h.v.p, 1);
    }

    private static boolean d(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(h.v.p);
        return s.b(context, com.anythink.core.common.b.h.C, sb.toString(), 0) == 1;
    }

    public final ag a(Context context, String str) {
        if (this.c == null) {
            this.c = com.anythink.core.common.c.k.a(com.anythink.core.common.c.c.a(context.getApplicationContext()));
        }
        return this.c.c(str);
    }

    public final q a(String str, String str2) {
        r rVarB = this.a.get(str);
        if (rVarB == null) {
            rVarB = this.c.b(str);
            this.a.put(str, rVarB);
        }
        return rVarB.a(str2);
    }

    public final void a(Context context, String str, String str2, String str3) {
        if (this.c == null) {
            this.c = com.anythink.core.common.c.k.a(com.anythink.core.common.c.c.a(context.getApplicationContext()));
        }
        this.c.a(str, str2, str3);
    }

    public final void a(final q qVar) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.c == null) {
                    a.this.c = com.anythink.core.common.c.k.a(com.anythink.core.common.c.c.a(n.a().f()));
                }
                a.this.c.a(qVar);
            }
        }, 2, true);
    }

    public final void a(String str, q qVar) {
        if (this.c == null) {
            this.c = com.anythink.core.common.c.k.a(com.anythink.core.common.c.c.a(n.a().f()));
        }
        if (!TextUtils.isEmpty(qVar.i)) {
            try {
                JSONObject jSONObject = new JSONObject(qVar.i);
                com.anythink.core.common.f.j jVarA = e.a(qVar.token, jSONObject, qVar.d, true);
                if (jVarA == null) {
                    qVar.i = "";
                } else {
                    qVar.i = jSONObject.toString();
                    jVarA.c(qVar.f);
                    if (qVar.d == 67) {
                        com.anythink.core.common.d.c.a(n.a().f()).a(jVarA.t(), jVarA.Z());
                        com.anythink.core.common.d.b.a(n.a().f()).a(jVarA.u(), jVarA.Z());
                    }
                }
            } catch (Throwable unused) {
            }
        }
        this.c.a(str, qVar);
    }

    public final void b(final Context context, final String str) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.a.a.2
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.c == null) {
                    a.this.c = com.anythink.core.common.c.k.a(com.anythink.core.common.c.c.a(context.getApplicationContext()));
                }
                a.this.c.a(str);
            }
        }, 2, true);
        s.a(context, com.anythink.core.common.b.h.C, str + h.v.p);
    }
}
