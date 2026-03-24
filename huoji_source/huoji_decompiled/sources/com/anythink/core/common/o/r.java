package com.anythink.core.common.o;

import androidx.annotation.WorkerThread;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.f.ao;
import com.anythink.core.common.f.ap;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.aw;
import com.anythink.core.common.f.y;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public static Random a = new Random();
    private static final String b = "PlacementPrepareUtils";

    @WorkerThread
    public static final ap a(com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar) {
        List<av> listA;
        List<av> listA2;
        List<av> listC;
        List<av> listD;
        if (fVar == null) {
            return null;
        }
        if (hVar.X()) {
            StringBuilder sb = new StringBuilder("Placement：");
            sb.append(hVar.ah());
            sb.append("::::SegmentId：");
            sb.append(hVar.Q());
            sb.append("--adx network mode-----------------------------------------------|");
            listA = new ArrayList<>();
            listA2 = com.anythink.core.d.m.a(fVar, fVar.P());
            listD = new ArrayList<>();
            listC = new ArrayList<>();
        } else {
            StringBuilder sb2 = new StringBuilder("Placement：");
            sb2.append(hVar.ah());
            sb2.append("::::SegmentId：");
            sb2.append(hVar.Q());
            sb2.append("--dynamic waterfall start-----------------------------------------------|");
            listA = a(hVar, fVar, com.anythink.core.d.m.b(fVar));
            StringBuilder sb3 = new StringBuilder("Placement：");
            sb3.append(hVar.ah());
            sb3.append("::::SegmentId：");
            sb3.append(hVar.Q());
            sb3.append("--dynamic waterfall end_________________________________________________|");
            listA2 = com.anythink.core.d.m.a(fVar);
            listC = com.anythink.core.d.m.c(fVar);
            com.anythink.core.c.a.a().a(hVar, listA, fVar);
            com.anythink.core.c.a.a().a(hVar, listC, fVar);
            listD = com.anythink.core.d.m.d(fVar);
        }
        ap apVar = new ap(fVar, hVar, listA.size() + listA2.size() + listD.size() + listC.size());
        apVar.a(listA);
        apVar.b(listA2);
        apVar.c(listD);
        apVar.d(listC);
        a(fVar, apVar.c(), listA);
        a(fVar, apVar.c(), listA2);
        a(fVar, apVar.c(), listD);
        a(fVar, apVar.c(), listC);
        return apVar;
    }

    public static List<av> a(final ap apVar, List<av> list) {
        return h.a(list, new com.anythink.core.common.g.d() { // from class: com.anythink.core.common.o.r.1
            @Override // com.anythink.core.common.g.d
            public final void a(av avVar, int i, int i2) {
                avVar.C(i);
                if (i2 >= 0) {
                    avVar.B(i2);
                    aw awVarA = com.anythink.core.common.a.a().a(apVar.c().ah(), avVar);
                    if (awVarA != null) {
                        awVarA.b(avVar.al());
                    }
                }
            }
        });
    }

    private static List<av> a(com.anythink.core.common.f.h hVar, com.anythink.core.d.f fVar, List<av> list) {
        StringBuilder sb;
        String str;
        StringBuilder sb2;
        String str2;
        if (com.anythink.core.common.b.n.a().v()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(hVar.ah());
            sb3.append(":::In debugger mode, return the origin list.");
            return list;
        }
        com.anythink.core.d.d dVarB = fVar.b();
        if (dVarB == null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(hVar.ah());
            sb4.append(":::Dynamic Waterfall Strategy is null, return the origin list.");
            return list;
        }
        if (list.size() <= dVarB.f()) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(hVar.ah());
            sb5.append(":::Waterfall's size is lower than dynamicWaterfallStrategy.getPremiumLevel(), return the origin list.");
            return list;
        }
        com.anythink.core.c.a.d dVarA = com.anythink.core.c.b.a().a(hVar.ah(), fVar, dVarB);
        if (dVarA != null) {
            double d = dVarA.a;
            if (d > 0.0d) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(hVar.ah());
                sb6.append(":::RecentLoadedHighPriceInfo:");
                sb6.append(dVarA.toString());
                double dE = dVarB.e() * d;
                if (h.a(list.get(0)) <= dE) {
                    StringBuilder sb7 = new StringBuilder();
                    sb7.append(hVar.ah());
                    sb7.append(":::Waterfall's first price is lower than lastHighestPrice, return the origin list.");
                    return list;
                }
                int size = list.size() - 1;
                int size2 = list.size() - 1;
                HashMap map = new HashMap();
                for (int i = 0; i < list.size(); i++) {
                    double dA = h.a(list.get(i));
                    if (!map.containsKey(String.valueOf(dA))) {
                        map.put(String.valueOf(dA), Integer.valueOf(i));
                    }
                    if (size2 == list.size() - 1) {
                        if (dA == d) {
                            size2 = i - dVarB.f();
                            sb2 = new StringBuilder();
                            sb2.append(hVar.ah());
                            str2 = ":::loopPrice == lastHighestPrice Set overLayerIndex to ";
                        } else if (dA < d) {
                            if (i > 0) {
                                size2 = ((Integer) map.get(String.valueOf(h.a(list.get(i - 1))))).intValue() - dVarB.f();
                                sb2 = new StringBuilder();
                                sb2.append(hVar.ah());
                                str2 = ":::i - 1 >= 0 : loopPrice < lastHighestPrice Set overLayerIndex to ";
                            } else {
                                size2 = i - dVarB.f();
                                sb2 = new StringBuilder();
                                sb2.append(hVar.ah());
                                str2 = ":::loopPrice < lastHighestPrice Set overLayerIndex to ";
                            }
                        }
                        sb2.append(str2);
                        sb2.append(size2);
                    }
                    if (size == list.size() - 1) {
                        if (dA == dE) {
                            StringBuilder sb8 = new StringBuilder();
                            sb8.append(hVar.ah());
                            sb8.append(":::loopPrice == overflowPrice Set overLayerIndex to ");
                            sb8.append(size2);
                            size = i;
                        } else if (dA < dE) {
                            size = i - 1;
                            StringBuilder sb9 = new StringBuilder();
                            sb9.append(hVar.ah());
                            sb9.append(":::loopPrice < overflowPrice Set overLayerIndex to ");
                            sb9.append(size2);
                        }
                    }
                    if (size <= 0 || size2 <= 0) {
                        sb = new StringBuilder();
                        sb.append(hVar.ah());
                        str = ":::overIndex <= 0 :overflowPriceIndex:";
                        sb.append(str);
                        sb.append(size);
                        sb.append("---overLayerIndex:");
                        sb.append(size2);
                        break;
                    }
                    if (size < list.size() - 1 && size2 < list.size() - 1) {
                        sb = new StringBuilder();
                        sb.append(hVar.ah());
                        str = ":::overIndex has found :overflowPriceIndex:";
                        sb.append(str);
                        sb.append(size);
                        sb.append("---overLayerIndex:");
                        sb.append(size2);
                        break;
                    }
                }
                int iMin = Math.min(size, size2);
                StringBuilder sb10 = new StringBuilder();
                sb10.append(hVar.ah());
                sb10.append(":::the first finalIndex: ");
                sb10.append(iMin);
                if (iMin <= 0) {
                    StringBuilder sb11 = new StringBuilder();
                    sb11.append(hVar.ah());
                    sb11.append(":::finalIndex <= 0 , return the origin list.");
                    return list;
                }
                av avVar = list.get(iMin);
                double dA2 = h.a(avVar);
                String strU = avVar.u();
                Integer num = (Integer) map.get(String.valueOf(dA2));
                if (num != null) {
                    iMin = num.intValue();
                    strU = list.get(iMin).u();
                }
                String str3 = strU;
                StringBuilder sb12 = new StringBuilder();
                sb12.append(hVar.ah());
                sb12.append(":::after the same price : first finalIndex: ");
                sb12.append(iMin);
                StringBuilder sb13 = new StringBuilder();
                sb13.append(hVar.ah());
                sb13.append(":::Final Waterfall List: ");
                List<av> listSubList = list.subList(iMin, list.size());
                com.anythink.core.common.n.e.a(hVar, dVarB, dVarA.b, d, str3, dA2);
                return listSubList;
            }
        }
        StringBuilder sb14 = new StringBuilder();
        sb14.append(hVar.ah());
        sb14.append(":::lastHighestPrice <= 0, return the origin list.");
        return list;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0004 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void a(com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar, List<av> list) {
        int i;
        AdError errorCode;
        com.anythink.core.common.f.e eVarC;
        String str;
        String str2;
        String str3;
        int i2;
        String str4;
        AdError errorCode2;
        Iterator<av> it = list.iterator();
        while (it.hasNext()) {
            av next = it.next();
            int iN = hVar.N();
            com.anythink.core.common.f.h hVarV = hVar.V();
            String strAh = hVar.ah();
            boolean z = false;
            v.a(hVarV, next, 0, false);
            ao.a aVarA = com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f()).a(strAh, next.u(), fVar.ah());
            int i3 = aVarA != null ? aVarA.e : 0;
            int i4 = aVarA != null ? aVarA.d : 0;
            if (com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f()).a(strAh, next, fVar.ah())) {
                next.g(-5);
                next.h("Out of Cap");
                p.a(strAh, hVar, "Out of Cap", next, i3, i4);
                com.anythink.core.common.n.e.a(hVarV, 2, ErrorCode.getErrorCode(ErrorCode.outOfCapError, "", "Out of Cap"));
            } else {
                if (com.anythink.core.a.c.a().a(strAh, next)) {
                    next.g(-6);
                    next.h("Out of Pacing");
                    p.a(strAh, hVar, "Out of Pacing", next, i3, i4);
                    i2 = 3;
                    errorCode2 = ErrorCode.getErrorCode(ErrorCode.inPacingError, "", "Out of Pacing");
                } else {
                    if (com.anythink.core.common.c.a().a(next)) {
                        next.g(-6);
                        str = "Request fail in pacing";
                        next.h("Request fail in pacing");
                        str2 = "Request fail in pacing";
                    } else {
                        List<String> listM = com.anythink.core.common.b.n.a().m(strAh);
                        if (listM == null || !listM.contains(next.u())) {
                            List<String> listN = com.anythink.core.common.b.n.a().n(strAh);
                            if (listN == null || !listN.contains(String.valueOf(next.d()))) {
                                if (!next.k()) {
                                    if (com.anythink.core.common.c.a().a(iN, fVar, next)) {
                                        next.g(-8);
                                        next.h("Error Code Request fail in pacing");
                                        p.a(strAh, hVar, "Error Code Request fail in pacing", next, i3, i4);
                                        i = 10;
                                        errorCode = ErrorCode.getErrorCode(ErrorCode.inNetworkErrorCodeRequestFailPacing, "", "Error Code Request fail in pacing");
                                    } else if (iN != 0 && next.aD() == 1) {
                                        next.h("System splash not allow preload");
                                        p.a(strAh, hVar, "System splash not allow preload", next, i3, i4);
                                        i = 11;
                                        errorCode = ErrorCode.getErrorCode(ErrorCode.filterByRefreshSystemSplash, ErrorCode.filterByRefreshSystemSplash, "System splash not allow preload");
                                    }
                                    com.anythink.core.common.n.e.a(hVarV, i, errorCode);
                                    z = true;
                                } else if (com.anythink.core.common.c.a().b(next)) {
                                    next.g(-7);
                                    str = "Bid fail in pacing";
                                    next.h("Bid fail in pacing");
                                    str2 = "Bid fail in pacing";
                                } else if (next.W() != 1 && next.m() == 2 && (eVarC = com.anythink.core.common.u.a().c(strAh)) != null && eVarC.a(next)) {
                                    next.g(-7);
                                    next.h("Can't Load On Showing");
                                    p.a(strAh, hVar, "Can't Load On Showing", next, i3, i4);
                                    com.anythink.core.common.n.e.a(hVar, 7, ErrorCode.getErrorCode(ErrorCode.loadInShowingFilter, "", "Can't Load On Showing"));
                                    z = true;
                                }
                                if (!z) {
                                    next.c();
                                    it.remove();
                                }
                            } else {
                                next.g(-8);
                                str3 = "Filter by network firm id.";
                                next.h("Filter by network firm id.");
                                p.a(strAh, hVar, "Filter by network firm id.", next, i3, i4, listN);
                                i2 = 9;
                                str4 = ErrorCode.networkFirmIdfilterSourceError;
                            }
                        } else {
                            next.g(-8);
                            str3 = "Request fail in filter list";
                            next.h("Request fail in filter list");
                            p.a(strAh, hVar, "Request fail in filter list", next, i3, i4, listM);
                            i2 = 5;
                            str4 = ErrorCode.filterSourceError;
                        }
                        errorCode2 = ErrorCode.getErrorCode(str4, "", str3);
                    }
                    p.a(strAh, hVar, str2, next, i3, i4);
                    com.anythink.core.common.n.e.a(hVarV, 4, ErrorCode.getErrorCode(ErrorCode.inRequestFailPacing, "", str));
                }
                com.anythink.core.common.n.e.a(hVarV, i2, errorCode2);
            }
            z = true;
            if (!z) {
            }
        }
    }

    private static void a(List<av> list, List<av> list2, com.anythink.core.common.f.h hVar, List<av> list3) {
        String strAh = hVar.ah();
        if (list == null || list2 == null) {
            return;
        }
        boolean z = false;
        for (int size = list2.size() - 1; size >= 0; size--) {
            av avVar = list2.get(size);
            if (avVar.aa()) {
                list3.add(avVar);
            }
            if (avVar.n() != 2) {
                aw awVarA = com.anythink.core.common.a.a().a(strAh, avVar);
                av avVar2 = null;
                com.anythink.core.common.f.b bVarA = awVarA != null ? awVarA.a((com.anythink.core.common.f.q) null).a() : null;
                if (bVarA != null) {
                    avVar.a(bVarA.d().getUnitGroupInfo(), 0, 3, 1);
                    StringBuilder sb = new StringBuilder("CacehMotify:Not real time bidding, max price cache:");
                    sb.append(h.a(avVar));
                    sb.append("\n");
                    sb.append(avVar.toString());
                    avVar2 = avVar;
                }
                if (avVar2 == null) {
                    try {
                        com.anythink.core.common.f.q qVarA = com.anythink.core.b.f.a().a(strAh, avVar);
                        if (qVarA != null && !qVarA.a()) {
                            avVar.a(qVarA, 0, 2, 1);
                            avVar2 = avVar;
                        } else if (qVarA != null) {
                            com.anythink.core.b.d.b.a(qVarA, new y(1, avVar, hVar), true);
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (avVar2 != null) {
                    try {
                        if (avVar.m() == 7) {
                            z = true;
                        }
                        list2.remove(size);
                        h.a(list, avVar);
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        if (z) {
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                if (list2.get(size2).m() == 7) {
                    list2.remove(size2);
                }
            }
        }
    }

    private static boolean a(int i, com.anythink.core.d.f fVar, com.anythink.core.common.f.h hVar, av avVar) {
        com.anythink.core.common.f.e eVarC;
        com.anythink.core.common.f.h hVarV = hVar.V();
        String strAh = hVar.ah();
        v.a(hVarV, avVar, 0, false);
        ao.a aVarA = com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f()).a(strAh, avVar.u(), fVar.ah());
        int i2 = aVarA != null ? aVarA.e : 0;
        int i3 = aVarA != null ? aVarA.d : 0;
        if (com.anythink.core.a.a.a(com.anythink.core.common.b.n.a().f()).a(strAh, avVar, fVar.ah())) {
            avVar.g(-5);
            avVar.h("Out of Cap");
            p.a(strAh, hVar, "Out of Cap", avVar, i2, i3);
            com.anythink.core.common.n.e.a(hVarV, 2, ErrorCode.getErrorCode(ErrorCode.outOfCapError, "", "Out of Cap"));
            return true;
        }
        if (com.anythink.core.a.c.a().a(strAh, avVar)) {
            avVar.g(-6);
            avVar.h("Out of Pacing");
            p.a(strAh, hVar, "Out of Pacing", avVar, i2, i3);
            com.anythink.core.common.n.e.a(hVarV, 3, ErrorCode.getErrorCode(ErrorCode.inPacingError, "", "Out of Pacing"));
            return true;
        }
        if (com.anythink.core.common.c.a().a(avVar)) {
            avVar.g(-6);
            avVar.h("Request fail in pacing");
            p.a(strAh, hVar, "Request fail in pacing", avVar, i2, i3);
            com.anythink.core.common.n.e.a(hVarV, 4, ErrorCode.getErrorCode(ErrorCode.inRequestFailPacing, "", "Request fail in pacing"));
            return true;
        }
        List<String> listM = com.anythink.core.common.b.n.a().m(strAh);
        if (listM != null && listM.contains(avVar.u())) {
            avVar.g(-8);
            avVar.h("Request fail in filter list");
            p.a(strAh, hVar, "Request fail in filter list", avVar, i2, i3, listM);
            com.anythink.core.common.n.e.a(hVarV, 5, ErrorCode.getErrorCode(ErrorCode.filterSourceError, "", "Request fail in filter list"));
            return true;
        }
        List<String> listN = com.anythink.core.common.b.n.a().n(strAh);
        if (listN != null && listN.contains(String.valueOf(avVar.d()))) {
            avVar.g(-8);
            avVar.h("Filter by network firm id.");
            p.a(strAh, hVar, "Filter by network firm id.", avVar, i2, i3, listN);
            com.anythink.core.common.n.e.a(hVarV, 9, ErrorCode.getErrorCode(ErrorCode.networkFirmIdfilterSourceError, "", "Filter by network firm id."));
            return true;
        }
        if (avVar.k()) {
            if (com.anythink.core.common.c.a().b(avVar)) {
                avVar.g(-7);
                avVar.h("Bid fail in pacing");
                p.a(strAh, hVar, "Bid fail in pacing", avVar, i2, i3);
                com.anythink.core.common.n.e.a(hVarV, 4, ErrorCode.getErrorCode(ErrorCode.inRequestFailPacing, "", "Bid fail in pacing"));
                return true;
            }
            if (avVar.W() != 1 && avVar.m() == 2 && (eVarC = com.anythink.core.common.u.a().c(strAh)) != null && eVarC.a(avVar)) {
                avVar.g(-7);
                avVar.h("Can't Load On Showing");
                p.a(strAh, hVar, "Can't Load On Showing", avVar, i2, i3);
                com.anythink.core.common.n.e.a(hVar, 7, ErrorCode.getErrorCode(ErrorCode.loadInShowingFilter, "", "Can't Load On Showing"));
                return true;
            }
        }
        if (com.anythink.core.common.c.a().a(i, fVar, avVar)) {
            avVar.g(-8);
            avVar.h("Error Code Request fail in pacing");
            p.a(strAh, hVar, "Error Code Request fail in pacing", avVar, i2, i3);
            com.anythink.core.common.n.e.a(hVarV, 10, ErrorCode.getErrorCode(ErrorCode.inNetworkErrorCodeRequestFailPacing, "", "Error Code Request fail in pacing"));
            return true;
        }
        if (i == 0 || avVar.aD() != 1) {
            return false;
        }
        avVar.h("System splash not allow preload");
        p.a(strAh, hVar, "System splash not allow preload", avVar, i2, i3);
        com.anythink.core.common.n.e.a(hVarV, 11, ErrorCode.getErrorCode(ErrorCode.filterByRefreshSystemSplash, ErrorCode.filterByRefreshSystemSplash, "System splash not allow preload"));
        return true;
    }

    public static void b(ap apVar, List<av> list) {
        List<av> listD = apVar.d();
        List<av> listE = apVar.e();
        List<av> listF = apVar.f();
        a(listD, listE, apVar.c(), list);
        a(listD, listF, apVar.c(), list);
    }
}
