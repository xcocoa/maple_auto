package com.iflytek.voiceads.d;

import com.anythink.core.api.ATAdConst;
import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.foundation.d.c;
import com.iflytek.voiceads.config.AdError;
import com.iflytek.voiceads.utils.g;
import com.sun.mail.imap.IMAPStore;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class a {
    public double A;
    public String B;
    public String C;
    public String D;
    public String E;
    public String F;
    public JSONArray G;
    public JSONObject H;
    public String I;
    public JSONObject J;
    public String K;
    public String L;
    public int M;
    public String N;
    public int a;
    public String b;
    public double c;
    public String d;
    public JSONObject e;
    public JSONObject f;
    public JSONObject g;
    public JSONObject h;
    public JSONObject i;
    public JSONObject j;
    public JSONObject k;
    public String l;
    public String m;
    public JSONObject n;
    public String o;
    public String p;
    public String q;
    public int r;
    public String s;
    public String t;
    public String u;
    public String v;
    public double w;
    public String x;
    public int y;
    public double z;

    public void a() {
        this.a = -1;
        this.b = "";
        this.c = -1.0d;
        this.d = "";
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = "";
        this.m = "";
        this.n = null;
        this.o = "";
        this.p = "";
        this.q = "";
        this.r = -1;
        this.s = "";
        this.t = "";
        this.u = "";
        this.v = "";
        this.w = -1.0d;
        this.x = "";
        this.y = -1;
        this.z = -1.0d;
        this.A = -1.0d;
        this.B = "";
        this.C = "";
        this.D = "";
        this.E = "";
        this.F = "";
        this.G = null;
        this.H = null;
        this.J = null;
        this.K = "";
        this.L = "";
        this.M = -1;
        this.N = "";
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.iflytek.voiceads.config.AdError */
    public void a(JSONObject jSONObject) throws AdError {
        try {
            a();
            this.a = jSONObject.optInt("template_id");
            this.b = jSONObject.optString("creative_id");
            this.c = jSONObject.optDouble("price");
            this.d = jSONObject.optString("deal_id");
            this.e = jSONObject.optJSONObject(com.tramini.plugin.a.f.a.b);
            this.f = jSONObject.optJSONObject("img");
            this.g = jSONObject.optJSONObject("img1");
            this.h = jSONObject.optJSONObject("img2");
            this.i = jSONObject.optJSONObject("img3");
            this.j = jSONObject.optJSONObject(o.a);
            this.k = jSONObject.optJSONObject(o.b);
            this.l = jSONObject.optString("title");
            this.m = jSONObject.optString("desc");
            this.n = jSONObject.optJSONObject("icon");
            this.o = jSONObject.optString("content");
            this.p = jSONObject.optString(c.aa);
            this.q = jSONObject.optString(ATAdConst.KEY.APP_NAME);
            this.r = jSONObject.optInt("downloads");
            this.s = jSONObject.optString(c.Y);
            this.t = jSONObject.optString("app_download_url");
            this.u = jSONObject.optString("app_intro_url");
            this.v = jSONObject.optString("app_ver");
            this.w = jSONObject.optDouble(c.K);
            this.x = jSONObject.optString("phone");
            this.y = jSONObject.optInt("likes");
            this.z = jSONObject.optDouble("original_price");
            this.A = jSONObject.optDouble("current_price");
            this.B = jSONObject.optString("sponsored");
            this.C = jSONObject.optString(IMAPStore.ID_ADDRESS);
            this.D = jSONObject.optString("app_id");
            this.E = jSONObject.optString("package_name");
            this.F = jSONObject.optString("brand");
            this.G = jSONObject.optJSONArray("display_labels");
            this.H = jSONObject.optJSONObject("voice_ad_url");
            this.I = jSONObject.optString("close_icon");
            this.J = jSONObject.optJSONObject("monitor");
            this.K = jSONObject.optString("deeplink");
            this.L = jSONObject.optString("landing");
            this.M = jSONObject.optInt("action_type");
            this.N = jSONObject.optString("ad_source_mark");
        } catch (Exception e) {
            g.b("IFLY_AD_SDK", "parseAdData error:" + e.getMessage());
            throw new AdError(70500);
        }
    }
}
