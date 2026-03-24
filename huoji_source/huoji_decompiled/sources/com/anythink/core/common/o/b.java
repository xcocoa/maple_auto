package com.anythink.core.common.o;

import com.anythink.core.common.b.h;
import com.anythink.core.common.f.av;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = "b";

    public static void a(com.anythink.core.d.f fVar, Map<String, Object> map, av avVar, com.anythink.core.common.f.p pVar) {
        double d;
        boolean z;
        if (pVar == null) {
            return;
        }
        double dH = pVar.h();
        double d2 = 0.0d;
        if (dH < 0.0d) {
            return;
        }
        int i = pVar.i();
        boolean zJ = pVar.j();
        List<Integer> listE = fVar.e();
        if (listE == null) {
            return;
        }
        boolean zK = avVar.k();
        int i2 = 2;
        if (i != 22) {
            double dB = com.anythink.core.b.d.a.b(avVar);
            double dA = com.anythink.core.b.d.a.a(dH, dB);
            if (!(zK && listE.contains(4)) && (zK || !listE.contains(2))) {
                d2 = dB;
                d = dA;
                i2 = 5;
                z = false;
            } else {
                d2 = dB;
                d = dA;
                i2 = 5;
                z = true;
            }
        } else if (!(zK && listE.contains(3)) && (zK || !listE.contains(1))) {
            d = dH;
            z = false;
        } else {
            d = dH;
            z = true;
        }
        if (!z) {
            StringBuilder sb = new StringBuilder("fillBiddingWinnerParams, no need to transfer bidding info,  \n last winner is baidu: ");
            sb.append(i == 22);
            sb.append(" \n current ad is bidding type: ");
            sb.append(zK);
            sb.append(" \n baiduRequestBidTypeList: ");
            sb.append(listE.toString());
            return;
        }
        double d3 = d;
        int iC = (int) ((d / fVar.C()) * 100.0d);
        int i3 = zJ ? 3 : 1;
        boolean zE = pVar.e();
        StringBuilder sb2 = new StringBuilder("fillBiddingWinnerParams, need to transfer bidding info, current unitGroupInfo: ");
        sb2.append(avVar);
        sb2.append(" \n last winner is baidu: ");
        sb2.append(i == 22);
        sb2.append(" \n current ad is bidding type: ");
        sb2.append(zK);
        sb2.append(" \n baiduRequestBidTypeList: ");
        sb2.append(listE.toString());
        sb2.append(" --> \n pr rate: ");
        sb2.append(d2);
        sb2.append(" \n origin winner price: ");
        sb2.append(dH);
        sb2.append(" \n pr winner price: ");
        sb2.append(d3);
        sb2.append(" \n A: ");
        sb2.append(i2);
        sb2.append(" \n B: ");
        sb2.append(iC);
        sb2.append(" \n C: ");
        sb2.append(i3);
        sb2.append(" \n S: ");
        sb2.append(zE ? 1 : 0);
        map.put(h.p.q, Integer.valueOf(i2));
        map.put(h.p.r, Integer.valueOf(iC));
        map.put(h.p.s, Integer.valueOf(i3));
        map.put(h.p.t, Integer.valueOf(zE ? 1 : 0));
    }
}
