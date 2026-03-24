package com.iflytek.voiceads.param;

import com.anythink.core.api.ATAdConst;
import com.iflytek.voiceads.bean.AdDeal;
import com.iflytek.voiceads.bean.AdDebug;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class g {
    public static int[] a = {1, 2};

    public static String a(a aVar) {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adunit_id", aVar.a("adunit_id"));
            JSONArray jSONArray2 = new JSONArray();
            for (int i : a) {
                jSONArray2.put(i);
            }
            jSONObject.put("dp_support_status", jSONArray2);
            jSONObject.put("voice_ad_support_status", 1);
            jSONObject.put("secure", 3);
            if (aVar.a("debug") != null) {
                AdDebug adDebug = (AdDebug) aVar.a("debug");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("action_type", adDebug.action_type);
                jSONObject2.put("landing_type", adDebug.landing_type);
                jSONObject.put("debug", jSONObject2);
            }
            if (aVar.a("bid_floor") != null) {
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BIDDING_FLOOR, aVar.e("bid_floor"));
            }
            Object objA = aVar.a("pmp");
            if (objA != null) {
                JSONArray jSONArray3 = new JSONArray();
                for (AdDeal adDeal : (List) objA) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", adDeal.id);
                    jSONObject3.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BIDDING_FLOOR, adDeal.bidFloor);
                    jSONArray3.put(jSONObject3);
                }
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("deals", jSONArray3);
                jSONObject.put("pmp", jSONObject4);
            }
            jSONArray.put(jSONObject);
            return jSONArray.toString();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getImpsInfo:" + e.getMessage());
            return "";
        }
    }
}
