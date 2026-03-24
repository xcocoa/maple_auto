package com.anythink.core.common.h.a;

import com.anythink.core.common.b.n;
import com.anythink.core.common.f.i;
import com.anythink.core.common.f.u;
import com.anythink.core.common.o.g;
import com.anythink.core.common.t;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e extends c {
    public List<i> a;
    public boolean b;
    private final String c = e.class.getSimpleName();

    public e(List<i> list) {
        this.a = list;
    }

    private String a(boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObjectH = super.h();
        JSONObject jSONObjectI = super.i();
        try {
            jSONObjectH.put("app_id", n.a().o());
            jSONObjectH.put(com.anythink.core.common.h.c.R, this.i);
            jSONObjectH.put(com.anythink.core.common.h.c.T, this.j);
            Iterator<String> itKeys = jSONObjectI.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectH.put(next, jSONObjectI.opt(next));
            }
            Map<String, Object> mapL = n.a().l();
            if (mapL != null && mapL.size() > 0 && mapL != null) {
                JSONObject jSONObject2 = new JSONObject();
                for (String str : mapL.keySet()) {
                    Object obj = mapL.get(str);
                    if (obj != null) {
                        jSONObject2.put(str, obj.toString());
                    }
                }
                jSONObjectH.put("custom", jSONObject2);
            }
        } catch (Throwable unused) {
        }
        String strA = com.anythink.core.common.o.d.a(jSONObjectH.toString());
        JSONArray jSONArray = new JSONArray();
        List<i> list = this.a;
        if (list != null) {
            Iterator<i> it = list.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = it.next().a();
                if (z && jSONObjectA != null) {
                    try {
                        jSONObjectA.put(com.anythink.core.common.h.c.S, 1);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                jSONArray.put(jSONObjectA);
            }
        }
        String strA2 = com.anythink.core.common.o.d.a(jSONArray.toString());
        String strC = g.c(n.a().p() + "api_ver=1.0&common=" + strA + "&data=" + strA2);
        try {
            jSONObject.put("common", strA);
            jSONObject.put("data", strA2);
            jSONObject.put(com.anythink.core.common.h.c.O, "1.0");
            jSONObject.put("sign", strC);
        } catch (Exception unused2) {
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.common.h.a.c
    public final void a(String str, String str2, String str3, int i) {
        if (this.b) {
            return;
        }
        String str4 = str3 + ":" + i;
        List<i> list = this.a;
        com.anythink.core.common.n.e.a("tk", str, str2, str4, (String) null, String.valueOf(list != null ? list.size() : 0), "1");
        t.a().a(3, "", "", a(true), u.a(1000));
    }

    @Override // com.anythink.core.common.h.a.c
    public final int c() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a.c
    public final int d() {
        return 3;
    }

    @Override // com.anythink.core.common.h.a.c
    public final byte[] e() {
        List<i> list = this.a;
        return (list == null || list.size() <= 0) ? new byte[0] : c.a(a(false));
    }

    @Override // com.anythink.core.common.h.a.c
    public final boolean f() {
        return this.b;
    }

    @Override // com.anythink.core.common.h.a.c
    public final int g() {
        return 6;
    }
}
