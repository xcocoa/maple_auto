package com.anythink.expressad.foundation.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.g.f.m;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.r;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String g = "SDKController";
    private static volatile b h;
    private Context i;
    private String m;
    private int n;
    private String j = "";
    private String k = "";
    private boolean l = false;
    public final int a = 1;
    public final int b = 2;
    public final int c = 3;
    public final int d = 4;
    public final int e = 5;
    public final int f = 6;

    private b() {
    }

    public static b a() {
        if (h == null) {
            synchronized (b.class) {
                if (h == null) {
                    h = new b();
                }
            }
        }
        return h;
    }

    private static void a(Context context) {
        String string;
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(h.A, 0);
            String str = "";
            if (sharedPreferences != null) {
                String string2 = sharedPreferences.getString(h.v.n, "");
                string = sharedPreferences.getString(h.v.o, "");
                str = string2;
            } else {
                string = "";
            }
            if (TextUtils.isEmpty(com.anythink.expressad.foundation.g.a.co) && TextUtils.isEmpty(com.anythink.expressad.foundation.g.a.cp)) {
                com.anythink.expressad.foundation.g.a.co = str;
                com.anythink.expressad.foundation.g.a.cp = string;
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private static String b() {
        return com.anythink.expressad.out.b.a;
    }

    private void c() {
        a.c().b(this.j);
        a.c().c(this.k);
        a.c().d();
        a(this.i.getApplicationContext());
        r.a(this.i);
        this.l = true;
    }

    private static void d() {
    }

    private void e() {
        a.c().b(this.j);
        a.c().c(this.k);
        a.c().d();
    }

    public final void a(Map map, final Context context) {
        if (context != null) {
            this.i = context.getApplicationContext();
            a.c().a(this.i);
            try {
                m.a(this.i);
            } catch (Exception unused) {
            }
            n.a().a(new Runnable() { // from class: com.anythink.expressad.foundation.b.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    k.i(context);
                }
            }, 300L);
            if (map != null) {
                if (map.containsKey(com.anythink.expressad.a.d)) {
                    this.j = (String) map.get(com.anythink.expressad.a.d);
                }
                if (map.containsKey(com.anythink.expressad.a.e)) {
                    this.k = (String) map.get(com.anythink.expressad.a.e);
                }
                a.c().b(this.j);
                a.c().c(this.k);
                a.c().d();
                a(this.i.getApplicationContext());
                r.a(this.i);
                this.l = true;
            }
        }
    }
}
