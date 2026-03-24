package com.anythink.expressad.mbbanner.a.e;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.g.a.f;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = "b";

    public static c a(String str, c cVar) {
        if (TextUtils.isEmpty(str)) {
            return cVar;
        }
        if (TextUtils.isEmpty(str) && cVar == null) {
            return null;
        }
        if (str.contains("notice")) {
            try {
                JSONObject jSONObjectA = c.a(cVar);
                JSONObject jSONObject = new JSONObject(str);
                try {
                    if (!jSONObject.has(c.O)) {
                        jSONObjectA.put(c.O, "");
                    }
                } catch (Exception unused) {
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectA.put(next, jSONObject.getString(next));
                }
                c cVarB = c.b(jSONObjectA);
                String strOptString = jSONObjectA.optString("unitId");
                if (!TextUtils.isEmpty(strOptString)) {
                    cVarB.l(strOptString);
                }
                return cVarB;
            } catch (JSONException e) {
                e.printStackTrace();
                return cVar;
            }
        }
        try {
            JSONObject jSONObjectA2 = c.a(cVar);
            c cVarB2 = c.b(jSONObjectA2);
            if (cVarB2 == null) {
                cVarB2 = cVar;
            }
            if (!TextUtils.isEmpty(str)) {
                String strOptString2 = jSONObjectA2.optString("unitId");
                if (!TextUtils.isEmpty(strOptString2)) {
                    cVarB2.l(strOptString2);
                }
                JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(com.anythink.expressad.foundation.g.a.ce);
                if (jSONObjectOptJSONObject != null) {
                    String.valueOf(t.b(n.a().f(), Integer.valueOf(jSONObjectOptJSONObject.getString(com.anythink.expressad.foundation.g.a.cc)).intValue()));
                    String.valueOf(t.b(n.a().f(), Integer.valueOf(jSONObjectOptJSONObject.getString(com.anythink.expressad.foundation.g.a.cd)).intValue()));
                }
                cVarB2.p(cVarB2.ad());
                String strAh = cVarB2.ah();
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                    StringBuilder sb = new StringBuilder();
                    while (itKeys2.hasNext()) {
                        sb.append("&");
                        String next2 = itKeys2.next();
                        String strOptString3 = jSONObjectOptJSONObject.optString(next2);
                        if (com.anythink.expressad.foundation.g.a.cc.equals(next2) || com.anythink.expressad.foundation.g.a.cd.equals(next2)) {
                            strOptString3 = String.valueOf(t.b(n.a().f(), Integer.valueOf(strOptString3).intValue()));
                        }
                        sb.append(next2);
                        sb.append("=");
                        sb.append(strOptString3);
                    }
                    cVarB2.q(strAh + ((Object) sb));
                }
            }
            return cVarB2;
        } catch (Throwable unused2) {
            return cVar;
        }
    }

    private static String a(String str) {
        List<com.anythink.expressad.foundation.g.e.a> list;
        try {
            Map<String, List<com.anythink.expressad.foundation.g.e.a>> map = f.i;
            if (map == null || !w.b(str) || !map.containsKey(str) || (list = map.get(str)) == null || list.size() <= 0) {
                return "";
            }
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < list.size(); i++) {
                JSONObject jSONObject = new JSONObject();
                com.anythink.expressad.foundation.g.e.a aVar = list.get(i);
                jSONObject.put("cid", aVar.a());
                jSONObject.put("crid", aVar.c());
                jSONArray.put(jSONObject);
            }
            return jSONArray.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static synchronized List<com.anythink.expressad.foundation.g.e.a> a(List<com.anythink.expressad.foundation.g.e.a> list, List<c> list2) {
        if (list2 != null) {
            if (list2.size() > 0) {
                if (list == null) {
                    list = new ArrayList<>();
                }
                for (c cVar : list2) {
                    if (cVar != null) {
                        com.anythink.expressad.foundation.g.e.a aVar = new com.anythink.expressad.foundation.g.e.a(cVar.aZ(), cVar.r());
                        if (list.size() >= 20) {
                            list.remove(0);
                        }
                        list.add(aVar);
                    }
                }
            }
        }
        return list;
    }

    public static void a() {
    }

    private static void a(String str, List<c> list) {
        Map<String, List<com.anythink.expressad.foundation.g.e.a>> map = f.i;
        if (map == null || list == null || list.size() <= 0) {
            return;
        }
        if (w.b(str)) {
            map.put(str, a(map.containsKey(str) ? map.get(str) : new ArrayList<>(), list));
        }
        f.i = map;
    }

    private static String b() {
        return "";
    }

    private static String c() {
        return "";
    }
}
