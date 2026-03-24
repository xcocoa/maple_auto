package com.tramini.plugin.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tramini.plugin.a.b.a;
import com.tramini.plugin.a.e.d;
import com.tramini.plugin.a.h.g;
import com.tramini.plugin.a.h.i;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static final String a = "c";
    private static volatile c b;
    private static b c;
    private Context d;
    private long f = -1;
    private boolean e = false;

    private c(Context context) {
        this.d = context;
    }

    public static c a(Context context) {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c(context);
                }
            }
        }
        return b;
    }

    private void a(com.tramini.plugin.a.e.b bVar) {
        if (this.e || TextUtils.isEmpty(com.tramini.plugin.a.h.c.a)) {
            return;
        }
        new d().a(0, bVar);
    }

    public static b b(Context context) {
        String strB = i.b(context, "tramini", a.d.a, "");
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        return b.a(com.tramini.plugin.a.h.c.a(strB));
    }

    public final void a(final com.tramini.plugin.a.e.c cVar) {
        com.tramini.plugin.a.e.b bVar = new com.tramini.plugin.a.e.b() { // from class: com.tramini.plugin.b.c.1
            @Override // com.tramini.plugin.a.e.b
            public final void a() {
                c.this.e = true;
            }

            @Override // com.tramini.plugin.a.e.b
            public final void a(Object obj) {
                c.this.e = false;
                if (obj != null) {
                    String string = obj.toString();
                    b bVarB = c.this.b();
                    if (bVarB != null) {
                        try {
                            JSONObject jSONObject = new JSONObject(com.tramini.plugin.a.h.c.a(string));
                            bVarB.a(jSONObject);
                            string = com.tramini.plugin.a.h.c.b(jSONObject.toString());
                        } catch (Throwable unused) {
                        }
                    }
                    i.a(c.this.d, "tramini", a.d.a, string);
                    c.this.f = System.currentTimeMillis();
                    Context context = c.this.d;
                    long j = c.this.f;
                    if (context != null) {
                        try {
                            SharedPreferences.Editor editorEdit = context.getSharedPreferences("tramini", 0).edit();
                            editorEdit.putLong(a.d.b, j);
                            editorEdit.apply();
                        } catch (Error | Exception unused2) {
                        }
                    }
                    b bVarA = b.a(com.tramini.plugin.a.h.c.a(string));
                    if (bVarA != null) {
                        b unused3 = c.c = bVarA;
                        com.tramini.plugin.a.g.a.a().a(g.a(bVarA), bVarA.c());
                        com.tramini.plugin.a.b.c.a().a(bVarA);
                        com.tramini.plugin.a.e.c cVar2 = cVar;
                        if (cVar2 != null) {
                            cVar2.a(bVarA);
                        }
                    }
                }
            }

            @Override // com.tramini.plugin.a.e.b
            public final void b() {
                c.this.e = false;
            }
        };
        if (this.e || TextUtils.isEmpty(com.tramini.plugin.a.h.c.a)) {
            return;
        }
        new d().a(0, bVar);
    }

    public final boolean a() {
        if (this.f <= 0) {
            this.f = i.a(this.d, "tramini", a.d.b, (Long) 0L).longValue();
        }
        b bVarB = b();
        if (bVarB != null) {
            return this.f + bVarB.d() <= System.currentTimeMillis();
        }
        return true;
    }

    public final synchronized b b() {
        if (c == null) {
            try {
                if (this.d == null) {
                    this.d = com.tramini.plugin.a.b.c.a().b();
                }
                c = b(this.d);
            } catch (Exception unused) {
            }
            com.tramini.plugin.a.b.c.a().a(c);
        }
        return c;
    }
}
