package com.octopus.ad.b;

import android.util.Log;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.utilities.JsonUtil;
import com.octopus.ad.internal.utilities.SPUtils;
import com.umeng.commonsdk.proguard.v;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.g6;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    public static class a {
        private e.f a;
        private String b;
        private List<e> c;

        public e.f a() {
            return this.a;
        }

        public void a(e.f fVar) {
            this.a = fVar;
        }

        public void a(String str) {
            this.b = str;
        }

        public void a(List<e> list) {
            this.c = list;
        }

        public String b() {
            return this.b;
        }

        public List<e> c() {
            return this.c;
        }

        public int d() {
            List<e> list = this.c;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
    }

    /* JADX INFO: renamed from: com.octopus.ad.b.b$b, reason: collision with other inner class name */
    public static class C0191b {
        private String a;
        private String b;
        private int c;
        private String d;
        private String e;
        private String f;
        private String g;
        private String h;
        private i i;
        private String j;
        private boolean k;
        private int l;
        private j m;
        private a n;
        private C0192b o;
        private List<j> p;

        /* JADX INFO: renamed from: com.octopus.ad.b.b$b$a */
        public static class a {
            private List<String> a;
            private List<String> b;
            private List<String> c;
            private List<String> d;
            private List<String> e;
            private List<String> f;
            private List<String> g;
            private List<String> h;
            private List<String> i;
            private List<String> j;
            private List<String> k;
            private List<String> l;
            private List<String> m;
            private List<String> n;
            private List<String> o;

            public List<String> a() {
                return this.a;
            }

            public void a(List<String> list) {
                this.a = list;
            }

            public List<String> b() {
                return this.b;
            }

            public void b(List<String> list) {
                this.b = list;
            }

            public List<String> c() {
                return this.c;
            }

            public void c(List<String> list) {
                this.c = list;
            }

            public List<String> d() {
                return this.d;
            }

            public void d(List<String> list) {
                this.d = list;
            }

            public List<String> e() {
                return this.e;
            }

            public void e(List<String> list) {
                this.e = list;
            }

            public List<String> f() {
                return this.l;
            }

            public void f(List<String> list) {
                this.f = list;
            }

            public List<String> g() {
                return this.m;
            }

            public void g(List<String> list) {
                this.g = list;
            }

            public List<String> h() {
                return this.n;
            }

            public void h(List<String> list) {
                this.h = list;
            }

            public List<String> i() {
                return this.o;
            }

            public void i(List<String> list) {
                this.i = list;
            }

            public void j(List<String> list) {
                this.j = list;
            }

            public void k(List<String> list) {
                this.k = list;
            }

            public void l(List<String> list) {
                this.l = list;
            }

            public void m(List<String> list) {
                this.m = list;
            }

            public void n(List<String> list) {
                this.n = list;
            }

            public void o(List<String> list) {
                this.o = list;
            }
        }

        /* JADX INFO: renamed from: com.octopus.ad.b.b$b$b, reason: collision with other inner class name */
        public static class C0192b {
            private List<String> a;
            private List<String> b;
            private List<String> c;
            private List<String> d;
            private List<String> e;
            private List<a> f;

            /* JADX INFO: renamed from: com.octopus.ad.b.b$b$b$a */
            public static class a {
                private int a;
                private List<String> b;

                public void a(int i) {
                    this.a = i;
                }

                public void a(List<String> list) {
                    this.b = list;
                }
            }

            public void a(List<String> list) {
                this.a = list;
            }

            public void b(List<String> list) {
                this.b = list;
            }

            public void c(List<String> list) {
                this.c = list;
            }

            public void d(List<String> list) {
                this.d = list;
            }

            public void e(List<String> list) {
                this.e = list;
            }

            public void f(List<a> list) {
                this.f = list;
            }
        }

        public String a() {
            return this.a;
        }

        public void a(int i) {
            this.c = i;
        }

        public void a(a aVar) {
            this.n = aVar;
        }

        public void a(C0192b c0192b) {
            this.o = c0192b;
        }

        public void a(i iVar) {
            this.i = iVar;
        }

        public void a(String str) {
            this.a = str;
        }

        public void a(List<j> list) {
            this.p = list;
        }

        public void a(boolean z) {
            this.k = z;
        }

        public String b() {
            return this.b;
        }

        public void b(int i) {
            this.l = i;
        }

        public void b(String str) {
            this.b = str;
        }

        public int c() {
            return this.c;
        }

        public void c(String str) {
            this.d = str;
        }

        public String d() {
            return this.d;
        }

        public void d(String str) {
            this.e = str;
        }

        public String e() {
            return this.e;
        }

        public void e(String str) {
            this.f = str;
        }

        public String f() {
            return this.g;
        }

        public void f(String str) {
            this.g = str;
        }

        public String g() {
            return this.h;
        }

        public void g(String str) {
            this.h = str;
        }

        public i h() {
            return this.i;
        }

        public String i() {
            return this.j;
        }

        public j j() {
            return this.m;
        }

        public a k() {
            return this.n;
        }

        public C0192b l() {
            return this.o;
        }

        public List<j> m() {
            return this.p;
        }
    }

    public static class c {
        private String a;
        private String b;
        private String c;
        private String d;

        public String a() {
            return this.a;
        }

        public void a(String str) {
            this.a = str;
        }

        public String b() {
            return this.b;
        }

        public void b(String str) {
            this.b = str;
        }

        public String c() {
            return this.c;
        }

        public void c(String str) {
            this.c = str;
        }

        public String d() {
            return this.d;
        }

        public void d(String str) {
            this.d = str;
        }
    }

    public static class d {
        private String a;
        private C0191b b;
        private c c;
        private List<a> d;
        private List<Object> e;
        private int f;
        private String g;
        private String h;

        public String a() {
            return this.a;
        }

        public void a(int i) {
            this.f = i;
        }

        public void a(C0191b c0191b) {
            this.b = c0191b;
        }

        public void a(c cVar) {
            this.c = cVar;
        }

        public void a(String str) {
            this.a = str;
        }

        public void a(List<a> list) {
            this.d = list;
        }

        public String b() {
            return this.h;
        }

        public void b(String str) {
            this.h = str;
        }

        public C0191b c() {
            return this.b;
        }

        public void c(String str) {
            this.g = str;
        }

        public int d() {
            List<a> list = this.d;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public c e() {
            return this.c;
        }

        public List<a> f() {
            return this.d;
        }

        public List<Object> g() {
            return this.e;
        }

        public int h() {
            List<Object> list = this.e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public int i() {
            return this.f;
        }

        public String j() {
            return this.g;
        }
    }

    public static class e {
        private String a;
        private String b;

        public String a() {
            return this.a;
        }

        public void a(String str) {
            this.a = str;
        }

        public String b() {
            return this.b;
        }

        public void b(String str) {
            this.b = str;
        }
    }

    public static class f {
        private String a;
        private String b;

        public String a() {
            return this.a;
        }

        public void a(String str) {
            this.a = str;
        }

        public String b() {
            return this.b;
        }

        public void b(String str) {
            this.b = str;
        }
    }

    public static class g {
        private int a;
        private int b;
        private int c;
        private int d;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }

        public int b() {
            return this.b;
        }

        public void b(int i) {
            this.b = i;
        }

        public int c() {
            return this.c;
        }

        public void c(int i) {
            this.c = i;
        }

        public int d() {
            return this.d;
        }

        public void d(int i) {
            this.d = i;
        }
    }

    public static class h {
        private int a;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }
    }

    public static class i {
        private String a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g;

        public void a(String str) {
            this.a = str;
        }

        public void b(String str) {
            this.b = str;
        }

        public void c(String str) {
            this.c = str;
        }

        public void d(String str) {
            this.d = str;
        }

        public void e(String str) {
            this.e = str;
        }

        public void f(String str) {
            this.f = str;
        }

        public void g(String str) {
            this.g = str;
        }
    }

    public static class j {
        private String a;
        private String b;
        private String c;
        private String d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private String j;

        public String a() {
            return this.a;
        }

        public void a(String str) {
            this.a = str;
        }

        public String b() {
            return this.b;
        }

        public void b(String str) {
            this.b = str;
        }

        public String c() {
            return this.c;
        }

        public void c(String str) {
            this.c = str;
        }

        public String d() {
            return this.d;
        }

        public void d(String str) {
            this.d = str;
        }

        public String e() {
            return this.e;
        }

        public void e(String str) {
            this.e = str;
        }

        public String f() {
            return this.f;
        }

        public void f(String str) {
            this.f = str;
        }

        public String g() {
            return this.g;
        }

        public void g(String str) {
            this.g = str;
        }

        public String h() {
            return this.h;
        }

        public void h(String str) {
            this.h = str;
        }

        public String i() {
            return this.j;
        }

        public void i(String str) {
            this.i = str;
        }

        public void j(String str) {
            this.j = str;
        }
    }

    public static class k {
        private int a;
        private int b;
        private int c;
        private boolean d;
        private List<String> e;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }

        public void a(List<String> list) {
            this.e = list;
        }

        public void a(boolean z) {
            this.d = z;
        }

        public int b() {
            return this.b;
        }

        public void b(int i) {
            this.b = i;
        }

        public int c() {
            return this.c;
        }

        public void c(int i) {
            this.c = i;
        }

        public boolean d() {
            return this.d;
        }

        public List<String> e() {
            return this.e;
        }
    }

    public static class l {
        private int a;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }
    }

    public static class m {
        private l a;
        private o b;
        private r c;
        private p d;

        public l a() {
            return this.a;
        }

        public void a(l lVar) {
            this.a = lVar;
        }

        public void a(o oVar) {
            this.b = oVar;
        }

        public void a(p pVar) {
            this.d = pVar;
        }

        public void a(r rVar) {
            this.c = rVar;
        }

        public o b() {
            return this.b;
        }

        public r c() {
            return this.c;
        }

        public p d() {
            return this.d;
        }
    }

    public static class n {
        private int a;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }
    }

    public static class o {
        private int a;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }
    }

    public static class p {
        private int a;

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }
    }

    public static class q {
        private int a;
        private String b;
        private String c;
        private long d;
        private List<s> e;

        public static q a(InputStream inputStream) {
            if (inputStream == null) {
                return null;
            }
            try {
                return c(b(inputStream));
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return null;
            }
        }

        public static q a(byte[] bArr) throws JSONException {
            if (bArr == null) {
                return null;
            }
            try {
                return c(new String(bArr, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return null;
            }
        }

        private static ArrayList<String> a(JSONArray jSONArray) throws JSONException {
            ArrayList<String> arrayList = new ArrayList<>();
            if (b(jSONArray)) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
            }
            return arrayList;
        }

        private static String b(InputStream inputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    return byteArrayOutputStream.toString("UTF-8");
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        }

        private static boolean b(JSONArray jSONArray) {
            return jSONArray != null && jSONArray.length() > 0;
        }

        private static q c(String str) throws JSONException {
            String str2;
            q qVar;
            JSONArray jSONArray;
            ArrayList arrayList;
            String str3;
            q qVar2;
            int i;
            JSONArray jSONArray2;
            ArrayList arrayList2;
            String str4;
            q qVar3;
            JSONArray jSONArray3;
            int i2;
            ArrayList arrayList3;
            q qVar4;
            int i3;
            JSONArray jSONArray4;
            ArrayList arrayList4;
            q qVar5;
            JSONArray jSONArray5;
            int i4;
            String strB = str;
            String str5 = "ServerResponse";
            com.octopus.ad.utils.b.f.b("ServerResponse", "encryptStr = " + strB);
            Boolean bool = (Boolean) SPUtils.getFromGroupSdk(com.octopus.ad.internal.m.a().h, "encrypt", Boolean.TRUE);
            if (bool == null || bool.booleanValue()) {
                strB = com.octopus.ad.utils.b.a.b(com.octopus.ad.utils.b.e.a(), strB);
                com.octopus.ad.utils.b.f.d("ServerResponse", "decryptStr = " + strB);
            }
            JSONObject jSONObject = new JSONObject(strB);
            q qVar6 = new q();
            try {
                qVar6.a(jSONObject.optString("errcode"));
                qVar6.b(jSONObject.optString("errmsg"));
                qVar6.a(jSONObject.optInt("status"));
                qVar6.a(jSONObject.optLong("ts"));
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("spaceInfo");
                ArrayList arrayList5 = new ArrayList();
                if (!b(jSONArrayOptJSONArray)) {
                    return qVar6;
                }
                int i5 = 0;
                while (i5 < jSONArrayOptJSONArray.length()) {
                    s sVar = new s();
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i5);
                    if (jSONObjectOptJSONObject != null) {
                        sVar.a(jSONObjectOptJSONObject.optString("spaceID"));
                        sVar.b(jSONObjectOptJSONObject.optString("spaceParam"));
                        sVar.a(e.a.a(jSONObjectOptJSONObject.optInt("adpType")));
                        sVar.a(jSONObjectOptJSONObject.optInt("refreshInterval"));
                        sVar.b(jSONObjectOptJSONObject.optInt("filter"));
                        sVar.a(e.h.a(jSONObjectOptJSONObject.optInt("screenDirection")));
                        sVar.c(jSONObjectOptJSONObject.optString("width"));
                        sVar.d(jSONObjectOptJSONObject.optString("height"));
                        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("adpPosition");
                        f fVar = new f();
                        fVar.a(jSONObjectOptJSONObject2.optString("x"));
                        fVar.b(jSONObjectOptJSONObject2.optString("y"));
                        sVar.a(fVar);
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("interEvent");
                        if (jSONObjectOptJSONObject3 != null) {
                            m mVar = new m();
                            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject("shakeEvent");
                            if (jSONObjectOptJSONObject4 != null) {
                                r rVar = new r();
                                rVar.a(jSONObjectOptJSONObject4.getInt("v"));
                                rVar.a(jSONObjectOptJSONObject4.getDouble("sr"));
                                mVar.a(rVar);
                            }
                            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject3.optJSONObject("scrollEvent");
                            if (jSONObjectOptJSONObject5 != null) {
                                p pVar = new p();
                                pVar.a(jSONObjectOptJSONObject5.getInt("v"));
                                mVar.a(pVar);
                            }
                            JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject3.optJSONObject("fullScreenClk");
                            if (jSONObjectOptJSONObject6 != null) {
                                l lVar = new l();
                                lVar.a(jSONObjectOptJSONObject6.getInt("v"));
                                mVar.a(lVar);
                            }
                            JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject3.optJSONObject("regionScreenClk");
                            if (jSONObjectOptJSONObject7 != null) {
                                o oVar = new o();
                                oVar.a(jSONObjectOptJSONObject7.getInt("v"));
                                mVar.a(oVar);
                            }
                            sVar.a(mVar);
                        }
                        JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject.optJSONObject("strategy");
                        if (jSONObjectOptJSONObject8 != null) {
                            t tVar = new t();
                            JSONObject jSONObjectOptJSONObject9 = jSONObjectOptJSONObject8.optJSONObject("pass");
                            if (jSONObjectOptJSONObject9 != null) {
                                n nVar = new n();
                                nVar.a(jSONObjectOptJSONObject9.getInt("v"));
                                tVar.a(nVar);
                            }
                            JSONObject jSONObjectOptJSONObject10 = jSONObjectOptJSONObject8.optJSONObject("auto");
                            if (jSONObjectOptJSONObject10 != null) {
                                g gVar = new g();
                                gVar.c(jSONObjectOptJSONObject10.getInt("v"));
                                gVar.a(jSONObjectOptJSONObject10.getInt("f"));
                                gVar.b(jSONObjectOptJSONObject10.getInt(v.al));
                                gVar.d(jSONObjectOptJSONObject10.getInt("cr"));
                                tVar.a(gVar);
                            }
                            JSONObject jSONObjectOptJSONObject11 = jSONObjectOptJSONObject8.optJSONObject("callback");
                            if (jSONObjectOptJSONObject11 != null) {
                                h hVar = new h();
                                hVar.a(jSONObjectOptJSONObject11.getInt("v"));
                                tVar.a(hVar);
                            }
                            JSONObject jSONObjectOptJSONObject12 = jSONObjectOptJSONObject8.optJSONObject("dpUp");
                            if (jSONObjectOptJSONObject12 != null) {
                                k kVar = new k();
                                kVar.c(jSONObjectOptJSONObject12.getInt("v"));
                                kVar.a(jSONObjectOptJSONObject12.getInt("f"));
                                kVar.b(jSONObjectOptJSONObject12.getInt(v.al));
                                kVar.a(jSONObjectOptJSONObject12.getBoolean("o"));
                                kVar.a(JsonUtil.getStringArrayList(jSONObjectOptJSONObject12.getJSONArray("t")));
                                tVar.a(kVar);
                            }
                            sVar.a(tVar);
                        }
                        sVar.a(jSONObjectOptJSONObject.optBoolean("autoClose"));
                        sVar.c(jSONObjectOptJSONObject.optInt("maxTime"));
                        sVar.b(jSONObjectOptJSONObject.optBoolean("manualClosable"));
                        sVar.d(jSONObjectOptJSONObject.optInt("minTime"));
                        sVar.c(jSONObjectOptJSONObject.optBoolean("wifiPreload"));
                        sVar.d(jSONObjectOptJSONObject.optBoolean("mute"));
                        sVar.e(jSONObjectOptJSONObject.optBoolean("fullScreen"));
                        sVar.f(jSONObjectOptJSONObject.optBoolean("backgroundDim"));
                        sVar.g(jSONObjectOptJSONObject.optBoolean(NativeAdvancedJsUtils.k));
                        sVar.e(jSONObjectOptJSONObject.optInt("orgID"));
                        sVar.f(jSONObjectOptJSONObject.optInt("contentType"));
                        sVar.e(jSONObjectOptJSONObject.optString("appID"));
                        sVar.g(jSONObjectOptJSONObject.optInt("acratio"));
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("adResponse");
                        ArrayList arrayList6 = new ArrayList();
                        if (b(jSONArrayOptJSONArray2)) {
                            int i6 = 0;
                            while (i6 < jSONArrayOptJSONArray2.length()) {
                                JSONObject jSONObjectOptJSONObject13 = jSONArrayOptJSONArray2.optJSONObject(i6);
                                if (jSONObjectOptJSONObject13 != null) {
                                    d dVar = new d();
                                    dVar.a(jSONObjectOptJSONObject13.optString("extInfo"));
                                    dVar.b(jSONObjectOptJSONObject13.optString("adid"));
                                    JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject13.optJSONArray("contentInfo");
                                    ArrayList arrayList7 = new ArrayList();
                                    if (b(jSONArrayOptJSONArray3)) {
                                        int i7 = 0;
                                        while (i7 < jSONArrayOptJSONArray3.length()) {
                                            JSONObject jSONObjectOptJSONObject14 = jSONArrayOptJSONArray3.optJSONObject(i7);
                                            JSONArray jSONArray6 = jSONArrayOptJSONArray;
                                            a aVar = new a();
                                            JSONArray jSONArray7 = jSONArrayOptJSONArray2;
                                            aVar.a(jSONObjectOptJSONObject14.optString("template"));
                                            aVar.a(e.f.a(jSONObjectOptJSONObject14.optInt("renderType")));
                                            JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject14.optJSONArray("adcontentSlot");
                                            if (b(jSONArrayOptJSONArray4)) {
                                                ArrayList arrayList8 = new ArrayList();
                                                str2 = str5;
                                                jSONArray4 = jSONArrayOptJSONArray3;
                                                int i8 = 0;
                                                while (i8 < jSONArrayOptJSONArray4.length()) {
                                                    try {
                                                        JSONObject jSONObjectOptJSONObject15 = jSONArrayOptJSONArray4.optJSONObject(i8);
                                                        if (jSONObjectOptJSONObject15 != null) {
                                                            jSONArray5 = jSONArrayOptJSONArray4;
                                                            e eVar = new e();
                                                            qVar5 = qVar6;
                                                            try {
                                                                eVar.a(jSONObjectOptJSONObject15.optString("md5"));
                                                                String strOptString = jSONObjectOptJSONObject15.optString("content");
                                                                i4 = i5;
                                                                StringBuilder sb = new StringBuilder();
                                                                sb.append(strOptString);
                                                                arrayList4 = arrayList5;
                                                                sb.append("");
                                                                Log.e("content_url", sb.toString());
                                                                eVar.b(strOptString);
                                                                arrayList8.add(eVar);
                                                            } catch (JSONException e) {
                                                                e = e;
                                                                qVar = qVar5;
                                                            }
                                                        } else {
                                                            arrayList4 = arrayList5;
                                                            qVar5 = qVar6;
                                                            jSONArray5 = jSONArrayOptJSONArray4;
                                                            i4 = i5;
                                                        }
                                                        i8++;
                                                        jSONArrayOptJSONArray4 = jSONArray5;
                                                        qVar6 = qVar5;
                                                        i5 = i4;
                                                        arrayList5 = arrayList4;
                                                    } catch (JSONException e2) {
                                                        e = e2;
                                                        qVar = qVar6;
                                                    }
                                                }
                                                arrayList3 = arrayList5;
                                                qVar4 = qVar6;
                                                i3 = i5;
                                                aVar.a(arrayList8);
                                            } else {
                                                arrayList3 = arrayList5;
                                                str2 = str5;
                                                qVar4 = qVar6;
                                                i3 = i5;
                                                jSONArray4 = jSONArrayOptJSONArray3;
                                            }
                                            arrayList7.add(aVar);
                                            i7++;
                                            jSONArrayOptJSONArray = jSONArray6;
                                            jSONArrayOptJSONArray2 = jSONArray7;
                                            jSONArrayOptJSONArray3 = jSONArray4;
                                            str5 = str2;
                                            qVar6 = qVar4;
                                            i5 = i3;
                                            arrayList5 = arrayList3;
                                        }
                                        jSONArray2 = jSONArrayOptJSONArray;
                                        arrayList2 = arrayList5;
                                        str4 = str5;
                                        qVar3 = qVar6;
                                        jSONArray3 = jSONArrayOptJSONArray2;
                                        i2 = i5;
                                        dVar.a(arrayList7);
                                    } else {
                                        jSONArray2 = jSONArrayOptJSONArray;
                                        arrayList2 = arrayList5;
                                        str4 = str5;
                                        qVar3 = qVar6;
                                        jSONArray3 = jSONArrayOptJSONArray2;
                                        i2 = i5;
                                    }
                                    JSONObject jSONObjectOptJSONObject16 = jSONObjectOptJSONObject13.optJSONObject("adLogo");
                                    if (jSONObjectOptJSONObject16 != null) {
                                        c cVar = new c();
                                        cVar.b(jSONObjectOptJSONObject16.optString("adLabel"));
                                        cVar.a(jSONObjectOptJSONObject16.optString("adLabelUrl"));
                                        cVar.d(jSONObjectOptJSONObject16.optString("sourceLabel"));
                                        cVar.c(jSONObjectOptJSONObject16.optString("sourceUrl"));
                                        dVar.a(cVar);
                                    }
                                    dVar.a(jSONObjectOptJSONObject13.optInt("price"));
                                    dVar.c(jSONObjectOptJSONObject13.optString("tagid"));
                                    C0191b c0191b = new C0191b();
                                    JSONObject jSONObjectOptJSONObject17 = jSONObjectOptJSONObject13.optJSONObject("interactInfo");
                                    if (jSONObjectOptJSONObject17 != null) {
                                        JSONArray jSONArrayOptJSONArray5 = jSONObjectOptJSONObject17.optJSONArray("thirdpartInfo");
                                        if (b(jSONArrayOptJSONArray5)) {
                                            ArrayList arrayList9 = new ArrayList();
                                            for (int i9 = 0; i9 < jSONArrayOptJSONArray5.length(); i9++) {
                                                JSONObject jSONObjectOptJSONObject18 = jSONArrayOptJSONArray5.optJSONObject(i9);
                                                if (jSONObjectOptJSONObject18 != null) {
                                                    j jVar = new j();
                                                    jVar.b(jSONObjectOptJSONObject18.optString("clickUrl"));
                                                    jVar.a(jSONObjectOptJSONObject18.optString("viewUrl"));
                                                    jVar.c(jSONObjectOptJSONObject18.optString("dpSucessUrl"));
                                                    jVar.d(jSONObjectOptJSONObject18.optString("nurl"));
                                                    jVar.e(jSONObjectOptJSONObject18.optString("lurl"));
                                                    jVar.f(jSONObjectOptJSONObject18.optString("convertUrl"));
                                                    jVar.j(jSONObjectOptJSONObject18.optString("onFinish"));
                                                    jVar.h(jSONObjectOptJSONObject18.optString("onPause"));
                                                    jVar.i(jSONObjectOptJSONObject18.optString("onRecover"));
                                                    jVar.g(jSONObjectOptJSONObject18.optString("onStart"));
                                                    arrayList9.add(jVar);
                                                }
                                            }
                                            c0191b.a(arrayList9);
                                        }
                                        c0191b.c(jSONObjectOptJSONObject17.optString("apkName"));
                                        c0191b.f(jSONObjectOptJSONObject17.optString("appDesc"));
                                        c0191b.g(jSONObjectOptJSONObject17.optString("appDownloadURL"));
                                        c0191b.e(jSONObjectOptJSONObject17.optString("appStoreID"));
                                        c0191b.a(jSONObjectOptJSONObject17.optString("landingPageUrl"));
                                        c0191b.b(jSONObjectOptJSONObject17.optString("deeplinkUrl"));
                                        c0191b.a(jSONObjectOptJSONObject17.optInt("interactType"));
                                        c0191b.d(jSONObjectOptJSONObject17.optString("packageName"));
                                        c0191b.a(jSONObjectOptJSONObject17.optBoolean("useBuiltInBrow"));
                                        c0191b.b(jSONObjectOptJSONObject17.optInt("openExternal"));
                                        JSONObject jSONObjectOptJSONObject19 = jSONObjectOptJSONObject17.optJSONObject("followTrackExt");
                                        JSONObject jSONObjectOptJSONObject20 = jSONObjectOptJSONObject17.optJSONObject("complianceInfo");
                                        if (jSONObjectOptJSONObject20 != null) {
                                            i iVar = new i();
                                            iVar.a(jSONObjectOptJSONObject20.optString("appName"));
                                            iVar.b(jSONObjectOptJSONObject20.optString("appVersion"));
                                            iVar.c(jSONObjectOptJSONObject20.optString("developerName"));
                                            iVar.d(jSONObjectOptJSONObject20.optString("privacyUrl"));
                                            iVar.e(jSONObjectOptJSONObject20.optString("permissionsUrl"));
                                            iVar.f(jSONObjectOptJSONObject20.optString("functionDescUrl"));
                                            iVar.g(jSONObjectOptJSONObject20.optString("appIconURL"));
                                            c0191b.a(iVar);
                                        }
                                        C0191b.a aVar2 = new C0191b.a();
                                        if (jSONObjectOptJSONObject19 != null) {
                                            aVar2.a(a(jSONObjectOptJSONObject19.optJSONArray("open")));
                                            aVar2.b(a(jSONObjectOptJSONObject19.optJSONArray("beginDownload")));
                                            aVar2.c(a(jSONObjectOptJSONObject19.optJSONArray(g6.OoooOOo)));
                                            aVar2.d(a(jSONObjectOptJSONObject19.optJSONArray("beginInstall")));
                                            aVar2.e(a(jSONObjectOptJSONObject19.optJSONArray("install")));
                                            aVar2.f(a(jSONObjectOptJSONObject19.optJSONArray("active")));
                                            aVar2.g(a(jSONObjectOptJSONObject19.optJSONArray(com.anythink.expressad.foundation.d.c.cf)));
                                            aVar2.h(a(jSONObjectOptJSONObject19.optJSONArray("showSlide")));
                                            aVar2.j(a(jSONObjectOptJSONObject19.optJSONArray("pageClose")));
                                            aVar2.i(a(jSONObjectOptJSONObject19.optJSONArray("pageLoad")));
                                            aVar2.k(a(jSONObjectOptJSONObject19.optJSONArray("pageAction")));
                                            aVar2.l(a(jSONObjectOptJSONObject19.optJSONArray("deepLinkSuccess")));
                                            aVar2.m(a(jSONObjectOptJSONObject19.optJSONArray("deepLinkFail")));
                                            aVar2.n(a(jSONObjectOptJSONObject19.optJSONArray("dpAppInstalled")));
                                            aVar2.o(a(jSONObjectOptJSONObject19.optJSONArray("dpAppNotInstalled")));
                                            c0191b.a(aVar2);
                                        }
                                        JSONObject jSONObjectOptJSONObject21 = jSONObjectOptJSONObject17.optJSONObject("videoTrackExt");
                                        C0191b.C0192b c0192b = new C0191b.C0192b();
                                        if (jSONObjectOptJSONObject21 != null) {
                                            c0192b.a(a(jSONObjectOptJSONObject21.optJSONArray(com.anythink.expressad.foundation.d.c.bT)));
                                            c0192b.b(a(jSONObjectOptJSONObject21.optJSONArray(com.anythink.expressad.foundation.d.c.cb)));
                                            c0192b.c(a(jSONObjectOptJSONObject21.optJSONArray("continue")));
                                            c0192b.d(a(jSONObjectOptJSONObject21.optJSONArray("exit")));
                                            c0192b.e(a(jSONObjectOptJSONObject21.optJSONArray(com.anythink.expressad.foundation.d.c.bX)));
                                            JSONArray jSONArrayOptJSONArray6 = jSONObjectOptJSONObject21.optJSONArray("showTrack");
                                            ArrayList arrayList10 = new ArrayList();
                                            if (b(jSONArrayOptJSONArray6)) {
                                                for (int i10 = 0; i10 < jSONArrayOptJSONArray6.length(); i10++) {
                                                    JSONObject jSONObjectOptJSONObject22 = jSONArrayOptJSONArray6.optJSONObject(i10);
                                                    if (jSONObjectOptJSONObject22 != null) {
                                                        C0191b.C0192b.a aVar3 = new C0191b.C0192b.a();
                                                        aVar3.a(jSONObjectOptJSONObject22.optInt("t"));
                                                        aVar3.a(a(jSONObjectOptJSONObject22.optJSONArray(com.anythink.expressad.foundation.d.c.am)));
                                                        arrayList10.add(aVar3);
                                                    }
                                                }
                                                c0192b.f(arrayList10);
                                            }
                                            c0191b.a(c0192b);
                                        }
                                        dVar.a(c0191b);
                                    }
                                    arrayList6.add(dVar);
                                } else {
                                    jSONArray2 = jSONArrayOptJSONArray;
                                    arrayList2 = arrayList5;
                                    str4 = str5;
                                    qVar3 = qVar6;
                                    jSONArray3 = jSONArrayOptJSONArray2;
                                    i2 = i5;
                                }
                                i6++;
                                jSONArrayOptJSONArray = jSONArray2;
                                jSONArrayOptJSONArray2 = jSONArray3;
                                str5 = str4;
                                qVar6 = qVar3;
                                i5 = i2;
                                arrayList5 = arrayList2;
                            }
                            jSONArray = jSONArrayOptJSONArray;
                            str3 = str5;
                            qVar2 = qVar6;
                            i = i5;
                            sVar.a(arrayList6);
                            arrayList = arrayList5;
                        } else {
                            jSONArray = jSONArrayOptJSONArray;
                            str3 = str5;
                            qVar2 = qVar6;
                            i = i5;
                            arrayList = arrayList5;
                        }
                        arrayList.add(sVar);
                    } else {
                        jSONArray = jSONArrayOptJSONArray;
                        arrayList = arrayList5;
                        str3 = str5;
                        qVar2 = qVar6;
                        i = i5;
                    }
                    i5 = i + 1;
                    arrayList5 = arrayList;
                    jSONArrayOptJSONArray = jSONArray;
                    str5 = str3;
                    qVar6 = qVar2;
                }
                ArrayList arrayList11 = arrayList5;
                str2 = str5;
                qVar = qVar6;
                try {
                    qVar.a(arrayList11);
                    return qVar;
                } catch (JSONException e3) {
                    e = e3;
                }
            } catch (JSONException e4) {
                e = e4;
                str2 = str5;
            }
            qVar = qVar6;
            com.octopus.ad.utils.b.f.c(str2, "JSONException e = " + e.getMessage());
            return qVar;
        }

        public int a() {
            List<s> list = this.e;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        public void a(int i) {
            this.a = i;
        }

        public void a(long j) {
            this.d = j;
        }

        public void a(String str) {
            this.b = str;
        }

        public void a(List<s> list) {
            this.e = list;
        }

        public int b() {
            return this.a;
        }

        public void b(String str) {
            this.c = str;
        }

        public String c() {
            return this.b;
        }

        public String d() {
            return this.c;
        }

        public List<s> e() {
            return this.e;
        }
    }

    public static class r {
        private int a;
        private double b = 1.5d;

        public int a() {
            return this.a;
        }

        public void a(double d) {
            this.b = d;
        }

        public void a(int i) {
            this.a = i;
        }

        public double b() {
            return this.b;
        }
    }

    public static class s {
        private String a;
        private String b;
        private e.a c;
        private int d;
        private e.h e;
        private int f;
        private String g;
        private String h;
        private f i;
        private m j;
        private t k;
        private boolean l;
        private int m;
        private boolean n;
        private int o;
        private boolean p;
        private boolean q;
        private boolean r;
        private boolean s;
        private boolean t;
        private boolean u;
        private int v;
        private int w;
        private String x;
        private int y;
        private List<d> z;

        public String a() {
            return this.a;
        }

        public void a(int i) {
            this.d = i;
        }

        public void a(f fVar) {
            this.i = fVar;
        }

        public void a(m mVar) {
            this.j = mVar;
        }

        public void a(t tVar) {
            this.k = tVar;
        }

        public void a(e.a aVar) {
            this.c = aVar;
        }

        public void a(e.h hVar) {
            this.e = hVar;
        }

        public void a(String str) {
            this.a = str;
        }

        public void a(List<d> list) {
            this.z = list;
        }

        public void a(boolean z) {
            this.l = z;
        }

        public String b() {
            return this.b;
        }

        public void b(int i) {
            this.f = i;
        }

        public void b(String str) {
            this.b = str;
        }

        public void b(boolean z) {
            this.n = z;
        }

        public e.a c() {
            return this.c;
        }

        public void c(int i) {
            this.m = i;
        }

        public void c(String str) {
            this.g = str;
        }

        public void c(boolean z) {
            this.p = z;
        }

        public int d() {
            return this.d;
        }

        public void d(int i) {
            this.o = i;
        }

        public void d(String str) {
            this.h = str;
        }

        public void d(boolean z) {
            this.q = z;
        }

        public e.h e() {
            return this.e;
        }

        public void e(int i) {
            this.v = i;
        }

        public void e(String str) {
            this.x = str;
        }

        public void e(boolean z) {
            this.r = z;
        }

        public int f() {
            return this.f;
        }

        public void f(int i) {
            this.w = i;
        }

        public void f(boolean z) {
            this.s = z;
        }

        public String g() {
            return this.g;
        }

        public void g(int i) {
            this.y = i;
        }

        public void g(boolean z) {
            this.t = z;
        }

        public String h() {
            return this.h;
        }

        public f i() {
            return this.i;
        }

        public m j() {
            return this.j;
        }

        public t k() {
            return this.k;
        }

        public boolean l() {
            return this.l;
        }

        public int m() {
            return this.m;
        }

        public boolean n() {
            return this.n;
        }

        public int o() {
            return this.o;
        }

        public boolean p() {
            return this.p;
        }

        public boolean q() {
            return this.q;
        }

        public boolean r() {
            return this.r;
        }

        public boolean s() {
            return this.s;
        }

        public boolean t() {
            return this.t;
        }

        public boolean u() {
            return this.u;
        }

        public int v() {
            return this.y;
        }

        public List<d> w() {
            return this.z;
        }

        public int x() {
            List<d> list = this.z;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
    }

    public static class t {
        private n a;
        private g b;
        private h c;
        private k d;

        public n a() {
            return this.a;
        }

        public void a(g gVar) {
            this.b = gVar;
        }

        public void a(h hVar) {
            this.c = hVar;
        }

        public void a(k kVar) {
            this.d = kVar;
        }

        public void a(n nVar) {
            this.a = nVar;
        }

        public g b() {
            return this.b;
        }

        public h c() {
            return this.c;
        }

        public k d() {
            return this.d;
        }
    }
}
