package com.anythink.core.common;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationBidManager;
import com.anythink.core.common.f.ar;
import com.anythink.core.common.f.au;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.aw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a a;
    private final String b = getClass().getSimpleName();
    private ConcurrentHashMap<String, List<com.anythink.core.common.f.b>> c = new ConcurrentHashMap<>(2);
    private ConcurrentHashMap<String, aw> d = new ConcurrentHashMap<>(2);

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    private static String a(String str, String str2) {
        return str + str2;
    }

    private static void a(ATBaseAdAdapter aTBaseAdAdapter, String str, String str2, com.anythink.core.d.f fVar, av avVar, Map<String, Object> map) {
        Map<String, Object> mapB = u.a().b(str2);
        int[] iArr = {0};
        if (mapB.containsKey(au.N)) {
            try {
                iArr[0] = ((Integer) mapB.get(au.N)).intValue();
            } catch (Throwable unused) {
            }
        }
        com.anythink.core.common.f.h hVarA = com.anythink.core.common.o.v.a(str, str2, fVar, 0, iArr[0], map, null);
        com.anythink.core.common.o.v.a(hVarA, avVar, 0, true);
        com.anythink.core.common.o.v.a(aTBaseAdAdapter, hVarA, avVar);
        hVarA.q = 3;
        hVarA.g(aTBaseAdAdapter.getInternalNetworkPlacementId());
        aTBaseAdAdapter.setRefresh(false);
    }

    private void a(String str, List<com.anythink.core.common.f.b> list) {
        synchronized (u.a().a(str)) {
            List<com.anythink.core.common.f.b> arrayList = this.c.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.c.put(str, arrayList);
            }
            if (arrayList.size() == 0) {
                arrayList.addAll(list);
            } else {
                av unitGroupInfo = list.get(0).d().getUnitGroupInfo();
                double dA = com.anythink.core.common.o.h.a(unitGroupInfo);
                for (int i = 0; i < arrayList.size(); i++) {
                    av unitGroupInfo2 = arrayList.get(i).d().getUnitGroupInfo();
                    double dA2 = com.anythink.core.common.o.h.a(unitGroupInfo2);
                    if (dA <= dA2 && (dA != dA2 || unitGroupInfo.al() >= unitGroupInfo2.al())) {
                        if (i == arrayList.size() - 1) {
                            arrayList.addAll(list);
                            break;
                        }
                    }
                    arrayList.addAll(i, list);
                }
            }
        }
    }

    private static void a(JSONArray jSONArray, int i, String str, int i2, String str2, boolean z, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("priority", i);
            jSONObject.put("unit_id", str);
            jSONObject.put("nw_firm_id", i2);
            jSONObject.put("nw_ver", str2);
            jSONObject.put(com.anythink.expressad.foundation.d.r.ah, z ? 1 : 0);
            if (i3 != -1) {
                jSONObject.put(com.anythink.expressad.foundation.d.r.ac, i3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        jSONArray.put(jSONObject);
    }

    private static void b(String str, av avVar) {
        if (avVar == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("Clean own ad cache :");
        sb.append(avVar.u());
        sb.append("|||");
        sb.append(avVar.m());
        sb.append("|||");
        sb.append(avVar.d());
        int iM = avVar.m();
        if (iM != 3) {
            if (iM == 4) {
                com.anythink.core.basead.b.a();
                Context contextF = com.anythink.core.common.b.n.a().f();
                com.anythink.core.basead.b.a();
                com.anythink.core.basead.b.b(contextF, com.anythink.core.basead.b.a(str, avVar.u(), avVar.d()));
                return;
            }
            if (iM != 7) {
                return;
            }
        }
        com.anythink.core.common.f.q qVarM = avVar.M();
        com.anythink.core.common.a.c.a().a(str, avVar.u());
        if (qVarM == null || TextUtils.isEmpty(qVarM.token)) {
            return;
        }
        com.anythink.core.common.a.a.a().b(com.anythink.core.common.b.n.a().f(), qVarM.token);
    }

    public final aw a(String str, av avVar) {
        return this.d.get(a(str, avVar.u()));
    }

    public final com.anythink.core.common.f.b a(Context context, String str) {
        synchronized (u.a().a(str)) {
            List<com.anythink.core.common.f.b> listA = a(context, str, false, false, false, (Map<String, Object>) null, (com.anythink.core.common.f.c) null);
            if (listA == null || listA.size() <= 0) {
                return null;
            }
            return listA.get(0);
        }
    }

    public final com.anythink.core.common.f.b a(Context context, String str, boolean z, boolean z3, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        synchronized (u.a().a(str)) {
            List<com.anythink.core.common.f.b> listA = a(context, str, z, z3, false, map, cVar);
            if (listA == null || listA.size() <= 0) {
                return null;
            }
            return listA.get(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x02ac A[Catch: all -> 0x0444, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0013, B:6:0x0027, B:8:0x0029, B:10:0x0046, B:11:0x004a, B:13:0x0050, B:15:0x0059, B:16:0x005d, B:20:0x007b, B:22:0x0081, B:23:0x0098, B:27:0x00a9, B:29:0x00b3, B:30:0x00ca, B:34:0x00e0, B:36:0x0114, B:39:0x013d, B:41:0x0159, B:44:0x0164, B:46:0x016a, B:48:0x0174, B:49:0x0190, B:42:0x015d, B:51:0x0192, B:54:0x019e, B:56:0x01c8, B:58:0x01d1, B:59:0x01d4, B:61:0x01dc, B:65:0x01ec, B:69:0x01fb, B:72:0x01ff, B:74:0x0204, B:75:0x0229, B:77:0x022b, B:84:0x023f, B:86:0x025d, B:88:0x0263, B:92:0x026d, B:95:0x0275, B:97:0x0286, B:98:0x028a, B:100:0x0290, B:102:0x029c, B:107:0x02ac, B:156:0x03e0, B:159:0x03e8, B:164:0x0416, B:166:0x0432, B:167:0x0442, B:150:0x03d3, B:80:0x0234), top: B:177:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<com.anythink.core.common.f.b> a(Context context, String str, boolean z, boolean z3, boolean z4, Map<String, Object> map, com.anythink.core.common.f.c cVar) {
        String str2;
        String str3;
        com.anythink.core.d.f fVar;
        av avVar;
        ATBaseAdAdapter aTBaseAdAdapter;
        boolean zInternalIsAdReady;
        BaseAd baseAdObject;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int i;
        com.anythink.core.common.f.b bVar;
        com.anythink.core.common.f.h hVar;
        int i2;
        com.anythink.core.common.f.b bVar2;
        int i3;
        Object objA = u.a().a(str);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (objA) {
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(str);
            if (fVarA == null) {
                return null;
            }
            com.anythink.core.common.f.b bVarA = com.anythink.core.common.a.c.a().a(str);
            ArrayList arrayList4 = new ArrayList();
            List<com.anythink.core.common.f.b> list = this.c.get(str);
            JSONArray jSONArray = new JSONArray();
            if (list != null) {
                Iterator<com.anythink.core.common.f.b> it = list.iterator();
                while (it.hasNext()) {
                    com.anythink.core.common.f.b next = it.next();
                    if (next == null) {
                        it.remove();
                    } else {
                        av unitGroupInfo = next.d().getUnitGroupInfo();
                        int iAm = unitGroupInfo.am();
                        av avVarA = fVarA.a(unitGroupInfo.u());
                        if (com.anythink.core.a.c.a().a(str, avVarA != null ? avVarA : unitGroupInfo)) {
                            a(jSONArray, iAm, unitGroupInfo.u(), unitGroupInfo.d(), "", false, 3);
                        } else {
                            com.anythink.core.a.a aVarA = com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f());
                            if (avVarA == null) {
                                avVarA = unitGroupInfo;
                            }
                            if (aVarA.a(str, avVarA, fVarA.ah())) {
                                a(jSONArray, iAm, unitGroupInfo.u(), unitGroupInfo.d(), "", false, 2);
                            } else {
                                long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                                boolean zF = next.f();
                                boolean zI = next.i();
                                com.anythink.core.common.f.h hVarH = next.h();
                                if (zF && zI) {
                                    if (z) {
                                        hVar = hVarH;
                                        i2 = iAm;
                                        bVar2 = next;
                                        i3 = 0;
                                        com.anythink.core.common.n.e.a(com.anythink.core.common.i.c.b, hVarH.ai(), str, hVarH.F(), hVarH.P(), fVarA.ah(), SystemClock.elapsedRealtime() - jElapsedRealtime2);
                                    } else {
                                        hVar = hVarH;
                                        i2 = iAm;
                                        bVar2 = next;
                                        i3 = 0;
                                    }
                                    a(jSONArray, i2, unitGroupInfo.u(), unitGroupInfo.d(), bVar2.d().getInternalNetworkSDKVersion(), true, -1);
                                    hVar.q(jSONArray.toString());
                                    hVar.t(i2);
                                    if (!z4) {
                                        if (bVarA == null || com.anythink.core.common.o.h.a(bVarA.d().getUnitGroupInfo()) <= com.anythink.core.common.o.h.a(bVar2.d().getUnitGroupInfo())) {
                                            arrayList4.add(bVar2);
                                        } else {
                                            arrayList4.add(bVarA);
                                        }
                                        if (z) {
                                            com.anythink.core.common.n.e.a(hVar.ai(), str, true, -1, fVarA, arrayList4.size() > 0 ? (com.anythink.core.common.f.b) arrayList4.get(i3) : null, jSONArray.toString(), "", map, cVar, SystemClock.elapsedRealtime() - jElapsedRealtime);
                                        }
                                        return arrayList4;
                                    }
                                    arrayList4.add(bVar2);
                                } else {
                                    if (z) {
                                        i = iAm;
                                        bVar = next;
                                        com.anythink.core.common.n.e.a(com.anythink.core.common.i.c.c, hVarH.ai(), str, hVarH.F(), hVarH.P(), fVarA.ah(), SystemClock.elapsedRealtime() - jElapsedRealtime2);
                                    } else {
                                        i = iAm;
                                        bVar = next;
                                    }
                                    int iC = bVar.c();
                                    bVar.g();
                                    if (iC <= 0) {
                                        com.anythink.core.b.d.b.a(bVar);
                                    }
                                    it.remove();
                                    a(bVar);
                                    if (iC == 0) {
                                        a(jSONArray, i, unitGroupInfo.u(), unitGroupInfo.d(), "", false, !zF ? 0 : 1);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (z4) {
                return arrayList4;
            }
            if (bVarA != null) {
                arrayList4.add(bVarA);
                if (z) {
                    com.anythink.core.common.n.e.a(bVarA.d().getTrackingInfo().ai(), str, true, -1, fVarA, bVarA, jSONArray.toString(), "", map, cVar, SystemClock.elapsedRealtime() - jElapsedRealtime);
                }
                return arrayList4;
            }
            boolean z5 = fVarA.ab() == 1 ? true : fVarA.ab() == 2 ? z3 : false;
            List<av> listN = fVarA.n();
            u uVarA = u.a();
            StringBuilder sb = new StringBuilder();
            sb.append(fVarA.ah());
            f fVarA2 = uVarA.a(str, sb.toString());
            String strG = (fVarA2 == null || fVarA2.g() == null) ? "" : fVarA2.g();
            if (listN == null || listN.size() <= 0 || !z5) {
                str2 = strG;
                str3 = str;
                fVar = fVarA;
            } else {
                int i4 = 0;
                String strB = r.a().b(context, str);
                if (TextUtils.isEmpty(strB)) {
                    avVar = null;
                    if (avVar == null) {
                    }
                } else {
                    for (av avVar2 : listN) {
                        if (avVar2.h() != null && avVar2.h().contains(strB)) {
                            avVar = avVar2;
                            break;
                        }
                    }
                    avVar = null;
                    if (avVar == null) {
                        Map<String, Object> mapA = fVarA.a(str, strG, avVar);
                        mapA.put(r.b, Boolean.TRUE);
                        try {
                            ATBaseAdAdapter aTBaseAdAdapterA = com.anythink.core.common.o.j.a(avVar);
                            boolean zInternalInitNetworkObjectByPlacementId = aTBaseAdAdapterA.internalInitNetworkObjectByPlacementId(context, mapA, u.a().b(str));
                            if (zInternalInitNetworkObjectByPlacementId) {
                                Map<String, Object> mapB = u.a().b(str);
                                int[] iArr = {0};
                                if (mapB.containsKey(au.N)) {
                                    try {
                                        iArr[0] = ((Integer) mapB.get(au.N)).intValue();
                                    } catch (Throwable unused) {
                                    }
                                }
                                com.anythink.core.common.f.h hVarA = com.anythink.core.common.o.v.a(strG, str, fVarA, 0, iArr[0], map, null);
                                com.anythink.core.common.o.v.a(hVarA, avVar, 0, true);
                                aTBaseAdAdapter = aTBaseAdAdapterA;
                                com.anythink.core.common.o.v.a(aTBaseAdAdapter, hVarA, avVar);
                                hVarA.q = 3;
                                hVarA.g(aTBaseAdAdapter.getInternalNetworkPlacementId());
                                aTBaseAdAdapter.setRefresh(false);
                            } else {
                                aTBaseAdAdapter = aTBaseAdAdapterA;
                            }
                            if (TextUtils.equals(String.valueOf(fVarA.ah()), "0")) {
                                if (zInternalInitNetworkObjectByPlacementId) {
                                    baseAdObject = aTBaseAdAdapter.getBaseAdObject(context);
                                    if (baseAdObject != null) {
                                        zInternalIsAdReady = true;
                                    }
                                } else {
                                    baseAdObject = null;
                                }
                                zInternalIsAdReady = false;
                            } else {
                                zInternalIsAdReady = zInternalInitNetworkObjectByPlacementId ? aTBaseAdAdapter.internalIsAdReady() : false;
                                baseAdObject = null;
                            }
                            if (zInternalIsAdReady) {
                                if (baseAdObject != null) {
                                    ArrayList arrayList5 = new ArrayList();
                                    baseAdObject.setTrackingInfo(aTBaseAdAdapter.getTrackingInfo().V());
                                    arrayList5.add(baseAdObject);
                                    arrayList = arrayList5;
                                } else {
                                    arrayList = null;
                                }
                                av avVar3 = avVar;
                                str2 = strG;
                                int i5 = 1;
                                ArrayList arrayList6 = arrayList4;
                                ArrayList arrayList7 = arrayList;
                                str3 = str;
                                fVar = fVarA;
                                try {
                                    List<com.anythink.core.common.f.b> listA = a(str, aTBaseAdAdapter, arrayList7, avVar.q());
                                    if (listA.size() > 0) {
                                        for (com.anythink.core.common.f.b bVar3 : listA) {
                                            com.anythink.core.common.f.h hVarH2 = bVar3.h();
                                            hVarH2.y = i5;
                                            hVarH2.t(i4);
                                            hVarH2.q(jSONArray.toString());
                                            if (z) {
                                                arrayList3 = arrayList6;
                                                try {
                                                    com.anythink.core.common.n.e.a(hVarH2.ai(), str, true, -1, fVar, bVar3, jSONArray.toString(), avVar3.h(), map, cVar);
                                                } catch (Throwable unused2) {
                                                }
                                            } else {
                                                arrayList3 = arrayList6;
                                            }
                                            arrayList6 = arrayList3;
                                            i5 = 1;
                                            i4 = 0;
                                        }
                                        arrayList2 = arrayList6;
                                        arrayList2.add(listA.get(0));
                                    } else {
                                        arrayList2 = arrayList6;
                                    }
                                    return arrayList2;
                                } catch (Throwable unused3) {
                                }
                            }
                        } catch (Throwable unused4) {
                        }
                    }
                }
            }
            if (z) {
                boolean zF2 = fVarA2 != null ? fVarA2.f() : false;
                if (fVarA2 == null) {
                    com.anythink.core.common.n.e.a("AdManage is null--isReady", "Id:" + str3 + "--format:" + fVar.ah(), com.anythink.core.common.b.n.a().q());
                }
                com.anythink.core.common.n.e.a(str2, str, false, zF2 ? 5 : 1, fVar, null, jSONArray.toString(), "", map, cVar, SystemClock.elapsedRealtime() - jElapsedRealtime);
            }
            if (z3) {
                com.anythink.core.common.n.e.a(str2, str, fVar, 1, jSONArray.toString(), map);
            }
            return null;
        }
    }

    public final List<com.anythink.core.common.f.b> a(String str) {
        List<com.anythink.core.common.f.b> list = this.c.get(str);
        if (list == null || list.size() <= 0) {
            return null;
        }
        Object objA = u.a().a(str);
        ArrayList arrayList = new ArrayList();
        synchronized (objA) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    public final List<com.anythink.core.common.f.b> a(String str, ATBaseAdAdapter aTBaseAdAdapter, List<? extends BaseAd> list, long j) {
        ar arVar;
        av unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
        com.anythink.core.common.f.h trackingInfo = aTBaseAdAdapter.getTrackingInfo();
        String strA = a(str, aTBaseAdAdapter.getUnitGroupInfo().u());
        aw awVar = this.d.get(strA);
        if (awVar == null) {
            awVar = new aw(str, unitGroupInfo.u());
            this.d.put(strA, awVar);
        }
        awVar.a(unitGroupInfo.an());
        ArrayList arrayList = new ArrayList();
        if (list == null || list.size() <= 0) {
            com.anythink.core.common.f.b bVar = new com.anythink.core.common.f.b();
            bVar.a(aTBaseAdAdapter);
            bVar.c(System.currentTimeMillis());
            bVar.b(j);
            bVar.a(unitGroupInfo.B());
            arrayList.add(bVar);
            arVar = new ar(trackingInfo.ai(), arrayList);
        } else {
            for (BaseAd baseAd : list) {
                baseAd.setTrackingInfo(aTBaseAdAdapter.getTrackingInfo().V());
                com.anythink.core.common.f.b bVar2 = new com.anythink.core.common.f.b();
                bVar2.a(aTBaseAdAdapter);
                bVar2.a(baseAd);
                bVar2.c(System.currentTimeMillis());
                bVar2.b(j);
                bVar2.a(unitGroupInfo.B());
                arrayList.add(bVar2);
            }
            arVar = new ar(trackingInfo.ai(), arrayList);
        }
        awVar.a(trackingInfo.ai(), arVar);
        if (arrayList.size() == 0) {
            return arrayList;
        }
        a(str, arrayList);
        return arrayList;
    }

    public final void a(final Context context, final com.anythink.core.common.f.b bVar) {
        final ATBaseAdAdapter aTBaseAdAdapterD = bVar.d();
        final com.anythink.core.common.f.h hVarH = bVar.h();
        av unitGroupInfo = aTBaseAdAdapterD != null ? aTBaseAdAdapterD.getUnitGroupInfo() : null;
        if (hVarH != null) {
            f fVarA = u.a().a(hVarH.ah(), hVarH.aj());
            if (fVarA != null) {
                fVarA.a(hVarH.ai(), unitGroupInfo != null ? com.anythink.core.common.o.h.a(unitGroupInfo) : 0.0d, unitGroupInfo);
            } else {
                com.anythink.core.common.n.e.a("AdManage is null--Show", "Id:" + hVarH.ah() + "--format:" + hVarH.aj() + "--adsource:" + hVarH.F(), com.anythink.core.common.b.n.a().q());
            }
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    com.anythink.core.a.a.a(context).a(hVarH.aj(), hVarH.ah(), hVarH.F());
                    com.anythink.core.a.c.a();
                    com.anythink.core.a.c.a(hVarH.ah());
                    com.anythink.core.a.c.a().a(hVarH.ah(), hVarH.F());
                    a.this.a(bVar);
                    a.this.b(bVar);
                    MediationBidManager mediationBidManagerB = com.anythink.core.b.f.a().b();
                    if (mediationBidManagerB != null) {
                        mediationBidManagerB.notifyWinnerDisplay(hVarH.ah(), aTBaseAdAdapterD.getUnitGroupInfo());
                    }
                }
            }, 2, true);
        }
    }

    public final void a(com.anythink.core.common.f.b bVar) {
        if (bVar == null) {
            return;
        }
        com.anythink.core.common.f.h hVarH = bVar.h();
        b(hVarH.ah(), bVar.d().getUnitGroupInfo());
        aw awVar = this.d.get(a(hVarH.ah(), hVarH.F()));
        if (awVar == null) {
            return;
        }
        awVar.a(bVar);
    }

    public final void a(String str, av avVar, String str2) {
        synchronized (u.a().a(str)) {
            List<com.anythink.core.common.f.b> list = this.c.get(str);
            if (list != null) {
                for (com.anythink.core.common.f.b bVar : list) {
                    if (TextUtils.equals(bVar.h().F(), avVar.u()) && TextUtils.equals(bVar.h().ai(), str2)) {
                        a(bVar);
                        b(bVar);
                        bVar.l();
                        return;
                    }
                }
            }
        }
    }

    public final void b(com.anythink.core.common.f.b bVar) {
        if (bVar == null) {
            return;
        }
        String strAh = bVar.h().ah();
        synchronized (u.a().a(strAh)) {
            List<com.anythink.core.common.f.b> list = this.c.get(strAh);
            if (list != null) {
                list.remove(bVar);
            }
        }
    }

    public final void b(String str) {
        synchronized (u.a().a(str)) {
            List<com.anythink.core.common.f.b> list = this.c.get(str);
            if (list != null) {
                Collections.sort(list);
            }
        }
    }
}
