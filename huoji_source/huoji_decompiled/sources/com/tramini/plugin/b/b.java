package com.tramini.plugin.b;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.tramini.plugin.b.a {
    public static final String a = "b";
    private String b;
    private long c;
    private List d;
    private ConcurrentHashMap<String, com.tramini.plugin.a.d.c> e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private int n;
    private int o;
    private String p;
    private String q;
    private String r;
    private String s;

    public static class a {
        public static String a = "cached";
        public static String b = "n_cache";
        private static String c = "si";
        private static String d = "scto";
        private static String e = "tf";
        private static String f = "nl";
        private static String g = "t_sw";
        private static String h = "att_sw";
        private static String i = "plst_addr";
        private static String j = "pltk_addr";
        private static String k = "cn_plst_addr";
        private static String l = "cn_pltk_addr";
    }

    public static b a(String str) {
        JSONArray jSONArray;
        int length;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        b bVar = new b();
        try {
            JSONObject jSONObject = new JSONObject(str);
            bVar.b(jSONObject);
            bVar.c(jSONObject);
            bVar.d(jSONObject);
            bVar.b = jSONObject.isNull(a.c) ? "" : jSONObject.optString(a.c);
            if (jSONObject.isNull(a.d)) {
                bVar.c = 3600000L;
            } else {
                bVar.c = jSONObject.optInt(a.d);
            }
            if (jSONObject.isNull(a.h)) {
                bVar.o = 0;
            } else {
                bVar.o = jSONObject.optInt(a.h);
            }
            if (!jSONObject.isNull(a.i)) {
                bVar.p = jSONObject.optString(a.i);
            }
            if (!jSONObject.isNull(a.j)) {
                bVar.q = jSONObject.optString(a.j);
            }
            if (!jSONObject.isNull(a.k)) {
                bVar.r = jSONObject.optString(a.k);
            }
            if (!jSONObject.isNull(a.l)) {
                bVar.s = jSONObject.optString(a.l);
            }
            if (!jSONObject.isNull(a.e)) {
                ConcurrentHashMap<String, com.tramini.plugin.a.d.c> concurrentHashMap = new ConcurrentHashMap<>();
                try {
                    JSONObject jSONObject2 = new JSONObject(jSONObject.optString(a.e));
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        try {
                            String next = itKeys.next();
                            com.tramini.plugin.a.d.c cVar = new com.tramini.plugin.a.d.c();
                            JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(next);
                            cVar.d = jSONObjectOptJSONObject.optString("pml");
                            cVar.a = jSONObjectOptJSONObject.optString("uu");
                            cVar.b = jSONObjectOptJSONObject.optInt("dmin");
                            cVar.c = jSONObjectOptJSONObject.optInt("dmax");
                            if (jSONObjectOptJSONObject.has("p_s") && !TextUtils.isEmpty(jSONObjectOptJSONObject.optString("p_s"))) {
                                cVar.e = new JSONArray(jSONObjectOptJSONObject.optString("p_s"));
                            }
                            concurrentHashMap.put(next, cVar);
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                }
                bVar.e = concurrentHashMap;
            }
            if (!jSONObject.isNull(a.f)) {
                JSONObject jSONObject3 = new JSONObject(jSONObject.optString(a.f));
                bVar.f = jSONObject3.optString("p1");
                bVar.g = jSONObject3.optString(com.anythink.core.common.h.c.V);
                bVar.h = jSONObject3.optString("p3");
                bVar.i = jSONObject3.optString("p4");
                bVar.j = jSONObject3.optString("p5");
                bVar.k = jSONObject3.optString("p6");
                bVar.l = jSONObject3.optString("p7");
                bVar.m = jSONObject3.optString("p8");
                if (!jSONObject3.isNull("notifications") && (length = (jSONArray = new JSONArray(jSONObject3.optString("notifications"))).length()) > 0) {
                    ArrayList arrayList = new ArrayList(length);
                    for (int i = 0; i < length; i++) {
                        arrayList.add(jSONArray.optString(i));
                    }
                    bVar.d = arrayList;
                }
            }
            if (jSONObject.isNull(a.g)) {
                bVar.n = 0;
            } else {
                bVar.n = jSONObject.optInt(a.g);
            }
            return bVar;
        } catch (JSONException unused3) {
            return null;
        }
    }

    private void a(int i) {
        this.o = i;
    }

    private void a(long j) {
        this.c = j;
    }

    private void a(List list) {
        this.d = list;
    }

    private void a(ConcurrentHashMap<String, com.tramini.plugin.a.d.c> concurrentHashMap) {
        this.e = concurrentHashMap;
    }

    private void b(int i) {
        this.n = i;
    }

    private void b(String str) {
        this.b = str;
    }

    private void c(String str) {
        this.f = str;
    }

    private void d(String str) {
        this.g = str;
    }

    private void e(String str) {
        this.h = str;
    }

    private void f(String str) {
        this.i = str;
    }

    private void g(String str) {
        this.j = str;
    }

    private void h(String str) {
        this.k = str;
    }

    private void i(String str) {
        this.l = str;
    }

    private void j(String str) {
        this.m = str;
    }

    private void k(String str) {
        this.p = str;
    }

    private void l(String str) {
        this.q = str;
    }

    private void m(String str) {
        this.r = str;
    }

    private void n(String str) {
        this.s = str;
    }

    private String q() {
        return this.k;
    }

    private String r() {
        return this.r;
    }

    private String s() {
        return this.s;
    }

    public final int b() {
        return this.o;
    }

    public final String c() {
        return this.b;
    }

    public final long d() {
        return this.c;
    }

    public final List<String> e() {
        return this.d;
    }

    public final ConcurrentHashMap<String, com.tramini.plugin.a.d.c> f() {
        return this.e;
    }

    public final String g() {
        return this.f;
    }

    public final String h() {
        return this.g;
    }

    public final String i() {
        return this.h;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        return this.j;
    }

    public final String l() {
        return this.l;
    }

    public final String m() {
        return this.m;
    }

    public final int n() {
        return this.n;
    }

    public final String o() {
        return this.p;
    }

    public final String p() {
        return this.q;
    }
}
