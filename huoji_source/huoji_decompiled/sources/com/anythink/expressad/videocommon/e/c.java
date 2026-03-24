package com.anythink.expressad.videocommon.e;

import android.text.TextUtils;
import com.anythink.expressad.videocommon.b.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static final String a = "reward";
    private static final String c = "RewardSettingManager";
    private static Map<String, d> e = new HashMap(3);
    private static volatile c f;
    public a b;
    private Object d = new Object();

    /* JADX INFO: renamed from: com.anythink.expressad.videocommon.e.c$1, reason: invalid class name */
    public class AnonymousClass1 implements i.d {
        public AnonymousClass1() {
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
        }
    }

    private c() {
        this.b = null;
        this.b = c();
    }

    public static c a() {
        if (f == null) {
            synchronized (c.class) {
                if (f == null) {
                    f = new c();
                }
            }
        }
        return f;
    }

    private static d a(boolean z) {
        d dVar = new d();
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new com.anythink.expressad.videocommon.c.b(1, 15, null));
            dVar.a((List<com.anythink.expressad.videocommon.c.b>) arrayList);
            dVar.B();
            dVar.z();
            dVar.C();
            dVar.H();
            dVar.E();
            dVar.G();
            dVar.t();
            dVar.u();
            dVar.w();
            dVar.y();
            dVar.s();
            dVar.i();
            dVar.T();
            dVar.g();
            if (z) {
                dVar.a(5);
            } else {
                dVar.a(-1);
            }
            dVar.d();
            dVar.c();
            dVar.q();
            dVar.N();
            dVar.P();
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            arrayList2.add(4);
            arrayList2.add(6);
            dVar.a(arrayList2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return dVar;
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        i.a().b(str, (i.a) new AnonymousClass1());
    }

    private static boolean b(String str) {
        JSONArray jSONArrayOptJSONArray;
        try {
            if (!TextUtils.isEmpty(str) && (jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("unitSetting")) != null) {
                String strOptString = jSONArrayOptJSONArray.optJSONObject(0).optString("unitId");
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                    if (!TextUtils.isEmpty(strOptString)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static a c() {
        a aVar = new a();
        HashMap map = new HashMap(5);
        map.put("1", 1000);
        map.put("9", 1000);
        map.put("8", 1000);
        HashMap map2 = new HashMap(3);
        map2.put("1", new com.anythink.expressad.videocommon.c.c("Virtual Item", 1));
        aVar.a(map);
        aVar.b(map2);
        aVar.a();
        aVar.b();
        aVar.d();
        aVar.f();
        aVar.h();
        return aVar;
    }

    public final d a(String str, String str2) {
        synchronized (this.d) {
            String str3 = "reward_" + str + "_" + str2;
            if (e.containsKey(str3)) {
                return e.get(str3);
            }
            d dVarC = d.c(com.anythink.expressad.foundation.a.a.a.a().a(str3));
            e.put(str3, dVarC);
            return dVarC;
        }
    }

    public final d a(String str, String str2, boolean z) {
        d dVarA;
        synchronized (this.d) {
            String str3 = "reward_" + str + "_" + str2;
            dVarA = e.get(str3);
            if (dVarA == null) {
                dVarA = a(z);
                e.put(str3, dVarA);
            }
        }
        return dVarA;
    }

    public final void a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strJ = a().a(com.anythink.expressad.foundation.b.a.c().f(), str, z) != null ? d.J() : "";
        if (TextUtils.isEmpty(strJ) || !TextUtils.isEmpty(i.a().c(strJ)) || TextUtils.isEmpty(strJ)) {
            return;
        }
        i.a().b(strJ, (i.a) new AnonymousClass1());
    }

    public final a b() {
        a aVar = this.b;
        return aVar == null ? c() : aVar;
    }
}
