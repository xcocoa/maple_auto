package com.anythink.expressad.foundation.d;

import android.net.Uri;
import android.text.TextUtils;
import com.anythink.expressad.a.c;
import com.anythink.expressad.foundation.h.t;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.anythink.expressad.out.j implements com.anythink.expressad.e.b, Serializable {
    public static final String cA = "adv_id";
    public static final String cB = "ttc_type";
    public static final String cC = "ttc_ct2";
    public static final String cD = "gh_id";
    public static final String cE = "gh_path";
    public static final String cF = "bind_id";
    public static final String cG = "mark";
    public static final String cH = "isPost";
    public static final int cI = 604800;
    public static final int cJ = 1800;
    public static final String cK = "apk_download_start";
    public static final String cL = "apk_download_end";
    public static final String cM = "apk_install";
    public static final String cN = "loopback";
    public static final String cO = "domain";
    public static final String cP = "key";
    public static final String cQ = "value";
    public static final String co = h.class.getSimpleName();
    public static final String cp = "apk_alt";
    public static final String cq = "disableApkAlt";
    public static final String cr = "apk_info";
    public static final String cs = "ntbarpt";
    public static final String ct = "ntbarpasbl";
    public static final String cu = "atat_type";
    public static final String cv = "akdlui";
    public static final String cw = "ttc";
    public static final String cx = "ttc_ct";
    public static final String cy = "ttc_pe";
    public static final String cz = "ttc_po";
    private static final long l = 1;
    private a d;
    private String i;
    private String j;
    private String k;
    private int n;
    private String o;
    private int p;
    private Map<String, String> q;
    private String r;
    private String s;
    private int t;
    private int u;
    private c.b v;
    private int a = 0;
    private int b = 0;
    private String c = "";
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private String h = "";
    private boolean m = false;

    public static c a(JSONObject jSONObject, c cVar) {
        if (jSONObject == null) {
            return null;
        }
        try {
            ((h) cVar).m = jSONObject.optBoolean(cw);
            ((h) cVar).n = jSONObject.optInt(cx, 604800);
            ((h) cVar).s = jSONObject.optString(cA);
            ((h) cVar).t = jSONObject.optInt("ttc_type", 3);
            ((h) cVar).u = jSONObject.optInt(cC, 1800);
            cVar.a(System.currentTimeMillis());
            cVar.m(jSONObject.optString(d.f));
            cVar.n(jSONObject.optString(d.k));
            ((h) cVar).o = jSONObject.optString(cG);
            ((h) cVar).p = jSONObject.optInt(cH);
            try {
                if (jSONObject.has(cN)) {
                    String strOptString = jSONObject.optString(cN);
                    if (!TextUtils.isEmpty(strOptString)) {
                        ((h) cVar).r = strOptString;
                        ((h) cVar).q = h(strOptString);
                    }
                }
            } catch (Exception unused) {
            }
            String strOptString2 = jSONObject.optString(cD);
            if (!TextUtils.isEmpty(strOptString2)) {
                ((h) cVar).i = strOptString2;
                String strOptString3 = jSONObject.optString(cE);
                if (!TextUtils.isEmpty(strOptString3)) {
                    ((h) cVar).j = com.anythink.expressad.foundation.h.j.b(strOptString3);
                }
                ((h) cVar).k = jSONObject.optString(cF);
            }
            ((h) cVar).a = jSONObject.optInt(cp, 0);
            ((h) cVar).b = jSONObject.optInt(cq, 0);
            ((h) cVar).d = a.a(jSONObject.optString(cr));
            ((h) cVar).f = jSONObject.optInt(ct, 0);
            ((h) cVar).e = jSONObject.optInt(cs, 0);
            ((h) cVar).g = jSONObject.optInt(cu, 0);
            ((h) cVar).h = jSONObject.optString(cv, "");
            return cVar;
        } catch (Exception e) {
            e.printStackTrace();
            new StringBuilder("parse campaign json exception: ").append(e.getLocalizedMessage());
            return cVar;
        }
    }

    public static String a(d dVar, c cVar, String str) {
        if (dVar != null && !TextUtils.isEmpty(str)) {
            try {
                HashMap<String, String> mapA = dVar.a();
                if (mapA != null) {
                    mapA.entrySet().iterator();
                    for (Map.Entry<String, String> entry : mapA.entrySet()) {
                        String key = entry.getKey();
                        str = str.replaceAll("\\{" + key + "\\}", entry.getValue());
                    }
                }
                HashMap<String, String> mapZ = cVar.z();
                if (mapZ != null) {
                    mapZ.entrySet().iterator();
                    for (Map.Entry<String, String> entry2 : mapZ.entrySet()) {
                        String key2 = entry2.getKey();
                        str = str.replaceAll("\\{" + key2 + "\\}", entry2.getValue());
                    }
                }
                HashMap<String, String> mapB = dVar.b();
                if (mapB != null) {
                    for (Map.Entry<String, String> entry3 : mapB.entrySet()) {
                        String key3 = entry3.getKey();
                        str = str.replaceAll("\\{" + key3 + "\\}", entry3.getValue());
                    }
                }
                str = str.replaceAll("\\{c\\}", URLEncoder.encode(dVar.e(), "utf-8"));
                Matcher matcher = Pattern.compile("=\\{.*?\\}").matcher(str);
                while (matcher.find()) {
                    str = str.replace(matcher.group(0), "=");
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return str;
    }

    private Map<String, String> a() {
        return this.q;
    }

    private void a(int i) {
        this.b = i;
    }

    private void a(a aVar) {
        this.d = aVar;
    }

    private void a(String str) {
        this.h = str;
    }

    private void a(Map<String, String> map) {
        this.q = map;
    }

    private void a(boolean z) {
        this.m = z;
    }

    public static c b(JSONObject jSONObject, c cVar) {
        if (jSONObject == null) {
            return null;
        }
        try {
            ((h) cVar).m = jSONObject.optBoolean(cw);
            ((h) cVar).n = jSONObject.optInt(cx, 604800);
            ((h) cVar).s = jSONObject.optString(cA);
            ((h) cVar).t = jSONObject.optInt("ttc_type", 3);
            ((h) cVar).u = jSONObject.optInt(cC, 1800);
            ((h) cVar).o = jSONObject.optString(cG);
            ((h) cVar).p = jSONObject.optInt(cH);
            try {
                if (jSONObject.has(cN)) {
                    String strOptString = jSONObject.optString(cN);
                    if (!TextUtils.isEmpty(strOptString)) {
                        ((h) cVar).r = strOptString;
                        ((h) cVar).q = h(strOptString);
                    }
                }
            } catch (Exception unused) {
            }
            String strOptString2 = jSONObject.optString(cD);
            if (!TextUtils.isEmpty(strOptString2)) {
                ((h) cVar).i = strOptString2;
                String strOptString3 = jSONObject.optString(cE);
                if (!TextUtils.isEmpty(strOptString3)) {
                    ((h) cVar).j = com.anythink.expressad.foundation.h.j.b(strOptString3);
                }
                ((h) cVar).k = jSONObject.optString(cF);
            }
            cVar.e(jSONObject.optString("cam_html"));
            cVar.b(jSONObject.optString("cam_html"));
            ((h) cVar).a = jSONObject.optInt(cp, 0);
            ((h) cVar).b = jSONObject.optInt(cq, 0);
            ((h) cVar).d = a.a(jSONObject.optString(cr));
            ((h) cVar).f = jSONObject.optInt(ct, 0);
            ((h) cVar).e = jSONObject.optInt(cs, 0);
            ((h) cVar).g = jSONObject.optInt(cu, 0);
            ((h) cVar).h = jSONObject.optString(cv, "");
            return cVar;
        } catch (Exception e) {
            e.printStackTrace();
            new StringBuilder("parse campaign json exception: ").append(e.getLocalizedMessage());
            return cVar;
        }
    }

    private String b() {
        return this.r;
    }

    private void b(int i) {
        this.a = i;
    }

    private void b(String str) {
        this.i = str;
    }

    private static JSONObject c(JSONObject jSONObject, c cVar) throws JSONException {
        if (cVar == null) {
            return jSONObject;
        }
        jSONObject.put(cw, ((h) cVar).m);
        jSONObject.put(cx, ((h) cVar).n);
        jSONObject.put(cA, ((h) cVar).s);
        jSONObject.put("ttc_type", ((h) cVar).t);
        jSONObject.put(cC, ((h) cVar).u);
        jSONObject.put(cD, ((h) cVar).i);
        jSONObject.put(cE, com.anythink.expressad.foundation.h.j.a(((h) cVar).j));
        jSONObject.put(cF, ((h) cVar).k);
        jSONObject.put(cp, ((h) cVar).a);
        jSONObject.put(cq, ((h) cVar).b);
        a aVar = ((h) cVar).d;
        if (aVar != null) {
            jSONObject.put(cr, aVar.g());
        }
        jSONObject.put(cG, ((h) cVar).o);
        jSONObject.put(cH, ((h) cVar).p);
        jSONObject.put(c.bc, cVar.x());
        jSONObject.put(ct, ((h) cVar).f);
        jSONObject.put(cs, ((h) cVar).e);
        jSONObject.put(cu, ((h) cVar).g);
        jSONObject.put(cv, ((h) cVar).h);
        return jSONObject;
    }

    private void c(int i) {
        this.e = i;
    }

    private void c(String str) {
        this.j = str;
    }

    private void d(int i) {
        this.f = i;
    }

    private void d(String str) {
        this.k = str;
    }

    private void e(int i) {
        this.g = i;
    }

    private void e(String str) {
        this.r = str;
    }

    private void f(int i) {
        this.p = i;
    }

    private void f(String str) {
        this.o = str;
    }

    private void g(int i) {
        this.u = i;
    }

    private void g(String str) {
        this.s = str;
    }

    private static Map<String, String> h(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            HashMap map = new HashMap();
            try {
                JSONObject jSONObject = new JSONObject(str);
                map.put("domain", jSONObject.getString("domain"));
                map.put("key", jSONObject.getString("key"));
                map.put("value", jSONObject.getString("value"));
            } catch (Throwable unused) {
            }
            return map;
        } catch (Throwable unused2) {
            return null;
        }
    }

    private void h(int i) {
        this.t = i;
    }

    private void i(int i) {
        this.n = i;
    }

    public void a(c.b bVar) {
        this.v = bVar;
    }

    public final a aG() {
        return this.d;
    }

    public final int aH() {
        return this.b;
    }

    public final int aI() {
        return this.a;
    }

    public final int aJ() {
        return this.e;
    }

    public final int aK() {
        return this.f;
    }

    public final int aL() {
        return this.g;
    }

    public final String aM() {
        return this.h;
    }

    public final String aN() {
        return this.i;
    }

    public final String aO() {
        return this.j;
    }

    @Deprecated
    public final String aP() {
        return this.k;
    }

    public final String aQ() {
        return this.o;
    }

    public final int aR() {
        return this.p;
    }

    public final int aS() {
        return this.u;
    }

    public final int aT() {
        return this.t;
    }

    public final String aU() {
        return this.s;
    }

    public final int aV() {
        return this.n;
    }

    public final boolean aW() {
        return this.m;
    }

    public c.b aj() {
        return this.v;
    }

    public final boolean b(c cVar) {
        boolean z = this.a == 1 && cVar.Q() == 3 && ((h) cVar).b != 1;
        if (!z) {
            return z;
        }
        try {
            return t.a(com.anythink.core.common.b.n.a().f(), ba()) ? false : z;
        } catch (Throwable th) {
            th.getMessage();
            return z;
        }
    }

    public final String u(String str) {
        Map<String, String> map;
        try {
            if (TextUtils.isEmpty(str) || (map = this.q) == null || map.size() <= 0) {
                return str;
            }
            Uri uri = Uri.parse(str);
            String host = uri.getHost();
            String str2 = map.get("domain");
            if (TextUtils.isEmpty(host) || !host.contains(str2)) {
                return str;
            }
            String str3 = map.get("key");
            String str4 = map.get("value");
            if (!str.contains(str3) && TextUtils.isEmpty(uri.getQueryParameter(str3)) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                return str + "&" + str3 + "=" + str4;
            }
            if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                return str;
            }
            return str.replace(str3 + "=" + (TextUtils.isEmpty(uri.getQueryParameter(str3)) ? "" : uri.getQueryParameter(str3)), str3 + "=" + str4);
        } catch (Throwable unused) {
            return str;
        }
    }
}
