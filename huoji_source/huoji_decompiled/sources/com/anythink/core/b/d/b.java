package com.anythink.core.b.d;

import android.text.TextUtils;
import android.util.Log;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.az;
import com.anythink.core.common.f.bc;
import com.anythink.core.common.f.h;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;
import com.anythink.core.common.h.f;
import com.anythink.core.common.h.k;
import com.anythink.core.common.j;
import com.anythink.core.common.n.c;
import com.anythink.core.common.n.e;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static final String a = "b";
    public static final String b = "${AUCTION_PRICE}";
    public static final String c = "${AUCTION_LOSS}";
    public static final String d = "${AUCTION_SEAT_ID}";
    public static final String e = "${AUCTION_BID_TO_WIN}";
    public static final String f = "${AUCTION_CURRENCY}";
    public static final String g = "{__BIDDER__}";
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    public static final int k = 4;
    public static final String l = "102";
    public static final String m = "103";
    public static final String n = "2";

    private static double a(q qVar, double d2) {
        double d3 = qVar.l;
        return d3 > 0.0d ? d2 * d3 : d2;
    }

    private static av a(q qVar) {
        if (qVar != null) {
            return qVar.f();
        }
        return null;
    }

    public static void a(ATBaseAdAdapter aTBaseAdAdapter, av avVar, h hVar, BaseAd... baseAdArr) {
        q qVarM;
        if (aTBaseAdAdapter == null || avVar == null || (qVarM = avVar.M()) == null) {
            return;
        }
        Map<String, Object> networkInfoMap = (baseAdArr == null || baseAdArr.length <= 0 || baseAdArr[0] == null) ? aTBaseAdAdapter.getNetworkInfoMap() : baseAdArr[0].getNetworkInfoMap();
        bc bcVar = new bc();
        h hVarV = hVar.V();
        bcVar.a(hVarV);
        bcVar.a(networkInfoMap);
        bcVar.a(avVar);
        if (bcVar.c() != 0) {
            avVar.A(bcVar.c());
        }
        qVarM.u = bcVar;
        if (networkInfoMap != null) {
            Object obj = networkInfoMap.get(ATAdConst.NETWORK_CUSTOM_KEY.WS_ACTION);
            if (obj instanceof q.a) {
                qVarM.a((q.a) obj);
            }
        }
        if (hVar.P() == 66 && hVarV.X()) {
            qVarM.a(new com.anythink.core.basead.adx.a(qVarM, avVar, hVarV));
        }
    }

    public static void a(com.anythink.core.common.f.b bVar) {
        a(bVar, false);
    }

    public static void a(com.anythink.core.common.f.b bVar, boolean z) {
        try {
            av unitGroupInfo = bVar.d().getUnitGroupInfo();
            h hVarH = bVar.h();
            q qVarM = unitGroupInfo.M();
            if (qVarM != null) {
                a(qVarM, new y(z ? 2 : 1, unitGroupInfo, hVarH), true);
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(bc bcVar) {
        e.a(bcVar);
    }

    public static void a(final h hVar, final List<av> list, final long j2, final int i2, final int i3) {
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.b.d.b.1
            @Override // java.lang.Runnable
            public final void run() {
                String str = b.a;
                JSONArray jSONArray = new JSONArray();
                hVar.g(j2);
                hVar.h(System.currentTimeMillis());
                hVar.q = i2;
                for (int i4 = 0; i4 < list.size(); i4++) {
                    av avVar = (av) list.get(i4);
                    if (avVar.m() != 7 && avVar.k()) {
                        try {
                            int iP = avVar.p();
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("sorttype", iP);
                            jSONObject.put("unit_id", avVar.u());
                            jSONObject.put("bidresult", avVar.O());
                            jSONObject.put("bidprice", avVar.L() ? String.valueOf(avVar.y()) : "0");
                            jSONObject.put(j.ao, avVar.L() ? String.valueOf(avVar.ag()) : "0");
                            jSONObject.put("nw_firm_id", String.valueOf(avVar.d()));
                            jSONObject.put(az.m, avVar.M() != null ? avVar.M().g : null);
                            jSONObject.put("rl_bid_status", avVar.N());
                            jSONObject.put("errormsg", avVar.A());
                            int iX = avVar.X();
                            String strValueOf = String.valueOf(i3);
                            if ("4".equals(strValueOf) || "2".equals(strValueOf) || "3".equals(strValueOf)) {
                                if (iX == -1) {
                                    try {
                                        iX = Integer.parseInt(strValueOf);
                                    } catch (Exception unused) {
                                    }
                                }
                                jSONObject.put("ad_type", iX);
                            }
                            jSONObject.put("ads_list_type", avVar.a());
                            jSONArray.put(jSONObject);
                        } catch (Exception unused2) {
                        }
                    }
                }
                hVar.y(String.valueOf(i3));
                hVar.r(jSONArray.toString());
                c.a(n.a().f()).a(11, hVar);
            }
        });
    }

    public static void a(q qVar, av avVar) {
        bc bcVar;
        if (qVar == null || avVar == null || (bcVar = qVar.u) == null || qVar.d()) {
            return;
        }
        double dA = com.anythink.core.common.o.h.a(avVar);
        double d2 = qVar.q;
        double dA2 = bcVar.a();
        double d3 = dA2 > 0.0d ? dA2 : d2;
        double dA3 = a.a(avVar);
        double dA4 = a.a(dA, d3, dA3);
        bcVar.a(dA);
        bcVar.b(d3);
        bcVar.c(dA3);
        bcVar.d(dA4);
        double dA5 = a(qVar, dA);
        double dA6 = a(qVar, dA4);
        boolean zW = bcVar.w();
        if (avVar.Z()) {
            com.anythink.core.common.a.a.a().a(qVar);
        }
        if (zW) {
            String strA = a.a(qVar, bcVar, dA5, dA6);
            if (TextUtils.isEmpty(strA)) {
                e.a(bcVar);
            } else if (bcVar != null) {
                f.a(strA, bcVar).a(0, (k) null);
            }
            ATBiddingNotice aTBiddingNotice = qVar.biddingNotice;
            if (aTBiddingNotice != null) {
                try {
                    aTBiddingNotice.notifyBidWin(dA5, dA6, new HashMap());
                } catch (Throwable th) {
                    th.printStackTrace();
                    Log.e("anythink", "notifyBidWin: error: " + th.getMessage());
                }
            }
            q.a aVarI = qVar.i();
            if (aVarI != null) {
                HashMap map = new HashMap();
                map.put(e, Double.valueOf(dA6));
                map.put(g, bcVar.b());
                aVarI.a(map);
            }
        } else {
            e.a(bcVar);
        }
        qVar.g();
    }

    public static void a(q qVar, y yVar, boolean z) {
        boolean zK;
        boolean zEquals;
        int i2;
        if (qVar == null) {
            return;
        }
        if (z) {
            com.anythink.core.b.f.a().a(yVar.j(), qVar);
            if (yVar.d()) {
                com.anythink.core.common.a.a.a().b(n.a().f(), qVar.token);
            }
        }
        if (qVar.d()) {
            StringBuilder sb = new StringBuilder();
            sb.append(a);
            sb.append(" [return] sendLossNotice, win or loss has been sent, do anything!\n bid id: ");
            sb.append(qVar.token);
            return;
        }
        double sortPrice = qVar.getSortPrice();
        int iD = qVar.d;
        av avVarF = qVar != null ? qVar.f() : null;
        boolean z3 = true;
        if (avVarF != null) {
            sortPrice = com.anythink.core.common.o.h.a(avVarF);
            iD = avVarF.d();
            zK = avVarF.k();
        } else {
            zK = true;
        }
        if (yVar.e() <= 0.0d || yVar.e() <= sortPrice) {
            z3 = zK;
        } else {
            sortPrice = yVar.e();
            iD = qVar.d;
        }
        double dA = yVar.a();
        String strC = yVar.c();
        if (dA > 0.0d) {
            i2 = -1;
            zEquals = TextUtils.equals("102", strC);
            sortPrice = dA;
        } else {
            zEquals = z3;
            i2 = iD;
        }
        int iF = yVar.f();
        double sortPrice2 = qVar.getSortPrice();
        int i3 = qVar.d;
        if (sortPrice <= sortPrice2) {
            sortPrice = 0.01d + sortPrice2;
        }
        double d2 = sortPrice;
        double dQ = yVar.q();
        double dA2 = a.a(d2, dQ);
        String strB = strC != null ? strC : a.b(zEquals, iF, i3);
        e.a(yVar, d2, strB, dQ, dA2, qVar.originPrice);
        double dA3 = a(qVar, dA2);
        if (yVar.d()) {
            com.anythink.core.common.a.a.a().a(qVar);
        }
        if (yVar.t() && !strB.equals(HRConfig.GENDER_UNKNOWN)) {
            synchronized (qVar) {
                ATBiddingNotice aTBiddingNotice = qVar.biddingNotice;
                if (aTBiddingNotice != null) {
                    HashMap map = new HashMap(3);
                    map.put(ATBiddingNotice.ADN_ID, Integer.valueOf(a.a(zEquals, i2, i3)));
                    try {
                        aTBiddingNotice.notifyBidLoss(a.a(zEquals, iF), dA3, map);
                    } catch (Throwable th) {
                        th.printStackTrace();
                        Log.e("anythink", "notifyBidLoss: error: " + th.getMessage());
                    }
                }
            }
            String str = strB;
            String strA = a.a(qVar, yVar, i2, zEquals, dA3, strB);
            if (!TextUtils.isEmpty(strA)) {
                a(strA);
            }
            q.a aVarI = qVar.i();
            if (aVarI != null) {
                HashMap map2 = new HashMap();
                map2.put(b, Double.valueOf(dA3));
                map2.put(g, yVar.b());
                map2.put(c, str);
                aVarI.b(map2);
            }
        }
        qVar.e();
        qVar.g();
    }

    public static void a(q qVar, boolean z, double d2, boolean z3) {
        String strReplace;
        if (qVar == null) {
            return;
        }
        double d3 = qVar.l;
        String str = qVar.j;
        int i2 = qVar.d;
        if (d3 > 0.0d) {
            d2 *= d3;
        }
        if (z) {
            if (TextUtils.isEmpty(str)) {
                str = qVar.displayNoticeUrl;
            }
            if (!TextUtils.isEmpty(str)) {
                strReplace = str.replace(b, a.a(qVar, d2));
                a(strReplace);
            }
        } else {
            String str2 = qVar.displayNoticeUrl;
            if (!TextUtils.isEmpty(str2)) {
                strReplace = str2.replace(b, a.a(qVar, d2)).replace(c, a.b(z3, 2, i2));
                a(strReplace);
            }
        }
        synchronized (qVar) {
            ATBiddingNotice aTBiddingNotice = qVar.biddingNotice;
            if (aTBiddingNotice != null) {
                aTBiddingNotice.notifyBidDisplay(z, d2);
                if (z) {
                    qVar.e();
                }
            }
        }
    }

    private static void a(String str) {
        f.a(str).a(0, (k) null);
    }

    private static void a(String str, bc bcVar) {
        if (bcVar == null) {
            return;
        }
        f.a(str, bcVar).a(0, (k) null);
    }
}
