package com.anythink.expressad.foundation.h;

import android.content.Context;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.f.ay;
import org.json.JSONException;
import org.json.JSONObject;
import z2.g6;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static final String y = "portrait";
    private static final String z = "landscape";
    public String d;
    public String e;
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
    public int v;
    public String w;
    public JSONObject x;
    public String c = g6.OooO0O0;
    public String a = k.b();
    public String b = k.c();
    public String f = com.anythink.core.common.o.e.f();

    public c(Context context) {
        this.d = com.anythink.core.common.o.e.d(context);
        int iA = k.a();
        this.g = String.valueOf(iA);
        this.h = k.a(context, iA);
        this.i = com.anythink.core.common.o.e.i();
        this.j = com.anythink.expressad.foundation.b.a.c().g();
        this.k = com.anythink.expressad.foundation.b.a.c().f();
        this.l = String.valueOf(t.f(context));
        this.m = String.valueOf(t.e(context));
        this.r = String.valueOf(t.c(context));
        this.s = com.anythink.expressad.foundation.b.a.c().j().toString();
        this.u = com.anythink.core.common.o.e.b();
        this.v = com.anythink.core.common.o.a().c();
        this.n = context.getResources().getConfiguration().orientation == 2 ? z : y;
        IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
        String[] strArrSplit = (iExHandlerB != null ? iExHandlerB.fillCDataParam("at_device1|||at_device12|||at_device3") : "|||").split("\\|\\|\\|");
        if (strArrSplit != null) {
            this.e = strArrSplit.length > 0 ? strArrSplit[0] : "";
            this.w = strArrSplit.length > 1 ? strArrSplit[1] : "";
            this.q = strArrSplit.length > 2 ? strArrSplit[2] : "";
        }
        this.o = com.anythink.expressad.foundation.g.a.co;
        this.p = com.anythink.expressad.foundation.g.a.cp;
        this.t = k.e();
        this.x = b();
    }

    private JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(k.i());
            jSONObject.put("cid", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(k.f());
            jSONObject.put("dmt", sb2.toString());
            jSONObject.put("dmf", k.g());
            jSONObject.put(com.anythink.expressad.d.a.b.dx, k.h());
            jSONObject.put(com.anythink.core.common.o.d.b("aW1laQ=="), this.e);
            jSONObject.put(com.anythink.core.common.o.d.b("bWFj"), this.w);
            jSONObject.put("oaid", this.q);
            jSONObject.put("android_id", this.d);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", this.a);
            jSONObject.put("system_version", this.b);
            jSONObject.put("network_type", this.g);
            jSONObject.put("network_type_str", this.h);
            jSONObject.put("device_ua", this.i);
            ay ayVarJ = com.anythink.core.common.b.n.a().J();
            if (ayVarJ != null) {
                jSONObject.put("has_wx", ayVarJ.a());
                jSONObject.put("integrated_wx", ayVarJ.b());
                StringBuilder sb = new StringBuilder();
                sb.append(ayVarJ.c());
                jSONObject.put("opensdk_ver", sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(ayVarJ.d());
                jSONObject.put("wx_api_ver", sb2.toString());
            }
            jSONObject.put("brand", this.u);
            jSONObject.put("plantform", this.c);
            jSONObject.put(com.anythink.core.common.o.d.b("ZGV2aWNlX2ltZWk="), this.e);
            jSONObject.put("android_id", this.d);
            jSONObject.put("google_ad_id", this.f);
            jSONObject.put("oaid", this.q);
            jSONObject.put("appkey", this.j);
            jSONObject.put(com.anythink.expressad.videocommon.e.b.u, this.k);
            jSONObject.put("screen_width", this.l);
            jSONObject.put("screen_height", this.m);
            jSONObject.put("orientation", this.n);
            jSONObject.put("scale", this.r);
            jSONObject.put("b", this.o);
            jSONObject.put("c", this.p);
            jSONObject.put("web_env", this.s);
            jSONObject.put("f", this.t);
            jSONObject.put("misk_spt", this.v);
            jSONObject.put("dvi", j.a(this.x.toString()));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
