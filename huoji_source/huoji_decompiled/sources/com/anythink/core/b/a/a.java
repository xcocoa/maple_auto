package com.anythink.core.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.b.n;
import com.anythink.core.common.h.c;
import com.anythink.core.common.l;
import com.anythink.core.common.o;
import com.anythink.core.common.o.d;
import com.anythink.core.common.o.e;
import com.anythink.core.d.f;
import com.anythink.core.d.h;
import com.github.kevinsawicki.http.HttpRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.helpers.MessageFormatter;
import z2.kx;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.anythink.core.common.h.a {
    public static final int a = 0;
    public static final int b = 1;
    public static final String c = "ex_pkg";
    private static final String w = "a";
    private int L;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public int l;
    public int p;
    public int q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;
    private int x;
    private final String y = f.a.j;
    private final String z = "request_id";
    private final String A = "ch_info";
    private final String B = "wf";
    private final String C = "np";
    private final String D = "hb_size";
    private final String E = "last_wf";
    private final String F = "co";
    private final String G = f.a.S;
    private final String H = "debug";
    private final String I = "sdk_ext";
    private final String J = "last_win";
    private final String K = "last_m_data";

    public a(String str, String str2, String str3, List<JSONObject> list, int i, f fVar) {
        this.x = 0;
        this.L = 0;
        this.d = str3;
        this.g = str;
        this.h = str2;
        this.x = i;
        JSONArray jSONArray = new JSONArray();
        Iterator<JSONObject> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        this.e = d.a(jSONArray.toString().getBytes());
        if (fVar != null) {
            this.l = fVar.Z();
            this.p = fVar.ao();
            this.L = fVar.aO();
        }
    }

    private void d(int i) {
        this.q = i;
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        try {
            return new JSONObject(obj.toString());
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.core.common.h.a
    public final void a(int i, Object obj) {
        super.a(i, obj);
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
    }

    public final void a(b bVar) {
        String str = bVar.a;
        if (str != null) {
            this.f = d.a(str.getBytes());
        }
        this.q = bVar.f;
        if (!TextUtils.isEmpty(bVar.b) && !TextUtils.equals(kx.OooOOO, bVar.b)) {
            this.i = d.a(bVar.b.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.c) && !TextUtils.equals(kx.OooOOO, bVar.c)) {
            this.j = d.a(bVar.c.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.d) && !TextUtils.equals(kx.OooOOO, bVar.d)) {
            this.r = d.a(bVar.d.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.e) && !TextUtils.equals(kx.OooOOO, bVar.e)) {
            this.s = d.a(bVar.e.getBytes());
        }
        this.t = "";
        if (!TextUtils.isEmpty(bVar.g)) {
            this.t = d.a(bVar.g.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.h)) {
            this.k = d.a(bVar.h.getBytes());
        }
        if (!TextUtils.isEmpty(bVar.i) && !TextUtils.equals(MessageFormatter.DELIM_STR, bVar.i)) {
            this.u = d.a(bVar.i.getBytes());
        }
        if (TextUtils.isEmpty(bVar.j) || TextUtils.equals(kx.OooOOO, bVar.j)) {
            return;
        }
        this.v = d.a(bVar.j.getBytes());
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        return this.g;
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        if (this.x == 0) {
            map.put(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip");
        }
        map.put("Content-Type", "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        return g().getBytes();
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject e() {
        JSONObject jSONObjectA;
        f fVarB;
        JSONObject jSONObjectAI;
        JSONObject jSONObjectE = super.e();
        try {
            jSONObjectE.put("app_id", n.a().o());
            jSONObjectE.put("pl_id", this.h);
            jSONObjectE.put(com.anythink.expressad.foundation.g.a.bt, n.a().g(this.h));
            jSONObjectE.put("t_g_id", this.l);
            jSONObjectE.put("gro_id", this.p);
            String strY = n.a().y();
            if (!TextUtils.isEmpty(strY)) {
                jSONObjectE.put("sy_id", strY);
            }
            String strZ = n.a().z();
            if (TextUtils.isEmpty(strZ)) {
                n.a().k(n.a().x());
                strZ = n.a().x();
            }
            jSONObjectE.put("bk_id", strZ);
            if (n.a().b() != null) {
                jSONObjectE.put("deny", e.p(n.a().f()));
            }
            if (this.x == 0) {
                jSONObjectE.put("misk_spt", o.a().c());
                o.a();
                jSONObjectE.put("misk_pt_det", o.b());
            }
            jSONObjectE.put(c.ak, l.a().c());
            JSONObject jSONObjectA2 = c.a(this.h);
            if (jSONObjectA2 != null) {
                jSONObjectE.put("customs", jSONObjectA2);
            }
            c.a(jSONObjectE);
            h hVarA = h.a(n.a().f());
            String str = this.h;
            if (jSONObjectE != null && !TextUtils.isEmpty(str)) {
                try {
                    if (!TextUtils.isEmpty(str) && (fVarB = hVarA.b(str)) != null && (jSONObjectAI = fVarB.aI()) != null) {
                        jSONObjectE.put(f.a.aa, jSONObjectAI);
                    }
                } catch (Exception unused) {
                }
            }
            if (this.L > 0 && (jSONObjectA = com.anythink.core.c.b.a().a(this.h, this.L)) != null) {
                jSONObjectE.put(c.aq, jSONObjectA);
            }
            if (ATAdxSetting.getInstance().isAdxNetworkMode(this.h)) {
                jSONObjectE.put(c.aT, 1);
            }
        } catch (Exception unused2) {
        }
        return jSONObjectE;
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject f() {
        JSONObject jSONObjectF = super.f();
        try {
            if (n.a().b() != null) {
                jSONObjectF.put("btts", e.g());
            }
        } catch (JSONException unused) {
        }
        return jSONObjectF;
    }

    @Override // com.anythink.core.common.h.a
    public final String g() {
        String string = e().toString();
        String string2 = f().toString();
        HashMap map = new HashMap();
        String strA = d.a(string);
        String strA2 = d.a(string2);
        map.put("p", strA);
        map.put(c.V, strA2);
        map.put(f.a.j, this.e);
        map.put("request_id", this.d);
        int i = this.q;
        if (i > 0) {
            map.put("hb_size", Integer.valueOf(i));
        }
        if (this.x == 0) {
            if (!TextUtils.isEmpty(this.f)) {
                map.put("ch_info", this.f);
            }
            if (!TextUtils.isEmpty(this.i)) {
                map.put("wf", this.i);
            }
            if (!TextUtils.isEmpty(this.j)) {
                map.put("np", this.j);
            }
            if (!TextUtils.isEmpty(this.r)) {
                map.put("last_wf", this.r);
            }
            if (!TextUtils.isEmpty(this.s)) {
                map.put("co", this.s);
            }
            map.put(f.a.S, this.t);
            if (n.a().k() != null) {
                map.put(c, d.a(n.a().k().toString()));
            }
            if (n.a().A() && n.a().u()) {
                map.put("debug", 1);
            }
            if (!TextUtils.isEmpty(this.k)) {
                map.put("sdk_ext", this.k);
            }
            if (!TextUtils.isEmpty(this.u)) {
                map.put("last_win", this.u);
            }
            if (!TextUtils.isEmpty(this.v)) {
                map.put("last_m_data", this.v);
            }
        }
        Set<String> setKeySet = map.keySet();
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : setKeySet) {
                jSONObject.put(str, map.get(str));
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        } catch (OutOfMemoryError unused2) {
            System.gc();
            return null;
        }
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final int l() {
        return 118;
    }
}
