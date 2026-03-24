package com.octopus.ad.b;

import com.octopus.ad.b.e;
import com.umeng.commonsdk.proguard.v;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    public static class a {
        private String A;
        private String a;
        private String b;
        private String c;
        private String d;
        private e.EnumC0194e e;
        private e.b f;
        private String g;
        private String h;
        private String i;
        private String j;
        private String k;
        private String l;
        private String m;
        private String n;
        private String o;
        private String p;
        private String q;
        private String r;
        private String s;
        private String t;
        private HashSet<String> u;
        private String v;
        private String w;
        private boolean x;
        private String y;
        private String z;

        /* JADX INFO: renamed from: com.octopus.ad.b.d$a$a, reason: collision with other inner class name */
        public static class C0193a {
            private String A;
            private String a;
            private String b;
            private String c;
            private String d;
            private e.EnumC0194e e;
            private e.b f;
            private String g;
            private String h;
            private String i;
            private String j;
            private String k;
            private String l;
            private String m;
            private String n;
            private String o;
            private String p;
            private String q;
            private String r;
            private String s;
            private String t;
            private HashSet<String> u;
            private String v;
            private String w;
            private boolean x;
            private String y;
            private String z;

            public C0193a a(e.b bVar) {
                this.f = bVar;
                return this;
            }

            public C0193a a(e.EnumC0194e enumC0194e) {
                this.e = enumC0194e;
                return this;
            }

            public C0193a a(String str) {
                this.a = str;
                return this;
            }

            public C0193a a(boolean z) {
                this.x = z;
                return this;
            }

            public a a() {
                a aVar = new a();
                aVar.f = this.f;
                aVar.e = this.e;
                aVar.o = this.o;
                aVar.p = this.p;
                aVar.l = this.l;
                aVar.m = this.m;
                aVar.n = this.n;
                aVar.h = this.h;
                aVar.i = this.i;
                aVar.b = this.b;
                aVar.j = this.j;
                aVar.k = this.k;
                aVar.d = this.d;
                aVar.a = this.a;
                aVar.q = this.q;
                aVar.r = this.r;
                aVar.c = this.c;
                aVar.g = this.g;
                aVar.u = this.u;
                aVar.s = this.s;
                aVar.t = this.t;
                aVar.v = this.v;
                aVar.w = this.w;
                aVar.x = this.x;
                aVar.y = this.y;
                aVar.z = this.z;
                aVar.A = this.A;
                return aVar;
            }

            public C0193a b(String str) {
                this.b = str;
                return this;
            }

            public C0193a c(String str) {
                this.c = str;
                return this;
            }

            public C0193a d(String str) {
                this.d = str;
                return this;
            }

            public C0193a e(String str) {
                this.g = str;
                return this;
            }

            public C0193a f(String str) {
                this.h = str;
                return this;
            }

            public C0193a g(String str) {
                this.i = str;
                return this;
            }

            public C0193a h(String str) {
                this.j = str;
                return this;
            }

            public C0193a i(String str) {
                this.k = str;
                return this;
            }

            public C0193a j(String str) {
                this.l = str;
                return this;
            }

            public C0193a k(String str) {
                this.m = str;
                return this;
            }

            public C0193a l(String str) {
                this.n = str;
                return this;
            }

            public C0193a m(String str) {
                this.o = str;
                return this;
            }

            public C0193a n(String str) {
                this.p = str;
                return this;
            }

            public C0193a o(String str) {
                this.q = str;
                return this;
            }

            public C0193a p(String str) {
                this.r = str;
                return this;
            }

            public C0193a q(String str) {
                this.s = str;
                return this;
            }

            public C0193a r(String str) {
                this.t = str;
                return this;
            }

            public C0193a s(String str) {
                this.v = str;
                return this;
            }

            public C0193a t(String str) {
                this.w = str;
                return this;
            }

            public C0193a u(String str) {
                this.y = str;
                return this;
            }

            public C0193a v(String str) {
                this.z = str;
                return this;
            }

            public C0193a w(String str) {
                this.A = str;
                return this;
            }
        }

        private a() {
        }

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("sdkUID", this.a);
                jSONObject.put("imei", this.b);
                jSONObject.put(com.anythink.expressad.foundation.g.a.bj, this.c);
                jSONObject.put("os", this.d);
                jSONObject.put("platform", this.e);
                jSONObject.put("devType", this.f);
                jSONObject.put("brand", this.g);
                jSONObject.put("model", this.h);
                jSONObject.put("make", this.i);
                jSONObject.put(v.u, this.j);
                jSONObject.put("screenSize", this.k);
                jSONObject.put("language", this.l);
                jSONObject.put("density", this.m);
                jSONObject.put("ppi", this.n);
                jSONObject.put("androidID", this.o);
                jSONObject.put("root", this.p);
                jSONObject.put("oaid", this.q);
                jSONObject.put("gaid", this.r);
                jSONObject.put("bootMark", this.s);
                jSONObject.put("updateMark", this.t);
                jSONObject.put("ag", this.v);
                jSONObject.put("hms", this.w);
                jSONObject.put("wx_installed", this.x);
                jSONObject.put("physicalMemory", this.y);
                jSONObject.put("harddiskSize", this.z);
                jSONObject.put("appList", this.A);
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }

        public byte[] b() {
            JSONObject jSONObjectA = a();
            if (jSONObjectA == null) {
                return null;
            }
            return jSONObjectA.toString().getBytes();
        }
    }

    public static class b {
        private String a;
        private String b;
        private String c;

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("longitude", this.a);
                jSONObject.put("latitude", this.b);
                jSONObject.put("name", this.c);
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static class c {
        private e.d a;
        private e.c b;
        private b c;

        public static final class a {
            private e.d a;
            private e.c b;
            private b c;

            public a a(e.c cVar) {
                this.b = cVar;
                return this;
            }

            public a a(e.d dVar) {
                this.a = dVar;
                return this;
            }

            public c a() {
                c cVar = new c();
                cVar.c = this.c;
                cVar.a = this.a;
                cVar.b = this.b;
                return cVar;
            }
        }

        private c() {
        }

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("net", this.a);
                jSONObject.put("isp", this.b);
                b bVar = this.c;
                if (bVar != null) {
                    jSONObject.put("geo", bVar.a());
                }
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }

        public byte[] b() {
            JSONObject jSONObjectA = a();
            if (jSONObjectA == null) {
                return null;
            }
            return jSONObjectA.toString().getBytes();
        }
    }
}
