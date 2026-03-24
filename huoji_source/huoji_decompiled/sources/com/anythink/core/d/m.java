package com.anythink.core.d;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATCustomAdapterConfig;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.d.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    private static av a(int i, int i2, JSONObject jSONObject) {
        ATCustomAdapterConfig aTCustomAdapterConfigB;
        JSONArray jSONArrayOptJSONArray;
        int i3 = (i2 == 0 || i2 == 4 || i2 == 8) ? 0 : 1;
        av avVar = new av(i);
        avVar.e(i2);
        avVar.d(i3);
        if (jSONObject.isNull(com.anythink.core.common.j.B)) {
            avVar.c("");
        } else {
            avVar.c(jSONObject.optString(com.anythink.core.common.j.B));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.y)) {
            avVar.b(-1);
        } else {
            avVar.b(jSONObject.optInt(com.anythink.core.common.j.y));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.z)) {
            avVar.c(-1);
        } else {
            avVar.c(jSONObject.optInt(com.anythink.core.common.j.z));
        }
        if (jSONObject.isNull("content")) {
            avVar.b("");
        } else {
            avVar.b(jSONObject.optString("content"));
        }
        if (jSONObject.isNull("nw_firm_id")) {
            avVar.a(-1);
        } else {
            avVar.a(jSONObject.optInt("nw_firm_id"));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.x)) {
            avVar.a("");
        } else {
            avVar.a(jSONObject.optString(com.anythink.core.common.j.x));
        }
        avVar.d(jSONObject.isNull(com.anythink.core.common.j.C) ? "unknown" : jSONObject.optString(com.anythink.core.common.j.C));
        if (jSONObject.isNull(com.anythink.core.common.j.v)) {
            avVar.c(0L);
        } else {
            avVar.c(jSONObject.optInt(com.anythink.core.common.j.v));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.t)) {
            avVar.d(0L);
        } else {
            avVar.d(jSONObject.optInt(com.anythink.core.common.j.t));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.u)) {
            avVar.h(1);
        } else {
            avVar.h(jSONObject.optInt(com.anythink.core.common.j.u));
        }
        if (jSONObject.isNull("pacing")) {
            avVar.e(-1L);
        } else {
            avVar.e(jSONObject.optLong("pacing"));
        }
        if (jSONObject.isNull("unit_id")) {
            avVar.e("");
        } else {
            avVar.e(jSONObject.optString("unit_id"));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.F)) {
            avVar.a(0.0d);
        } else {
            avVar.a(jSONObject.optDouble(com.anythink.core.common.j.F, 0.0d));
        }
        avVar.f(jSONObject.isNull(com.anythink.core.common.j.G) ? com.anythink.expressad.exoplayer.i.a.f : jSONObject.optInt(com.anythink.core.common.j.G));
        if (jSONObject.isNull(com.anythink.core.common.j.I)) {
            avVar.f("");
        } else {
            avVar.f(jSONObject.optString(com.anythink.core.common.j.I));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.J)) {
            avVar.i(0);
        } else {
            avVar.i(jSONObject.optInt(com.anythink.core.common.j.J));
        }
        avVar.j(jSONObject.isNull(com.anythink.core.common.j.K) ? 3000 : jSONObject.optInt(com.anythink.core.common.j.K));
        if (jSONObject.isNull("payload")) {
            avVar.g("");
        } else {
            avVar.g(jSONObject.optString("payload"));
        }
        if (jSONObject.isNull("error")) {
            avVar.h("");
        } else {
            avVar.h(jSONObject.optString("error"));
        }
        avVar.g(jSONObject.isNull(com.anythink.core.common.j.L) ? 1800000L : jSONObject.optLong(com.anythink.core.common.j.L));
        if (jSONObject.isNull(com.anythink.core.common.j.M)) {
            avVar.h(-1L);
        } else {
            avVar.h(jSONObject.optLong(com.anythink.core.common.j.M));
        }
        avVar.b(jSONObject.isNull(com.anythink.core.common.j.N) ? 1800000L : jSONObject.optLong(com.anythink.core.common.j.N));
        avVar.g(jSONObject.isNull(com.anythink.core.common.j.ak) ? i3 ^ 1 : jSONObject.optInt(com.anythink.core.common.j.ak));
        if (jSONObject.isNull(com.anythink.core.common.j.O)) {
            avVar.k(1);
        } else {
            avVar.k(jSONObject.optInt(com.anythink.core.common.j.O));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.P)) {
            avVar.l(1);
        } else {
            avVar.l(jSONObject.optInt(com.anythink.core.common.j.P));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.Q)) {
            avVar.m(-1);
        } else {
            avVar.m(jSONObject.optInt(com.anythink.core.common.j.Q));
        }
        avVar.i(jSONObject.isNull(com.anythink.core.common.j.R) ? "publisher_defined" : jSONObject.optString(com.anythink.core.common.j.R));
        if (jSONObject.isNull(com.anythink.core.common.j.S)) {
            avVar.i(0L);
        } else {
            avVar.i(jSONObject.optLong(com.anythink.core.common.j.S));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.T)) {
            avVar.j(0L);
        } else {
            avVar.j(jSONObject.optLong(com.anythink.core.common.j.T));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.U)) {
            avVar.b(0.0d);
        } else {
            avVar.b(jSONObject.optDouble(com.anythink.core.common.j.U, 0.0d));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.V)) {
            avVar.n(1);
        } else {
            avVar.n(jSONObject.optInt(com.anythink.core.common.j.V));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.W)) {
            avVar.o(1);
        } else {
            avVar.o(jSONObject.optInt(com.anythink.core.common.j.W));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.X)) {
            avVar.p(2);
        } else {
            avVar.p(jSONObject.optInt(com.anythink.core.common.j.X));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.Y)) {
            avVar.f(1);
        } else {
            avVar.f(jSONObject.optInt(com.anythink.core.common.j.Y));
        }
        if (jSONObject.isNull("s2s_sw")) {
            avVar.q(2);
        } else {
            avVar.q(jSONObject.optInt("s2s_sw"));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.Z)) {
            avVar.s(2);
        } else {
            avVar.s(jSONObject.optInt(com.anythink.core.common.j.Z));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.aa)) {
            avVar.r(0);
        } else {
            avVar.r(jSONObject.optInt(com.anythink.core.common.j.aa));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.ac)) {
            avVar.t(1);
        } else {
            avVar.t(jSONObject.optInt(com.anythink.core.common.j.ac));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.af)) {
            avVar.j("");
        } else {
            avVar.j(jSONObject.optString(com.anythink.core.common.j.af));
        }
        if (i2 == 7) {
            com.anythink.core.common.d.c.a(n.a().f()).a(avVar.u(), avVar.V());
        }
        if (jSONObject.isNull(com.anythink.core.common.j.ad)) {
            avVar.u(2);
        } else {
            avVar.u(jSONObject.optInt(com.anythink.core.common.j.ad));
        }
        if (jSONObject.isNull("ad_type")) {
            avVar.v(-1);
        } else {
            avVar.v(jSONObject.optInt("ad_type", -1));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.ag)) {
            avVar.w(-1);
        } else {
            avVar.w(jSONObject.optInt(com.anythink.core.common.j.ag, -1));
        }
        avVar.a((avVar.m() == 2 && avVar.d() == 22) ? ATAdConst.CURRENCY.RMB_CENT : ATAdConst.CURRENCY.USD);
        if (jSONObject.isNull(com.anythink.core.common.j.ah)) {
            avVar.y(0);
        } else {
            avVar.y(jSONObject.optInt(com.anythink.core.common.j.ah, 0));
        }
        if (jSONObject.isNull("bid_floor")) {
            avVar.c(0.0d);
        } else {
            avVar.c(jSONObject.optDouble("bid_floor", 0.0d));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.an)) {
            avVar.z(-1);
        } else {
            avVar.z(jSONObject.optInt(com.anythink.core.common.j.an, -1));
        }
        boolean zIsNull = jSONObject.isNull(com.anythink.core.common.j.ao);
        double dY = avVar.y();
        if (!zIsNull) {
            dY = jSONObject.optDouble(com.anythink.core.common.j.ao, dY);
        }
        avVar.d(dY);
        avVar.k(jSONObject.isNull(com.anythink.core.common.j.ap) ? "CNY" : jSONObject.optString(com.anythink.core.common.j.ap, "CNY"));
        if (jSONObject.isNull(com.anythink.core.common.j.aq)) {
            avVar.A(2);
        } else {
            avVar.A(jSONObject.optInt(com.anythink.core.common.j.aq, 2));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.ar)) {
            avVar.D(1);
        } else {
            avVar.D(jSONObject.optInt(com.anythink.core.common.j.ar));
        }
        if (jSONObject.isNull(com.anythink.core.common.j.as)) {
            avVar.E(2);
        } else {
            avVar.E(jSONObject.optInt(com.anythink.core.common.j.as, 2));
        }
        avVar.l(!jSONObject.has(com.anythink.core.common.j.at) ? "TopOn" : jSONObject.optString(com.anythink.core.common.j.at));
        avVar.l(jSONObject.optLong(com.anythink.core.common.j.au, mobi.oneway.export.g.i.f));
        int[] iArr = null;
        if (!jSONObject.isNull(f.a.ar) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(f.a.ar)) != null && jSONArrayOptJSONArray.length() > 0) {
            try {
                iArr = new int[jSONArrayOptJSONArray.length()];
                for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                    iArr[i4] = jSONArrayOptJSONArray.getInt(i4);
                }
            } catch (Exception unused) {
            }
        }
        avVar.a(iArr);
        avVar.f(jSONObject.optDouble(com.anythink.core.common.j.av, 0.0d) / 100.0d);
        avVar.g(jSONObject.optDouble(com.anythink.core.common.j.aw, 0.0d) / 100.0d);
        avVar.h(jSONObject.optDouble(com.anythink.core.common.j.ax, 0.0d) / 100.0d);
        avVar.i(jSONObject.optDouble(com.anythink.core.common.j.ay, 0.0d) / 100.0d);
        avVar.F(jSONObject.optInt(com.anythink.core.common.j.az, 1));
        avVar.G(jSONObject.optInt(com.anythink.core.common.j.aA, 1));
        if (!jSONObject.isNull(com.anythink.core.common.j.aB)) {
            avVar.a(jSONObject.optJSONArray(com.anythink.core.common.j.aB));
        }
        if (!jSONObject.isNull(com.anythink.core.common.j.aC)) {
            avVar.H(jSONObject.optInt(com.anythink.core.common.j.aC));
        }
        if (!jSONObject.isNull("ad_s_reqf_mode")) {
            avVar.I(jSONObject.optInt("ad_s_reqf_mode"));
        }
        if (avVar.d() >= 100000 && (aTCustomAdapterConfigB = n.a().b(avVar.i())) != null) {
            avVar.f(aTCustomAdapterConfigB.isRealTimeBidSwitch() ? 2 : 1);
            avVar.c(aTCustomAdapterConfigB.getAdCacheTime());
            if (aTCustomAdapterConfigB.getLossNoticePostion() > 0) {
                avVar.z(aTCustomAdapterConfigB.getLossNoticePostion());
            }
        }
        return avVar;
    }

    public static List<av> a(f fVar) {
        List<av> listA = a(fVar, fVar.ar(), 1, 3);
        List<av> listA2 = a(fVar, fVar.P(), 3, 4);
        List<av> listA3 = a(fVar, fVar.as(), 2, 2);
        List<av> listA4 = a(fVar, fVar.N(), 5, 7);
        List<av> listA5 = a(fVar, fVar.F(), 6, 11);
        List<av> listA6 = a(fVar, fVar.aA(), 7, 8);
        List<av> listA7 = a(fVar, fVar.aB(), 3, 5);
        listA.addAll(listA2);
        listA.addAll(listA3);
        listA.addAll(listA4);
        listA.addAll(listA5);
        listA.addAll(listA6);
        listA.addAll(listA7);
        return listA;
    }

    public static List<av> a(f fVar, String str) {
        return a(fVar, str, 3, 4);
    }

    private static List<av> a(f fVar, String str, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i3);
                if (jSONObject != null) {
                    av avVarA = a(i2, i, jSONObject);
                    a(fVar, avVarA);
                    arrayList.add(avVarA);
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    private static void a(f fVar, av avVar) {
        if (avVar.ae() > 0.0d || fVar == null) {
            return;
        }
        double dAE = fVar.aE();
        if (dAE > 0.0d) {
            avVar.c(dAE);
        }
    }

    public static void a(f fVar, Map<String, av> map, List<av> list) {
        a(fVar, map, list, fVar.ap(), 0, 1);
        a(fVar, map, list, fVar.aq(), 0, 6);
        a(fVar, map, list, fVar.ar(), 1, 3);
        a(fVar, map, list, fVar.P(), 3, 4);
        a(fVar, map, list, fVar.as(), 2, 2);
        a(fVar, map, list, fVar.N(), 5, 7);
        a(fVar, map, list, fVar.F(), 6, 11);
        a(fVar, map, list, fVar.aA(), 7, 8);
        a(fVar, map, list, fVar.aB(), 3, 5);
        a(fVar, map, list, fVar.A(), 8, 10);
        a(fVar, map, list, fVar.t(), 2, 9);
    }

    private static void a(f fVar, Map<String, av> map, List<av> list, String str, int i, int i2) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i3);
                if (jSONObjectOptJSONObject != null) {
                    av avVarA = a(i2, i, jSONObjectOptJSONObject);
                    map.put(avVarA.u(), avVarA);
                    if (avVarA.d() == 35) {
                        list.add(avVarA);
                    }
                    a(fVar, avVarA);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static List<av> b(f fVar) {
        List<av> listA = a(fVar, fVar.ap(), 0, 1);
        listA.addAll(a(fVar, fVar.aq(), 4, 6));
        Collections.sort(listA);
        return listA;
    }

    public static List<av> c(f fVar) {
        return a(fVar, fVar.A(), 8, 10);
    }

    public static List<av> d(f fVar) {
        List<av> listA = a(fVar, fVar.t(), 2, 9);
        Iterator<av> it = listA.iterator();
        while (it.hasNext()) {
            it.next().aj();
        }
        return listA;
    }
}
