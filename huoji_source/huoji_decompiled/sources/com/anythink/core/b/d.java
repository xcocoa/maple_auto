package com.anythink.core.b;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {
    public com.anythink.core.common.f.a f;
    public boolean g;
    private final String a = getClass().getSimpleName() + ":";
    public AtomicBoolean h = new AtomicBoolean(false);

    public d(com.anythink.core.common.f.a aVar) {
        this.f = aVar;
    }

    private static double a(com.anythink.core.d.f fVar, ATAdConst.CURRENCY currency) {
        if (fVar == null) {
            return 1.0d;
        }
        if (currency == ATAdConst.CURRENCY.RMB_CENT) {
            return (1.0d / fVar.C()) * 100.0d;
        }
        if (currency == ATAdConst.CURRENCY.RMB) {
            return 1.0d / fVar.C();
        }
        return 1.0d;
    }

    public static JSONArray a(List<av> list) {
        JSONArray jSONArray = new JSONArray();
        try {
            for (av avVar : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("network_firm_id", avVar.d());
                jSONObject.put("ad_source_id", avVar.u());
                jSONObject.put("content", avVar.h());
                if (!TextUtils.isEmpty(avVar.A())) {
                    jSONObject.put("error", avVar.A());
                }
                jSONArray.put(jSONObject);
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    public static void a(av avVar, String str, long j, int i) {
        avVar.a(j);
        avVar.a(0.0d);
        avVar.d(0.0d);
        avVar.g(i);
        avVar.c();
        if (TextUtils.isEmpty(str)) {
            avVar.h("bid error");
        } else {
            avVar.h(str);
        }
    }

    public static JSONArray b(List<JSONObject> list) {
        JSONArray jSONArray = new JSONArray();
        try {
            for (JSONObject jSONObject : list) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("network_firm_id", 67);
                if (jSONObject.has("unit_ids")) {
                    jSONObject2.put("unit_ids", jSONObject.get("unit_ids"));
                }
                jSONArray.put(jSONObject2);
            }
        } catch (Exception unused) {
        }
        return jSONArray;
    }

    public final double a(double d, ATAdConst.CURRENCY currency) {
        if (currency == null) {
            return d;
        }
        double dA = a(this.f.n.a(), currency);
        String.valueOf(d);
        String.valueOf(dA);
        double d2 = d * dA;
        String.valueOf(d2);
        return d2;
    }

    public final double a(double d, av avVar) {
        if (avVar.ac() == null) {
            return d;
        }
        com.anythink.core.d.f fVarA = this.f.n.a();
        if (avVar.ac() != ATAdConst.CURRENCY.RMB) {
            if (avVar.ac() != ATAdConst.CURRENCY.RMB_CENT) {
                return d;
            }
            d /= 100.0d;
        }
        return d * fVarA.C();
    }

    public final double a(av avVar) {
        if (avVar.ac() == null) {
            return 1.0d;
        }
        double dA = a(this.f.n.a(), avVar.ac());
        StringBuilder sb = new StringBuilder("generateNoticeCurrencyRate () >>> NetworkName: ");
        sb.append(avVar.e());
        sb.append("|| currenyRata(USD->RMB):");
        sb.append(dA);
        return dA;
    }

    public abstract void a();

    public final void a(int i, o oVar, double d, boolean z) {
        if (i != 28) {
            return;
        }
        double d2 = 0.95d;
        JSONObject jSONObjectS = this.f.n.a().s();
        if (jSONObjectS != null) {
            double dOptDouble = jSONObjectS.optDouble(String.valueOf(i));
            if (dOptDouble > 0.0d && dOptDouble <= 1.0d) {
                d2 = dOptDouble;
            }
        }
        double dMax = oVar.originPrice * d2;
        com.anythink.core.common.p.i iVar = this.f.y;
        List<av> listA = iVar != null ? iVar.a() : null;
        if (listA != null) {
            Iterator<av> it = listA.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                double dA = com.anythink.core.common.o.h.a(it.next());
                if (dA < oVar.originPrice) {
                    dMax = Math.max(dMax, dA);
                    break;
                }
            }
        }
        double dMax2 = Math.max(dMax, d);
        double dRandom = dMax2 + (Math.random() * (oVar.originPrice - dMax2));
        oVar.setPrice(dRandom);
        if (z) {
            oVar.setSortPrice(dRandom);
        }
    }

    public abstract void a(com.anythink.core.b.b.b bVar);

    public abstract void a(av avVar, o oVar, long j);

    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(av avVar, q qVar) {
        double sortPrice;
        double d;
        boolean z;
        double sortPrice2;
        if (qVar == null) {
            return;
        }
        qVar.b(this.f.d);
        q qVarA = f.a().a(this.f.e, avVar);
        if (qVarA != null) {
            boolean zA = qVarA.a();
            if (zA || qVar.getSortPrice() > qVarA.getSortPrice()) {
                sortPrice = qVar.getSortPrice();
                if (zA) {
                    com.anythink.core.b.d.b.a(qVarA, new y(1, avVar, this.f.s, sortPrice), true);
                } else {
                    sortPrice2 = sortPrice;
                    z = true;
                }
            } else {
                sortPrice2 = qVarA.getSortPrice();
                z = false;
            }
            d = sortPrice2;
            if (z) {
                if (qVar != null) {
                    try {
                        com.anythink.core.b.d.b.a(qVar, new y(2, avVar, this.f.s, d), false);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                avVar.a(qVarA, 1, 0, 1);
                return;
            }
            if (qVarA != null) {
                try {
                    com.anythink.core.b.d.b.a(qVarA, new y(2, avVar, this.f.s, d), true);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            avVar.a(qVar, 2, 0, 1);
            if (avVar.K() != 2) {
                f fVarA = f.a();
                String str = this.f.e;
                fVarA.a.put(str + qVar.k, qVar);
                if (avVar.Z()) {
                    com.anythink.core.common.a.a.a().a(str, qVar);
                    return;
                }
                return;
            }
            return;
        }
        sortPrice = qVar.getSortPrice();
        d = sortPrice;
        z = true;
        if (z) {
        }
    }

    public void a(boolean z) {
        this.g = z;
    }

    public final boolean a(av avVar, String str, int i) {
        return a(avVar, str, i, 0);
    }

    public final boolean a(av avVar, String str, int i, int i2) {
        q qVarA = f.a().a(this.f.e, avVar);
        if (qVarA != null && !qVarA.a()) {
            avVar.a(qVarA, 0, i, i2);
            avVar.h(str);
            return true;
        }
        if (qVarA != null) {
            try {
                com.anythink.core.common.f.h hVarV = this.f.s.V();
                hVarV.x(qVarA.c());
                com.anythink.core.b.d.b.a(qVarA, new y(1, avVar, hVarV), true);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }

    public final boolean c() {
        return this.h.get();
    }
}
