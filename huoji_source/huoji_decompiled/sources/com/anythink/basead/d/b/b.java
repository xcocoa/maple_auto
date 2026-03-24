package com.anythink.basead.d.b;

import com.anythink.basead.b.a;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ai;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.al;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.j;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.d.r;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    public static final String a = "sdk_updatetime";

    public static final ai a(m mVar, JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(h.e.e);
            if (jSONObjectOptJSONObject == null) {
                return null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONArray("offers").optJSONObject(0);
            ai aiVar = new ai();
            aiVar.a(mVar.f);
            aiVar.k(jSONObjectOptJSONObject2.optString(j.af));
            aiVar.l(jSONObjectOptJSONObject2.optString("c_id"));
            aiVar.x(jSONObjectOptJSONObject2.optString("pkg"));
            aiVar.m(jSONObjectOptJSONObject2.optString("title"));
            aiVar.n(jSONObjectOptJSONObject2.optString("desc"));
            aiVar.i(jSONObjectOptJSONObject2.optInt(c.Y));
            aiVar.o(jSONObjectOptJSONObject2.optString("icon_u"));
            aiVar.q(jSONObjectOptJSONObject2.optString("full_u"));
            aiVar.g(jSONObjectOptJSONObject2.optInt("unit_type"));
            aiVar.r(jSONObjectOptJSONObject2.optString("tp_logo_u"));
            aiVar.s(jSONObjectOptJSONObject2.optString(a.C0051a.k));
            aiVar.t(jSONObjectOptJSONObject2.optString("video_u"));
            aiVar.d(jSONObjectOptJSONObject2.optInt("video_l"));
            aiVar.K(jSONObjectOptJSONObject2.optString("video_r"));
            aiVar.L(jSONObjectOptJSONObject2.optString("ec_u"));
            aiVar.u(jSONObjectOptJSONObject2.optString("store_u"));
            aiVar.h(jSONObjectOptJSONObject2.optInt("link_type"));
            aiVar.w(jSONObjectOptJSONObject2.optString("click_u"));
            aiVar.v(jSONObjectOptJSONObject2.optString("deeplink"));
            aiVar.b(jSONObjectOptJSONObject2.optInt("r_target"));
            aiVar.a(jSONObjectOptJSONObject2.optLong("expire"));
            aiVar.y(jSONObjectOptJSONObject2.optString("ad_logo_title"));
            aiVar.q(jSONObjectOptJSONObject2.optInt("crt_type", 1));
            aiVar.M(jSONObjectOptJSONObject2.optString("img_list"));
            aiVar.N(jSONObjectOptJSONObject2.optString("banner_xhtml"));
            aiVar.b(jSONObject.optLong(a));
            aiVar.f(jSONObjectOptJSONObject2.optInt("offer_firm_id"));
            aiVar.j(jSONObjectOptJSONObject2.optString("jump_url"));
            aiVar.O(jSONObjectOptJSONObject2.optString(ATAdConst.KEY.APP_NAME));
            aiVar.z(jSONObjectOptJSONObject2.optString("publisher"));
            aiVar.A(jSONObjectOptJSONObject2.optString("app_version"));
            aiVar.B(jSONObjectOptJSONObject2.optString("privacy"));
            aiVar.C(jSONObjectOptJSONObject2.optString("permission"));
            aiVar.c(jSONObjectOptJSONObject2.optString("app_desc"));
            aiVar.D(jSONObjectOptJSONObject2.optString("wv_ctrl"));
            aiVar.a((n) ak.i(jSONObjectOptJSONObject2.optString("ctrl")));
            aiVar.a(al.a(jSONObjectOptJSONObject2.optString("tk")));
            aiVar.e(jSONObjectOptJSONObject2.optInt("adp_type"));
            aiVar.f(jSONObjectOptJSONObject2.optString("offer_html"));
            aiVar.g(jSONObjectOptJSONObject2.optString(r.ab));
            aiVar.d(jSONObjectOptJSONObject2.optString("wx_username"));
            aiVar.e(jSONObjectOptJSONObject2.optString("wx_path"));
            aiVar.c(jSONObjectOptJSONObject2.optInt("o_w"));
            aiVar.d(jSONObjectOptJSONObject2.optInt("o_h"));
            return aiVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}
