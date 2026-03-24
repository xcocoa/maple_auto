package com.anythink.expressad.foundation.d;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.api.IExHandler;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d implements com.anythink.expressad.e.b, Serializable {
    public static final String A = "cam_tpl_url";
    public static final String B = "cam_html";
    public static final String C = "cam_tpl_url";
    public static final String D = "cam_html";
    public static final String E = "nscpt";
    public static final String F = "mof_template_url";
    public static final String G = "mof_tplid";
    public static final String H = "req_ext_data";
    public static final String I = "replace_tmp";
    private static final String K = d.class.getSimpleName();
    private static final long L = 1;
    public static final String a = "a";
    public static final String b = "pv_urls";
    public static final String c = "parent_session_id";
    public static final String d = "ad_type";
    public static final String e = "unit_size";
    public static final String f = "html_url";
    public static final String g = "only_impression_url";
    public static final String h = "ads";
    public static final String i = "template";
    public static final String j = "frames";
    public static final String k = "end_screen_url";
    public static final String l = "jm_do";
    public static final String m = "rks";
    public static final String n = "vcn";
    public static final String o = "token_r";
    public static final String p = "encrypt_p";
    public static final String q = "irlfa";
    public static final String r = "csp";
    public static final String s = "do";
    public static final String t = "sh";
    public static final String u = "ia_icon";
    public static final String v = "ia_rst";
    public static final String w = "ia_url";
    public static final String x = "ia_ori";
    public static final String y = "ia_all_ext1";
    public static final String z = "ia_all_ext2";
    public ArrayList<c> J;
    private String N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private int S;
    private String T;
    private int U;
    private String V;
    private String W;
    private String X;
    private String Y;
    private int Z;
    private String aa;
    private String ab;
    private String ac;
    private int ad;
    private List<com.anythink.expressad.out.l> ae;
    private HashMap<String, String> ag;
    private HashMap<String, String> ah;
    private String ai;
    private String aj;
    private String ak;
    private int al;
    private int am;
    private int ao;
    private String ap;
    private String M = "";
    private StringBuffer af = new StringBuffer();
    private String an = "";

    private String A() {
        return this.aa;
    }

    private String B() {
        return this.ab;
    }

    private String C() {
        return this.ac;
    }

    private ArrayList<c> D() {
        return this.J;
    }

    private int E() {
        return this.ad;
    }

    public static d a(String str) {
        try {
            return b(new JSONObject(str), "");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static d a(JSONObject jSONObject) {
        return b(jSONObject, "");
    }

    private static d a(JSONObject jSONObject, String str) {
        return b(jSONObject, str);
    }

    private static Object a(Object obj) {
        return obj == null ? "" : obj;
    }

    private void a(int i2) {
        this.S = i2;
    }

    private void a(ArrayList<c> arrayList) {
        this.J = arrayList;
    }

    private void a(HashMap<String, String> map) {
        this.ag = map;
    }

    private void a(List<com.anythink.expressad.out.l> list) {
        this.ae = list;
    }

    private static d b(JSONObject jSONObject) {
        return b(jSONObject, "");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r15v16, types: [com.anythink.expressad.foundation.d.d] */
    /* JADX WARN: Type inference failed for: r25v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.anythink.expressad.foundation.d.d] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    private static d b(JSONObject jSONObject, String str) {
        ?? r8;
        String str2;
        int i2;
        ArrayList arrayList;
        String str3;
        String str4;
        int i3;
        String str5;
        ?? r0 = jSONObject;
        String str6 = h;
        String str7 = "template";
        ?? r5 = "a";
        String str8 = g;
        String str9 = f;
        if (r0 != 0) {
            try {
                d dVar = new d();
                try {
                    String strOptString = r0.optString(m);
                    if (!TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject2 = new JSONObject(strOptString);
                        Iterator<String> itKeys = jSONObject2.keys();
                        HashMap<String, String> map = new HashMap<>();
                        while (itKeys != null && itKeys.hasNext()) {
                            String next = itKeys.next();
                            map.put(next, jSONObject2.optString(next));
                        }
                        dVar.ag = map;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        HashMap<String, String> map2 = new HashMap<>();
                        map2.put("encrypt_p", "");
                        map2.put(q, "");
                        dVar.ah = map2;
                    }
                    JSONObject jSONObjectOptJSONObject = r0.optJSONObject(H);
                    int iOptInt = r0.optInt(E, 1);
                    String strOptString2 = r0.optString(F, "");
                    int iOptInt2 = r0.optInt(G, 0);
                    String string = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : "";
                    new JSONArray();
                    JSONArray jSONArrayOptJSONArray = r0.optJSONArray("pv_urls");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                        str2 = string;
                        i2 = iOptInt2;
                        arrayList = null;
                    } else {
                        str2 = string;
                        arrayList = new ArrayList(jSONArrayOptJSONArray.length());
                        i2 = iOptInt2;
                        for (int i4 = 0; i4 < jSONArrayOptJSONArray.length(); i4++) {
                            arrayList.add(jSONArrayOptJSONArray.getString(i4));
                        }
                    }
                    com.anythink.expressad.foundation.c.a.a.a().a(r0.optJSONObject(I));
                    dVar.X = r0.optString("a");
                    dVar.Y = r0.optString("parent_session_id");
                    dVar.Z = r0.optInt("ad_type");
                    dVar.aa = r0.optString(e);
                    dVar.ab = r0.optString(f);
                    dVar.ac = r0.optString(g);
                    dVar.ad = r0.optInt("template");
                    dVar.ao = r0.optInt(l);
                    dVar.R = r0.optString("ia_icon");
                    dVar.S = r0.optInt("ia_rst");
                    dVar.T = r0.optString("ia_url");
                    dVar.U = r0.optInt("ia_ori");
                    dVar.V = r0.optString(y);
                    dVar.W = r0.optString(z);
                    dVar.al = r0.optInt("vcn");
                    dVar.am = r0.optInt("token_r");
                    dVar.an = r0.optString("encrypt_p");
                    JSONArray jSONArrayOptJSONArray2 = r0.optJSONArray(h);
                    JSONArray jSONArrayOptJSONArray3 = r0.optJSONArray(j);
                    String str10 = k;
                    try {
                        if (jSONArrayOptJSONArray3 != null && jSONArrayOptJSONArray3.length() > 0) {
                            ArrayList arrayList2 = new ArrayList();
                            String str11 = "parse campaign error ,campaign is null";
                            String str12 = strOptString2;
                            int i5 = 0;
                            ?? r52 = r5;
                            while (i5 < jSONArrayOptJSONArray3.length()) {
                                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray3.optJSONObject(i5);
                                int i6 = i5;
                                JSONArray jSONArray = jSONObjectOptJSONObject2.getJSONArray(str6);
                                String str13 = str6;
                                ArrayList arrayList3 = new ArrayList();
                                String str14 = str7;
                                JSONObject jSONObject3 = jSONObjectOptJSONObject2;
                                int i7 = 0;
                                ?? r53 = r52;
                                while (i7 < jSONArray.length()) {
                                    JSONObject jSONObjectOptJSONObject3 = jSONArray.optJSONObject(i7);
                                    String strOptString3 = r0.optString(str8);
                                    String strOptString4 = r0.optString(str9);
                                    String str15 = str10;
                                    String str16 = str11;
                                    JSONObject jSONObject4 = jSONObject3;
                                    JSONArray jSONArray2 = jSONArrayOptJSONArray3;
                                    String str17 = str2;
                                    String str18 = str9;
                                    int i8 = i2;
                                    String str19 = str8;
                                    ArrayList arrayList4 = arrayList2;
                                    String str20 = str12;
                                    int i9 = i6;
                                    JSONArray jSONArray3 = jSONArray;
                                    int i10 = iOptInt;
                                    ?? r25 = r53;
                                    d dVar2 = dVar;
                                    c cVarA = c.a(jSONObjectOptJSONObject3, strOptString3, strOptString4, r0.optString(str10), false, dVar, str);
                                    if (cVarA != null) {
                                        cVarA.i(dVar2.T);
                                        cVarA.h(dVar2.U);
                                        cVarA.g(dVar2.S);
                                        cVarA.h(dVar2.R);
                                        cVarA.f(r0.optInt("ad_type"));
                                        cVarA.f(r0.optString(c.aS));
                                        cVarA.g(r0.optString(c.aT));
                                        cVarA.d(dVar2.s());
                                        cVarA.c(dVar2.t());
                                        cVarA.c(dVar2.an);
                                        cVarA.k(i8);
                                        cVarA.r(str20);
                                        i3 = i10;
                                        cVarA.j(i3);
                                        cVarA.a((List<String>) arrayList);
                                        str4 = str17;
                                        cVarA.s(str4);
                                        arrayList3.add(cVarA);
                                        str5 = str16;
                                    } else {
                                        str4 = str17;
                                        i3 = i10;
                                        str5 = str16;
                                        dVar2.M = str5;
                                    }
                                    i7++;
                                    jSONArrayOptJSONArray3 = jSONArray2;
                                    arrayList2 = arrayList4;
                                    str10 = str15;
                                    jSONObject3 = jSONObject4;
                                    str11 = str5;
                                    jSONArray = jSONArray3;
                                    i6 = i9;
                                    str12 = str20;
                                    str8 = str19;
                                    i2 = i8;
                                    str9 = str18;
                                    str2 = str4;
                                    iOptInt = i3;
                                    dVar = dVar2;
                                    r53 = r25;
                                }
                                ?? r252 = r53;
                                d dVar3 = dVar;
                                JSONObject jSONObject5 = jSONObject3;
                                ArrayList arrayList5 = arrayList2;
                                int i11 = iOptInt;
                                String str21 = str2;
                                String str22 = str9;
                                int i12 = i2;
                                com.anythink.expressad.out.l lVar = new com.anythink.expressad.out.l();
                                lVar.b(r0.optString("parent_session_id"));
                                lVar.a(r0.optString(r252));
                                lVar.a(arrayList3);
                                lVar.a(jSONObject5.optInt(str14));
                                arrayList5.add(lVar);
                                arrayList2 = arrayList5;
                                str12 = str12;
                                jSONArrayOptJSONArray3 = jSONArrayOptJSONArray3;
                                str8 = str8;
                                str6 = str13;
                                i2 = i12;
                                str11 = str11;
                                str9 = str22;
                                i5 = i6 + 1;
                                str7 = str14;
                                str2 = str21;
                                iOptInt = i11;
                                dVar = dVar3;
                                r52 = r252;
                                str10 = str10;
                            }
                            d dVar4 = dVar;
                            dVar4.ae = arrayList2;
                            return dVar4;
                        }
                        String str23 = k;
                        r5 = dVar;
                        int i13 = iOptInt;
                        String str24 = str2;
                        String str25 = f;
                        int i14 = i2;
                        String str26 = g;
                        String str27 = "parse campaign error ,campaign is null";
                        if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                            ArrayList<c> arrayList6 = new ArrayList<>();
                            int i15 = 0;
                            ?? r02 = r0;
                            while (i15 < jSONArrayOptJSONArray2.length()) {
                                String str28 = str26;
                                String str29 = str25;
                                String str30 = str27;
                                String str31 = str23;
                                JSONArray jSONArray4 = jSONArrayOptJSONArray2;
                                String str32 = str24;
                                str26 = str28;
                                int i16 = i13;
                                c cVarA2 = c.a(jSONArrayOptJSONArray2.optJSONObject(i15), r02.optString(str28), r02.optString(str29), r02.optString(str31), false, r5, str);
                                if (cVarA2 != null) {
                                    cVarA2.k(i14);
                                    cVarA2.r(strOptString2);
                                    cVarA2.j(i16);
                                    cVarA2.a((List<String>) arrayList);
                                    str3 = str32;
                                    cVarA2.s(str3);
                                    cVarA2.d(r5.s());
                                    cVarA2.c(r5.t());
                                    cVarA2.c(((d) r5).an);
                                    arrayList6.add(cVarA2);
                                } else {
                                    str3 = str32;
                                    ((d) r5).M = str30;
                                }
                                i15++;
                                str27 = str30;
                                i13 = i16;
                                str24 = str3;
                                str23 = str31;
                                jSONArrayOptJSONArray2 = jSONArray4;
                                r02 = jSONObject;
                                str25 = str29;
                            }
                            r5.J = arrayList6;
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    r5 = dVar;
                }
                r8 = r5;
            } catch (Exception unused3) {
                r8 = 0;
            }
        } else {
            r8 = 0;
        }
        return r8;
    }

    private void b(int i2) {
        this.U = i2;
    }

    private void b(String str) {
        this.M = str;
    }

    private void b(HashMap<String, String> map) {
        this.ah = map;
    }

    private void c(int i2) {
        this.al = i2;
    }

    private void c(String str) {
        this.N = str;
    }

    private void d(int i2) {
        this.am = i2;
    }

    private void d(String str) {
        this.O = str;
    }

    private void e(int i2) {
        this.ao = i2;
    }

    private void e(String str) {
        this.P = str;
    }

    private void f(int i2) {
        this.Z = i2;
    }

    private void f(String str) {
        this.Q = str;
    }

    private String g() {
        return this.M;
    }

    private void g(int i2) {
        this.ad = i2;
    }

    private void g(String str) {
        this.R = str;
    }

    private String h() {
        return this.N;
    }

    private void h(String str) {
        this.T = str;
    }

    private String i() {
        return this.O;
    }

    private void i(String str) {
        this.V = str;
    }

    private String j() {
        return this.P;
    }

    private void j(String str) {
        this.W = str;
    }

    private String k() {
        return this.Q;
    }

    private void k(String str) {
        this.an = str;
    }

    private String l() {
        return this.R;
    }

    private void l(String str) {
        this.ai = str;
    }

    private int m() {
        return this.S;
    }

    private void m(String str) {
        this.aj = str;
    }

    private String n() {
        return this.T;
    }

    private void n(String str) {
        this.ak = str;
    }

    private int o() {
        return this.U;
    }

    private void o(String str) {
        this.X = str;
    }

    private String p() {
        return this.V;
    }

    private void p(String str) {
        this.Y = str;
    }

    private String q() {
        return this.W;
    }

    private void q(String str) {
        this.aa = str;
    }

    private String r() {
        return this.an;
    }

    private void r(String str) {
        this.ab = str;
    }

    private int s() {
        int i2 = this.al;
        if (i2 > 1) {
            return i2;
        }
        return 1;
    }

    private void s(String str) {
        this.ac = str;
    }

    private int t() {
        int i2 = this.am;
        if (i2 == 1) {
            return i2;
        }
        return 0;
    }

    private String u() {
        return this.ai;
    }

    private String v() {
        return this.aj;
    }

    private String w() {
        return this.ak;
    }

    private int x() {
        return this.ao;
    }

    private List<com.anythink.expressad.out.l> y() {
        return this.ae;
    }

    private String z() {
        return this.Y;
    }

    public final HashMap<String, String> a() {
        return this.ag;
    }

    public final HashMap<String, String> b() {
        return this.ah;
    }

    public final String c() {
        return this.X;
    }

    public final int d() {
        return this.Z;
    }

    public final String e() {
        StringBuffer stringBuffer = this.af;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            return this.af.toString();
        }
        try {
            String strF = com.anythink.core.common.o.e.f();
            String strC = com.anythink.core.common.o.e.c(com.anythink.core.common.b.n.a().f());
            String strB = com.anythink.core.common.o.e.b(com.anythink.core.common.b.n.a().f());
            com.anythink.core.common.b.n.a().f();
            String strValueOf = String.valueOf(com.anythink.expressad.foundation.h.k.a());
            String str = com.anythink.expressad.foundation.h.k.e(com.anythink.core.common.b.n.a().f()) + "x" + com.anythink.expressad.foundation.h.k.f(com.anythink.core.common.b.n.a().f());
            StringBuffer stringBuffer2 = this.af;
            stringBuffer2.append(this.Z);
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) "1"));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) Build.VERSION.RELEASE));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) com.anythink.expressad.out.b.a));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) com.anythink.core.common.o.e.a()));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) str));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a(Integer.valueOf(com.anythink.expressad.foundation.h.k.b(com.anythink.expressad.foundation.b.a.c().e()))));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) com.anythink.core.common.o.e.f(com.anythink.expressad.foundation.b.a.c().e())));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) strValueOf));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) strB));
            stringBuffer2.append(a((Object) strC));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) "at_device1"));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) "at_device2"));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) com.anythink.core.common.o.e.d(com.anythink.core.common.b.n.a().f())));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) strF));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) ""));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) com.anythink.core.common.o.e.b()));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) ""));
            stringBuffer2.append("||");
            stringBuffer2.append(a((Object) ""));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            stringBuffer2.append(a((Object) (com.anythink.core.common.b.n.a().y() + "," + com.anythink.core.common.b.n.a().z())));
            stringBuffer2.append(com.anythink.expressad.foundation.g.a.bQ);
            this.af = stringBuffer2;
            IExHandler iExHandlerB = com.anythink.core.common.b.n.a().b();
            if (iExHandlerB != null) {
                return iExHandlerB.fillCDataParam(this.af.toString());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        String string = this.af.toString();
        string.replaceAll("at_device1", "");
        string.replaceAll("at_device2", "");
        return string;
    }

    public final String f() {
        try {
            if (!TextUtils.isEmpty(this.ap)) {
                return this.ap;
            }
            if (TextUtils.isEmpty(this.ac)) {
                return "";
            }
            Uri uri = Uri.parse(this.ac);
            if (uri != null) {
                this.ap = uri.getQueryParameter("k");
            }
            return this.ap;
        } catch (Exception unused) {
            return "";
        }
    }
}
