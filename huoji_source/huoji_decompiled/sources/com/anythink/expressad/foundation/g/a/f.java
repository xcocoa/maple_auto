package com.anythink.expressad.foundation.g.a;

import android.text.TextUtils;
import com.anythink.expressad.foundation.h.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static final String a = "native";
    public static final String b = "reward";
    public static final String c = "interactive";
    public static final String d = "interstitial";
    public static final String e = "banner";
    public static final String f = "splash";
    public static final String g = "h5_native";
    public static Map<String, Long> h = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> i = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> j = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> k = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> l = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> m = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> n = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> o = new HashMap();
    public static Map<String, List<com.anythink.expressad.foundation.g.e.a>> p = new HashMap();
    private static final String q = "f";

    private static String a(String str, String str2) {
        Map<String, List<com.anythink.expressad.foundation.g.e.a>> mapB;
        List<com.anythink.expressad.foundation.g.e.a> list;
        JSONArray jSONArray = new JSONArray();
        if (TextUtils.isEmpty(str2)) {
            mapB = null;
            if (j.containsKey(str)) {
                mapB = j;
            } else if (k.containsKey(str)) {
                mapB = k;
            } else if (l.containsKey(str)) {
                mapB = l;
            } else if (m.containsKey(str)) {
                mapB = m;
            } else if (n.containsKey(str)) {
                mapB = n;
            } else if (o.containsKey(str)) {
                mapB = o;
            } else if (p.containsKey(str)) {
                mapB = p;
            }
        } else {
            mapB = b(str2);
        }
        if (mapB != null) {
            try {
                if (w.b(str) && mapB.containsKey(str) && (list = mapB.get(str)) != null && list.size() > 0) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("cid", list.get(i2).a());
                        jSONObject.put("rid", list.get(i2).b());
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    private static Map<String, List<com.anythink.expressad.foundation.g.e.a>> a(String str) {
        if (j.containsKey(str)) {
            return j;
        }
        if (k.containsKey(str)) {
            return k;
        }
        if (l.containsKey(str)) {
            return l;
        }
        if (m.containsKey(str)) {
            return m;
        }
        if (n.containsKey(str)) {
            return n;
        }
        if (o.containsKey(str)) {
            return o;
        }
        if (p.containsKey(str)) {
            return p;
        }
        return null;
    }

    public static void a(String str, com.anythink.expressad.foundation.d.c cVar, String str2) {
        Map<String, List<com.anythink.expressad.foundation.g.e.a>> mapB = b(str2);
        if (cVar == null || mapB == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(cVar.aZ())) {
                return;
            }
            com.anythink.expressad.foundation.g.e.a aVar = new com.anythink.expressad.foundation.g.e.a(cVar.aZ(), cVar.Z());
            if (!mapB.containsKey(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(aVar);
                mapB.put(str, arrayList);
                return;
            }
            List<com.anythink.expressad.foundation.g.e.a> list = mapB.get(str);
            if (list != null && list.size() == 20) {
                list.remove(0);
            }
            if (list != null) {
                list.add(aVar);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private static void a(Map... mapArr) {
        try {
            for (Map map : mapArr) {
                if (map != null) {
                    map.clear();
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private static Map<String, List<com.anythink.expressad.foundation.g.e.a>> b(String str) {
        str.hashCode();
        switch (str) {
            case "banner":
                return n;
            case "native":
                return j;
            case "reward":
                return k;
            case "splash":
                return o;
            case "h5_native":
                return p;
            case "interstitial":
                return m;
            case "interactive":
                return l;
            default:
                return null;
        }
    }

    private static void b(String str, com.anythink.expressad.foundation.d.c cVar, String str2) {
        Map<String, List<com.anythink.expressad.foundation.g.e.a>> mapB = b(str2);
        if (cVar == null || mapB == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(cVar.aZ())) {
                return;
            }
            com.anythink.expressad.foundation.g.e.a aVar = new com.anythink.expressad.foundation.g.e.a(cVar.aZ(), cVar.Z());
            if (!mapB.containsKey(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(aVar);
                mapB.put(str, arrayList);
            } else {
                List<com.anythink.expressad.foundation.g.e.a> list = mapB.get(str);
                if (list != null) {
                    list.add(aVar);
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
