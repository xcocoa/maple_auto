package com.tramini.plugin.a.e;

import android.content.Context;
import com.tramini.plugin.a.h.h;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends a {
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
        com.tramini.plugin.a.a.a();
        return com.tramini.plugin.a.a.b();
    }

    @Override // com.tramini.plugin.a.e.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Type", "application/json;charset=utf-8");
        return map;
    }

    @Override // com.tramini.plugin.a.e.a
    public final byte[] d() {
        try {
            return f().getBytes("utf-8");
        } catch (Exception unused) {
            return f().getBytes();
        }
    }

    @Override // com.tramini.plugin.a.e.a
    public final JSONObject e() throws JSONException {
        String str = "1";
        JSONObject jSONObject = new JSONObject();
        Context contextB = com.tramini.plugin.a.b.c.a().b();
        try {
            jSONObject.put("platform", "1");
            jSONObject.put("os_vn", com.tramini.plugin.a.h.e.b());
            jSONObject.put("os_vc", com.tramini.plugin.a.h.e.a());
            jSONObject.put("package_name", com.tramini.plugin.a.h.e.c(contextB));
            jSONObject.put("app_vn", com.tramini.plugin.a.h.e.b(contextB));
            jSONObject.put("app_vc", com.tramini.plugin.a.h.e.a(contextB));
            jSONObject.put("sdk_ver", com.tramini.plugin.a.b.a.a);
            jSONObject.put("android_id", "");
            if (!h.a(contextB)) {
                str = "0";
            }
            jSONObject.put(a.i, str);
            com.tramini.plugin.b.b bVarB = com.tramini.plugin.b.c.a(contextB).b();
            if (bVarB != null && bVarB.a() != null) {
                if (bVarB.a().size() != 0) {
                    jSONObject.put("cached", new JSONObject(bVarB.a()));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    @Override // com.tramini.plugin.a.e.a
    public final boolean g() {
        return true;
    }
}
