package com.iflytek.voiceads.param;

import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class b {
    public static String a(a aVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app_ver", aVar.a("app_ver"));
            return jSONObject.toString();
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "getAppInfo:" + e.getMessage());
            return "";
        }
    }
}
