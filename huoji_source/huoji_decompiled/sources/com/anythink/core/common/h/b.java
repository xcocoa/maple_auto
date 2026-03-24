package com.anythink.core.common.h;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.u;
import com.anythink.core.common.t;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {
    public Context a;
    public int b;
    public List<String> e;
    public int f;
    public boolean g = false;
    public String c = com.anythink.core.common.b.n.a().o();
    public String d = com.anythink.core.common.b.n.a().p();

    public b(Context context, int i, List<String> list) {
        this.a = context;
        this.e = list;
        this.b = list.size();
        this.f = i;
    }

    private static String a(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        return Integer.valueOf(this.b);
    }

    @Override // com.anythink.core.common.h.a
    public final void a(int i, k kVar) {
        if (!TextUtils.isEmpty(b())) {
            super.a(i, kVar);
        } else if (kVar != null) {
            kVar.onLoadFinish(i, Integer.valueOf(this.b));
        }
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
        if (this.g) {
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
            String strG = g();
            t.a().a(1, b(), string, strG, u.a(1001));
        }
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        com.anythink.core.common.h.a();
        return com.anythink.core.common.h.k();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
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
    public final JSONObject e() {
        JSONObject jSONObjectE = super.e();
        if (jSONObjectE != null) {
            try {
                jSONObjectE.put("app_id", this.c);
                jSONObjectE.put("nw_ver", com.anythink.core.common.o.e.h());
                Map<String, Object> mapL = com.anythink.core.common.b.n.a().l();
                if (mapL != null) {
                    try {
                        if (mapL.size() > 0 && mapL != null) {
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
                }
                JSONArray jSONArray = new JSONArray();
                List<String> list = this.e;
                if (list != null && list.size() > 0) {
                    for (String str2 : this.e) {
                        if (!TextUtils.isEmpty(str2)) {
                            jSONArray.put(new JSONObject(str2));
                        }
                    }
                }
                jSONObjectE.put("data", jSONArray);
            } catch (Exception unused2) {
            }
        }
        return jSONObjectE;
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject f() {
        JSONObject jSONObjectF = super.f();
        if (jSONObjectF != null) {
            try {
                jSONObjectF.put(c.R, this.f);
            } catch (Exception unused) {
            }
        }
        return jSONObjectF;
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return this.c;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return this.a;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return this.d;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final int l() {
        return 4;
    }

    @Override // com.anythink.core.common.h.a
    public final boolean o() {
        return true;
    }

    public final void p() {
        this.g = true;
    }
}
