package com.anythink.core.common.h;

import android.content.Context;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.u;
import com.anythink.core.common.t;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class o extends a {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    public static final int f = 6;
    public static final int g = 7;
    public static final int h = 8;
    public static final int i = 9;
    public static final int j = 10;
    public static final int k = 11;
    public static final int l = 12;
    public static final int p = 13;
    public static final int q = 15;
    public static final int r = 16;
    public static final int s = 18;
    public static final int t = 19;
    public static final int u = 20;
    public static final int v = 21;
    private static final String x = "o";
    private List<com.anythink.core.common.f.i> B;
    private com.anythink.core.common.f.i C;
    private int D;
    private Context y;
    public boolean w = false;
    private String z = com.anythink.core.common.b.n.a().o();
    private String A = com.anythink.core.common.b.n.a().p();

    public o(Context context, int i2, List<com.anythink.core.common.f.i> list) {
        this.y = context;
        this.D = i2;
        this.B = list;
    }

    private void a(JSONObject jSONObject) {
        if (!this.w || jSONObject == null) {
            return;
        }
        try {
            jSONObject.put(c.S, 1);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
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
        JSONObject jSONObject = new JSONObject();
        Map<String, String> mapC = c();
        if (mapC != null) {
            try {
                for (String str : mapC.keySet()) {
                    jSONObject.put(str, mapC.get(str));
                }
            } catch (Exception unused) {
            }
        }
        String string = jSONObject.toString();
        this.w = true;
        String strG = g();
        this.w = false;
        t.a().a(1, b(), string, strG, u.a(1000));
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i2) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        com.anythink.core.common.f.i iVar = this.C;
        if (iVar != null) {
            return iVar.b.an;
        }
        com.anythink.core.common.h.a();
        return com.anythink.core.common.h.j();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
        List<com.anythink.core.common.f.i> list = this.B;
        com.anythink.core.common.n.e.a("tk", adError.getPlatformCode(), adError.getPlatformMSG(), b(), (String) null, String.valueOf(list != null ? list.size() : 1), "0");
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
        return a.b(g());
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        JSONObject jSONObjectF = super.f();
        try {
            jSONObjectE.put("app_id", this.z);
            jSONObjectE.put(c.R, this.D);
            Iterator<String> itKeys = jSONObjectF.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectE.put(next, jSONObjectF.opt(next));
            }
            Map<String, Object> mapL = com.anythink.core.common.b.n.a().l();
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
        JSONArray jSONArray = new JSONArray();
        List<com.anythink.core.common.f.i> list = this.B;
        if (list != null) {
            Iterator<com.anythink.core.common.f.i> it = list.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = it.next().a();
                a(jSONObjectA);
                jSONArray.put(jSONObjectA);
            }
        } else {
            com.anythink.core.common.f.i iVar = this.C;
            if (iVar != null) {
                JSONObject jSONObjectA2 = iVar.a();
                a(jSONObjectA2);
                jSONArray.put(jSONObjectA2);
            }
        }
        String strA2 = com.anythink.core.common.o.d.a(jSONArray.toString());
        String strC = com.anythink.core.common.o.g.c(this.A + "api_ver=1.0&common=" + strA + "&data=" + strA2);
        try {
            jSONObject.put("common", strA);
            jSONObject.put("data", strA2);
            jSONObject.put(c.O, "1.0");
            jSONObject.put("sign", strC);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return this.z;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return this.y;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return this.A;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final int l() {
        return 6;
    }

    @Override // com.anythink.core.common.h.a
    public final boolean o() {
        return true;
    }
}
