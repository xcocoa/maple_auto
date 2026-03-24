package com.anythink.core.common.f;

import android.text.TextUtils;
import com.anythink.core.d.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class k extends x {
    public String A;
    public String B;
    public String C;
    public String D;
    public JSONObject E;
    public String F;
    public int G = -1;
    public int H = -1;
    public int I = -1;
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public String y;
    public String z;

    private k() {
    }

    public k(String str, String str2) {
        this.A = str;
        this.B = str2;
    }

    public static k a(String str) {
        k kVar = new k();
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("key")) {
                    kVar.a = jSONObject.optString("key", "");
                }
                if (jSONObject.has("requestid")) {
                    kVar.b = jSONObject.optString("requestid", "");
                }
                if (jSONObject.has("unitid")) {
                    kVar.d = jSONObject.optString("unitid", "");
                }
                if (jSONObject.has(com.anythink.core.common.b.e.c)) {
                    kVar.e = jSONObject.optString(com.anythink.core.common.b.e.c, "");
                }
                if (jSONObject.has("sessionid")) {
                    kVar.f = jSONObject.optString("sessionid", "");
                }
                if (jSONObject.has("groupid")) {
                    kVar.g = jSONObject.optString("groupid", "");
                }
                if (jSONObject.has("unitgroupid")) {
                    kVar.h = jSONObject.optString("unitgroupid", "");
                }
                if (jSONObject.has(com.anythink.expressad.foundation.d.c.o)) {
                    kVar.i = jSONObject.optString(com.anythink.expressad.foundation.d.c.o, "");
                }
                if (jSONObject.has("asid")) {
                    kVar.j = jSONObject.optString("asid", "");
                }
                if (jSONObject.has("refresh")) {
                    kVar.k = jSONObject.optString("refresh", "");
                }
                if (jSONObject.has(com.anythink.core.common.h.c.aT)) {
                    kVar.I = jSONObject.optInt(com.anythink.core.common.h.c.aT, 0);
                }
                if (jSONObject.has("traffic_group_id")) {
                    kVar.l = jSONObject.optString("traffic_group_id", "");
                }
                if (jSONObject.has("msg")) {
                    kVar.m = jSONObject.optString("msg", "");
                }
                if (jSONObject.has("msg1")) {
                    kVar.n = jSONObject.optString("msg1", "");
                }
                if (jSONObject.has("msg2")) {
                    kVar.o = jSONObject.optString("msg2", "");
                }
                if (jSONObject.has("msg3")) {
                    kVar.p = jSONObject.optString("msg3", "");
                }
                if (jSONObject.has("msg4")) {
                    kVar.q = jSONObject.optString("msg4", "");
                }
                if (jSONObject.has("msg5")) {
                    kVar.r = jSONObject.optString("msg5", "");
                }
                if (jSONObject.has("msg6")) {
                    kVar.s = jSONObject.optString("msg6", "");
                }
                if (jSONObject.has("msg7")) {
                    kVar.t = jSONObject.optString("msg7", "");
                }
                if (jSONObject.has("msg8")) {
                    kVar.u = jSONObject.optString("msg8", "");
                }
                if (jSONObject.has("msg9")) {
                    kVar.v = jSONObject.optString("msg9", "");
                }
                if (jSONObject.has("msg10")) {
                    kVar.w = jSONObject.optString("msg10", "");
                }
                if (jSONObject.has("msg11")) {
                    kVar.x = jSONObject.optString("msg11", "");
                }
                if (jSONObject.has("msg12")) {
                    kVar.y = jSONObject.optString("msg12", "");
                }
                if (jSONObject.has("msg13")) {
                    kVar.z = jSONObject.optString("msg13", "");
                }
                if (jSONObject.has(f.a.T)) {
                    kVar.C = jSONObject.optString(f.a.T, "");
                }
                if (jSONObject.has(com.anythink.core.common.h.c.ah)) {
                    kVar.D = jSONObject.optString(com.anythink.core.common.h.c.ah, "");
                }
                if (jSONObject.has(f.a.aa)) {
                    kVar.E = jSONObject.optJSONObject(f.a.aa);
                }
                kVar.F = jSONObject.optString("real_p", "");
                kVar.G = jSONObject.optInt("real_g", -1);
                kVar.H = jSONObject.optInt("real_t", -1);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return kVar;
    }

    @Override // com.anythink.core.common.f.x
    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", this.a);
            jSONObject.put("requestid", this.b);
            jSONObject.put("unitid", this.d);
            jSONObject.put(com.anythink.core.common.b.e.c, this.e);
            jSONObject.put("sessionid", this.f);
            jSONObject.put("groupid", this.g);
            jSONObject.put("unitgroupid", this.h);
            jSONObject.put(com.anythink.expressad.foundation.d.c.o, this.i);
            jSONObject.put("asid", this.j);
            jSONObject.put("refresh", this.k);
            int i = this.I;
            if (i != -1) {
                jSONObject.put(com.anythink.core.common.h.c.aT, i);
            }
            jSONObject.put("traffic_group_id", this.l);
            jSONObject.put("msg", this.m);
            jSONObject.put("msg1", this.n);
            jSONObject.put("msg2", this.o);
            jSONObject.put("msg3", this.p);
            jSONObject.put("msg4", this.q);
            jSONObject.put("msg5", this.r);
            jSONObject.put("msg6", this.s);
            jSONObject.put("msg7", this.t);
            jSONObject.put("msg8", this.u);
            jSONObject.put("msg9", this.v);
            jSONObject.put("msg10", this.w);
            jSONObject.put("msg11", this.x);
            jSONObject.put("msg12", this.y);
            jSONObject.put("msg13", this.z);
            jSONObject.put(f.a.T, this.C);
            jSONObject.put(com.anythink.core.common.h.c.ah, this.D);
            JSONObject jSONObject2 = this.E;
            if (jSONObject2 != null) {
                jSONObject.put(f.a.aa, jSONObject2);
            }
            jSONObject.put("real_p", this.F);
            int i2 = this.G;
            if (i2 != -1) {
                jSONObject.put("real_g", i2);
            }
            int i3 = this.H;
            if (i3 != -1) {
                jSONObject.put("real_t", i3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
