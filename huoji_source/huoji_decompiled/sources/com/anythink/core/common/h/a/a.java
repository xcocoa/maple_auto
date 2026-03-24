package com.anythink.core.common.h.a;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.u;
import com.anythink.core.common.o.g;
import com.anythink.core.common.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class a extends c {
    public List<String> a;
    public int b;
    public boolean c;
    private final String k = a.class.getSimpleName();

    public a(List<String> list) {
        this.a = list;
        this.b = list.size();
    }

    private String j() {
        JSONObject jSONObjectH = super.h();
        JSONObject jSONObjectI = super.i();
        if (jSONObjectH != null) {
            try {
                jSONObjectH.put("app_id", n.a().o());
                jSONObjectH.put("nw_ver", com.anythink.core.common.o.e.h());
                JSONArray jSONArray = new JSONArray();
                List<String> list = this.a;
                if (list != null && list.size() > 0) {
                    for (String str : this.a) {
                        if (!TextUtils.isEmpty(str)) {
                            jSONArray.put(new JSONObject(str));
                        }
                    }
                }
                jSONObjectH.put("data", jSONArray);
            } catch (Exception unused) {
            }
        }
        if (jSONObjectI != null) {
            try {
                jSONObjectI.put(com.anythink.core.common.h.c.R, this.i);
                jSONObjectI.put(com.anythink.core.common.h.c.T, this.j);
            } catch (Exception unused2) {
            }
        }
        HashMap map = new HashMap();
        String strA = com.anythink.core.common.o.d.a(jSONObjectH.toString());
        String strA2 = com.anythink.core.common.o.d.a(jSONObjectI.toString());
        map.put(com.anythink.core.common.h.c.O, "1.0");
        map.put("p", strA);
        map.put(com.anythink.core.common.h.c.V, strA2);
        ArrayList<String> arrayList = new ArrayList(map.size());
        arrayList.addAll(map.keySet());
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str2);
            sb.append("=");
            sb.append(map.get(str2));
        }
        map.put("sign", g.c(n.a().p() + sb.toString()));
        return new JSONObject(map).toString();
    }

    public final void a() {
        this.c = true;
    }

    @Override // com.anythink.core.common.h.a.c
    public final void a(String str, String str2, String str3, int i) {
        if (this.c) {
            t.a().a(3, "", "", j(), u.a(1001));
        }
    }

    public final int b() {
        return this.b;
    }

    @Override // com.anythink.core.common.h.a.c
    public final int c() {
        return 2;
    }

    @Override // com.anythink.core.common.h.a.c
    public final int d() {
        return 3;
    }

    @Override // com.anythink.core.common.h.a.c
    public final byte[] e() {
        return c.a(j());
    }

    @Override // com.anythink.core.common.h.a.c
    public final boolean f() {
        return false;
    }

    @Override // com.anythink.core.common.h.a.c
    public final int g() {
        return 4;
    }
}
