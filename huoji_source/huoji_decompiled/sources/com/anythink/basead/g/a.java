package com.anythink.basead.g;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.n;
import com.anythink.core.common.c.k;
import com.anythink.core.common.f.m;
import com.anythink.core.common.h;
import com.anythink.core.common.h.i;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a extends com.anythink.core.common.h.a {
    public String a;
    public String b;
    public String c;
    public int d;
    public int e;
    public String f;
    public String g;

    public a(m mVar) {
        this.a = mVar.a;
        this.b = mVar.d;
        this.c = mVar.b;
        this.d = mVar.h;
        this.e = mVar.i;
        this.f = mVar.k;
        this.g = mVar.l;
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        return obj;
    }

    @Override // com.anythink.core.common.h.a
    public final void a(int i, Object obj) {
        if (obj == null) {
            a(i, i.l, "Return Empty Ad.", ErrorCode.getErrorCode(ErrorCode.noADError, "", ""));
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(obj.toString());
            if (TextUtils.isEmpty(jSONObject.optString("data"))) {
                a(i, i.m, "Return Empty Ad.", ErrorCode.getErrorCode(ErrorCode.noADError, "", obj.toString()));
            } else {
                super.a(i, jSONObject);
            }
        } catch (Throwable unused) {
            a(i, i.n, "Return Empty Ad.", ErrorCode.getErrorCode(ErrorCode.noADError, "", obj != null ? obj.toString() : "Adx Service Error."));
        }
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
        if (!TextUtils.isEmpty(this.g)) {
            return this.g;
        }
        h.a();
        return h.f();
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        HashMap map = new HashMap();
        map.put("Content-Encoding", "gzip");
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
        JSONObject jSONObjectE = super.e();
        try {
            jSONObjectE.put("app_id", n.a().o());
            jSONObjectE.put("pl_id", this.c);
            jSONObjectE.put(com.anythink.expressad.foundation.g.a.bt, n.a().g(this.c));
            jSONObjectE.put("t_g_id", this.d);
            jSONObjectE.put("gro_id", this.e);
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
                jSONObjectE.put("deny", com.anythink.core.common.o.e.p(n.a().f()));
            }
            JSONObject jSONObjectA = com.anythink.core.common.h.c.a(this.c);
            if (jSONObjectA != null) {
                jSONObjectE.put("customs", jSONObjectA);
            }
        } catch (Exception unused) {
        }
        return jSONObjectE;
    }

    @Override // com.anythink.core.common.h.a
    public final JSONObject f() {
        JSONObject jSONObjectF = super.f();
        try {
            if (n.a().b() != null) {
                jSONObjectF.put("btts", com.anythink.core.common.o.e.g());
            }
        } catch (JSONException unused) {
        }
        return jSONObjectF;
    }

    @Override // com.anythink.core.common.h.a
    public final String g() {
        HashMap map = new HashMap();
        String strA = com.anythink.core.common.o.d.a(e().toString());
        String strA2 = com.anythink.core.common.o.d.a(f().toString());
        map.put("p", strA);
        map.put(com.anythink.core.common.h.c.V, strA2);
        map.put("request_id", this.b);
        map.put(k.a.c, this.a);
        return new JSONObject(map).toString();
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
        return 34;
    }
}
