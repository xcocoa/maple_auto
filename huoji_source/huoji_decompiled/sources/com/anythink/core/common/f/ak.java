package com.anythink.core.common.f;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ak extends n {
    private int n;
    private int o;
    private int p;

    private void Y(int i) {
        this.o = i;
    }

    private void Z(int i) {
        this.n = i;
    }

    private void aa(int i) {
        this.p = i;
    }

    public static ak i(String str) {
        int i;
        ak akVar = new ak();
        if (TextUtils.isEmpty(str)) {
            return akVar;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            akVar.s(jSONObject.optInt("f_t"));
            int iOptInt = jSONObject.optInt("v_c");
            if (iOptInt == 1) {
                iOptInt = 0;
            } else if (iOptInt == 2) {
                iOptInt = 1;
            }
            akVar.t(iOptInt);
            akVar.u(jSONObject.optInt("s_b_t"));
            if (jSONObject.has("s_b_d")) {
                akVar.v(jSONObject.optInt("s_b_d"));
            }
            int iOptInt2 = jSONObject.optInt("e_c_a");
            if (iOptInt2 == 1) {
                iOptInt2 = 0;
            } else if (iOptInt2 == 2) {
                iOptInt2 = 1;
            } else if (iOptInt2 == 3) {
                iOptInt2 = 2;
            }
            akVar.w(iOptInt2);
            int iOptInt3 = jSONObject.optInt("ak_cfm");
            if (iOptInt3 == 1) {
                iOptInt3 = 0;
            } else if (iOptInt3 == 2) {
                iOptInt3 = 1;
            }
            akVar.o(iOptInt3);
            akVar.n(jSONObject.optInt("m_t"));
            int iOptInt4 = jSONObject.optInt("cm");
            if (iOptInt4 == 1) {
                iOptInt4 = 0;
            } else if (iOptInt4 == 2) {
                iOptInt4 = 1;
            }
            akVar.n = iOptInt4;
            akVar.e(jSONObject.optInt("ipua"));
            akVar.f(jSONObject.optInt("clua"));
            akVar.m(jSONObject.optInt("dp_cm"));
            akVar.o = jSONObject.optInt("l_o_num");
            akVar.l(jSONObject.optInt("ld_t"));
            akVar.z(jSONObject.optInt("ec_r"));
            akVar.A(jSONObject.optInt("ec_s_t"));
            akVar.B(jSONObject.optInt("ec_l_t"));
            akVar.a(jSONObject.optLong("or_t"));
            akVar.g(jSONObject.optInt("rv_fail_reward"));
            akVar.h(jSONObject.optInt("cl_sz"));
            akVar.k(jSONObject.optInt("si_fit"));
            if (jSONObject.has("at_cl_sw")) {
                akVar.C(jSONObject.optInt("at_cl_sw"));
            }
            if (jSONObject.has("at_ct_ti")) {
                akVar.D(jSONObject.optInt("at_ct_ti"));
            }
            if (jSONObject.has("int_cl_sw")) {
                akVar.E(jSONObject.optInt("int_cl_sw"));
            }
            if (jSONObject.has("int_cl_ti")) {
                akVar.F(jSONObject.optInt("int_cl_ti"));
            }
            if (jSONObject.has("sh_ec")) {
                akVar.G(jSONObject.optInt("sh_ec"));
            }
            if (jSONObject.has("ap_arpt")) {
                akVar.H(jSONObject.optInt("ap_arpt"));
            }
            if (jSONObject.has("ap_pasbl")) {
                akVar.I(jSONObject.optInt("ap_pasbl"));
            }
            if (jSONObject.has("inter_type")) {
                akVar.f(jSONObject.optString("inter_type"));
            }
            if (jSONObject.has("shk_sw")) {
                akVar.J(jSONObject.optInt("shk_sw"));
            }
            if (jSONObject.has("shk_strength_and")) {
                akVar.K(jSONObject.optInt("shk_strength_and"));
            }
            if (jSONObject.has("shk_time")) {
                akVar.d(jSONObject.optLong("shk_time"));
            }
            if (jSONObject.has("click_cache_time")) {
                akVar.L(jSONObject.optInt("click_cache_time"));
            }
            if (jSONObject.has("click_nt_sw")) {
                akVar.M(jSONObject.optInt("click_nt_sw"));
            }
            if (jSONObject.has("ft_cl_sz")) {
                akVar.i(jSONObject.optInt("ft_cl_sz"));
            } else {
                akVar.i(1);
            }
            if (jSONObject.has("sh_cl_itp")) {
                akVar.j(jSONObject.optInt("sh_cl_itp"));
            } else {
                akVar.j(2);
            }
            akVar.N(jSONObject.optInt("shm_t", -1));
            if (jSONObject.has("ready_rate")) {
                akVar.O(jSONObject.optInt("ready_rate"));
            } else {
                akVar.O(100);
            }
            if (jSONObject.has("rsdl_rate")) {
                akVar.P(jSONObject.optInt("rsdl_rate"));
            } else {
                akVar.P(0);
            }
            if (jSONObject.has("video_ctn_type")) {
                akVar.Q(jSONObject.optInt("video_ctn_type"));
            } else {
                akVar.Q(2);
            }
            if (jSONObject.has("preload_offer_html")) {
                akVar.a(jSONObject.optInt("preload_offer_html") == 1);
            } else {
                akVar.a(true);
            }
            if (jSONObject.has("re_monitor")) {
                akVar.b(jSONObject.optInt("re_monitor") == 1);
                i = 0;
            } else {
                i = 0;
                akVar.b(false);
            }
            akVar.p = jSONObject.optInt(com.anythink.core.common.j.aq, i);
            akVar.c(jSONObject.optInt("at_cl_img", 2) == 1);
            akVar.d(jSONObject.optInt("at_cl_video", 2) == 1);
            akVar.e(jSONObject.optInt("at_cl_ec", 2) == 1);
            akVar.e(jSONObject.optLong("at_cl_pt", com.anythink.expressad.exoplayer.f.a));
            akVar.f(jSONObject.optLong("at_cl_pct", com.anythink.expressad.exoplayer.f.a));
            akVar.g(jSONObject.optLong("at_cl_ec_pt", com.anythink.expressad.exoplayer.f.a));
            akVar.h(jSONObject.optLong("at_cl_ec_pct", com.anythink.expressad.exoplayer.f.a));
            akVar.i(jSONObject.optLong("or_img_t", com.anythink.expressad.exoplayer.f.a));
            akVar.S(jSONObject.optInt("animate_type", -1));
            akVar.R(jSONObject.optInt("render_wv_ld", 2));
            akVar.T(jSONObject.optInt("cl_invalid_sw", 2));
            akVar.U(jSONObject.optInt("stc_sw", 1));
            akVar.V(jSONObject.optInt("close_button_m", 0));
            akVar.W(jSONObject.optInt("cgf_sw", 1));
            akVar.j(jSONObject.optLong("cgf_t", 0L));
            akVar.g(jSONObject.optString("cgf_list", ""));
            akVar.h(jSONObject.optString("qa_po", ""));
            akVar.b(jSONObject.optInt("lp_pop", 2));
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("shk_obj");
                if (jSONObjectOptJSONObject != null) {
                    akVar.a(jSONObjectOptJSONObject.optInt("shk_type", 1));
                    akVar.a(jSONObjectOptJSONObject.optString("shk_icon", ""));
                    akVar.b(jSONObjectOptJSONObject.optString("shk_text_l", ""));
                    akVar.c(jSONObjectOptJSONObject.optString("shk_text_m", ""));
                    akVar.d(jSONObjectOptJSONObject.optString("shk_text_s", ""));
                }
            } catch (Throwable unused) {
            }
            akVar.y(jSONObject.optInt("s_c_t", 0));
            akVar.X(jSONObject.optInt("v_cls", 1));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return akVar;
    }

    public final int at() {
        return this.o;
    }

    public final int au() {
        return this.n;
    }

    public final int av() {
        return this.p;
    }
}
