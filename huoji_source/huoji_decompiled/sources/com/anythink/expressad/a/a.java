package com.anythink.expressad.a;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.anythink.core.common.b.k;
import com.anythink.expressad.a.c;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.out.LoadingActivity;
import com.anythink.expressad.out.j;
import com.anythink.expressad.out.p;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final String a = "Anythink SDK M";
    public static boolean b = false;
    public static Map<String, Long> c = new HashMap();
    public static Set<String> d = new HashSet();
    public static final String e = "2";
    private static final int f = 1;
    private String g;
    private long h;
    private com.anythink.expressad.foundation.c.c i;
    private Context j;
    private c k;
    private com.anythink.expressad.out.f l;
    private com.anythink.expressad.d.a n;
    private boolean o;
    private boolean r;
    private p.c m = null;
    private boolean p = false;
    private boolean q = true;

    public a(Context context, String str) {
        this.i = null;
        this.j = null;
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
        this.n = aVarB;
        if (aVarB == null) {
            com.anythink.expressad.d.b.a();
            this.n = com.anythink.expressad.d.b.c();
        }
        this.o = this.n.t();
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext;
        this.g = str;
        if (this.i == null) {
            this.i = com.anythink.expressad.foundation.c.c.a(applicationContext);
        }
    }

    private void a(int i, String str, com.anythink.expressad.foundation.d.c cVar, p.c cVar2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (i == 2) {
                s.a(this.j, str, cVar, cVar2);
            } else {
                s.a(this.j, str, cVar2);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static void a(Context context, com.anythink.expressad.foundation.d.c cVar, String str, String str2, boolean z) {
        if (context == null) {
            return;
        }
        new c(context.getApplicationContext()).a("2", str, cVar, null, str2, false, z, com.anythink.expressad.a.a.a.h);
    }

    public static void a(Context context, com.anythink.expressad.foundation.d.c cVar, String str, String str2, boolean z, boolean z3, int i) {
        if (context == null) {
            return;
        }
        new c(context.getApplicationContext()).a("2", str, cVar, null, str2, z, z3, i);
    }

    public static void a(Context context, com.anythink.expressad.foundation.d.c cVar, String str, String[] strArr, boolean z) {
        if (context == null || cVar == null || TextUtils.isEmpty(str) || strArr == null) {
            return;
        }
        c cVar2 = new c(context.getApplicationContext());
        for (String str2 : strArr) {
            cVar2.a("2", str, cVar, null, str2, false, z, com.anythink.expressad.a.a.a.h);
        }
    }

    public static /* synthetic */ void a(a aVar) {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            k.a(aVar.j).a(intent);
        } catch (Exception unused) {
        }
    }

    private void a(c.b bVar, com.anythink.expressad.foundation.d.c cVar, boolean z) {
        if (cVar == null || bVar == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.h;
            com.anythink.expressad.foundation.d.f fVar = new com.anythink.expressad.foundation.d.f();
            fVar.i(cVar.aa());
            fVar.a();
            fVar.h(String.valueOf(jCurrentTimeMillis));
            fVar.g(cVar.aZ());
            fVar.d(bVar.c());
            if (!TextUtils.isEmpty(bVar.j())) {
                fVar.f(URLEncoder.encode(bVar.j(), "utf-8"));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.h / 1000);
            fVar.b(sb.toString());
            fVar.a(Integer.parseInt(cVar.ac()));
            fVar.b(cVar.Q());
            fVar.a(this.g);
            fVar.d(bVar.c());
            if (!TextUtils.isEmpty(bVar.j())) {
                fVar.f(URLEncoder.encode(bVar.j(), "utf-8"));
            }
            if (this.o) {
                fVar.c(bVar.a());
                if (!TextUtils.isEmpty(bVar.d())) {
                    fVar.d(URLEncoder.encode(bVar.d(), "utf-8"));
                }
                if (!TextUtils.isEmpty(bVar.f())) {
                    fVar.e(URLEncoder.encode(bVar.f(), "UTF-8"));
                }
                if (!TextUtils.isEmpty(bVar.e())) {
                    fVar.c(URLEncoder.encode(bVar.e(), "utf-8"));
                }
            }
            if (z) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(fVar);
            w.b(com.anythink.expressad.foundation.d.f.a(arrayList));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: Exception -> 0x0140, TryCatch #0 {Exception -> 0x0140, blocks: (B:2:0x0000, B:9:0x000c, B:12:0x0022, B:14:0x0028, B:17:0x0032, B:19:0x0036, B:21:0x0048, B:24:0x0052, B:26:0x005c, B:28:0x0066, B:31:0x0076, B:39:0x00ad, B:40:0x00b6, B:43:0x00bc, B:44:0x00c0, B:64:0x010c, B:66:0x011a, B:68:0x0122, B:72:0x012a, B:67:0x011f, B:35:0x0087, B:37:0x0091, B:47:0x00c8, B:48:0x00d3, B:51:0x00d9, B:53:0x00e0, B:55:0x00e6, B:57:0x00ea, B:59:0x00f0, B:61:0x00f8, B:63:0x0107, B:75:0x0134, B:77:0x013b), top: B:82:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(com.anythink.expressad.foundation.d.c cVar, c.b bVar, boolean z, boolean z3) {
        p.c cVar2;
        String strJ;
        try {
            if (this.q) {
                if (cVar != null && bVar != null) {
                    int i = i();
                    int i2 = bVar.i();
                    if (TextUtils.isEmpty(bVar.j()) && z) {
                        int iQ = cVar.Q();
                        if (iQ == 2) {
                            a(cVar, bVar, z, i());
                            return;
                        }
                        if (iQ == 3) {
                            a(cVar, bVar, z);
                            return;
                        }
                        s.a(this.j, cVar.ad(), this.m);
                        b(bVar, cVar, true);
                        p.c cVar3 = this.m;
                        if (cVar3 != null) {
                            cVar3.a((j) cVar, bVar.j());
                            return;
                        }
                        return;
                    }
                    if (i2 == 1) {
                        if (TextUtils.isEmpty(cVar.ba()) || TextUtils.isEmpty(bVar.j()) || !bVar.j().contains(cVar.ba()) || !z) {
                            if (z) {
                                if (!TextUtils.isEmpty(cVar.ba())) {
                                    if (!s.a.a(this.j, "market://details?id=" + cVar.ba(), this.m)) {
                                        a(i, bVar.j(), cVar, this.m);
                                    }
                                }
                            }
                            cVar2 = this.m;
                            if (cVar2 != null && z) {
                                strJ = bVar.j();
                                cVar2.a((j) cVar, strJ);
                            }
                        } else {
                            if (!s.a.a(this.j, bVar.j(), this.m)) {
                                a(i, bVar.j(), cVar, this.m);
                            }
                            cVar2 = this.m;
                            if (cVar2 != null) {
                                strJ = bVar.j();
                                cVar2.a((j) cVar, strJ);
                            }
                        }
                    } else if (i2 == 3) {
                        if (z) {
                            s.a(this.j, bVar.j(), this.m);
                        }
                        cVar2 = this.m;
                        if (cVar2 != null && z) {
                            strJ = bVar.j();
                            cVar2.a((j) cVar, strJ);
                        }
                    } else if (z) {
                        if (3 == cVar.Q()) {
                            a(cVar, bVar, z);
                            return;
                        }
                        if (2 == cVar.Q()) {
                            a(cVar, bVar, z, i());
                            return;
                        }
                        s.a(this.j, bVar.j(), this.m);
                        cVar2 = this.m;
                        if (cVar2 != null) {
                            strJ = bVar.j();
                            cVar2.a((j) cVar, strJ);
                        }
                    }
                    if (a(cVar.Q(), bVar.j())) {
                        b(bVar, cVar, false);
                    } else {
                        b(bVar, cVar, true);
                    }
                    p.c cVar4 = this.m;
                    if (cVar4 == null || z || !z3) {
                        return;
                    }
                    cVar4.a((j) cVar, bVar.j());
                    return;
                }
                if (z) {
                    b(bVar, cVar, true);
                    p.c cVar5 = this.m;
                    if (cVar5 != null) {
                        cVar5.b(null, null);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(com.anythink.expressad.foundation.d.c cVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(this.j, cVar, this.g, str, true, false, com.anythink.expressad.a.a.a.k);
    }

    private void a(com.anythink.expressad.out.f fVar) {
        this.l = fVar;
    }

    private void a(j jVar, String str) {
        try {
            if (!TextUtils.isEmpty(str) && jVar != null) {
                com.anythink.expressad.foundation.d.c cVar = jVar instanceof com.anythink.expressad.foundation.d.c ? (com.anythink.expressad.foundation.d.c) jVar : null;
                if ((!str.startsWith("market://") && !str.startsWith("https://play.google.com/")) || s.a.a(this.j, str, this.m) || cVar == null) {
                    return;
                }
                if (TextUtils.isEmpty(cVar.ba())) {
                    if (i() == 2) {
                        s.a(this.j, cVar.ad(), cVar, this.m);
                        return;
                    } else {
                        s.a(this.j, cVar.ad(), this.m);
                        return;
                    }
                }
                s.a.a(this.j, "market://details?id=" + cVar.ba(), this.m);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(String str) {
        this.g = str;
    }

    private void a(final boolean z, final j jVar) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.anythink.expressad.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                if (z && !a.b && com.anythink.expressad.a.o) {
                    a.a(a.this);
                }
                if (a.this.m == null || a.b || !com.anythink.expressad.a.o) {
                    return;
                }
                a.this.m.b(jVar);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0017 -> B:14:0x0018). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean a(int i, String str) {
        boolean z = true;
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (i == 2) {
            if (!s.a.a(str)) {
                z = false;
            }
        } else if (TextUtils.isEmpty(str)) {
        }
        return z;
    }

    private static boolean a(com.anythink.expressad.foundation.d.c cVar) {
        Long l;
        if (cVar == null) {
            return true;
        }
        try {
            if (2 != cVar.Q() && 3 != cVar.Q()) {
                return true;
            }
            String strAZ = cVar.aZ();
            Map<String, Long> map = c;
            if (map == null) {
                return true;
            }
            if (map.containsKey(strAZ) && (l = c.get(strAZ)) != null) {
                if (l.longValue() > System.currentTimeMillis() || d.contains(cVar.aZ())) {
                    return false;
                }
            }
            c.put(cVar.aZ(), Long.valueOf(System.currentTimeMillis() + ((long) (cVar.Y() * 1000))));
            return true;
        } catch (Exception e2) {
            if (!com.anythink.expressad.a.a) {
                return true;
            }
            e2.printStackTrace();
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:4:0x0004, B:5:0x0010, B:7:0x0015, B:9:0x0019, B:10:0x0021, B:12:0x0025), top: B:17:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:4:0x0004, B:5:0x0010, B:7:0x0015, B:9:0x0019, B:10:0x0021, B:12:0x0025), top: B:17:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(com.anythink.expressad.foundation.d.c cVar, c.b bVar, boolean z) {
        boolean z3 = false;
        if (z) {
            try {
                s.a(this.j, cVar.ad(), this.m);
                z3 = true;
                b(bVar, cVar, true);
                if (z3) {
                    p.c cVar2 = this.m;
                    if (cVar2 != null) {
                        cVar2.b(cVar, bVar.j());
                    }
                } else {
                    p.c cVar3 = this.m;
                    if (cVar3 != null) {
                        cVar3.a((j) cVar, bVar.j());
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        } else {
            b(bVar, cVar, true);
            if (z3) {
            }
        }
        return z3;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062 A[Catch: all -> 0x005e, TryCatch #0 {all -> 0x005e, blocks: (B:4:0x0004, B:6:0x000e, B:10:0x001e, B:11:0x002a, B:13:0x0030, B:16:0x004d, B:17:0x0053, B:18:0x0057, B:22:0x0062, B:24:0x0069, B:25:0x0071, B:28:0x007a), top: B:32:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[Catch: all -> 0x005e, TryCatch #0 {all -> 0x005e, blocks: (B:4:0x0004, B:6:0x000e, B:10:0x001e, B:11:0x002a, B:13:0x0030, B:16:0x004d, B:17:0x0053, B:18:0x0057, B:22:0x0062, B:24:0x0069, B:25:0x0071, B:28:0x007a), top: B:32:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(com.anythink.expressad.foundation.d.c cVar, c.b bVar, boolean z, int i) {
        String strJ;
        p.c cVar2;
        boolean z3 = false;
        if (z) {
            try {
                int i2 = Integer.parseInt(cVar.ac());
                if (i2 == 1) {
                    s.a(this.j, bVar.j(), this.m);
                } else if (i2 == 2) {
                    s.a(this.j, bVar.j(), cVar, this.m);
                } else {
                    if (cVar.ba() != null) {
                        if (!s.a.a(this.j, "market://details?id=" + cVar.ba(), this.m)) {
                            strJ = bVar.j();
                            cVar2 = this.m;
                        }
                    } else {
                        strJ = bVar.j();
                        cVar2 = this.m;
                    }
                    a(i, strJ, cVar, cVar2);
                    if (z3) {
                        b(bVar, cVar, true);
                        p.c cVar3 = this.m;
                        if (cVar3 != null) {
                            cVar3.a((j) cVar, bVar.j());
                        }
                    } else {
                        b(bVar, cVar, true);
                        p.c cVar4 = this.m;
                        if (cVar4 != null && z) {
                            cVar4.b(cVar, bVar.j());
                        }
                    }
                }
                z3 = true;
                if (z3) {
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        } else if (z3) {
        }
        return z3;
    }

    private void b(c.b bVar, com.anythink.expressad.foundation.d.c cVar, boolean z) {
        if (cVar == null || bVar == null) {
            return;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.h;
            com.anythink.expressad.foundation.d.f fVar = new com.anythink.expressad.foundation.d.f();
            fVar.i(cVar.aa());
            fVar.a();
            fVar.h(String.valueOf(jCurrentTimeMillis));
            fVar.g(cVar.aZ());
            fVar.d(bVar.c());
            if (!TextUtils.isEmpty(bVar.j())) {
                fVar.f(URLEncoder.encode(bVar.j(), "utf-8"));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.h / 1000);
            fVar.b(sb.toString());
            fVar.a(Integer.parseInt(cVar.ac()));
            fVar.b(cVar.Q());
            fVar.a(this.g);
            fVar.d(bVar.c());
            if (!TextUtils.isEmpty(bVar.j())) {
                fVar.f(URLEncoder.encode(bVar.j(), "utf-8"));
            }
            if (this.o) {
                fVar.c(bVar.a());
                if (!TextUtils.isEmpty(bVar.d())) {
                    fVar.d(URLEncoder.encode(bVar.d(), "utf-8"));
                }
                if (!TextUtils.isEmpty(bVar.f())) {
                    fVar.e(URLEncoder.encode(bVar.f(), "UTF-8"));
                }
                if (!TextUtils.isEmpty(bVar.e())) {
                    fVar.c(URLEncoder.encode(bVar.e(), "utf-8"));
                }
            }
            if (z) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(fVar);
            w.b(com.anythink.expressad.foundation.d.f.a(arrayList));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        try {
            Intent intent = new Intent(this.j, (Class<?>) LoadingActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("icon_url", cVar.bd());
            this.j.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    private boolean c() {
        return this.q;
    }

    private com.anythink.expressad.out.f d() {
        return this.l;
    }

    private com.anythink.expressad.foundation.c.c e() {
        return this.i;
    }

    private static void f() {
    }

    private void g() {
        c cVar = this.k;
        if (cVar == null || !cVar.a()) {
            return;
        }
        this.k.b();
    }

    private static void h() {
    }

    private int i() {
        try {
            com.anythink.expressad.d.a aVar = this.n;
            if (aVar != null) {
                return aVar.k();
            }
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    private void j() {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            k.a(this.j).a(intent);
        } catch (Exception unused) {
        }
    }

    public final void a() {
        this.q = false;
    }

    public final void a(p.c cVar) {
        this.m = cVar;
    }

    public final void b() {
        try {
            this.m = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
