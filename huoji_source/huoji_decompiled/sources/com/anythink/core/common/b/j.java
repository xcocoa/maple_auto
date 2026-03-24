package com.anythink.core.common.b;

import android.text.TextUtils;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATRewardInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.basead.adx.api.IATAdxHandler;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.az;
import com.anythink.core.d.f;
import com.umeng.commonsdk.proguard.v;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class j extends ATAdInfo {
    private Map<String, Object> C;
    private double F;
    private ATBaseAdAdapter a;
    private Map<String, Object> x;
    private int b = -1;
    private String c = "";
    private int d = -1;
    private double e = 0.0d;
    private int f = 0;
    private String g = "";
    private Double h = Double.valueOf(0.0d);
    private String i = "";
    private String j = "";
    private String k = "";
    private String l = "";
    private String m = "unknow";
    private String n = "Network";
    private String o = "";
    private int p = 1;
    private int q = 0;
    private String r = "";
    private String s = "";
    private int t = 0;
    private String u = "";
    private String v = "";
    private Map<String, Object> w = null;
    private String y = "";
    private int z = 0;
    private String A = "";
    private int B = 0;
    private int D = 1;
    private String E = "";
    private IATAdxHandler G = null;

    public static j a(BaseAd baseAd, ATBaseAdAdapter aTBaseAdAdapter) {
        if (baseAd == null) {
            return new j();
        }
        com.anythink.core.common.f.h detail = baseAd.getDetail();
        j jVarA = a(detail);
        jVarA.x = baseAd.getNetworkInfoMap();
        if (aTBaseAdAdapter != null && detail != null) {
            try {
                if (detail.X()) {
                    jVarA.G = aTBaseAdAdapter.getUnitGroupInfo().M().h();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return jVarA;
    }

    public static j a(d dVar) {
        return dVar != null ? a(a(dVar.getTrackingInfo()), dVar) : new j();
    }

    private static j a(j jVar, d dVar) {
        if (dVar != null && (dVar instanceof ATBaseAdAdapter)) {
            ATBaseAdAdapter aTBaseAdAdapter = (ATBaseAdAdapter) dVar;
            jVar.a = aTBaseAdAdapter;
            jVar.x = aTBaseAdAdapter.getNetworkInfoMap();
            try {
                if (jVar.a.getTrackingInfo().X()) {
                    jVar.G = jVar.a.getUnitGroupInfo().M().h();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return jVar;
    }

    private static j a(j jVar, com.anythink.core.common.f.h hVar) {
        String str;
        ATRewardInfo aTRewardInfoZ;
        ATRewardInfo aTRewardInfo;
        jVar.b = hVar.P();
        jVar.c = hVar.F();
        jVar.d = hVar.I();
        jVar.f = hVar.D();
        jVar.e = hVar.n();
        jVar.F = hVar.d();
        jVar.i = hVar.p();
        jVar.g = hVar.t();
        jVar.h = Double.valueOf(jVar.e / 1000.0d);
        jVar.j = hVar.w();
        jVar.l = com.anythink.core.common.o.h.d(hVar.aj());
        String strAh = hVar.ah();
        String strE = hVar.e();
        if (TextUtils.isEmpty(strE) || TextUtils.equals(strAh, strE)) {
            str = "";
        } else {
            str = strAh;
            strAh = strE;
        }
        jVar.k = strAh;
        jVar.E = str;
        jVar.m = hVar.v();
        jVar.n = hVar.P() == 35 ? "Cross_Promotion" : hVar.P() == 66 ? "Adx" : "Network";
        jVar.o = hVar.s();
        jVar.p = hVar.u();
        jVar.q = hVar.Q();
        jVar.r = hVar.B;
        if (TextUtils.equals(h.j.b, jVar.l)) {
            Map<String, ATRewardInfo> mapY = hVar.y();
            if (mapY != null && mapY.containsKey(jVar.r) && (aTRewardInfo = mapY.get(jVar.r)) != null) {
                jVar.s = aTRewardInfo.rewardName;
                jVar.t = aTRewardInfo.rewardNumber;
            }
            if ((TextUtils.isEmpty(jVar.s) || jVar.t == 0) && (aTRewardInfoZ = hVar.z()) != null) {
                jVar.s = aTRewardInfoZ.rewardName;
                jVar.t = aTRewardInfoZ.rewardNumber;
            }
        }
        jVar.v = n.a().m();
        jVar.u = n.a().n();
        jVar.w = hVar.A();
        jVar.y = hVar.m();
        jVar.z = hVar.U();
        jVar.A = hVar.aa();
        jVar.B = hVar.af();
        Map<String, Object> mapH = hVar.h();
        if (mapH != null) {
            jVar.C = new HashMap(mapH);
        }
        jVar.D = hVar.g();
        return jVar;
    }

    private static j a(com.anythink.core.common.f.h hVar) {
        j jVar = new j();
        return hVar != null ? a(jVar, hVar) : jVar;
    }

    public static j a(com.anythink.core.common.f.h hVar, d dVar) {
        return a(a(hVar), dVar);
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getABTestId() {
        return this.B;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getAdNetworkType() {
        return this.n;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getAdsourceId() {
        return this.c;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getAdsourceIndex() {
        return this.d;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final IATAdxHandler getAdxHandler() {
        return this.G;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final double getBidFloor() {
        return this.F;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getChannel() {
        return this.v;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getCountry() {
        return this.j;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getCurrency() {
        return this.i;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getCustomRule() {
        return this.w != null ? new JSONObject(this.w).toString() : "";
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getDismissType() {
        return this.z;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final double getEcpm() {
        return this.e;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getEcpmLevel() {
        return this.p;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getEcpmPrecision() {
        return this.m;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Map<String, Object> getExtInfoMap() {
        return this.x;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Map<String, Object> getLocalExtra() {
        return this.C;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getNetworkFirmId() {
        return this.b;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getNetworkPlacementId() {
        return this.o;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getPlacementType() {
        return this.D;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final Double getPublisherRevenue() {
        return this.h;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getRewardUserCustomData() {
        ATBaseAdAdapter aTBaseAdAdapter = this.a;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.getUserCustomData() : "";
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getScenarioId() {
        return this.r;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getScenarioRewardName() {
        return this.s;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getScenarioRewardNumber() {
        return this.t;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int getSegmentId() {
        return this.q;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getSharedPlacementId() {
        return this.E;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getShowId() {
        return this.g;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getSubChannel() {
        return this.u;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getTopOnAdFormat() {
        return this.l;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getTopOnPlacementId() {
        return this.k;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getTpBidId() {
        return this.y;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final String getWaterfallId() {
        return this.A;
    }

    @Override // com.anythink.core.api.ATAdInfo
    public final int isHeaderBiddingAdsource() {
        return this.f;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.g);
            jSONObject.put("publisher_revenue", this.h);
            jSONObject.put("currency", this.i);
            jSONObject.put(v.J, this.j);
            jSONObject.put("adunit_id", this.k);
            jSONObject.put("adunit_format", this.l);
            jSONObject.put(com.anythink.core.common.j.R, this.m);
            jSONObject.put("network_type", this.n);
            jSONObject.put("network_placement_id", this.o);
            jSONObject.put(com.anythink.core.common.j.Q, this.p);
            jSONObject.put("segment_id", this.q);
            if (!TextUtils.isEmpty(this.r)) {
                jSONObject.put("scenario_id", this.r);
            }
            if (!TextUtils.isEmpty(this.s) && this.t != 0) {
                jSONObject.put("scenario_reward_name", this.s);
                jSONObject.put("scenario_reward_number", this.t);
            }
            if (!TextUtils.isEmpty(this.v)) {
                jSONObject.put("channel", this.v);
            }
            if (!TextUtils.isEmpty(this.u)) {
                jSONObject.put("sub_channel", this.u);
            }
            Map<String, Object> map = this.w;
            if (map != null && map.size() > 0) {
                jSONObject.put("custom_rule", new JSONObject(this.w));
            }
            jSONObject.put("network_firm_id", this.b);
            jSONObject.put("adsource_id", this.c);
            jSONObject.put("adsource_index", this.d);
            jSONObject.put("adsource_price", this.e);
            jSONObject.put("adsource_isheaderbidding", this.f);
            Map<String, Object> map2 = this.x;
            if (map2 != null && map2.size() > 0) {
                jSONObject.put("ext_info", new JSONObject(this.x));
            }
            ATBaseAdAdapter aTBaseAdAdapter = this.a;
            if (aTBaseAdAdapter != null) {
                jSONObject.put("reward_custom_data", aTBaseAdAdapter.getUserCustomData());
            }
            if (!TextUtils.isEmpty(this.y)) {
                jSONObject.put(az.m, this.y);
            }
            int i = this.z;
            if (i != 0) {
                jSONObject.put("dismiss_type", i);
            }
            if (!TextUtils.isEmpty(this.A)) {
                jSONObject.put(f.a.T, this.A);
            }
            jSONObject.put(com.anythink.core.common.h.c.I, this.B);
            Map<String, Object> map3 = this.C;
            if (map3 != null && map3.size() > 0) {
                jSONObject.put("user_load_extra_data", new JSONObject(this.C));
            }
            jSONObject.put("placement_type", this.D);
            if (!TextUtils.isEmpty(this.E)) {
                jSONObject.put("shared_placement_id", this.E);
            }
            jSONObject.put("bid_floor", this.F);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }
}
