package com.octopus.ad.utils.a.b;

import android.app.Application;
import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class l {
    private static com.octopus.ad.utils.a.d a;
    private static com.octopus.ad.utils.a.d b;

    public static com.octopus.ad.utils.a.d a(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        com.octopus.ad.utils.a.d dVar = a;
        if (dVar != null) {
            return dVar;
        }
        com.octopus.ad.utils.a.d dVarC = c(context);
        a = dVarC;
        if (dVarC == null || !dVarC.a()) {
            com.octopus.ad.utils.a.d dVarD = d(context);
            a = dVarD;
            return dVarD;
        }
        com.octopus.ad.utils.a.f.a("Manufacturer interface has been found: " + a.getClass().getName());
        return a;
    }

    public static com.octopus.ad.utils.a.d b(Context context) {
        if (context != null && !(context instanceof Application)) {
            context = context.getApplicationContext();
        }
        com.octopus.ad.utils.a.d dVar = b;
        if (dVar != null) {
            return dVar;
        }
        com.octopus.ad.utils.a.d dVarE = e(context);
        b = dVarE;
        return dVarE;
    }

    private static com.octopus.ad.utils.a.d c(Context context) {
        if (com.octopus.ad.utils.a.g.k() || com.octopus.ad.utils.a.g.n()) {
            return new h(context);
        }
        if (com.octopus.ad.utils.a.g.j()) {
            return new i(context);
        }
        if (com.octopus.ad.utils.a.g.l()) {
            return new k(context);
        }
        if (com.octopus.ad.utils.a.g.e() || com.octopus.ad.utils.a.g.f() || com.octopus.ad.utils.a.g.g()) {
            return new q(context);
        }
        if (com.octopus.ad.utils.a.g.i()) {
            return new o(context);
        }
        if (com.octopus.ad.utils.a.g.d()) {
            return new p(context);
        }
        if (com.octopus.ad.utils.a.g.m()) {
            return new a(context);
        }
        if (com.octopus.ad.utils.a.g.a() || com.octopus.ad.utils.a.g.b()) {
            return new g(context);
        }
        if (com.octopus.ad.utils.a.g.c() || com.octopus.ad.utils.a.g.h()) {
            return new n(context);
        }
        if (com.octopus.ad.utils.a.g.a(context)) {
            return new b(context);
        }
        if (com.octopus.ad.utils.a.g.p()) {
            return new c(context);
        }
        if (com.octopus.ad.utils.a.g.o()) {
            return new e(context);
        }
        return null;
    }

    private static com.octopus.ad.utils.a.d d(Context context) {
        StringBuilder sb;
        Class cls;
        com.octopus.ad.utils.a.d jVar = new j(context);
        if (jVar.a()) {
            sb = new StringBuilder();
            sb.append("Mobile Security Alliance has been found: ");
            cls = j.class;
        } else {
            jVar = new f(context);
            if (!jVar.a()) {
                d dVar = new d();
                com.octopus.ad.utils.a.f.a("OAID/GAID was not supported: " + d.class.getName());
                return dVar;
            }
            sb = new StringBuilder();
            sb.append("Google Play Service has been found: ");
            cls = f.class;
        }
        sb.append(cls.getName());
        com.octopus.ad.utils.a.f.a(sb.toString());
        return jVar;
    }

    private static com.octopus.ad.utils.a.d e(Context context) {
        f fVar = new f(context);
        if (fVar.a()) {
            com.octopus.ad.utils.a.f.a("Google Play Service has been found: " + f.class.getName());
            return fVar;
        }
        d dVar = new d();
        com.octopus.ad.utils.a.f.a("GAID was not supported: " + d.class.getName());
        return dVar;
    }
}
