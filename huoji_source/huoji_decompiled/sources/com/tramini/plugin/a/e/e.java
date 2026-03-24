package com.tramini.plugin.a.e;

import android.content.Context;
import com.tramini.plugin.a.h.f;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends a {
    public static final int p = 10001;
    private Context q;
    private String r;
    private JSONObject s;
    private JSONObject t;

    public e(Context context, String str, JSONObject jSONObject, JSONObject jSONObject2) {
        this.q = context;
        this.r = str;
        this.s = jSONObject;
        this.t = jSONObject2;
    }

    @Override // com.tramini.plugin.a.e.a
    public final int a() {
        return 1;
    }

    @Override // com.tramini.plugin.a.e.a
    public final Object a(String str) {
        return str.trim();
    }

    @Override // com.tramini.plugin.a.e.a
    public final String b() {
        com.tramini.plugin.a.d.c cVar = com.tramini.plugin.b.c.a(this.q).b().f().get(this.r);
        com.tramini.plugin.a.a.a();
        return cVar != null ? cVar.a : com.tramini.plugin.a.a.c();
    }

    @Override // com.tramini.plugin.a.e.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
        map.put("Content-Type", "application/json;charset=utf-8");
        return map;
    }

    @Override // com.tramini.plugin.a.e.a
    public final byte[] d() {
        return a.b(f());
    }

    @Override // com.tramini.plugin.a.e.a
    public final JSONObject e() {
        JSONObject jSONObject = this.s;
        return jSONObject == null ? super.e() : jSONObject;
    }

    @Override // com.tramini.plugin.a.e.a
    public final String f() {
        JSONObject jSONObject = new JSONObject();
        String strB = com.tramini.plugin.a.h.c.b(e().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(this.t);
        String strB2 = com.tramini.plugin.a.h.c.b(jSONArray.toString());
        String strA = f.a("d_version=1.0&dt=" + strB2 + "&cm=" + strB);
        try {
            jSONObject.put("cm", strB);
            jSONObject.put("dt", strB2);
            jSONObject.put("d_version", "1.0");
            jSONObject.put("d_sign", strA);
            jSONObject.put("pl_c", "5");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.tramini.plugin.a.e.a
    public final boolean g() {
        return false;
    }
}
