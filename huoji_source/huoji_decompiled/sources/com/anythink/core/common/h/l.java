package com.anythink.core.common.h;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.f.am;
import com.anythink.core.common.r;
import com.anythink.core.common.w;
import com.github.kevinsawicki.http.HttpRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l extends a {
    public static final String a = "sdk_custom";
    private static final String d = "l";
    public long b;
    public long c;
    private String e;
    private String f;
    private String g;
    private Context h;
    private String i;
    private String j;
    private String k;
    private Map<String, Object> l;
    private Map<String, Object> p;
    private Map<String, String> q;
    private int r;

    public l(Context context, am amVar) {
        if (amVar != null) {
            this.i = amVar.a();
            this.j = amVar.b();
            this.h = context;
            this.g = amVar.c();
            this.e = com.anythink.core.common.b.n.a().q();
            this.f = com.anythink.core.common.b.n.a().g(this.g);
            this.k = amVar.d();
            this.l = amVar.e();
            this.p = amVar.f();
            this.r = amVar.g();
            this.q = amVar.h();
        }
    }

    private void a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectA = com.anythink.core.c.b.a().a(this.g);
        if (jSONObjectA != null) {
            jSONObject.put(c.aq, jSONObjectA);
        }
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (this.l != null) {
                jSONObject.put(a, new JSONObject(this.l));
            }
            com.anythink.core.common.n.e.a("placement", this.g, this.b, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.c);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.anythink.core.common.h.a
    public final void a(int i, k kVar) {
        this.b = System.currentTimeMillis();
        this.c = SystemClock.elapsedRealtime();
        super.a(i, kVar);
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        com.anythink.core.common.h.a();
        return com.anythink.core.common.h.c();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
        com.anythink.core.common.n.e.a("placement", adError.getPlatformCode(), adError.getPlatformMSG(), b(), this.g, "", "");
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put(HttpRequest.HEADER_ACCEPT_ENCODING, "gzip");
        map.put("Content-Type", "application/json;charset=utf-8");
        return map;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        try {
            return g().getBytes("utf-8");
        } catch (Exception unused) {
            return g().getBytes();
        }
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject e() {
        Object obj;
        JSONObject jSONObjectE = super.e();
        try {
            jSONObjectE.put("app_id", this.i);
            jSONObjectE.put("pl_id", this.g);
            jSONObjectE.put(com.anythink.expressad.foundation.g.a.bt, this.f);
            jSONObjectE.put("nw_ver", com.anythink.core.common.o.e.h());
            jSONObjectE.put("exclude_myofferid", r.a().a(this.h));
            if (com.anythink.core.common.b.n.a().k() != null) {
                jSONObjectE.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.EXCLUDE_OFFER, com.anythink.core.common.b.n.a().k());
            }
            String strY = com.anythink.core.common.b.n.a().y();
            if (!TextUtils.isEmpty(strY)) {
                jSONObjectE.put("sy_id", strY);
            }
            String strZ = com.anythink.core.common.b.n.a().z();
            if (TextUtils.isEmpty(strZ)) {
                com.anythink.core.common.b.n.a().k(com.anythink.core.common.b.n.a().x());
                strZ = com.anythink.core.common.b.n.a().x();
            }
            jSONObjectE.put("bk_id", strZ);
            JSONObject jSONObjectA = c.a(this.l);
            if (jSONObjectA != null) {
                jSONObjectE.put("custom", jSONObjectA);
            }
            if (com.anythink.core.common.b.n.a().b() != null) {
                jSONObjectE.put("deny", com.anythink.core.common.o.e.p(com.anythink.core.common.b.n.a().f()));
            }
            if (com.anythink.core.common.b.n.a().v()) {
                com.anythink.core.common.b.n.a().w().fillRequestParam(jSONObjectE);
            }
            jSONObjectE.put(c.ak, com.anythink.core.common.l.a().c());
            Map<String, Object> map = this.p;
            if (map != null && (obj = map.get(ATAdConst.KEY.CP_PLACEMENT_ID)) != null) {
                jSONObjectE.put(c.ah, obj.toString());
            }
            Map<String, String> map2 = this.q;
            if (map2 != null && map2.size() != 0) {
                try {
                    jSONObjectE.put("cached", new JSONObject(this.q));
                } catch (Throwable unused) {
                }
            }
            jSONObjectE.put(c.ap, this.r);
            JSONObject jSONObjectA2 = com.anythink.core.c.b.a().a(this.g);
            if (jSONObjectA2 != null) {
                jSONObjectE.put(c.aq, jSONObjectA2);
            }
            if (w.a().c(this.g)) {
                jSONObjectE.put(c.ar, 2);
            } else {
                jSONObjectE.put(c.ar, 1);
            }
            if (ATAdxSetting.getInstance().isAdxNetworkMode(this.g)) {
                jSONObjectE.put(c.aT, 1);
            }
        } catch (JSONException unused2) {
        }
        return jSONObjectE;
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject f() {
        JSONObject jSONObjectF = super.f();
        try {
            if (com.anythink.core.common.b.n.a().b() != null) {
                jSONObjectF.put("btts", com.anythink.core.common.o.e.g());
            }
        } catch (JSONException unused) {
        }
        return jSONObjectF;
    }

    @Override // com.anythink.core.common.h.a
    public final String h() {
        return this.i;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return this.h;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return this.j;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final int l() {
        return 63;
    }

    @Override // com.anythink.core.common.h.a
    public final boolean n() {
        return true;
    }
}
