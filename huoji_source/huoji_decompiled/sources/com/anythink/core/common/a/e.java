package com.anythink.core.common.a;

import android.text.TextUtils;
import com.anythink.basead.b.a;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.al;
import com.anythink.core.common.f.n;
import com.anythink.expressad.foundation.d.r;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static com.anythink.core.common.f.j a(String str, JSONObject jSONObject, int i) {
        return a(str, jSONObject, i, false);
    }

    public static com.anythink.core.common.f.j a(String str, JSONObject jSONObject, int i, boolean z) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(h.e.e);
            if (jSONObjectOptJSONObject != null) {
                jSONObject = jSONObjectOptJSONObject;
            } else if (!jSONObject.has("seatbid")) {
                return null;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONArray("seatbid").optJSONObject(0);
            com.anythink.core.common.f.j jVar = new com.anythink.core.common.f.j();
            jVar.b(str);
            jVar.k(jSONObjectOptJSONObject2.optString(com.anythink.core.common.j.af));
            jVar.l(jSONObjectOptJSONObject2.optString("c_id"));
            jVar.x(jSONObjectOptJSONObject2.optString("pkg"));
            jVar.m(jSONObjectOptJSONObject2.optString("title"));
            jVar.n(jSONObjectOptJSONObject2.optString("desc"));
            jVar.i(jSONObjectOptJSONObject2.optInt(com.anythink.expressad.foundation.d.c.Y));
            jVar.o(jSONObjectOptJSONObject2.optString("icon_u"));
            jVar.q(jSONObjectOptJSONObject2.optString("full_u"));
            jVar.g(jSONObjectOptJSONObject2.optInt("unit_type"));
            jVar.r(jSONObjectOptJSONObject2.optString("tp_logo_u"));
            jVar.s(jSONObjectOptJSONObject2.optString(a.C0051a.k));
            jVar.t(jSONObjectOptJSONObject2.optString("video_u"));
            jVar.d(jSONObjectOptJSONObject2.optInt("video_l"));
            jVar.K(jSONObjectOptJSONObject2.optString("video_r"));
            jVar.L(jSONObjectOptJSONObject2.optString("ec_u"));
            jVar.u(jSONObjectOptJSONObject2.optString("store_u"));
            jVar.h(jSONObjectOptJSONObject2.optInt("link_type"));
            jVar.w(jSONObjectOptJSONObject2.optString("click_u"));
            jVar.v(jSONObjectOptJSONObject2.optString("deeplink"));
            jVar.q(jSONObjectOptJSONObject2.optInt("crt_type", 1));
            jVar.M(jSONObjectOptJSONObject2.optString("img_list"));
            jVar.N(jSONObjectOptJSONObject2.optString("banner_xhtml"));
            jVar.f(jSONObjectOptJSONObject2.optInt("offer_firm_id"));
            jVar.j(jSONObjectOptJSONObject2.optString("jump_url"));
            try {
                String strOptString = jSONObjectOptJSONObject2.optString("sdk_resp");
                if (!TextUtils.isEmpty(strOptString)) {
                    jVar.a(new JSONObject(strOptString).optString("data"));
                }
            } catch (Throwable unused) {
            }
            jVar.O(jSONObjectOptJSONObject2.optString(ATAdConst.KEY.APP_NAME));
            jVar.z(jSONObjectOptJSONObject2.optString("publisher"));
            jVar.A(jSONObjectOptJSONObject2.optString("app_version"));
            jVar.B(jSONObjectOptJSONObject2.optString("privacy"));
            jVar.C(jSONObjectOptJSONObject2.optString("permission"));
            jVar.c(jSONObjectOptJSONObject2.optString("app_desc"));
            jVar.i(jSONObjectOptJSONObject2.optString("mtr_ver"));
            jVar.r(jSONObjectOptJSONObject2.optInt("o_im_cap_sw", 2));
            jVar.s(jSONObjectOptJSONObject2.optInt("o_cl_cap_sw", 2));
            jVar.t(jSONObjectOptJSONObject2.optInt("c_im_cap_sw", 2));
            jVar.u(jSONObjectOptJSONObject2.optInt("c_cl_cap_sw", 2));
            if (i == 67) {
                jVar.a(2);
            } else {
                jVar.a(1);
            }
            jVar.a((n) ak.i(jSONObjectOptJSONObject2.optString("ctrl")));
            jVar.a(al.a(jSONObjectOptJSONObject2.optString("tk")));
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject2.optString("nw_info"));
                jVar.F(jSONObject2.optString("app_id"));
                jVar.G(jSONObject2.optString(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.APP_KEY));
                jVar.H(jSONObject2.optString("unit_id"));
            } catch (Throwable unused2) {
            }
            jVar.I(jSONObjectOptJSONObject2.optString("dsp_id", ""));
            jVar.J(jSONObjectOptJSONObject2.optString("dsp_oid", ""));
            jVar.o(jSONObjectOptJSONObject2.optInt(com.anythink.expressad.foundation.d.c.T, -1));
            jVar.p(jSONObjectOptJSONObject2.optInt("install_sw", -1));
            jVar.D(jSONObjectOptJSONObject2.optString("wv_ctrl"));
            jVar.e(jSONObjectOptJSONObject2.optInt("adp_type"));
            jVar.f(jSONObjectOptJSONObject2.optString("offer_html"));
            jVar.g(jSONObjectOptJSONObject2.optString(r.ab));
            jVar.d(jSONObjectOptJSONObject2.optString("wx_username"));
            jVar.e(jSONObjectOptJSONObject2.optString("wx_path"));
            jVar.c(jSONObjectOptJSONObject2.optInt("o_w"));
            jVar.d(jSONObjectOptJSONObject2.optInt("o_h"));
            if (z) {
                jSONObjectOptJSONObject2.put(com.anythink.core.common.f.j.c, 1);
            }
            jVar.b(jSONObjectOptJSONObject2.optInt(com.anythink.core.common.f.j.c));
            return jVar;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
