package com.anythink.expressad.videocommon;

import android.text.TextUtils;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.foundation.d.c;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final String a = "TemplateWebviewCache";
    private static ConcurrentHashMap<String, C0154a> b = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> c = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> d = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> e = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> f = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> g = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> h = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> i = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> j = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0154a> k = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.anythink.expressad.videocommon.a$a, reason: collision with other inner class name */
    public static class C0154a {
        private WindVaneWebView a;
        private boolean b;

        public final WindVaneWebView a() {
            return this.a;
        }

        public final void a(WindVaneWebView windVaneWebView) {
            this.a = windVaneWebView;
        }

        public final void a(String str) {
            WindVaneWebView windVaneWebView = this.a;
            if (windVaneWebView != null) {
                windVaneWebView.setTag(str);
            }
        }

        public final void a(boolean z) {
            this.b = z;
        }

        public final String b() {
            WindVaneWebView windVaneWebView = this.a;
            return windVaneWebView != null ? (String) windVaneWebView.getTag() : "";
        }

        public final boolean c() {
            return this.b;
        }
    }

    public static C0154a a(int i2, c cVar) {
        if (cVar == null) {
            return null;
        }
        try {
            String strAa = cVar.aa();
            if (i2 != 94) {
                if (i2 != 287) {
                    ConcurrentHashMap<String, C0154a> concurrentHashMap = b;
                    if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                        return b.get(strAa);
                    }
                } else if (cVar.A()) {
                    ConcurrentHashMap<String, C0154a> concurrentHashMap2 = d;
                    if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0) {
                        return d.get(strAa);
                    }
                } else {
                    ConcurrentHashMap<String, C0154a> concurrentHashMap3 = g;
                    if (concurrentHashMap3 != null && concurrentHashMap3.size() > 0) {
                        return g.get(strAa);
                    }
                }
            } else if (cVar.A()) {
                ConcurrentHashMap<String, C0154a> concurrentHashMap4 = c;
                if (concurrentHashMap4 != null && concurrentHashMap4.size() > 0) {
                    return c.get(strAa);
                }
            } else {
                ConcurrentHashMap<String, C0154a> concurrentHashMap5 = f;
                if (concurrentHashMap5 != null && concurrentHashMap5.size() > 0) {
                    return f.get(strAa);
                }
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static C0154a a(String str) {
        ConcurrentHashMap<String, C0154a> concurrentHashMap;
        if (h.containsKey(str)) {
            concurrentHashMap = h;
        } else if (i.containsKey(str)) {
            concurrentHashMap = i;
        } else if (j.containsKey(str)) {
            concurrentHashMap = j;
        } else {
            if (!k.containsKey(str)) {
                return null;
            }
            concurrentHashMap = k;
        }
        return concurrentHashMap.get(str);
    }

    private static ConcurrentHashMap<String, C0154a> a(int i2, boolean z) {
        return i2 != 94 ? i2 != 287 ? b : z ? d : g : z ? c : f;
    }

    public static void a() {
        h.clear();
        i.clear();
    }

    public static void a(int i2) {
        try {
            if (i2 == 94) {
                ConcurrentHashMap<String, C0154a> concurrentHashMap = c;
                if (concurrentHashMap != null) {
                    concurrentHashMap.clear();
                }
            } else {
                if (i2 != 287) {
                    return;
                }
                ConcurrentHashMap<String, C0154a> concurrentHashMap2 = d;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.clear();
                }
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(int i2, String str, C0154a c0154a) {
        try {
            if (i2 == 94) {
                if (c == null) {
                    c = new ConcurrentHashMap<>();
                }
                c.put(str, c0154a);
            } else {
                if (i2 != 287) {
                    return;
                }
                if (d == null) {
                    d = new ConcurrentHashMap<>();
                }
                d.put(str, c0154a);
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(String str, C0154a c0154a, boolean z, boolean z3) {
        (z ? z3 ? i : h : z3 ? k : j).put(str, c0154a);
    }

    private static void a(String str, boolean z, boolean z3) {
        if (z) {
            if (z3) {
                for (Map.Entry<String, C0154a> entry : i.entrySet()) {
                    if (entry.getKey().startsWith(str)) {
                        i.remove(entry.getKey());
                    }
                }
                return;
            }
            for (Map.Entry<String, C0154a> entry2 : h.entrySet()) {
                if (entry2.getKey().startsWith(str)) {
                    h.remove(entry2.getKey());
                }
            }
            return;
        }
        if (z3) {
            for (Map.Entry<String, C0154a> entry3 : k.entrySet()) {
                if (entry3.getKey().startsWith(str)) {
                    k.remove(entry3.getKey());
                }
            }
            return;
        }
        for (Map.Entry<String, C0154a> entry4 : j.entrySet()) {
            if (entry4.getKey().startsWith(str)) {
                j.remove(entry4.getKey());
            }
        }
    }

    public static void b() {
        j.clear();
        k.clear();
    }

    public static void b(int i2) {
        try {
            if (i2 == 94) {
                ConcurrentHashMap<String, C0154a> concurrentHashMap = f;
                if (concurrentHashMap != null) {
                    concurrentHashMap.clear();
                    return;
                }
                return;
            }
            if (i2 != 287) {
                ConcurrentHashMap<String, C0154a> concurrentHashMap2 = b;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.clear();
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, C0154a> concurrentHashMap3 = g;
            if (concurrentHashMap3 != null) {
                concurrentHashMap3.clear();
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }

    public static void b(int i2, c cVar) {
        if (cVar == null) {
            return;
        }
        try {
            String strAa = cVar.aa();
            if (i2 == 94) {
                if (cVar.A()) {
                    ConcurrentHashMap<String, C0154a> concurrentHashMap = c;
                    if (concurrentHashMap != null) {
                        concurrentHashMap.remove(strAa);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0154a> concurrentHashMap2 = f;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.remove(strAa);
                    return;
                }
                return;
            }
            if (i2 != 287) {
                ConcurrentHashMap<String, C0154a> concurrentHashMap3 = b;
                if (concurrentHashMap3 != null) {
                    concurrentHashMap3.remove(strAa);
                    return;
                }
                return;
            }
            if (cVar.A()) {
                ConcurrentHashMap<String, C0154a> concurrentHashMap4 = d;
                if (concurrentHashMap4 != null) {
                    concurrentHashMap4.remove(strAa);
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, C0154a> concurrentHashMap5 = g;
            if (concurrentHashMap5 != null) {
                concurrentHashMap5.remove(strAa);
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }

    public static void b(int i2, String str, C0154a c0154a) {
        try {
            if (i2 == 94) {
                if (f == null) {
                    f = new ConcurrentHashMap<>();
                }
                f.put(str, c0154a);
            } else if (i2 != 287) {
                if (b == null) {
                    b = new ConcurrentHashMap<>();
                }
                b.put(str, c0154a);
            } else {
                if (g == null) {
                    g = new ConcurrentHashMap<>();
                }
                g.put(str, c0154a);
            }
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.printStackTrace();
            }
        }
    }

    public static void b(String str) {
        if (h.containsKey(str)) {
            h.remove(str);
        }
        if (j.containsKey(str)) {
            j.remove(str);
        }
        if (i.containsKey(str)) {
            i.remove(str);
        }
        if (k.containsKey(str)) {
            k.remove(str);
        }
    }

    private static void c() {
        h.clear();
    }

    public static void c(String str) {
        if (TextUtils.isEmpty(str)) {
            h.clear();
        } else {
            for (String str2 : h.keySet()) {
                if (!TextUtils.isEmpty(str2) && str2.startsWith(str)) {
                    h.remove(str2);
                }
            }
        }
        i.clear();
    }

    public static void d(String str) {
        for (Map.Entry<String, C0154a> entry : h.entrySet()) {
            if (entry.getKey().contains(str)) {
                h.remove(entry.getKey());
            }
        }
    }

    public static void e(String str) {
        for (Map.Entry<String, C0154a> entry : i.entrySet()) {
            if (entry.getKey().contains(str)) {
                i.remove(entry.getKey());
            }
        }
    }

    private static void f(String str) {
        for (Map.Entry<String, C0154a> entry : j.entrySet()) {
            if (entry.getKey().startsWith(str)) {
                j.remove(entry.getKey());
            }
        }
    }

    private static void g(String str) {
        for (Map.Entry<String, C0154a> entry : k.entrySet()) {
            if (entry.getKey().startsWith(str)) {
                k.remove(entry.getKey());
            }
        }
    }
}
