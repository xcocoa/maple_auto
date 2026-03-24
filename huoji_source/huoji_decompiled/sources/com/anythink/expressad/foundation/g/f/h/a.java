package com.anythink.expressad.foundation.g.f.h;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.expressad.foundation.g.f.d.c;
import com.anythink.expressad.foundation.g.f.d.d;
import com.anythink.expressad.foundation.g.f.d.g;
import com.anythink.expressad.foundation.g.f.e;
import com.anythink.expressad.foundation.g.f.i;
import com.anythink.expressad.foundation.g.f.l;
import com.anythink.expressad.foundation.g.f.m;
import com.anythink.expressad.foundation.h.p;
import com.anythink.expressad.out.k;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static final String b = "a";
    public Context a;

    public a(Context context) {
        this.a = context == null ? com.anythink.expressad.foundation.b.a.c().e() : context.getApplicationContext();
    }

    private void a(int i, String str, b bVar, e eVar) {
        String str2 = bVar.b().get("sign");
        if (str2 == null) {
            str2 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        bVar.a("ts", String.valueOf(jCurrentTimeMillis));
        bVar.a("st", p.a(str2 + jCurrentTimeMillis));
        b(i, str, bVar, new com.anythink.expressad.foundation.g.f.b(), eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(int i, String str, b bVar, l lVar, e eVar) {
        i gVar;
        if (bVar == null) {
            try {
                bVar = new b();
            } catch (Exception e) {
                e.getMessage();
            }
        }
        a(str, bVar);
        String str2 = bVar.b().get("sign");
        if (str2 == null) {
            str2 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        bVar.a("ts", String.valueOf(jCurrentTimeMillis));
        bVar.a("st", p.a(str2 + jCurrentTimeMillis));
        String str3 = str + "?" + bVar.toString();
        i iVar = null;
        if (i == 0) {
            gVar = new g(0, str3, null, eVar);
        } else {
            if (i != 1) {
                if (i == 2) {
                    gVar = new c(0, str3, null, eVar);
                }
                if (iVar == null) {
                    iVar.a(lVar);
                    m.a(iVar);
                    return;
                }
                return;
            }
            gVar = new d(0, str3, null, eVar);
        }
        iVar = gVar;
        if (iVar == null) {
        }
    }

    public static void a(File file, String str, e eVar) {
        m.a().a(file, str, (e<Void>) eVar);
    }

    private void b(int i, String str, b bVar, e eVar) {
        b(i, str, bVar, new com.anythink.expressad.foundation.g.f.b(), eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b(int i, String str, b bVar, l lVar, e eVar) {
        if (bVar == null) {
            try {
                bVar = new b();
            } catch (Exception e) {
                e.getMessage();
            }
        }
        a(str, bVar);
        i gVar = null;
        if (i == 0) {
            gVar = new g(1, str, bVar.toString(), eVar);
        } else {
            if (i != 1) {
                if (i == 2) {
                    gVar = new c(1, str, bVar.toString(), eVar);
                }
                if (gVar == null) {
                    gVar.a(lVar);
                    m.a(gVar);
                    return;
                }
                return;
            }
            gVar = new d(1, str, bVar.toString(), eVar);
        }
        gVar.a("Content-Type", "application/x-www-form-urlencoded");
        if (gVar == null) {
        }
    }

    public void a(String str, b bVar) {
        if (bVar != null) {
            bVar.a("open", com.anythink.expressad.foundation.g.a.cy);
            StringBuilder sb = new StringBuilder();
            com.anythink.expressad.foundation.g.f.a.a();
            sb.append(com.anythink.expressad.foundation.g.f.a.b());
            bVar.a("band_width", sb.toString());
            String str2 = bVar.b().get("unit_id");
            if (str2 != null) {
                String strA = k.a().a(str2, str);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                bVar.a("ch_info", strA);
            }
        }
    }

    public final void a(String str, b bVar, e eVar) {
        com.anythink.expressad.foundation.g.f.b bVar2 = new com.anythink.expressad.foundation.g.f.b();
        if (bVar == null) {
            try {
                bVar = new b();
            } catch (Exception e) {
                e.getMessage();
            }
        }
        a(str, bVar);
        String str2 = bVar.b().get("sign");
        if (str2 == null) {
            str2 = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        bVar.a("ts", String.valueOf(jCurrentTimeMillis));
        bVar.a("st", p.a(str2 + jCurrentTimeMillis));
        g gVar = new g(0, str + "?" + bVar.toString(), null, eVar);
        gVar.a((l) bVar2);
        m.a(gVar);
    }
}
