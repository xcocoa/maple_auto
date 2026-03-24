package com.anythink.network.adx;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.common.a.d;
import com.anythink.core.d.f;
import com.anythink.core.d.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdxBidRequestInfo extends ATBidRequestInfo {
    public JSONObject a;

    public AdxBidRequestInfo(Context context, String str) {
        JSONObject jSONObject = new JSONObject();
        this.a = jSONObject;
        try {
            jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.SUPPORT_TEMPLATE_VERSION, 1);
            f fVarB = h.a(context).b(str);
            if (fVarB != null) {
                int iAG = fVarB.aG();
                if (iAG > 0) {
                    List<com.anythink.core.common.a.f> listA = d.a().a(iAG);
                    if (listA.size() > 0) {
                        this.a.put(f.a.P, a(listA));
                    }
                }
                int iAF = fVarB.aF();
                if (iAF > 0) {
                    List<com.anythink.core.common.a.f> listB = d.a().b(iAF);
                    if (listB.size() > 0) {
                        this.a.put(f.a.O, a(listB));
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static JSONObject a(List<com.anythink.core.common.a.f> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap map = new HashMap();
            for (com.anythink.core.common.a.f fVar : list) {
                List arrayList = (List) map.get(fVar.a());
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(fVar.a(), arrayList);
                }
                arrayList.add(fVar.b());
            }
            for (Map.Entry entry : map.entrySet()) {
                jSONObject.put((String) entry.getKey(), new JSONArray((Collection) entry.getValue()));
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public void fillAdAcceptType() {
        try {
            JSONObject jSONObject = this.a;
            if (jSONObject != null) {
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADP_ACCEPT_TYPE, new JSONArray(ATAdConst.AD_SUPPORT_TYPE_ARRAY));
            }
        } catch (Throwable unused) {
        }
    }

    public void fillBannerData(Map<String, Object> map) {
        try {
            String string = map.get(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.BANNER_SIZE).toString();
            if (TextUtils.isEmpty(string)) {
                return;
            }
            String[] strArrSplit = string.split("x");
            int i = Integer.parseInt(strArrSplit[0]);
            int i2 = Integer.parseInt(strArrSplit[1]);
            this.a.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, i);
            this.a.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, i2);
            this.a.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADP_ACCEPT_TYPE, new JSONArray(ATAdConst.AD_SUPPORT_TYPE_ARRAY));
        } catch (Throwable unused) {
        }
    }

    public void fillInterstitial(Map<String, Object> map) {
        try {
            if (map.containsKey("unit_type")) {
                String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_type");
                if (!TextUtils.isEmpty(stringFromMap)) {
                    this.a.put("unit_type", Integer.parseInt(stringFromMap));
                }
                fillAdAcceptType();
            }
        } catch (Throwable unused) {
        }
    }

    public void fillSplashData() {
        try {
            this.a.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.GET_OFFER, 2);
            fillAdAcceptType();
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.api.ATBidRequestInfo
    public JSONObject toRequestJSONObject() {
        return this.a;
    }
}
