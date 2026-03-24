package com.anythink.expressad.videocommon.a;

import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.expressad.foundation.d.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final int a = 1;
    public static final int b = 2;
    private static final String c = "com.anythink.expressad.videocommon.a.a";
    private static a d;

    private a() {
        try {
            n.a().f();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static a a() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a();
                }
            }
        }
        return d;
    }

    public static List<c> a(List<c> list) {
        ArrayList arrayList = null;
        if (list == null) {
            return null;
        }
        try {
            com.anythink.expressad.videocommon.e.a aVarB = com.anythink.expressad.videocommon.e.c.a().b();
            long jC = aVarB != null ? aVarB.c() : 0L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (list == null || list.size() <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (c cVar : list) {
                    if (cVar != null) {
                        long jO = cVar.o() * 1000;
                        long jBg = jCurrentTimeMillis - cVar.bg();
                        if ((jO > 0 && jO >= jBg) || (jO <= 0 && jC >= jBg)) {
                            arrayList2.add(cVar);
                        }
                    }
                }
                return arrayList2;
            } catch (Exception e) {
                e = e;
                arrayList = arrayList2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        e.printStackTrace();
        return arrayList;
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
        }
    }

    public static boolean a(c cVar) {
        try {
            com.anythink.expressad.videocommon.e.a aVarB = com.anythink.expressad.videocommon.e.c.a().b();
            long jC = aVarB != null ? aVarB.c() : 0L;
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (cVar != null) {
                long jO = cVar.o() * 1000;
                long jBg = jCurrentTimeMillis - cVar.bg();
                if (jO > 0 && jO >= jBg) {
                    return false;
                }
                if (jO <= 0 && jC >= jBg) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    private static void b() {
    }

    private static void c() {
    }

    private static void d() {
    }

    private static void e() {
    }

    private static void f() {
    }
}
