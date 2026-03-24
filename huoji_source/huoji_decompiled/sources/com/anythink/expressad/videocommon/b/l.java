package com.anythink.expressad.videocommon.b;

import android.text.TextUtils;
import com.anythink.expressad.foundation.d.c;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l {
    private static Map<String, Boolean> b = new HashMap();
    private Map<String, Boolean> a;
    private Map<String, Boolean> c;
    private Map<String, Boolean> d;
    private Map<String, Boolean> e;

    public static final class a {
        public static l a = new l(0);

        private a() {
        }
    }

    private l() {
        this.a = new HashMap();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = new HashMap();
    }

    public /* synthetic */ l(byte b2) {
        this();
    }

    public static l a() {
        return a.a;
    }

    private void a(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null) {
            b(cVar);
            e(cVar.aZ());
        }
    }

    private static boolean a(c.C0131c c0131c) {
        List<c.C0131c.a> listF;
        List<String> list;
        if (c0131c != null && (listF = c0131c.f()) != null) {
            for (c.C0131c.a aVar : listF) {
                if (aVar != null && (list = aVar.b) != null) {
                    for (String str : list) {
                        boolean zA = a(b, str);
                        if (zA || com.anythink.expressad.foundation.g.d.b.a(com.anythink.expressad.foundation.b.a.c().e()).b(str)) {
                            zA = true;
                        }
                        if (!zA) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    private static boolean a(Map<String, Boolean> map, String str) {
        Boolean bool = Boolean.FALSE;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        if (map == null) {
            map = new HashMap<>();
        } else if (map.containsKey(str)) {
            return map.get(str).booleanValue();
        }
        map.put(str, bool);
        return false;
    }

    private boolean a(boolean z, String str) {
        boolean zA = a(this.c, str);
        if (zA || !z || TextUtils.isEmpty(i.a().c(str))) {
            return zA;
        }
        this.c.put(str, Boolean.TRUE);
        return true;
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        List<c.C0131c.a> listF;
        Boolean bool = Boolean.FALSE;
        if (cVar != null) {
            String strS = cVar.S();
            Map<String, Boolean> map = this.a;
            if (map != null && !map.containsKey(strS)) {
                this.a.put(strS, bool);
            }
            String strI = cVar.I();
            Map<String, Boolean> map2 = this.c;
            if (map2 != null && !map2.containsKey(strI)) {
                this.c.put(strI, bool);
            }
            c.C0131c c0131cM = cVar.M();
            if (c0131cM == null || (listF = c0131cM.f()) == null) {
                return;
            }
            for (c.C0131c.a aVar : listF) {
                if (aVar != null) {
                    b(aVar.b);
                }
            }
        }
    }

    private static void b(List<String> list) {
        Map<String, Boolean> map;
        if (list == null || list.size() == 0) {
            return;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && (map = b) != null && !map.containsKey(str)) {
                b.put(str, Boolean.valueOf(com.anythink.expressad.foundation.g.d.b.a(com.anythink.expressad.foundation.b.a.c().e()).b(str)));
            }
        }
    }

    public static void c(String str) {
        if (b == null) {
            b = new HashMap();
        }
        b.put(str, Boolean.TRUE);
    }

    private void e(String str) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        this.d.put(str, Boolean.FALSE);
    }

    private void f(String str) {
        if (this.e.containsKey(str)) {
            this.e.remove(str);
        }
    }

    private static boolean g(String str) {
        boolean zA = a(b, str);
        if (zA || com.anythink.expressad.foundation.g.d.b.a(com.anythink.expressad.foundation.b.a.c().e()).b(str)) {
            return true;
        }
        return zA;
    }

    private static boolean h(String str) {
        File file = new File(com.anythink.expressad.foundation.g.c.d.b(com.anythink.expressad.foundation.g.c.a.ANYTHINK_VC) + File.separator + com.anythink.expressad.foundation.h.m.d(str));
        try {
            if (file.exists() && file.isFile()) {
                return file.canRead();
            }
            return false;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    public final void a(String str, boolean z) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        this.a.put(str, Boolean.valueOf(z));
    }

    public final void a(List<com.anythink.expressad.foundation.d.c> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar : list) {
            if (cVar != null) {
                b(cVar);
                e(cVar.aZ());
            }
        }
    }

    public final boolean a(String str) {
        if (this.a == null || TextUtils.isEmpty(str) || !this.a.containsKey(str)) {
            return false;
        }
        return this.a.get(str).booleanValue();
    }

    public final void b(String str, boolean z) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        this.c.put(str, Boolean.valueOf(z));
    }

    public final boolean b(String str) {
        if (this.c == null || TextUtils.isEmpty(str) || !this.c.containsKey(str)) {
            return false;
        }
        return this.c.get(str).booleanValue();
    }

    public final void c(String str, boolean z) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put(str, Boolean.valueOf(z));
    }

    public final boolean d(String str) {
        if (!TextUtils.isEmpty(str) && this.e.containsKey(str)) {
            return this.e.get(str).booleanValue();
        }
        return false;
    }
}
