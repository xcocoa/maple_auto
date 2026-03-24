package com.anythink.expressad.splash.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.IExHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ay;
import com.anythink.core.common.o.d;
import com.anythink.core.common.o.e;
import com.anythink.expressad.foundation.h.k;
import com.anythink.expressad.foundation.h.t;
import org.json.JSONException;
import org.json.JSONObject;
import z2.g6;

/* JADX INFO: loaded from: classes.dex */
public final class a {
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
    public String c = g6.OooO0O0;
    public String a = k.b();
    public String b = k.c();
    public String f = e.f();

    public a(Context context) {
        String strFillCDataParam;
        this.e = e.d(context);
        int iA = k.a();
        this.h = String.valueOf(iA);
        this.i = k.a(context, iA);
        this.j = e.i();
        this.k = com.anythink.expressad.foundation.b.a.c().g();
        this.l = com.anythink.expressad.foundation.b.a.c().f();
        this.m = String.valueOf(t.f(context));
        this.n = String.valueOf(t.e(context));
        this.p = String.valueOf(t.c(context));
        this.o = context.getResources().getConfiguration().orientation == 2 ? "landscape" : "portrait";
        IExHandler iExHandlerB = n.a().b();
        if (iExHandlerB != null) {
            strFillCDataParam = iExHandlerB.fillCDataParam("at_device1|||at_device2|||at_device3");
            strFillCDataParam.replace("at_device1", "").replace("at_device2", "").replace("at_device3", "");
        } else {
            strFillCDataParam = "";
        }
        if (TextUtils.isEmpty(strFillCDataParam)) {
            this.d = "";
            this.g = "";
        } else {
            String[] strArrSplit = strFillCDataParam.split("\\|\\|\\|");
            try {
                this.d = strArrSplit[0];
            } catch (Throwable unused) {
            }
            try {
                this.g = strArrSplit[2];
            } catch (Throwable unused2) {
            }
        }
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", this.a);
            jSONObject.put("system_version", this.b);
            jSONObject.put("network_type", this.h);
            jSONObject.put("network_type_str", this.i);
            jSONObject.put("device_ua", this.j);
            ay ayVarJ = n.a().J();
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
            jSONObject.put("plantform", this.c);
            jSONObject.put(d.b("ZGV2aWNlX2ltZWk="), this.d);
            jSONObject.put("android_id", this.e);
            jSONObject.put("google_ad_id", this.f);
            jSONObject.put("oaid", this.g);
            jSONObject.put("appkey", this.k);
            jSONObject.put(com.anythink.expressad.videocommon.e.b.u, this.l);
            jSONObject.put("screen_width", this.m);
            jSONObject.put("screen_height", this.n);
            jSONObject.put("orientation", this.o);
            jSONObject.put("scale", this.p);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
