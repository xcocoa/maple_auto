package com.anythink.core.common.o;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.f.ao;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.ba;
import com.anythink.core.common.f.z;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static com.anythink.core.common.f.h a(ATBaseAdAdapter aTBaseAdAdapter, com.anythink.core.common.f.h hVar, av avVar) {
        aTBaseAdAdapter.setUnitGroupInfo(avVar);
        aTBaseAdAdapter.setRefresh(hVar.N() == 1);
        try {
            hVar.u = aTBaseAdAdapter.getInternalNetworkSDKVersion();
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(hVar.ae())) {
            hVar.u(aTBaseAdAdapter.getInternalNetworkName());
        }
        hVar.e(aTBaseAdAdapter.getClass().getName());
        aTBaseAdAdapter.setTrackingInfo(hVar);
        return hVar;
    }

    public static com.anythink.core.common.f.h a(String str, String str2, com.anythink.core.d.f fVar, int i, int i2, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        com.anythink.core.common.f.h hVar = new com.anythink.core.common.f.h();
        hVar.w(str2);
        hVar.x(str);
        hVar.x(i);
        hVar.r = 0;
        hVar.q = 2;
        hVar.s = 0;
        a(hVar, fVar);
        hVar.ac();
        hVar.L(com.anythink.core.common.b.n.a().i());
        hVar.M(i2);
        if (fVar != null) {
            hVar.J(fVar.h());
        } else {
            hVar.J(2);
        }
        a(map, hVar);
        hVar.a(cVar);
        hVar.c(ATAdxSetting.getInstance().isAdxNetworkMode(str2));
        return hVar;
    }

    public static void a(Context context, com.anythink.core.common.f.h hVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = Integer.parseInt(hVar.aj());
        int[] iArrA = com.anythink.core.a.a.a(context).a(Integer.parseInt(hVar.aj()));
        int i2 = iArrA[0];
        int i3 = iArrA[1];
        ao aoVarA = com.anythink.core.a.a.a(context).a(hVar.ah(), i);
        hVar.j(i2 + 1);
        hVar.k(i3 + 1);
        hVar.l((aoVarA != null ? aoVarA.c : 0) + 1);
        hVar.m((aoVarA != null ? aoVarA.d : 0) + 1);
        new StringBuilder("Check cap waite time:").append(System.currentTimeMillis() - jCurrentTimeMillis);
    }

    public static void a(com.anythink.core.common.f.h hVar, av avVar, int i, boolean z) {
        double dAg;
        com.anythink.core.common.f.q qVarM;
        z zVarB;
        String str;
        ao.a aVarA = z ? com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f()).a(hVar.ah(), avVar.u(), Integer.parseInt(hVar.aj())) : null;
        hVar.f(avVar.a());
        hVar.e(avVar.m());
        hVar.y(avVar.d());
        hVar.l(avVar.u());
        hVar.p(avVar.D());
        hVar.q(avVar.E());
        hVar.i(avVar.T());
        hVar.s(i);
        hVar.n(avVar.h());
        hVar.u(aVarA != null ? aVarA.e : 0);
        hVar.v(aVarA != null ? aVarA.d : 0);
        if (avVar.L()) {
            hVar.a(avVar.ap());
            hVar.f(avVar.y());
            dAg = avVar.ag();
        } else {
            dAg = 0.0d;
            hVar.f(0.0d);
        }
        hVar.c(dAg);
        if (avVar.k()) {
            if (avVar.U() != 2) {
                if (avVar.aa()) {
                    com.anythink.core.common.f.q qVarM2 = avVar.M();
                    if (qVarM2 != null) {
                        hVar.d(qVarM2.o * hVar.o());
                        str = qVarM2.p;
                    }
                } else {
                    hVar.d(avVar.y() * hVar.o());
                    str = "exact";
                }
                hVar.i(str);
            }
            hVar.a(avVar.ae() * hVar.o());
        } else {
            hVar.d(avVar.J());
            String strG = avVar.G();
            if (TextUtils.isEmpty(strG)) {
                strG = "publisher_defined";
            }
            hVar.i(strG);
        }
        hVar.r(avVar.j());
        hVar.f(avVar.z());
        hVar.an = avVar.v();
        hVar.ao = avVar.w();
        hVar.ap = avVar.x();
        hVar.n(avVar.F());
        hVar.h(avVar.U());
        try {
            JSONObject jSONObject = new JSONObject(avVar.h());
            JSONObject jSONObject2 = new JSONObject();
            if (35 == avVar.d()) {
                String strOptString = jSONObject.optString("my_oid");
                com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(hVar.ah());
                if (fVarA != null && (zVarB = fVarA.b(strOptString)) != null) {
                    jSONObject2.put("o_id", strOptString);
                    jSONObject2.put("c_id", zVarB.u());
                }
            }
            if ("0".equals(hVar.aj()) && (3 == avVar.m() || 7 == avVar.m())) {
                String strOptString2 = jSONObject.optString("layout_type");
                if (TextUtils.isEmpty(strOptString2) || strOptString2.equals("0")) {
                    strOptString2 = "2";
                }
                jSONObject2.put("tpl_type", strOptString2);
            }
            if (28 == avVar.d() && (qVarM = avVar.M()) != null) {
                jSONObject2.put("origin_price", qVarM.originPrice);
            }
            hVar.p(jSONObject2.toString());
        } catch (Throwable unused) {
        }
        com.anythink.core.common.f.q qVarM3 = avVar.M();
        hVar.c(qVarM3 != null ? qVarM3.g : "");
        hVar.A(avVar.X());
        hVar.u(avVar.e());
    }

    private static void a(com.anythink.core.common.f.h hVar, ba baVar) {
        if (hVar != null) {
            hVar.c(baVar.e());
            hVar.d(baVar.f());
        }
    }

    public static void a(com.anythink.core.common.f.h hVar, com.anythink.core.d.f fVar) {
        if (hVar == null || fVar == null) {
            return;
        }
        if (fVar.ah() == Integer.parseInt("1")) {
            hVar.o("1");
        } else {
            hVar.o("0");
        }
        hVar.N(fVar.Z());
        hVar.v(fVar.ae());
        hVar.z(fVar.ao());
        hVar.y(String.valueOf(fVar.ah()));
        hVar.j(fVar.V());
        hVar.k(fVar.U());
        hVar.e(fVar.K());
        hVar.d(fVar.L());
        hVar.c(fVar.T());
        hVar.a(fVar.W());
        hVar.d(fVar.X());
        hVar.c(fVar.x());
        hVar.d(fVar.y());
        hVar.s(fVar.q());
        JSONObject jSONObjectAI = fVar.aI();
        if (jSONObjectAI != null) {
            hVar.a(jSONObjectAI);
        }
        hVar.J(fVar.h());
        hVar.b(com.anythink.core.common.w.a().c(hVar.ah()) ? 2 : 1);
        hVar.H(fVar.aT());
    }

    public static void a(String str, com.anythink.core.common.f.h hVar) {
        com.anythink.core.d.f fVarA;
        if (hVar == null || (fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(str)) == null || !fVarA.aX()) {
            return;
        }
        a(str, fVarA, hVar);
    }

    public static void a(String str, com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar) {
        if (fVar == null || hVar == null) {
            return;
        }
        com.anythink.core.common.f.c cVar = new com.anythink.core.common.f.c();
        cVar.a(str, fVar.ao(), fVar.Z());
        hVar.a(cVar);
    }

    public static void a(Map<String, Object> map, com.anythink.core.common.f.h hVar) {
        if (map != null) {
            Object obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID);
            if (obj != null) {
                hVar.t(obj.toString());
            }
            Object obj2 = map.get(ATAdConst.KEY.CP_LOAD_MODE);
            if (obj2 instanceof Integer) {
                hVar.K(Integer.parseInt(obj2.toString()));
            }
            Object obj3 = map.get(com.anythink.core.common.e.b);
            if (obj3 != null) {
                hVar.a(obj3);
            }
        }
    }
}
