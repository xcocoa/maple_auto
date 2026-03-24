package mobi.oneway.export.f;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private String a;
    private List<a> b;

    public static class a {
        private int a;
        private String b;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;

        public a(String str, JSONObject jSONObject) {
            this.a = jSONObject.optInt("adp");
            this.b = jSONObject.optString(com.anythink.expressad.d.a.b.aB);
            this.c = jSONObject.optInt("dayReqLimit");
            this.d = jSONObject.optInt("dayShowLimit");
            this.e = jSONObject.optInt("fsc");
            this.f = jSONObject.optInt("hvcb");
            this.g = jSONObject.optInt("ocb");
            mobi.oneway.export.b.a.a().a(str, this.b, this.c, this.d);
        }

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }

        public void a(String str) {
            this.b = str;
        }

        public String b() {
            return this.b;
        }

        public void b(int i) {
            this.c = i;
        }

        public int c() {
            return this.c;
        }

        public void c(int i) {
            this.d = i;
        }

        public int d() {
            return this.d;
        }

        public void d(int i) {
            this.e = i;
        }

        public int e() {
            return this.e;
        }

        public void e(int i) {
            this.f = i;
        }

        public int f() {
            return this.f;
        }

        public void f(int i) {
            this.g = i;
        }

        public int g() {
            return this.g;
        }
    }

    public c(JSONObject jSONObject) {
        this.a = jSONObject.optString(com.anythink.expressad.d.a.b.aB);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("pidConfigs");
        if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
            return;
        }
        this.b = new ArrayList();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            this.b.add(new a(this.a, jSONArrayOptJSONArray.optJSONObject(i)));
        }
    }

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(List<a> list) {
        this.b = list;
    }

    public List<a> b() {
        return this.b;
    }
}
