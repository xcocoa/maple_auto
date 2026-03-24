package com.anythink.core.b;

import android.text.TextUtils;
import com.anythink.core.common.f.aq;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.az;
import com.anythink.core.common.f.k;
import com.anythink.core.common.f.o;
import com.anythink.core.common.f.p;
import com.anythink.core.common.f.q;
import com.anythink.core.common.j;
import com.anythink.core.common.o.w;
import com.anythink.core.common.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c extends e {
    public String a;
    public List<av> b;
    public List<av> c;
    public boolean d;
    public boolean e;

    public c(com.anythink.core.common.f.a aVar, List<av> list) {
        super(aVar);
        this.a = com.anythink.core.common.o.h.a(aVar.b, this.n, this.o, aVar.f, 0).toString();
        com.anythink.core.common.p.i iVar = aVar.y;
        this.b = iVar != null ? iVar.a() : null;
        this.c = list != null ? new ArrayList(list) : null;
    }

    private void a(String str, String str2) {
        String strA;
        boolean zB;
        Boolean boolC;
        int iB = v.a(this.f.b).b(this.f.e);
        aq aqVar = this.f.w;
        if (aqVar != null) {
            boolC = aqVar.c();
            strA = this.f.w.a();
            zB = this.f.w.b();
        } else {
            strA = "";
            zB = true;
            boolC = null;
        }
        com.anythink.core.common.f.a aVar = this.f;
        com.anythink.core.common.f.h hVar = aVar.s;
        int i = aVar.c.d;
        int i2 = aVar.t;
        boolean z = this.d;
        boolean z3 = this.e;
        boolean zA = com.anythink.core.common.o.i.a(aVar.b);
        k kVar = new k(hVar.aj(), null);
        kVar.a = "1004684";
        kVar.b = hVar.ai();
        kVar.d = hVar.ah();
        kVar.k = String.valueOf(i);
        kVar.m = String.valueOf(iB);
        kVar.n = String.valueOf(hVar.aj());
        kVar.o = zB ? "1" : "2";
        kVar.p = String.valueOf(i2);
        if (!TextUtils.isEmpty(str2)) {
            kVar.q = str2;
        }
        if (!TextUtils.isEmpty(str)) {
            kVar.r = str;
        }
        kVar.s = boolC == null ? "0" : boolC.booleanValue() ? "1" : "2";
        kVar.t = strA;
        kVar.u = z ? "1" : "2";
        kVar.v = z3 ? "1" : "2";
        kVar.w = String.valueOf(i);
        kVar.x = zA ? "1" : "2";
        com.anythink.core.common.n.e.b(kVar);
    }

    private void a(JSONArray jSONArray) {
        List<av> list = this.c;
        if (list != null) {
            Iterator<av> it = list.iterator();
            while (it.hasNext()) {
                List<az.a> listA = w.a(this.o, it.next());
                if (listA != null && listA.size() > 0) {
                    Iterator<az.a> it2 = listA.iterator();
                    while (it2.hasNext()) {
                        jSONArray.put(it2.next().a());
                    }
                }
            }
        }
        List<av> list2 = this.b;
        if (list2 != null) {
            Iterator<av> it3 = list2.iterator();
            while (it3.hasNext()) {
                List<az.a> listA2 = w.a(this.o, it3.next());
                if (listA2 != null && listA2.size() > 0) {
                    Iterator<az.a> it4 = listA2.iterator();
                    while (it4.hasNext()) {
                        jSONArray.put(it4.next().a());
                    }
                }
            }
        }
    }

    private void b(JSONArray jSONArray) {
        com.anythink.core.common.p.i iVar = this.f.y;
        List<av> listA = iVar != null ? iVar.a() : null;
        if (listA != null) {
            int size = listA.size();
            for (int i = 0; i < size; i++) {
                av avVar = listA.get(i);
                if (!avVar.aa()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("ad_source_id", avVar.u());
                        jSONObject.put("price", avVar.y());
                        q qVarM = avVar.M();
                        if (qVarM != null) {
                            jSONObject.put(az.m, qVarM.g);
                        }
                        jSONObject.put(j.ao, avVar.ag());
                        jSONArray.put(jSONObject);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        }
    }

    private String f() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("refresh", this.f.s.N());
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.anythink.core.b.e, com.anythink.core.b.d
    public final void a(av avVar, o oVar, long j) {
        super.a(avVar, oVar, j);
    }

    @Override // com.anythink.core.b.e
    public final void a(List<JSONObject> list, com.anythink.core.common.h.k kVar) {
        String string;
        String strA;
        Boolean boolC;
        boolean zB;
        JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        b(jSONArray2);
        a(jSONArray);
        com.anythink.core.b.a.b bVar = new com.anythink.core.b.a.b();
        bVar.a = this.a;
        bVar.b = jSONArray2.toString();
        bVar.f = this.f.n.a().aD();
        String string2 = jSONArray.length() > 0 ? jSONArray.toString() : "";
        az azVar = this.f.v;
        if (azVar != null) {
            string = azVar.a().toString();
            bVar.d = string;
        } else {
            string = "";
        }
        bVar.e = string2;
        bVar.g = this.f.n.a().r();
        bVar.h = f();
        p pVar = this.f.x;
        bVar.i = pVar != null ? pVar.f() : "";
        com.anythink.core.common.f.a aVar = this.f;
        String str = aVar.B;
        if (str == null) {
            str = "";
        }
        bVar.j = str;
        int iB = v.a(aVar.b).b(this.f.e);
        aq aqVar = this.f.w;
        if (aqVar != null) {
            boolC = aqVar.c();
            strA = this.f.w.a();
            zB = this.f.w.b();
        } else {
            strA = "";
            boolC = null;
            zB = true;
        }
        com.anythink.core.common.f.a aVar2 = this.f;
        com.anythink.core.common.f.h hVar = aVar2.s;
        int i = aVar2.c.d;
        int i2 = aVar2.t;
        boolean z = this.d;
        boolean z3 = this.e;
        boolean zA = com.anythink.core.common.o.i.a(aVar2.b);
        k kVar2 = new k(hVar.aj(), null);
        kVar2.a = "1004684";
        kVar2.b = hVar.ai();
        kVar2.d = hVar.ah();
        kVar2.k = String.valueOf(i);
        kVar2.m = String.valueOf(iB);
        kVar2.n = String.valueOf(hVar.aj());
        kVar2.o = zB ? "1" : "2";
        kVar2.p = String.valueOf(i2);
        if (!TextUtils.isEmpty(string2)) {
            kVar2.q = string2;
        }
        if (!TextUtils.isEmpty(string)) {
            kVar2.r = string;
        }
        kVar2.s = boolC == null ? "0" : boolC.booleanValue() ? "1" : "2";
        kVar2.t = strA;
        kVar2.u = z ? "1" : "2";
        kVar2.v = z3 ? "1" : "2";
        kVar2.w = String.valueOf(i);
        kVar2.x = zA ? "1" : "2";
        com.anythink.core.common.n.e.b(kVar2);
        com.anythink.core.b.a.a aVar3 = new com.anythink.core.b.a.a(this.p, this.o, this.n, list, 0, this.f.n.a());
        aVar3.a(bVar);
        aVar3.a(0, kVar);
    }

    @Override // com.anythink.core.b.e
    public final synchronized void a(List<JSONObject> list, Map<String, av> map) {
        super.a(list, map);
        v.a(this.f.b).a(this.f.e);
        this.d = false;
        this.e = false;
        try {
            Iterator<Map.Entry<String, av>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    av value = it.next().getValue();
                    if (value.d() == 66) {
                        this.d = true;
                    } else if (value.d() == 6) {
                        this.e = true;
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    @Override // com.anythink.core.b.e
    public final String b() {
        return this.f.l;
    }
}
