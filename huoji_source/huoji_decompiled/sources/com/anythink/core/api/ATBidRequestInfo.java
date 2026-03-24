package com.anythink.core.api;

import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.d.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class ATBidRequestInfo {
    public static final String BIDDING_REQUEST_TIMEOUT_TYPE = "Request Timeout.";
    public static final String BIDTOKEN_EMPTY_ERROR_TYPE = "Network BidToken or Custom bid info is Empty.";
    public static final String BIDTOKEN_OBTAIN_TIMEOUT_TYPE = "Request Token or Custom bid info Timeout.";
    public static final String BID_TYPE_ERROR_TYPE = "cpc bid type";
    public static final String INIT_ERROR_TYPE = "Network init error.";
    public static final String LESS_THAN_BID_FLOOR_TYPE = "less than bid floor";
    public static final String NO_ADAPTER_ERROR_TYPE = "There is no Network Adapter.";
    public static final String NO_SUPPORT_BIDDING_TYPE = "This network don't support header bidding in current TopOn's version.";
    public static final String RETURN_PARAMS_ERROR_TYPE = "The parameter is abnormal.";

    public static void fillBaseCommonParams(JSONObject jSONObject, String str, f fVar, av avVar) {
        if (jSONObject != null) {
            try {
                if (avVar.X() != -1) {
                    str = String.valueOf(avVar.X());
                }
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.FORMAT, str);
                jSONObject.put("ad_source_id", avVar.u());
                jSONObject.put("nw_firm_id", avVar.d());
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BIDDING_FLOOR, avVar.ae());
                if (n.a().u()) {
                    jSONObject.put("test", 1);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public abstract JSONObject toRequestJSONObject();
}
