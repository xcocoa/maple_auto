package com.tramini.plugin.a.c;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {
    private static c a;

    private c(Context context) {
        super(context);
    }

    public static c a(Context context) {
        if (a == null) {
            synchronized (c.class) {
                a = new c(context.getApplicationContext());
            }
        }
        return a;
    }

    private void h() {
        try {
            b().execSQL("DROP TABLE IF EXISTS 'il'");
            b().execSQL("DROP TABLE IF EXISTS 'il_all'");
        } catch (Throwable unused) {
        }
    }

    @Override // com.tramini.plugin.a.c.b
    public final String c() {
        return "tramini.db";
    }

    @Override // com.tramini.plugin.a.c.b
    public final int d() {
        return 2;
    }

    @Override // com.tramini.plugin.a.c.b
    public final void e() {
    }

    @Override // com.tramini.plugin.a.c.b
    public final void f() {
    }

    @Override // com.tramini.plugin.a.c.b
    public final void g() {
    }
}
