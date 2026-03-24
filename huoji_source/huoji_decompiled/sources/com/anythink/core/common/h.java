package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.common.b.h;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private static volatile h a;

    private h() {
    }

    public static h a() {
        if (a == null) {
            synchronized (h.class) {
                if (a == null) {
                    a = new h();
                }
            }
        }
        return a;
    }

    public static String a(com.anythink.core.d.f fVar) {
        String strE = fVar.E();
        return TextUtils.isEmpty(strE) ? "" : strE;
    }

    public static String a(com.anythink.core.d.f fVar, boolean z) {
        if (!com.anythink.core.common.e.c.a().b() && z) {
            String strI = fVar.I();
            fVar.az();
            if (!TextUtils.isEmpty(strI)) {
                return strI;
            }
        }
        com.anythink.core.common.f.t tVarT = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o()).t();
        String str = m() ? h.e.y : h.e.k;
        return tVarT != null ? a(tVarT.c(), str) : str;
    }

    private static String a(String str) {
        return str;
    }

    private static String a(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : str;
    }

    public static String b() {
        return com.anythink.core.common.e.c.a().a(m() ? h.e.t : h.e.f);
    }

    public static String b(com.anythink.core.d.f fVar) {
        return fVar.D();
    }

    public static String c() {
        return com.anythink.core.common.e.c.a().a(m() ? h.e.u : h.e.g);
    }

    public static String d() {
        return m() ? h.e.x : h.e.j;
    }

    public static String e() {
        return m() ? h.e.D : h.e.q;
    }

    public static String f() {
        com.anythink.core.common.f.t tVarT = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o()).t();
        String str = m() ? h.e.z : h.e.l;
        return tVarT != null ? a(tVarT.b(), str) : str;
    }

    public static String g() {
        com.anythink.core.common.f.t tVarT = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o()).t();
        String str = m() ? h.e.A : h.e.m;
        return tVarT != null ? a(tVarT.d(), str) : str;
    }

    public static String h() {
        com.anythink.core.common.f.t tVarT = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o()).t();
        String str = m() ? h.e.B : h.e.n;
        return tVarT != null ? a(tVarT.a(), str) : str;
    }

    public static String i() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
        String str = m() ? h.e.C : h.e.p;
        return aVarB != null ? a(aVarB.q(), str) : str;
    }

    public static String j() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
        String str = m() ? h.e.w : h.e.i;
        return aVarB != null ? a(aVarB.ab(), str) : str;
    }

    public static String k() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
        String str = m() ? h.e.v : h.e.h;
        return aVarB != null ? a(aVarB.ag(), str) : str;
    }

    public static String l() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
        return aVarB != null ? a(aVarB.X(), "https://img.anythinktech.com/gdpr/PrivacyPolicySetting.html") : "https://img.anythinktech.com/gdpr/PrivacyPolicySetting.html";
    }

    private static boolean m() {
        return com.anythink.core.common.b.n.a().D() && com.anythink.core.common.b.n.a().C();
    }
}
