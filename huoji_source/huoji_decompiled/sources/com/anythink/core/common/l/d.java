package com.anythink.core.common.l;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    public long a = 30000;
    public int b = 1;
    public long c = 30000;
    public int d = 1;
    public List<e> e = Collections.synchronizedList(new ArrayList());
    public Map<String, e> f = new ConcurrentHashMap();

    public static d a(JSONObject jSONObject) {
        d dVar = new d();
        if (jSONObject == null) {
            return dVar;
        }
        dVar.a = jSONObject.optLong("pre_load_time", 30000L);
        dVar.b = jSONObject.optInt("pre_load_num", 1);
        dVar.c = jSONObject.optLong("pre_load_timeout", 30000L);
        dVar.d = jSONObject.optInt("pre_load_mode", 1);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("formats");
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        e eVar = new e();
                        eVar.a = jSONObjectOptJSONObject.optInt("format");
                        eVar.b = jSONObjectOptJSONObject.optString("pl_id", "");
                        eVar.c = jSONObjectOptJSONObject.optInt("req_pacing");
                        eVar.d = jSONObjectOptJSONObject.optInt("ad_cache", 1);
                        eVar.e = jSONObjectOptJSONObject.optDouble("ad_ecpm", -1.0d);
                        dVar.e.add(eVar);
                        dVar.f.put(eVar.b, eVar);
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return dVar;
    }

    public final long a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final long c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final Map<String, e> e() {
        return this.f;
    }

    public final List<e> f() {
        return this.e;
    }
}
