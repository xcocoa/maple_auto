package com.anythink.expressad.videocommon.e;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = 1000;
    public static final int b = 1000;
    private Map<String, Integer> c;
    private Map<String, com.anythink.expressad.videocommon.c.c> d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;
    private long j;

    private static a a(String str) {
        a aVar = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                a aVar2 = new a();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(b.a);
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                        HashMap map = new HashMap();
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys != null && itKeys.hasNext()) {
                            String next = itKeys.next();
                            int iOptInt = jSONObjectOptJSONObject.optInt(next, 1000);
                            if (!TextUtils.isEmpty(next)) {
                                map.put(next, (TextUtils.isEmpty(next) || iOptInt != 0) ? Integer.valueOf(iOptInt) : 1000);
                            }
                        }
                        aVar2.c = map;
                    }
                    aVar2.d = com.anythink.expressad.videocommon.c.c.a(jSONObject.optJSONArray("reward"));
                    aVar2.e = jSONObject.optLong("getpf", 43200L);
                    aVar2.f = jSONObject.optLong(b.x, 5400L);
                    aVar2.g = jSONObject.optLong("plct", com.anythink.expressad.d.a.b.P);
                    aVar2.h = jSONObject.optLong("dlct", com.anythink.expressad.d.a.b.P);
                    aVar2.i = jSONObject.optLong(b.A, 5L);
                    aVar2.j = jSONObject.optLong("current_time");
                    return aVar2;
                } catch (Exception e) {
                    e = e;
                    aVar = aVar2;
                    e.printStackTrace();
                    return aVar;
                }
            } catch (Exception e2) {
                e = e2;
            }
        }
        return aVar;
    }

    private void a(long j) {
        this.j = j;
    }

    private long l() {
        return this.e * 1000;
    }

    private long m() {
        return this.f * 1000;
    }

    private long n() {
        return this.j;
    }

    private static a o() {
        a aVar = new a();
        HashMap map = new HashMap(5);
        map.put("1", 1000);
        map.put("9", 1000);
        map.put("8", 1000);
        HashMap map2 = new HashMap(3);
        map2.put("1", new com.anythink.expressad.videocommon.c.c("Virtual Item", 1));
        aVar.c = map;
        aVar.d = map2;
        aVar.e = 43200L;
        aVar.f = 5400L;
        aVar.g = com.anythink.expressad.d.a.b.P;
        aVar.h = com.anythink.expressad.d.a.b.P;
        aVar.i = 5L;
        return aVar;
    }

    public final void a() {
        this.e = 43200L;
    }

    public final void a(Map<String, Integer> map) {
        this.c = map;
    }

    public final void b() {
        this.f = 5400L;
    }

    public final void b(Map<String, com.anythink.expressad.videocommon.c.c> map) {
        this.d = map;
    }

    public final long c() {
        return this.g * 1000;
    }

    public final void d() {
        this.g = com.anythink.expressad.d.a.b.P;
    }

    public final long e() {
        return this.h;
    }

    public final void f() {
        this.h = com.anythink.expressad.d.a.b.P;
    }

    public final long g() {
        return this.i;
    }

    public final void h() {
        this.i = 5L;
    }

    public final Map<String, Integer> i() {
        if (this.c == null) {
            HashMap map = new HashMap();
            this.c = map;
            map.put("1", 1000);
            this.c.put("9", 1000);
            this.c.put("8", 1000);
        }
        return this.c;
    }

    public final Map<String, com.anythink.expressad.videocommon.c.c> j() {
        return this.d;
    }

    public final JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map<String, Integer> map = this.c;
            if (map != null && map.size() > 0) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, Integer> entry : this.c.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue().intValue());
                    }
                    jSONObject.put(b.a, jSONObject2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            Map<String, com.anythink.expressad.videocommon.c.c> map2 = this.d;
            if (map2 != null && map2.size() > 0) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, com.anythink.expressad.videocommon.c.c> entry2 : this.d.entrySet()) {
                        JSONObject jSONObject3 = new JSONObject();
                        String key = entry2.getKey();
                        com.anythink.expressad.videocommon.c.c value = entry2.getValue();
                        if (value != null) {
                            jSONObject3.put("name", value.a());
                            jSONObject3.put("amount", value.b());
                            jSONObject3.put("id", key);
                        }
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put("reward", jSONArray);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            jSONObject.put("getpf", this.e);
            jSONObject.put(b.x, this.f);
            jSONObject.put("plct", this.g);
            jSONObject.put("dlct", this.h);
            jSONObject.put(b.A, this.i);
            jSONObject.put("current_time", this.j);
            return jSONObject;
        } catch (Exception e3) {
            e3.printStackTrace();
            return jSONObject;
        }
    }
}
