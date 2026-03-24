package com.tramini.plugin.b;

import android.text.TextUtils;
import com.tramini.plugin.b.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private JSONObject a;
    private Map<String, String> b;
    private Map<String, String> c;
    private Map<String, String> d;

    private JSONObject b() {
        return this.a;
    }

    private Map<String, String> c() {
        return this.b;
    }

    private Map<String, String> d() {
        return this.c;
    }

    public final synchronized Map<String, String> a() {
        if (this.d == null) {
            HashMap map = new HashMap();
            this.d = map;
            Map<String, String> map2 = this.b;
            if (map2 != null) {
                map.putAll(map2);
            }
            Map<String, String> map3 = this.c;
            if (map3 != null) {
                this.d.putAll(map3);
            }
        }
        return this.d;
    }

    public final void a(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(b.a.a);
        Map<String, String> mapA = a();
        if (TextUtils.isEmpty(strOptString) || this.a == null) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(strOptString);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String strOptString2 = jSONObject2.optString(next);
                String str = mapA.get(next);
                jSONObject.put(next, this.a.opt(next));
                if (!TextUtils.equals(strOptString2, str)) {
                    com.tramini.plugin.a.a.a.a(next, strOptString2, str);
                    jSONObject2.put(next, str);
                }
            }
            jSONObject.put(b.a.a, jSONObject2.toString());
        } catch (Throwable unused) {
        }
    }

    public final void b(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public final void c(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(b.a.a);
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        this.b = map;
    }

    public final void d(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(b.a.b);
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject2.optString(next));
                }
            } catch (Throwable unused) {
            }
        }
        this.c = map;
    }
}
