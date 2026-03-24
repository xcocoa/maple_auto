package com.anythink.core.d;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.d.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private JSONObject a;
    private Map<String, String> b;
    private Map<String, String> c;
    public final String d = c.class.getSimpleName();
    private Map<String, String> e;

    private JSONObject a() {
        return this.a;
    }

    private Map<String, String> b() {
        return this.b;
    }

    private Map<String, String> c() {
        return this.c;
    }

    public final void a(JSONObject jSONObject, String str) {
        String strOptString = jSONObject.optString("cached");
        Map<String, String> mapAv = av();
        if (!TextUtils.isEmpty(strOptString) && this.a != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String strOptString2 = jSONObject2.optString(next);
                    String str2 = mapAv.get(next);
                    jSONObject.put(next, this.a.opt(next));
                    if (!TextUtils.equals(strOptString2, str2)) {
                        com.anythink.core.common.n.e.a(str, TextUtils.isEmpty(str) ? "1" : "2", next, strOptString2, str2);
                        jSONObject2.put(next, str2);
                    }
                }
                jSONObject.put("cached", jSONObject2.toString());
            } catch (Throwable unused) {
            }
        }
        if (this instanceof a) {
            try {
                if (!TextUtils.isEmpty(((a) this).e()) && ((a) this).h() != null && ((a) this).h().size() > 0 && !TextUtils.equals(((a) this).e(), jSONObject.optString(a.C0097a.h, ""))) {
                    Iterator<String> it = ((a) this).h().iterator();
                    while (it.hasNext()) {
                        com.anythink.core.common.res.d.a(n.a().f()).a(com.anythink.core.common.o.g.a(it.next()));
                    }
                }
                if (!TextUtils.isEmpty(((a) this).f()) && ((a) this).j() != null && ((a) this).j().size() > 0 && !TextUtils.equals(((a) this).f(), jSONObject.optString(a.C0097a.i, ""))) {
                    Iterator<String> it2 = ((a) this).j().iterator();
                    while (it2.hasNext()) {
                        com.anythink.core.common.res.d.a(n.a().f()).a(com.anythink.core.common.o.g.a(it2.next()));
                    }
                }
                if (TextUtils.isEmpty(((a) this).g()) || ((a) this).i() == null || ((a) this).i().size() <= 0 || TextUtils.equals(((a) this).g(), jSONObject.optString(a.C0097a.j, ""))) {
                    return;
                }
                Iterator<String> it3 = ((a) this).i().iterator();
                while (it3.hasNext()) {
                    com.anythink.core.common.res.d.a(n.a().f()).a(com.anythink.core.common.o.g.a(it3.next()));
                }
            } catch (Throwable unused2) {
            }
        }
    }

    public final boolean au() {
        Map<String, String> map = this.c;
        return map == null || map.size() == 0;
    }

    public final synchronized Map<String, String> av() {
        if (this.e == null) {
            HashMap map = new HashMap();
            this.e = map;
            Map<String, String> map2 = this.b;
            if (map2 != null) {
                map.putAll(map2);
            }
            Map<String, String> map3 = this.c;
            if (map3 != null) {
                this.e.putAll(map3);
            }
        }
        return this.e;
    }

    public final void b(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public final void c(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("cached");
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
        String strOptString = jSONObject.optString(com.anythink.core.common.h.c.ao);
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
