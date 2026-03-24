package com.octopus.ad.b;

import com.octopus.ad.b.d;
import com.octopus.ad.b.e;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: com.octopus.ad.b.a$a, reason: collision with other inner class name */
    public static class C0188a {
        private String a;
        private String b;
        private String c;
        private long d;
        private String e;

        /* JADX INFO: renamed from: com.octopus.ad.b.a$a$a, reason: collision with other inner class name */
        public static final class C0189a {
            private String a;
            private String b;
            private String c;
            private long d;
            private String e;

            public C0189a a(String str) {
                this.a = str;
                return this;
            }

            public C0188a a() {
                C0188a c0188a = new C0188a();
                c0188a.d = this.d;
                c0188a.c = this.c;
                c0188a.e = this.e;
                c0188a.b = this.b;
                c0188a.a = this.a;
                return c0188a;
            }

            public C0189a b(String str) {
                this.b = str;
                return this;
            }

            public C0189a c(String str) {
                this.c = str;
                return this;
            }
        }

        private C0188a() {
        }

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("spaceID", this.a);
                jSONObject.put("spaceParam", this.b);
                jSONObject.put("requestUUID", this.c);
                jSONObject.put("channelReserveTs", this.d);
                jSONObject.put("sdkExtInfo", this.e);
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static class b {
        private String a;
        private e.i b;
        private e.g c;
        private long d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private long j;
        private long k;
        private d.a l;
        private d.c m;
        private ArrayList<C0188a> n;

        /* JADX INFO: renamed from: com.octopus.ad.b.a$b$a, reason: collision with other inner class name */
        public static final class C0190a {
            private String a;
            private e.i b;
            private e.g c;
            private long d;
            private String e;
            private String f;
            private String g;
            private String h;
            private String i;
            private long j;
            private long k;
            private d.a l;
            private d.c m;
            private ArrayList<C0188a> n = new ArrayList<>();

            public C0190a a(long j) {
                this.d = j;
                return this;
            }

            public C0190a a(d.a aVar) {
                this.l = aVar;
                return this;
            }

            public C0190a a(d.c cVar) {
                this.m = cVar;
                return this;
            }

            public C0190a a(e.g gVar) {
                this.c = gVar;
                return this;
            }

            public C0190a a(e.i iVar) {
                this.b = iVar;
                return this;
            }

            public C0190a a(String str) {
                this.a = str;
                return this;
            }

            public b a() {
                b bVar = new b();
                bVar.e = this.e;
                bVar.f = this.f;
                bVar.l = this.l;
                bVar.c = this.c;
                bVar.j = this.j;
                bVar.b = this.b;
                bVar.d = this.d;
                bVar.h = this.h;
                bVar.i = this.i;
                bVar.k = this.k;
                bVar.m = this.m;
                bVar.n = this.n;
                bVar.g = this.g;
                bVar.a = this.a;
                return bVar;
            }

            public void a(C0188a c0188a) {
                this.n.add(c0188a);
            }

            public C0190a b(long j) {
                this.j = j;
                return this;
            }

            public C0190a b(String str) {
                this.e = str;
                return this;
            }

            public C0190a c(long j) {
                this.k = j;
                return this;
            }

            public C0190a c(String str) {
                this.f = str;
                return this;
            }

            public C0190a d(String str) {
                this.g = str;
                return this;
            }

            public C0190a e(String str) {
                this.h = str;
                return this;
            }

            public C0190a f(String str) {
                this.i = str;
                return this;
            }
        }

        private b() {
        }

        private String a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("version", this.a);
                jSONObject.put("srcType", this.b);
                jSONObject.put("reqType", this.c);
                jSONObject.put("timeStamp", this.d);
                jSONObject.put("appid", this.e);
                jSONObject.put("reqid", this.f);
                jSONObject.put("appVersion", this.g);
                jSONObject.put("appName", this.h);
                jSONObject.put("packageName", this.i);
                jSONObject.put("appInstallTime", this.j);
                jSONObject.put("appUpdateTime", this.k);
                d.a aVar = this.l;
                if (aVar != null) {
                    jSONObject.put("devInfo", aVar.a());
                }
                d.c cVar = this.m;
                if (cVar != null) {
                    jSONObject.put("envInfo", cVar.a());
                }
                ArrayList<C0188a> arrayList = this.n;
                if (arrayList != null && arrayList.size() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < this.n.size(); i++) {
                        jSONArray.put(this.n.get(i).a());
                    }
                    jSONObject.put("adReqInfo", jSONArray);
                }
                return jSONObject.toString();
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }

        public String toString() {
            return a();
        }
    }
}
