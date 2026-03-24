package com.anythink.core.common.h;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.github.kevinsawicki.http.HttpRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends a {
    public static final String a = "custom";
    private static final String f = "d";
    public long b;
    public long c;
    public Map<String, Object> d = com.anythink.core.common.b.n.a().l();
    public Map<String, String> e;
    private String g;
    private String h;
    private Context i;

    public d(Context context, String str, String str2, Map<String, String> map) {
        this.g = str;
        this.h = str2;
        this.i = context;
        this.e = map;
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (this.d != null) {
                jSONObject.put("custom", new JSONObject(this.d));
            }
        } catch (Exception unused) {
        }
        com.anythink.core.common.n.e.a("app", (String) null, this.b, System.currentTimeMillis(), SystemClock.elapsedRealtime() - this.c);
        return obj;
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
        return com.anythink.core.common.h.b();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
        com.anythink.core.common.n.e.a("app", adError.getPlatformCode(), adError.getPlatformMSG(), b(), "", "", "");
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
    public final JSONObject e() throws JSONException {
        JSONObject jSONObjectE = super.e();
        try {
            jSONObjectE.put("app_id", this.g);
            jSONObjectE.put("nw_ver", com.anythink.core.common.o.e.h());
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
            JSONObject jSONObjectA = c.a();
            if (jSONObjectA != null) {
                jSONObjectE.put("custom", jSONObjectA);
            }
            if (com.anythink.core.common.b.n.a().b() != null) {
                jSONObjectE.put("deny", com.anythink.core.common.o.e.p(com.anythink.core.common.b.n.a().f()));
            }
            if (com.anythink.core.common.b.n.a().v()) {
                jSONObjectE.put("is_test", 1);
            }
            jSONObjectE.put(c.ak, com.anythink.core.common.l.a().c());
            com.anythink.core.common.l.a();
            jSONObjectE.put("pil_offset", com.anythink.core.common.l.b());
            Map<String, String> map = this.e;
            if (map != null) {
                if (map.size() != 0) {
                    jSONObjectE.put("cached", new JSONObject(this.e));
                }
            }
        } catch (Throwable unused) {
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
        return this.g;
    }

    @Override // com.anythink.core.common.h.a
    public final Context i() {
        return this.i;
    }

    @Override // com.anythink.core.common.h.a
    public final String j() {
        return this.h;
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, Object> k() {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public int l() {
        return 59;
    }

    @Override // com.anythink.core.common.h.a
    public final boolean n() {
        return true;
    }
}
