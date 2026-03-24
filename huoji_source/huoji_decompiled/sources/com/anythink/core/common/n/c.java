package com.anythink.core.common.n;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.i;
import com.anythink.core.common.f.q;
import com.anythink.core.common.h.a.c;
import com.anythink.core.common.h.k;
import com.anythink.core.common.h.o;
import com.anythink.core.common.m;
import com.anythink.core.common.p;
import com.anythink.core.common.w;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class c extends m<i> {
    private static volatile c g;

    private c(Context context) {
        super(context);
    }

    public static /* synthetic */ i a(c cVar, int i, au auVar, av avVar, long j) {
        h hVar;
        String strAh;
        com.anythink.core.d.f fVarA;
        List<String> listJ;
        List<com.anythink.core.common.f.b> listA;
        q qVarM;
        if (i == 13) {
            q qVarM2 = avVar != null ? avVar.M() : null;
            if (qVarM2 != null) {
                com.anythink.core.b.d.b.a(qVarM2, avVar);
            }
        }
        if (i == 4) {
            q qVarM3 = avVar != null ? avVar.M() : null;
            if (qVarM3 != null) {
                com.anythink.core.b.d.b.a(qVarM3, true, qVarM3.getSortPrice(), true);
            }
            if ((auVar instanceof h) && (fVarA = com.anythink.core.d.h.a(cVar.d).a((strAh = (hVar = (h) auVar).ah()))) != null && (listJ = fVarA.J()) != null && listJ.size() != 0 && (listA = com.anythink.core.common.a.a().a(strAh)) != null) {
                for (com.anythink.core.common.f.b bVar : listA) {
                    if (bVar != null && bVar.c() == 0) {
                        h hVarH = bVar.h();
                        av unitGroupInfo = bVar.d().getUnitGroupInfo();
                        if (listJ.contains(String.valueOf(unitGroupInfo.d())) && !TextUtils.equals(hVar.r(), hVarH.r()) && (qVarM = unitGroupInfo.M()) != null) {
                            com.anythink.core.b.d.b.a(qVarM, false, com.anythink.core.common.o.h.a(avVar), hVar.D() == 1);
                        }
                    }
                }
            }
        }
        if (i == 4) {
            if (auVar instanceof h) {
                if (avVar != null) {
                    h hVar2 = (h) auVar;
                    com.anythink.core.c.a.a().a(hVar2, avVar);
                    if (avVar.L() && avVar.ar() > 0.0d) {
                        hVar2.b(avVar.ar());
                    }
                }
                h hVar3 = (h) auVar;
                if (hVar3.g() == 2) {
                    w.a().a(auVar.ah());
                }
                com.anythink.core.common.d.a().a(auVar.ah(), auVar.ai(), hVar3.F());
            }
            com.anythink.core.c.b.a().a(auVar, avVar);
        }
        if (i == 6 && (auVar instanceof h)) {
            com.anythink.core.common.d.a().b(auVar.ah(), auVar.ai(), ((h) auVar).F());
        }
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        i iVar = new i();
        iVar.a = i;
        iVar.b = auVar;
        if (j <= 0) {
            j = System.currentTimeMillis();
        }
        iVar.c = j;
        com.anythink.core.common.q.a(n.a().f()).a(i, iVar, aVarB);
        if (4 == i && (auVar instanceof h)) {
            p.a();
            p.a((h) auVar);
        }
        if (a(i, auVar, aVarB)) {
            return null;
        }
        return iVar;
    }

    public static c a(Context context) {
        if (g == null) {
            synchronized (c.class) {
                if (g == null) {
                    g = new c(context);
                }
            }
        }
        return g;
    }

    private static void a(int i, av avVar) {
        if (i == 13) {
            q qVarM = avVar != null ? avVar.M() : null;
            if (qVarM != null) {
                com.anythink.core.b.d.b.a(qVarM, avVar);
            }
        }
    }

    private void a(h hVar, av avVar) {
        List<String> listJ;
        List<com.anythink.core.common.f.b> listA;
        q qVarM;
        String strAh = hVar.ah();
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(this.d).a(strAh);
        if (fVarA == null || (listJ = fVarA.J()) == null || listJ.size() == 0 || (listA = com.anythink.core.common.a.a().a(strAh)) == null) {
            return;
        }
        for (com.anythink.core.common.f.b bVar : listA) {
            if (bVar != null && bVar.c() == 0) {
                h hVarH = bVar.h();
                av unitGroupInfo = bVar.d().getUnitGroupInfo();
                if (listJ.contains(String.valueOf(unitGroupInfo.d())) && !TextUtils.equals(hVar.r(), hVarH.r()) && (qVarM = unitGroupInfo.M()) != null) {
                    com.anythink.core.b.d.b.a(qVarM, false, com.anythink.core.common.o.h.a(avVar), hVar.D() == 1);
                }
            }
        }
    }

    private static boolean a(int i, au auVar, com.anythink.core.d.a aVar) {
        if (n.a().v()) {
            return true;
        }
        String strAo = aVar.ao();
        if (!TextUtils.isEmpty(strAo) && (auVar instanceof h)) {
            try {
                JSONArray jSONArray = new JSONArray(strAo);
                int length = jSONArray.length();
                String strValueOf = String.valueOf(((h) auVar).P());
                for (int i2 = 0; i2 < length; i2++) {
                    if (TextUtils.equals(strValueOf, jSONArray.optString(i2))) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        Map<String, String> mapAm = aVar.am();
        if (mapAm != null && mapAm.containsKey(String.valueOf(i))) {
            String str = mapAm.get(String.valueOf(i));
            if (!TextUtils.isEmpty(str) && str.contains(auVar.aj())) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private i b(int i, au auVar, av avVar, long j) {
        List<String> listJ;
        List<com.anythink.core.common.f.b> listA;
        q qVarM;
        if (i == 13) {
            q qVarM2 = avVar != null ? avVar.M() : null;
            if (qVarM2 != null) {
                com.anythink.core.b.d.b.a(qVarM2, avVar);
            }
        }
        if (i == 4) {
            q qVarM3 = avVar != null ? avVar.M() : null;
            if (qVarM3 != null) {
                com.anythink.core.b.d.b.a(qVarM3, true, qVarM3.getSortPrice(), true);
            }
            if (auVar instanceof h) {
                h hVar = (h) auVar;
                String strAh = hVar.ah();
                com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(this.d).a(strAh);
                if (fVarA != null && (listJ = fVarA.J()) != null && listJ.size() != 0 && (listA = com.anythink.core.common.a.a().a(strAh)) != null) {
                    for (com.anythink.core.common.f.b bVar : listA) {
                        if (bVar != null && bVar.c() == 0) {
                            h hVarH = bVar.h();
                            av unitGroupInfo = bVar.d().getUnitGroupInfo();
                            if (listJ.contains(String.valueOf(unitGroupInfo.d())) && !TextUtils.equals(hVar.r(), hVarH.r()) && (qVarM = unitGroupInfo.M()) != null) {
                                com.anythink.core.b.d.b.a(qVarM, false, com.anythink.core.common.o.h.a(avVar), hVar.D() == 1);
                            }
                        }
                    }
                }
            }
        }
        if (i == 4) {
            if (auVar instanceof h) {
                if (avVar != null) {
                    h hVar2 = (h) auVar;
                    com.anythink.core.c.a.a().a(hVar2, avVar);
                    if (avVar.L() && avVar.ar() > 0.0d) {
                        hVar2.b(avVar.ar());
                    }
                }
                h hVar3 = (h) auVar;
                if (hVar3.g() == 2) {
                    w.a().a(auVar.ah());
                }
                com.anythink.core.common.d.a().a(auVar.ah(), auVar.ai(), hVar3.F());
            }
            com.anythink.core.c.b.a().a(auVar, avVar);
        }
        if (i == 6 && (auVar instanceof h)) {
            com.anythink.core.common.d.a().b(auVar.ah(), auVar.ai(), ((h) auVar).F());
        }
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        i iVar = new i();
        iVar.a = i;
        iVar.b = auVar;
        iVar.c = j > 0 ? j : System.currentTimeMillis();
        com.anythink.core.common.q.a(n.a().f()).a(i, iVar, aVarB);
        if (4 == i && (auVar instanceof h)) {
            p.a();
            p.a((h) auVar);
        }
        if (a(i, auVar, aVarB)) {
            return null;
        }
        return iVar;
    }

    private void b(int i, au auVar, av avVar) {
        h hVar;
        String strAh;
        com.anythink.core.d.f fVarA;
        List<String> listJ;
        List<com.anythink.core.common.f.b> listA;
        q qVarM;
        if (i == 4) {
            q qVarM2 = avVar != null ? avVar.M() : null;
            if (qVarM2 != null) {
                com.anythink.core.b.d.b.a(qVarM2, true, qVarM2.getSortPrice(), true);
            }
            if (!(auVar instanceof h) || (fVarA = com.anythink.core.d.h.a(this.d).a((strAh = (hVar = (h) auVar).ah()))) == null || (listJ = fVarA.J()) == null || listJ.size() == 0 || (listA = com.anythink.core.common.a.a().a(strAh)) == null) {
                return;
            }
            for (com.anythink.core.common.f.b bVar : listA) {
                if (bVar != null && bVar.c() == 0) {
                    h hVarH = bVar.h();
                    av unitGroupInfo = bVar.d().getUnitGroupInfo();
                    if (listJ.contains(String.valueOf(unitGroupInfo.d())) && !TextUtils.equals(hVar.r(), hVarH.r()) && (qVarM = unitGroupInfo.M()) != null) {
                        com.anythink.core.b.d.b.a(qVarM, false, com.anythink.core.common.o.h.a(avVar), hVar.D() == 1);
                    }
                }
            }
        }
    }

    public static /* synthetic */ boolean b(int i, au auVar) {
        Map<String, String> mapA;
        if (auVar instanceof h) {
            h hVar = (h) auVar;
            if (hVar.P() == 67) {
                return true;
            }
            if (hVar.P() != 0 && !TextUtils.isEmpty(auVar.aj()) && (mapA = com.anythink.core.d.b.a(n.a().f()).b(n.a().o()).a(i)) != null) {
                if (mapA.containsKey("0")) {
                    String str = mapA.get("0");
                    return !TextUtils.isEmpty(str) && str.contains(auVar.aj());
                }
                if (mapA.containsKey(String.valueOf(hVar.P()))) {
                    String str2 = mapA.get(String.valueOf(hVar.P()));
                    if (!TextUtils.isEmpty(str2) && str2.contains(auVar.aj())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static void c(int i, au auVar, av avVar) {
        if (i == 4) {
            if (auVar instanceof h) {
                if (avVar != null) {
                    h hVar = (h) auVar;
                    com.anythink.core.c.a.a().a(hVar, avVar);
                    if (avVar.L() && avVar.ar() > 0.0d) {
                        hVar.b(avVar.ar());
                    }
                }
                h hVar2 = (h) auVar;
                if (hVar2.g() == 2) {
                    w.a().a(auVar.ah());
                }
                com.anythink.core.common.d.a().a(auVar.ah(), auVar.ai(), hVar2.F());
            }
            com.anythink.core.c.b.a().a(auVar, avVar);
        }
    }

    private static boolean c(int i, au auVar) {
        Map<String, String> mapA;
        if (!(auVar instanceof h)) {
            return false;
        }
        h hVar = (h) auVar;
        if (hVar.P() == 67) {
            return true;
        }
        if (hVar.P() != 0 && !TextUtils.isEmpty(auVar.aj()) && (mapA = com.anythink.core.d.b.a(n.a().f()).b(n.a().o()).a(i)) != null) {
            if (mapA.containsKey("0")) {
                String str = mapA.get("0");
                return !TextUtils.isEmpty(str) && str.contains(auVar.aj());
            }
            if (mapA.containsKey(String.valueOf(hVar.P()))) {
                String str2 = mapA.get(String.valueOf(hVar.P()));
                if (!TextUtils.isEmpty(str2) && str2.contains(auVar.aj())) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void d(int i, au auVar) {
        if (4 == i && (auVar instanceof h)) {
            p.a();
            p.a((h) auVar);
        }
    }

    private static void e(int i, au auVar) {
        if (auVar instanceof h) {
            if (i == 4) {
                ((h) auVar).k();
            } else if (i == 6) {
                ((h) auVar).l();
            } else if (i == 10) {
                com.anythink.core.common.e.a(auVar.Y(), com.anythink.core.common.e.c, (h) auVar);
            } else if (i == 21) {
                n.a().K();
            }
            b.a().a(i, (h) auVar);
        }
    }

    public final void a(int i, au auVar) {
        a(i, auVar, null, -1L);
    }

    public final void a(int i, au auVar, av avVar) {
        a(i, auVar, avVar, -1L);
    }

    public final void a(final int i, final au auVar, final av avVar, final long j) {
        if (auVar == null) {
            return;
        }
        synchronized (auVar) {
            e(i, auVar);
        }
        this.e.post(new Runnable() { // from class: com.anythink.core.common.n.c.1
            @Override // java.lang.Runnable
            public final void run() {
                i iVarA = c.a(c.this, i, auVar, avVar, j);
                if (iVarA == null) {
                    return;
                }
                c.super.a(iVarA, c.b(i, auVar));
            }
        });
    }

    @Override // com.anythink.core.common.m
    public final void a(List<i> list) {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(n.a().f()).b(n.a().o());
        if (aVarB == null) {
            new o(this.d, 0, list).a(0, (k) null);
            return;
        }
        int iW = aVarB.w();
        if (iW == 1) {
            com.anythink.core.common.h.a.e eVar = new com.anythink.core.common.h.a.e(list);
            eVar.a(1, aVarB.v());
            eVar.a((c.a) null);
        } else {
            if (iW != 2) {
                new o(this.d, aVarB.w(), list).a(0, (k) null);
                return;
            }
            new o(this.d, aVarB.w(), list).a(0, (k) null);
            com.anythink.core.common.h.a.e eVar2 = new com.anythink.core.common.h.a.e(list);
            eVar2.a(2, aVarB.v());
            eVar2.a((c.a) null);
        }
    }
}
