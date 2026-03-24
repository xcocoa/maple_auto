package com.anythink.core.common.f;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import z2.ub0;

/* JADX INFO: loaded from: classes.dex */
public final class al implements Serializable {
    public String[] A;
    public String[] B;
    public String[] C;
    public String[] D;
    public String[] E;
    public String[] F;
    public Map<Integer, String[]> G;
    public String[] H;
    public String[] I;
    public String J;
    public String K;
    public String L;
    public String M;
    public String N;
    public String O;
    public String P;
    public String Q;
    public String R;
    public String S;
    public String T;
    public String U;
    public String V;
    public String W;
    public String X;
    public String Y;
    public String Z;
    public String a;
    public String aa;
    public String ab;
    public String ac;
    public String ad;
    public String ae;
    public String af;
    public String ag;
    public String ah;
    public String ai;
    public String aj;
    public String ak;
    public String al;
    public String am;
    public String an;
    public String ao;
    public String[] ap;
    public String aq;
    public String[] b;
    public String[] c;
    public String[] d;
    public String[] e;
    public String[] f;
    public String[] g;
    public String[] h;
    public String[] i;
    public String[] j;
    public String[] k;
    public String[] l;
    public String[] m;
    public String[] n;
    public String[] o;
    public String[] p;
    public String[] q;
    public String[] r;
    public String[] s;
    public String[] t;
    public String[] u;
    public String[] v;
    public String[] w;
    public String[] x;
    public String[] y;
    public String[] z;

    public static final al a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            al alVar = new al();
            alVar.a = jSONObject.optString("ks");
            alVar.b = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("nurl"));
            alVar.c = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("lurl"));
            alVar.d = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("imp"));
            alVar.e = com.anythink.core.common.o.i.a(jSONObject.optJSONArray(com.anythink.expressad.foundation.d.c.ca));
            alVar.f = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vstart"));
            alVar.g = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("v25"));
            alVar.h = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("v50"));
            alVar.i = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("v75"));
            alVar.j = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("v100"));
            alVar.k = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vpaused"));
            alVar.l = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vclick"));
            alVar.m = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vmute"));
            alVar.n = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vunmute"));
            alVar.o = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("ec_show"));
            alVar.p = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("ec_close"));
            alVar.q = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("apk_dl_star"));
            alVar.r = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("apk_dl_end"));
            alVar.s = com.anythink.core.common.o.i.a(jSONObject.optJSONArray(com.anythink.expressad.foundation.d.h.cM));
            alVar.t = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vresumed"));
            alVar.u = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vskip"));
            alVar.v = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vfail"));
            alVar.w = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("apk_start_install"));
            alVar.x = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("dp_start"));
            alVar.y = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("dp_succ"));
            alVar.z = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("app_install"));
            alVar.A = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("app_uninstall"));
            alVar.B = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("app_unknow"));
            alVar.D = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("dp_inst_fail"));
            alVar.C = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("dp_uninst_fail"));
            alVar.E = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vd_succ"));
            alVar.F = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vrewarded"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("v_p_tracking");
            if (jSONArrayOptJSONArray != null) {
                alVar.G = new HashMap();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    int iOptInt = jSONObjectOptJSONObject.optInt("play_sec");
                    alVar.G.put(Integer.valueOf(iOptInt), com.anythink.core.common.o.i.a(jSONObjectOptJSONObject.optJSONArray(ub0.OooO0OO)));
                }
            }
            alVar.H = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("load_success"));
            alVar.I = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("load_fail"));
            alVar.J = jSONObject.optString("tp_nurl");
            alVar.K = jSONObject.optString("tp_imp");
            alVar.L = jSONObject.optString("tp_click");
            alVar.M = jSONObject.optString("tp_vstart");
            alVar.N = jSONObject.optString("tp_v25");
            alVar.O = jSONObject.optString("tp_v50");
            alVar.P = jSONObject.optString("tp_v75");
            alVar.Q = jSONObject.optString("tp_v100");
            alVar.R = jSONObject.optString("tp_vpaused");
            alVar.S = jSONObject.optString("tp_vclick");
            alVar.T = jSONObject.optString("tp_vmute");
            alVar.U = jSONObject.optString("tp_vunmute");
            alVar.V = jSONObject.optString("tp_ec_show");
            alVar.W = jSONObject.optString("tp_ec_close");
            alVar.X = jSONObject.optString("tp_apk_dl_star");
            alVar.Y = jSONObject.optString("tp_apk_dl_end");
            alVar.Z = jSONObject.optString("tp_apk_install");
            alVar.aa = jSONObject.optString("tp_vresumed");
            alVar.ab = jSONObject.optString("tp_vskip");
            alVar.ac = jSONObject.optString("tp_vfail");
            alVar.ad = jSONObject.optString("tp_apk_start_install");
            alVar.ae = jSONObject.optString("tp_dp_start");
            alVar.af = jSONObject.optString("tp_dp_succ");
            alVar.ag = jSONObject.optString("tp_app_install");
            alVar.ah = jSONObject.optString("tp_app_uninstall");
            alVar.ai = jSONObject.optString("tp_app_unknow");
            alVar.ak = jSONObject.optString("tp_dp_inst_fail");
            alVar.aj = jSONObject.optString("tp_dp_uninst_fail");
            alVar.al = jSONObject.optString("tp_vd_succ");
            alVar.am = jSONObject.optString("tp_vrewarded");
            alVar.an = jSONObject.optString("tp_load_success");
            alVar.ao = jSONObject.optString("tp_load_fail");
            alVar.ap = com.anythink.core.common.o.i.a(jSONObject.optJSONArray("vready"));
            alVar.aq = jSONObject.optString("tp_ready");
            return alVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public final String A() {
        return this.J;
    }

    public final String B() {
        return this.K;
    }

    public final String C() {
        return this.L;
    }

    public final String D() {
        return this.M;
    }

    public final String E() {
        return this.N;
    }

    public final String F() {
        return this.O;
    }

    public final String G() {
        return this.P;
    }

    public final String H() {
        return this.Q;
    }

    public final String I() {
        return this.R;
    }

    public final String J() {
        return this.S;
    }

    public final String K() {
        return this.T;
    }

    public final String L() {
        return this.U;
    }

    public final String M() {
        return this.V;
    }

    public final String N() {
        return this.W;
    }

    public final String O() {
        return this.X;
    }

    public final String P() {
        return this.Y;
    }

    public final String Q() {
        return this.Z;
    }

    public final String[] R() {
        return this.t;
    }

    public final String[] S() {
        return this.u;
    }

    public final String[] T() {
        return this.v;
    }

    public final String[] U() {
        return this.w;
    }

    public final String[] V() {
        return this.x;
    }

    public final String[] W() {
        return this.y;
    }

    public final String[] X() {
        return this.z;
    }

    public final String[] Y() {
        return this.A;
    }

    public final String[] Z() {
        return this.B;
    }

    public final void a(String[] strArr) {
        this.e = strArr;
    }

    public final String[] a() {
        return this.H;
    }

    public final String aa() {
        return this.aa;
    }

    public final String ab() {
        return this.ab;
    }

    public final String ac() {
        return this.ac;
    }

    public final String ad() {
        return this.ad;
    }

    public final String ae() {
        return this.ae;
    }

    public final String af() {
        return this.af;
    }

    public final String ag() {
        return this.ag;
    }

    public final String ah() {
        return this.ah;
    }

    public final String ai() {
        return this.ai;
    }

    public final String aj() {
        return this.aj;
    }

    public final String ak() {
        return this.ak;
    }

    public final String al() {
        return this.al;
    }

    public final String am() {
        return this.am;
    }

    public final String an() {
        return this.an;
    }

    public final String ao() {
        return this.ao;
    }

    public final String[] ap() {
        return this.ap;
    }

    public final String aq() {
        return this.aq;
    }

    public final void b(String[] strArr) {
        this.q = strArr;
    }

    public final String[] b() {
        return this.I;
    }

    public final String c() {
        return this.a;
    }

    public final void c(String[] strArr) {
        this.r = strArr;
    }

    public final void d(String[] strArr) {
        this.s = strArr;
    }

    public final String[] d() {
        return this.b;
    }

    public final String[] e() {
        return this.c;
    }

    public final String[] f() {
        return this.d;
    }

    public final String[] g() {
        return this.e;
    }

    public final String[] h() {
        return this.f;
    }

    public final String[] i() {
        return this.g;
    }

    public final String[] j() {
        return this.h;
    }

    public final String[] k() {
        return this.i;
    }

    public final String[] l() {
        return this.j;
    }

    public final String[] m() {
        return this.k;
    }

    public final String[] n() {
        return this.l;
    }

    public final String[] o() {
        return this.m;
    }

    public final String[] p() {
        return this.n;
    }

    public final String[] q() {
        return this.o;
    }

    public final String[] r() {
        return this.p;
    }

    public final String[] s() {
        return this.q;
    }

    public final String[] t() {
        return this.r;
    }

    public final String[] u() {
        return this.s;
    }

    public final String[] v() {
        return this.C;
    }

    public final String[] w() {
        return this.D;
    }

    public final String[] x() {
        return this.E;
    }

    public final String[] y() {
        return this.F;
    }

    public final Map<Integer, String[]> z() {
        return this.G;
    }
}
