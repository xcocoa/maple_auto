package com.anythink.core.common.k;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.h;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.g;
import com.anythink.core.d.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c extends com.anythink.core.common.h.a {
    private Context b;
    private int c;
    private String f;
    private h g;
    private f h;
    private String i;
    private String j;
    public boolean a = false;
    private String d = n.a().o();
    private String e = n.a().p();

    public c(Context context, int i, String str, h hVar, f fVar, String str2, String str3) {
        this.b = context;
        this.c = i;
        this.g = hVar;
        this.h = fVar;
        this.i = str2;
        this.j = str3;
        this.f = str;
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        com.anythink.core.common.h.a();
        return com.anythink.core.common.h.i();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
        try {
            if (ErrorCode.httpStatuException.equals(adError.getCode())) {
                e.a(this.i, this.j, this.g, this.h, adError.getPlatformCode(), adError.getPlatformMSG());
            } else if (this.a) {
                e.a(this.i, this.j, this.g, this.h, adError.getPlatformCode(), adError.getPlatformMSG());
            } else {
                this.a = true;
                com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.k.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        c cVar = c.this;
                        cVar.a(0, cVar.m);
                    }
                }, com.anythink.expressad.exoplayer.f.a);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put("Content-Type", "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        return com.anythink.core.common.h.a.b(g());
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        JSONObject jSONObjectF = super.f();
        try {
            jSONObjectE.put("app_id", this.d);
            Iterator<String> itKeys = jSONObjectF.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectE.put(next, jSONObjectF.opt(next));
            }
            Map<String, Object> mapL = n.a().l();
            if (mapL != null && mapL.size() > 0 && mapL != null) {
                JSONObject jSONObject = new JSONObject();
                for (String str : mapL.keySet()) {
                    Object obj = mapL.get(str);
                    if (obj != null) {
                        jSONObject.put(str, obj.toString());
                    }
                }
                jSONObjectE.put("custom", jSONObject);
            }
        } catch (Throwable unused) {
        }
        return jSONObjectE;
    }

    @Override // com.anythink.core.common.h.a
    public final String g() {
        JSONObject jSONObject = new JSONObject();
        String strA = com.anythink.core.common.o.d.a(e().toString());
        String strC = g.c(this.e + "api_ver=2.0&common=" + strA + "&data=" + this.f + "&ss_a=" + this.c);
        try {
            jSONObject.put("common", strA);
            jSONObject.put("ss_a", this.c);
            jSONObject.put("data", this.f);
            jSONObject.put(com.anythink.core.common.h.c.O, h.e.b);
            jSONObject.put("sign", strC);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return this.d;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return this.b;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return this.e;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final String m() {
        return h.e.b;
    }
}
