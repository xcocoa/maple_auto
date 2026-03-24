package com.iflytek.voiceads.e;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class g {
    public String a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public long g;
    public JSONObject h;
    public JSONArray i;
    public JSONArray j;
    public JSONArray k;
    public JSONArray l;
    public JSONArray m;
    public JSONArray n;
    public JSONArray o;
    public JSONArray p;
    public JSONArray q;
    public JSONArray r;
    public JSONArray s;
    public JSONArray t;
    public JSONArray u;
    public JSONArray v;
    public JSONArray w;
    public JSONArray x;

    public g(com.iflytek.voiceads.d.a aVar) {
        try {
            this.a = aVar.j.optString(com.anythink.expressad.foundation.d.c.am);
            this.b = aVar.j.optInt("duration");
            this.c = aVar.j.optInt("width");
            this.d = aVar.j.optInt("height");
            this.e = aVar.j.optInt("format");
            this.f = aVar.j.optInt("bitrate");
            this.g = aVar.j.optLong("end_time");
            this.h = aVar.f;
            JSONObject jSONObject = aVar.J;
            this.i = jSONObject.optJSONArray("start_urls");
            this.j = jSONObject.optJSONArray("first_quartile_urls");
            this.k = jSONObject.optJSONArray("mid_point_urls");
            this.l = jSONObject.optJSONArray("third_quartile_urls");
            this.m = jSONObject.optJSONArray("complete_urls");
            this.n = jSONObject.optJSONArray("pause_urls");
            this.o = jSONObject.optJSONArray("resume_urls");
            this.p = jSONObject.optJSONArray("skip_urls");
            this.q = jSONObject.optJSONArray("mute_urls");
            this.r = jSONObject.optJSONArray("unmute_urls");
            this.s = jSONObject.optJSONArray("replay_urls");
            this.t = jSONObject.optJSONArray("close_linear_urls");
            this.u = jSONObject.optJSONArray("fullscreen_urls");
            this.v = jSONObject.optJSONArray("exit_fullscreen_urls");
            this.w = jSONObject.optJSONArray("up_scroll_urls");
            this.x = jSONObject.optJSONArray("down_scroll_urls");
        } catch (Exception e) {
            com.iflytek.voiceads.utils.g.b("IFLY_AD_SDK", "VideoAdSelected Invalid response data!");
        }
    }
}
