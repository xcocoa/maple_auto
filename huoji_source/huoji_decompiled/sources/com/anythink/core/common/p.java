package com.anythink.core.common;

import android.text.TextUtils;
import com.adjust.sdk.Adjust;
import com.adjust.sdk.AdjustEvent;
import com.appsflyer.AppsFlyerLib;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class p {
    private static volatile p c;
    private final String a = "1";
    private final String b = "2";

    private p() {
    }

    public static p a() {
        if (c == null) {
            synchronized (p.class) {
                if (c == null) {
                    c = new p();
                }
            }
        }
        return c;
    }

    public static void a(com.anythink.core.common.f.h hVar) {
        if (hVar == null) {
            return;
        }
        try {
            com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(hVar.ah());
            if (fVarA != null) {
                String strO = fVarA.O();
                if (TextUtils.isEmpty(strO)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(strO);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("1");
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("token");
                    if (!TextUtils.isEmpty(strOptString)) {
                        String strX = hVar.x();
                        double dE = hVar.E() / 1000.0d;
                        String strT = hVar.t();
                        try {
                            AdjustEvent adjustEvent = new AdjustEvent(strOptString);
                            adjustEvent.setRevenue(dE, strX);
                            adjustEvent.setOrderId(strT);
                            Adjust.trackEvent(adjustEvent);
                        } catch (Throwable unused) {
                        }
                    }
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("2");
                if (jSONObjectOptJSONObject2 != null) {
                    int iOptInt = jSONObjectOptJSONObject2.optInt("rtye");
                    HashMap map = new HashMap();
                    map.put("af_order_id", hVar.t());
                    map.put("af_content_id", hVar.ah());
                    map.put("af_content_type", hVar.aj());
                    map.put("af_revenue", Double.valueOf(iOptInt == 2 ? hVar.E() : hVar.E() / 1000.0d));
                    map.put("af_currency", "USD");
                    AppsFlyerLib.getInstance().trackEvent(com.anythink.core.common.b.n.a().f(), "af_ad_view", map);
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private static void a(String str, double d, String str2, String str3) {
        try {
            AdjustEvent adjustEvent = new AdjustEvent(str);
            adjustEvent.setRevenue(d, str2);
            adjustEvent.setOrderId(str3);
            Adjust.trackEvent(adjustEvent);
        } catch (Throwable unused) {
        }
    }
}
