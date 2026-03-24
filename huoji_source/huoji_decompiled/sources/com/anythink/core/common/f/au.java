package com.anythink.core.common.f;

import android.text.TextUtils;
import com.anythink.core.d.f;
import io.reactivex.annotations.SchedulerSupport;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class au {
    public static final String N = "ofm_tid_key";
    public static final int O = 1;
    public static final int P = 2;
    public static final int Q = 3;
    public static final int R = 4;
    public static final int S = 5;
    public static final int T = 6;
    public static final int U = 7;
    public static final int V = 8;
    public static final int W = 10;
    public static final int X = 0;
    public static final int Y = 1;
    public static final int Z = 2;
    public static final int aa = 3;
    public static final int ab = 4;
    public static final int ac = 5;
    public static final int ad = 8;
    public static final String ae = "0";
    public static final String af = "1";
    public static final String ag = "2";
    public static final String ah = "3";
    public static final String ai = "4";
    private String a;
    public String aj;
    public String ak;
    public String al;
    public String am;
    public String an;
    public int ao;
    public int ap;
    public String aq;
    public int ar;
    public int as;
    public int at;
    public int au = -1;
    private String b;
    private int c;
    private JSONObject d;
    private int e;
    private Object f;

    private JSONObject a() {
        return this.d;
    }

    private void a(int i) {
        this.ao = i;
    }

    private void a(String str) {
        this.an = str;
    }

    private int b() {
        return this.at;
    }

    private void b(int i) {
        this.ap = i;
    }

    private int c() {
        return this.ar;
    }

    private String d() {
        return this.an;
    }

    private int e() {
        return this.ao;
    }

    private int f() {
        return this.ap;
    }

    public JSONObject F(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", i);
            jSONObject.put("pl_id", this.aj);
            jSONObject.put("req_id", this.ak);
            if (!TextUtils.isEmpty(this.al)) {
                jSONObject.put("format", Integer.parseInt(this.al));
            }
            jSONObject.put("ps_id", com.anythink.core.common.b.n.a().q());
            String strG = com.anythink.core.common.b.n.a().g(this.aj);
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put("sessionid", strG);
            }
            int i2 = this.au;
            if (i2 != -1) {
                jSONObject.put("traffic_group_id", i2);
            }
            if (this.at == 1) {
                jSONObject.put("ofm_tid", this.as);
                jSONObject.put("ofm_system", this.ar);
                jSONObject.put(com.anythink.core.common.h.c.M, this.at);
            }
            jSONObject.put("asid", this.am);
            jSONObject.put(f.a.T, this.a);
            jSONObject.put(com.anythink.core.common.h.c.ah, this.b);
            JSONObject jSONObject2 = this.d;
            if (jSONObject2 != null) {
                jSONObject.put(f.a.aa, jSONObject2);
            }
            jSONObject.put("wf2_mode", this.e);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    public final void J(int i) {
        this.e = i;
    }

    public final void K(int i) {
        this.c = i;
    }

    public final void L(int i) {
        this.at = i;
    }

    public final void M(int i) {
        this.as = i;
    }

    public final void N(int i) {
        this.au = i;
    }

    public final Object Y() {
        return this.f;
    }

    public final int Z() {
        return this.c;
    }

    public final void a(Object obj) {
        this.f = obj;
    }

    public final void a(JSONObject jSONObject) {
        this.d = jSONObject;
    }

    public final String aa() {
        return this.a;
    }

    public final String ab() {
        return this.b;
    }

    public final void ac() {
        this.ar = 1;
    }

    public final int ad() {
        return this.as;
    }

    public final String ae() {
        return this.aq;
    }

    public final int af() {
        return this.au;
    }

    public final String ag() {
        return this.am;
    }

    public final String ah() {
        return this.aj;
    }

    public final String ai() {
        return this.ak;
    }

    public final String aj() {
        return this.al;
    }

    public final String ak() {
        String str = this.al;
        str.hashCode();
        switch (str) {
            case "0":
                return com.anythink.expressad.foundation.g.a.f.a;
            case "1":
                return "reward";
            case "2":
                return com.anythink.expressad.foundation.g.a.f.e;
            case "3":
                return "inter";
            case "4":
                return com.anythink.expressad.foundation.g.a.f.f;
            default:
                return SchedulerSupport.NONE;
        }
    }

    public final void s(String str) {
        this.a = str;
    }

    public final void t(String str) {
        this.b = str;
    }

    public final void u(String str) {
        this.aq = str;
    }

    public final void v(String str) {
        this.am = str;
    }

    public final void w(String str) {
        this.aj = str;
    }

    public final void x(String str) {
        this.ak = str;
    }

    public final void y(String str) {
        this.al = str;
    }
}
