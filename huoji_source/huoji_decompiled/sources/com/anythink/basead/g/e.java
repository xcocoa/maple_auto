package com.anythink.basead.g;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.n;
import com.anythink.core.common.s;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.anythink.core.common.h.a {
    private static String f = "e";
    public int a;
    public String b;
    public aj c;
    public Map<String, Object> d;
    public boolean e = false;

    public e(int i, String str, aj ajVar, Map<String, Object> map) {
        this.a = i;
        this.b = str;
        this.c = ajVar;
        this.d = map;
    }

    private void p() {
        String string;
        try {
            string = new JSONObject(c()).toString();
        } catch (Throwable unused) {
            string = new JSONObject().toString();
        }
        s.a().a(this.o, string, this.c.Z());
    }

    @Override // com.anythink.core.common.h.a
    public final int a() {
        return 2;
    }

    @Override // com.anythink.core.common.h.a
    public final Object a(Object obj) {
        return null;
    }

    @Override // com.anythink.core.common.h.a
    public final void a(AdError adError) {
    }

    public final void a(boolean z) {
        this.e = z;
    }

    @Override // com.anythink.core.common.h.a
    public final boolean a(int i) {
        return false;
    }

    @Override // com.anythink.core.common.h.a
    public final String b() {
        if (this.d != null && !TextUtils.isEmpty(this.b)) {
            try {
                for (Map.Entry<String, Object> entry : this.d.entrySet()) {
                    String key = entry.getKey();
                    this.b = this.b.replaceAll("\\{" + key + "\\}", (String) entry.getValue());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return this.b;
    }

    @Override // com.anythink.core.common.h.a
    public final void b(int i) {
        String string;
        if (this.e) {
            new StringBuilder("handleErrorStatusCode, start to check, url: ").append(this.b);
            s.a();
            if (s.a(i)) {
                try {
                    string = new JSONObject(c()).toString();
                } catch (Throwable unused) {
                    string = new JSONObject().toString();
                }
                s.a().a(this.o, string, this.c.Z());
            }
        }
    }

    @Override // com.anythink.core.common.h.a
    public final void b(AdError adError) {
    }

    @Override // com.anythink.core.common.h.a
    public final Map<String, String> c() {
        if (this.c == null) {
            return null;
        }
        HashMap map = new HashMap();
        n nVarO = this.c.o();
        if (nVarO != null && com.anythink.basead.a.a.a(this.a, nVarO)) {
            String strI = com.anythink.core.common.o.e.i();
            if (!TextUtils.isEmpty(strI)) {
                map.put("User-Agent", strI);
            }
        }
        return map;
    }

    @Override // com.anythink.core.common.h.a
    public final byte[] d() {
        return new byte[0];
    }

    @Override // com.anythink.core.common.h.a
    public final String g() {
        return "";
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
}
