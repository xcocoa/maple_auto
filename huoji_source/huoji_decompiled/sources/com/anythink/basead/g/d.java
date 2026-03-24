package com.anythink.basead.g;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.AdError;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import com.anythink.core.common.h;
import com.anythink.core.common.h.i;
import com.anythink.core.common.l;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d extends com.anythink.core.common.h.a {
    public String a;
    public String b;
    public String c;
    public int d;
    public int e;
    public int f;
    public int g;
    public String[] h;
    public int i;
    public int j;
    public String k;
    public String l = "OnlineOfferLoader";

    public d(m mVar, int i, int i2, String[] strArr, String str) {
        this.a = mVar.d;
        this.b = mVar.b;
        this.c = mVar.c;
        this.i = mVar.e;
        this.f = i;
        this.g = i2;
        this.h = strArr;
        this.d = mVar.h;
        this.e = mVar.i;
        this.j = mVar.j;
        this.k = str;
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
                a(i, i.m, obj.toString(), ErrorCode.getErrorCode(ErrorCode.noADError, "", obj.toString()));
            } else {
                super.a(i, jSONObject);
            }
        } catch (Throwable th) {
            a(i, i.n, obj != null ? obj.toString() : th.getMessage(), ErrorCode.getErrorCode(ErrorCode.noADError, "", obj != null ? obj.toString() : "Online Api Service Error."));
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
        h.a();
        return h.h();
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
            jSONObjectE.put("pl_id", this.b);
            jSONObjectE.put(com.anythink.expressad.foundation.g.a.bt, n.a().g(this.b));
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
            jSONObjectE.put(com.anythink.core.common.h.c.ak, l.a().c());
            JSONObject jSONObjectA = com.anythink.core.common.h.c.a(this.b);
            if (jSONObjectA != null) {
                jSONObjectE.put("customs", jSONObjectA);
            }
            com.anythink.core.common.h.c.a(jSONObjectE);
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

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e1  */
    @Override // com.anythink.core.common.h.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String g() {
        HashMap map = new HashMap();
        String strA = com.anythink.core.common.o.d.a(e().toString());
        String strA2 = com.anythink.core.common.o.d.a(f().toString());
        map.put("p", strA);
        map.put(com.anythink.core.common.h.c.V, strA2);
        map.put("request_id", this.a);
        map.put("ad_source_id", Integer.valueOf(Integer.parseInt(this.c)));
        map.put(com.anythink.expressad.a.g, Integer.valueOf(this.i));
        String[] strArr = this.h;
        byte b = 0;
        if (strArr != null && strArr.length > 0) {
            JSONArray jSONArray = new JSONArray();
            for (String str : this.h) {
                jSONArray.put(str);
            }
            map.put("exclude_offers", jSONArray);
        }
        if (n.a().k() != null) {
            map.put(com.anythink.core.b.a.a.c, com.anythink.core.common.o.d.a(n.a().k().toString()));
        }
        int i = this.f;
        if (i > 0 && this.g > 0) {
            map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_WIDTH, Integer.valueOf(i));
            map.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_HEIGHT, Integer.valueOf(this.g));
        }
        JSONObject jSONObject = new JSONObject(map);
        try {
            String strValueOf = String.valueOf(this.j);
            switch (strValueOf.hashCode()) {
                case 49:
                    b = strValueOf.equals("1") ? (byte) 3 : (byte) -1;
                    break;
                case 50:
                    if (strValueOf.equals("2")) {
                        break;
                    }
                    break;
                case 51:
                    if (strValueOf.equals("3")) {
                        b = 2;
                        break;
                    }
                    break;
                case 52:
                    if (strValueOf.equals("4")) {
                        b = 1;
                        break;
                    }
                    break;
                default:
                    break;
            }
            if (b == 0 || b == 1 || b == 2 || b == 3) {
                jSONObject.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.ADP_ACCEPT_TYPE, new JSONArray(ATAdConst.AD_SUPPORT_TYPE_ARRAY));
            }
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
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
        return 2;
    }
}
