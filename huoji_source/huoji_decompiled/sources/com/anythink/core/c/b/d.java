package com.anythink.core.c.b;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.bc;
import com.anythink.core.common.f.q;
import com.anythink.core.common.j;
import com.anythink.core.common.o.s;
import com.anythink.core.d.h;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d implements b {
    private static final String b = "PlacementStatisticRecord";
    public a a;
    private final h c = h.a(n.a().f());
    private final e d;
    private final f e;
    private final ConcurrentHashMap<String, com.anythink.core.c.a.b> f;
    private final ConcurrentHashMap<String, Boolean> g;

    public d() {
        e eVarC = e.c();
        this.d = eVarC;
        this.e = new f(eVarC);
        this.f = new ConcurrentHashMap<>();
        this.g = new ConcurrentHashMap<>();
        this.a = new a(eVarC);
    }

    private double a(String str, JSONArray jSONArray) {
        com.anythink.core.c.a.b bVarC = c(str);
        if (!bVarC.e()) {
            bVarC.g();
            return bVarC.g();
        }
        if (jSONArray == null) {
            return -1.0d;
        }
        try {
            if (jSONArray.length() > 0) {
                return jSONArray.getJSONObject(0).getDouble(j.F);
            }
            return -1.0d;
        } catch (Exception e) {
            e.getMessage();
            return -1.0d;
        }
    }

    private void a(com.anythink.core.c.a.a aVar) {
        aVar.toString();
        String strJ = aVar.j();
        com.anythink.core.c.a.b bVarC = c(strJ);
        e eVar = this.d;
        if (eVar != null) {
            eVar.a(aVar);
        }
        if (aVar.k() == 4) {
            a(strJ, bVarC);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(String str, com.anythink.core.c.a.b bVar) {
        double[][] dArrF;
        if (bVar == null || (dArrF = bVar.f()) == null) {
            return;
        }
        if (bVar.e()) {
            e(str);
            return;
        }
        double[] dArrB = b(str, bVar);
        boolean z = false;
        double d = dArrB[0];
        boolean z3 = true;
        double d2 = dArrB[1];
        if (d == d2) {
            return;
        }
        double[] dArrA = d > 0.0d ? a(dArrF, d) : null;
        double[] dArrA2 = d2 > 0.0d ? a(dArrF, d2) : null;
        if (dArrA == null) {
            if (dArrA2 != null) {
                z = true;
            }
            z3 = z;
        } else if (dArrA2 != null) {
            if (dArrA[0] != dArrA2[0] || dArrA[1] != dArrA2[1]) {
            }
            z3 = z;
        }
        if (z3) {
            e(str);
        }
    }

    private static double[] a(double[][] dArr, double d) {
        for (double[] dArr2 : dArr) {
            if (dArr2.length == 2) {
                double d2 = dArr2[0];
                double d3 = dArr2[1];
                if (d >= d2 && d <= d3) {
                    return dArr2;
                }
            }
        }
        return null;
    }

    private static com.anythink.core.c.a.a b(au auVar, av avVar) {
        com.anythink.core.c.a.a aVar = new com.anythink.core.c.a.a();
        if (auVar != null) {
            aVar.a(auVar.ai());
            aVar.e(auVar.ah());
            if (auVar instanceof com.anythink.core.common.f.h) {
                aVar.a(((com.anythink.core.common.f.h) auVar).Q());
            }
        }
        if (avVar != null) {
            aVar.b(avVar.u());
            q qVarM = avVar.M();
            if (qVarM != null) {
                bc bcVar = qVarM.u;
                aVar.c(bcVar != null ? bcVar.e() : "");
            }
            aVar.a(avVar.ar() > 0.0d ? avVar.ar() : avVar.y());
            aVar.b(avVar.d());
        }
        aVar.d(n.a().q());
        aVar.a(System.currentTimeMillis());
        aVar.c(4);
        return aVar;
    }

    private static com.anythink.core.c.a.a b(String str, String str2, int i, av avVar) {
        com.anythink.core.c.a.a aVar = new com.anythink.core.c.a.a();
        if (avVar != null) {
            aVar.b(avVar.u());
            q qVarM = avVar.M();
            if (qVarM != null) {
                bc bcVar = qVarM.u;
                aVar.c(bcVar != null ? bcVar.e() : "");
            }
            aVar.a(avVar.y());
            aVar.b(avVar.d());
        }
        aVar.a(str);
        aVar.d(n.a().q());
        aVar.a(System.currentTimeMillis());
        aVar.e(str2);
        aVar.c(10);
        aVar.a(i);
        return aVar;
    }

    private JSONArray b(int i, String str, int i2) {
        List<com.anythink.core.c.a.a> listA = a(i, str, i2);
        if (listA == null || listA.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<com.anythink.core.c.a.a> it = listA.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().i());
        }
        return jSONArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean b(String str, int i) {
        com.anythink.core.c.a.b bVarC = c(str);
        boolean z = bVarC.c() || bVarC.h();
        Boolean bool = this.g.get(str);
        if (bool != null) {
            boolean zEquals = Boolean.TRUE.equals(bool);
            if (!z && zEquals) {
                d(str);
            }
        } else if (!z) {
        }
        this.g.put(str, Boolean.valueOf(z));
        return i == 4 ? bVarC.c() : z;
    }

    private double[] b(String str, com.anythink.core.c.a.b bVar) {
        if (bVar == null || bVar.e()) {
            return new double[]{-1.0d, -1.0d};
        }
        double dA = this.e.a(bVar.d(), str);
        double dG = bVar.g();
        if (dG != dA) {
            bVar.a(dA);
            this.f.put(str, bVar);
            s.a(n.a().f(), com.anythink.core.common.b.h.u, str, String.valueOf(dA));
        }
        return new double[]{dA, dG};
    }

    private com.anythink.core.c.a.b c(String str) {
        com.anythink.core.d.f fVarB = this.c.b(str);
        com.anythink.core.c.a.b bVar = this.f.get(str);
        if (bVar == null) {
            bVar = new com.anythink.core.c.a.b();
            String strB = s.b(n.a().f(), com.anythink.core.common.b.h.u, str, "");
            if (!TextUtils.isEmpty(strB)) {
                try {
                    bVar.a(Double.parseDouble(strB));
                } catch (Exception e) {
                    e.getMessage();
                }
            }
            this.f.put(str, bVar);
        }
        if (fVarB != null) {
            bVar.a(fVarB.aN());
            bVar.a(fVarB.aQ());
            bVar.b(fVarB.aP());
            bVar.c(fVarB.aS());
            bVar.d(fVarB.b() != null ? 1 : 2);
        }
        return bVar;
    }

    private void d(final String str) {
        com.anythink.core.common.o.b.b.a().b(new Runnable() { // from class: com.anythink.core.c.b.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.this.f.remove(str);
                d.this.d.a(str);
            }
        });
    }

    private void e(String str) {
        n nVarA = n.a();
        this.c.a(this.c.e(str), nVarA.o(), nVarA.p(), str, null, null, 2, true);
    }

    @Override // com.anythink.core.c.b.b
    public final com.anythink.core.c.a.d a(String str, int i, com.anythink.core.d.d dVar) {
        a aVar = this.a;
        com.anythink.core.c.a.c cVar = aVar.a.get(str);
        int i2 = dVar.a() == 1 ? i : -1;
        if (cVar == null || !cVar.b(dVar) || cVar.a(i2) == null) {
            StringBuilder sb = new StringBuilder("getRecentHighestLoadedPrice::startegy has been changed::segmentId:");
            sb.append(i2);
            sb.append(":::start to query SQL.");
            cVar = new com.anythink.core.c.a.c();
            cVar.a(dVar);
            int iC = dVar.c();
            long jCurrentTimeMillis = System.currentTimeMillis() - (((long) (((dVar.b() * 24) * 60) * 60)) * 1000);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jCurrentTimeMillis);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            cVar.a(i2, aVar.b.a(str, i2, calendar.getTimeInMillis(), iC));
            aVar.a.put(str, cVar);
        } else {
            cVar.c(i);
        }
        return cVar.b(i2);
    }

    @Override // com.anythink.core.c.b.b
    public final List<com.anythink.core.c.a.a> a(int i, String str, int i2) {
        e eVar = this.d;
        if (eVar != null) {
            return eVar.a(i, str, i2);
        }
        return null;
    }

    @Override // com.anythink.core.c.b.b
    public final JSONObject a(String str) {
        return a(str, 0);
    }

    @Override // com.anythink.core.c.b.b
    public final JSONObject a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.anythink.core.c.a.b bVarC = c(str);
        if (bVarC.b()) {
            return a(str, i, bVarC.a());
        }
        return null;
    }

    @Override // com.anythink.core.c.b.b
    public final JSONObject a(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (i == 4) {
                JSONArray jSONArrayB = b(4, str, i2);
                if (jSONArrayB != null) {
                    jSONObject.put("imp", jSONArrayB);
                }
            } else if (i == 10) {
                JSONArray jSONArrayB2 = b(10, str, i2);
                if (jSONArrayB2 != null) {
                    jSONObject.put("fill", jSONArrayB2);
                }
            } else {
                JSONArray jSONArrayB3 = b(10, str, i2);
                if (jSONArrayB3 != null) {
                    jSONObject.put("fill", jSONArrayB3);
                }
                JSONArray jSONArrayB4 = b(4, str, i2);
                if (jSONArrayB4 != null) {
                    jSONObject.put("imp", jSONArrayB4);
                }
                jSONObject.put("def_ecpm", String.valueOf(a(str, jSONArrayB4)));
            }
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    @Override // com.anythink.core.c.b.b
    public final void a(au auVar, av avVar) {
        if (auVar == null || avVar == null) {
            return;
        }
        String strAh = auVar.ah();
        if (!TextUtils.isEmpty(strAh) && b(strAh, 4)) {
            com.anythink.core.c.a.a aVar = new com.anythink.core.c.a.a();
            if (auVar != null) {
                aVar.a(auVar.ai());
                aVar.e(auVar.ah());
                if (auVar instanceof com.anythink.core.common.f.h) {
                    aVar.a(((com.anythink.core.common.f.h) auVar).Q());
                }
            }
            if (avVar != null) {
                aVar.b(avVar.u());
                q qVarM = avVar.M();
                if (qVarM != null) {
                    bc bcVar = qVarM.u;
                    aVar.c(bcVar != null ? bcVar.e() : "");
                }
                aVar.a(avVar.ar() > 0.0d ? avVar.ar() : avVar.y());
                aVar.b(avVar.d());
            }
            aVar.d(n.a().q());
            aVar.a(System.currentTimeMillis());
            aVar.c(4);
            a(aVar);
        }
    }

    @Override // com.anythink.core.c.b.b
    public final void a(String str, String str2, int i, av avVar) {
        if (!TextUtils.isEmpty(str) && b(str, 10)) {
            com.anythink.core.c.a.a aVar = new com.anythink.core.c.a.a();
            if (avVar != null) {
                aVar.b(avVar.u());
                q qVarM = avVar.M();
                if (qVarM != null) {
                    bc bcVar = qVarM.u;
                    aVar.c(bcVar != null ? bcVar.e() : "");
                }
                aVar.a(avVar.y());
                aVar.b(avVar.d());
            }
            aVar.a(str2);
            aVar.d(n.a().q());
            aVar.a(System.currentTimeMillis());
            aVar.e(str);
            aVar.c(10);
            aVar.a(i);
            if (avVar != null) {
                com.anythink.core.c.a.c cVar = this.a.a.get(str);
                StringBuilder sb = new StringBuilder("insertOrUpdateLoadedUnitGroupInfo::placementId:");
                sb.append(str);
                sb.append("segmentId:");
                sb.append(aVar.a());
                sb.append(":::");
                sb.append(aVar);
                if (cVar != null) {
                    cVar.a(aVar);
                }
            }
            a(aVar);
        }
    }

    @Override // com.anythink.core.c.b.b
    public final void b(String str) {
        b(str, c(str));
    }
}
