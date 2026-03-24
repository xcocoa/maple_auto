package com.anythink.core.d;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.AdError;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.as;
import com.anythink.core.common.o.s;
import com.anythink.core.common.q;
import com.anythink.core.common.res.b;
import com.anythink.core.common.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static final String a = "b";
    private static volatile b c;
    private static volatile com.anythink.core.d.a d;
    private Context e;
    private String h;
    private Object g = new Object();
    private boolean f = false;
    public List<a> b = Collections.synchronizedList(new ArrayList(3));

    /* JADX INFO: renamed from: com.anythink.core.d.b$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.l.a().a(b.d.k());
            com.anythink.core.common.i.e.a().a(b.d);
        }
    }

    public interface a {
        void a();

        void b();
    }

    private b(Context context) {
        this.e = context;
        this.h = com.anythink.core.common.e.c.a().b() ? h.v.b : h.v.a;
    }

    public static long a() {
        if (d == null || d.L() == 0) {
            return 51200L;
        }
        return d.L();
    }

    private com.anythink.core.d.a a(Context context, String str) {
        as asVar;
        List<as> listA = com.anythink.core.common.c.d.a(com.anythink.core.common.c.c.a(context)).a(str, this.h);
        if (listA != null && listA.size() > 0 && (asVar = listA.get(0)) != null) {
            try {
                com.anythink.core.d.a aVarA = com.anythink.core.d.a.a(new JSONObject(asVar.d()));
                if (aVarA != null) {
                    aVarA.a(Long.parseLong(asVar.a()));
                }
                return aVarA;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private com.anythink.core.d.a a(final Context context, final String str, final JSONObject jSONObject) {
        try {
            com.anythink.core.d.a aVarB = a(context).b(str);
            if (!aVarB.I()) {
                aVarB.a(jSONObject, null);
            }
        } catch (Throwable unused) {
        }
        final com.anythink.core.d.a aVarA = com.anythink.core.d.a.a(jSONObject);
        aVarA.a(System.currentTimeMillis());
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.d.b.1
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.c.d.a(com.anythink.core.common.c.c.a(context)).a(str, jSONObject.toString(), b.this.h);
                s.a(context, com.anythink.core.common.b.h.p, h.v.l, aVarA.Y());
            }
        });
        return aVarA;
    }

    public static b a(Context context) {
        if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = new b(context);
                }
            }
        }
        return c;
    }

    private static void a(Context context, com.anythink.core.d.a aVar) {
        if (aVar == null) {
            return;
        }
        String strP = aVar.p();
        if (TextUtils.isEmpty(strP)) {
            return;
        }
        com.anythink.core.common.res.b.a(context).a(new com.anythink.core.common.res.e(3, strP), (b.a) null);
    }

    private void a(Context context, Object obj, String str) {
        if (obj instanceof JSONObject) {
            com.anythink.core.d.a aVarA = a(context, str, (JSONObject) obj);
            if (aVarA != null) {
                d = aVarA;
                String strU = aVarA.u();
                if (!TextUtils.isEmpty(strU) && TextUtils.isEmpty(n.a().y())) {
                    n.a().j(strU);
                }
                q.a(context).a(d);
                com.anythink.core.d.a aVar = d;
                if (aVar != null) {
                    String strP = aVar.p();
                    if (!TextUtils.isEmpty(strP)) {
                        com.anythink.core.common.res.b.a(context).a(new com.anythink.core.common.res.e(3, strP), (b.a) null);
                    }
                }
                com.anythink.core.common.o.b.b.a().a(new AnonymousClass4());
                w.a().a(d.b());
                com.anythink.core.common.c.a().a(d.d());
            }
            e();
        }
    }

    private void a(a aVar) {
        synchronized (this.g) {
            if (this.g != null) {
                this.b.add(aVar);
            }
        }
    }

    public static /* synthetic */ void a(b bVar, Context context, Object obj, String str) {
        if (obj instanceof JSONObject) {
            com.anythink.core.d.a aVarA = bVar.a(context, str, (JSONObject) obj);
            if (aVarA != null) {
                d = aVarA;
                String strU = aVarA.u();
                if (!TextUtils.isEmpty(strU) && TextUtils.isEmpty(n.a().y())) {
                    n.a().j(strU);
                }
                q.a(context).a(d);
                com.anythink.core.d.a aVar = d;
                if (aVar != null) {
                    String strP = aVar.p();
                    if (!TextUtils.isEmpty(strP)) {
                        com.anythink.core.common.res.b.a(context).a(new com.anythink.core.common.res.e(3, strP), (b.a) null);
                    }
                }
                com.anythink.core.common.o.b.b.a().a(bVar.new AnonymousClass4());
                w.a().a(d.b());
                com.anythink.core.common.c.a().a(d.d());
            }
            bVar.e();
        }
    }

    private void a(JSONObject jSONObject) {
        JSONObject jSONObjectAr;
        try {
            com.anythink.core.d.a aVarB = b(n.a().o());
            if (aVarB == null || (jSONObjectAr = aVarB.ar()) == null) {
                return;
            }
            jSONObject.put("a_c", jSONObjectAr);
        } catch (Exception unused) {
        }
    }

    private void b(Context context) {
        this.e = context;
    }

    private void b(a aVar) {
        synchronized (this.g) {
            if (aVar != null) {
                this.b.remove(aVar);
            }
        }
    }

    public static /* synthetic */ boolean b(b bVar) {
        bVar.f = false;
        return false;
    }

    private Context d() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this.g) {
            Iterator<a> it = this.b.iterator();
            while (it.hasNext()) {
                it.next();
            }
            this.b.clear();
        }
    }

    private static com.anythink.core.d.a f() {
        com.anythink.core.d.a aVar = new com.anythink.core.d.a();
        aVar.b = true;
        aVar.U();
        aVar.b("0");
        aVar.a(0L);
        aVar.aa();
        aVar.ad();
        aVar.af();
        aVar.c("");
        aVar.ai();
        aVar.ak();
        aVar.d("");
        aVar.S();
        aVar.M();
        aVar.E();
        aVar.G();
        aVar.a("[\"com.anythink\"]");
        aVar.A();
        aVar.m();
        return aVar;
    }

    private boolean g() {
        return this.f;
    }

    private static void h() {
    }

    public final synchronized void a(final String str, String str2) {
        if (this.f) {
            return;
        }
        this.f = true;
        new com.anythink.core.common.h.d(this.e, str, str2, d.av()).a(0, new com.anythink.core.common.h.k() { // from class: com.anythink.core.d.b.2
            @Override // com.anythink.core.common.h.k
            public final void onLoadCanceled(int i) {
                b.b(b.this);
                b.this.e();
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadError(int i, String str3, AdError adError) {
                b.b(b.this);
                String str4 = b.a;
                b.this.e();
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadFinish(int i, Object obj) {
                b.b(b.this);
                b bVar = b.this;
                b.a(bVar, bVar.e, obj, str);
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadStart(int i) {
            }
        });
    }

    public final boolean a(String str) {
        com.anythink.core.d.a aVarB = b(str);
        if (aVarB != null) {
            e eVarA = aVarB.a();
            long jT = aVarB.T();
            long jCurrentTimeMillis = System.currentTimeMillis();
            boolean z = aVarB.N() + jT <= jCurrentTimeMillis;
            boolean z3 = eVarA != null && aVarB.N() + eVarA.a() <= jCurrentTimeMillis;
            boolean z4 = aVarB.c != null ? !r11.equals(r4) : n.a().l() != null;
            if (!z && !z3 && !z4) {
                return false;
            }
        }
        return true;
    }

    public final com.anythink.core.d.a b(String str) {
        if (d == null) {
            synchronized (this) {
                if (d == null) {
                    try {
                        if (this.e == null) {
                            this.e = n.a().f();
                        }
                        d = a(this.e, str);
                    } catch (Throwable unused) {
                    }
                    if (d == null) {
                        com.anythink.core.d.a aVar = new com.anythink.core.d.a();
                        aVar.b = true;
                        aVar.U();
                        aVar.b("0");
                        aVar.a(0L);
                        aVar.aa();
                        aVar.ad();
                        aVar.af();
                        aVar.c("");
                        aVar.ai();
                        aVar.ak();
                        aVar.d("");
                        aVar.S();
                        aVar.M();
                        aVar.E();
                        aVar.G();
                        aVar.a("[\"com.anythink\"]");
                        aVar.A();
                        aVar.m();
                        d = aVar;
                    }
                }
            }
        }
        return d;
    }

    public final void b() {
        n nVarA = n.a();
        final String strO = nVarA.o();
        String strP = nVarA.p();
        final Context context = this.e;
        if (context == null || TextUtils.isEmpty(strO) || TextUtils.isEmpty(strP)) {
            return;
        }
        com.anythink.core.d.a aVarB = b(strO);
        Map<String, String> map = new HashMap<>();
        if (!aVarB.b) {
            map = aVarB.av();
        }
        new com.anythink.core.common.h.g(context, strO, strP, map).a(0, new com.anythink.core.common.h.k() { // from class: com.anythink.core.d.b.3
            @Override // com.anythink.core.common.h.k
            public final void onLoadCanceled(int i) {
                b.this.e();
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadError(int i, String str, AdError adError) {
                b.this.e();
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadFinish(int i, Object obj) {
                b.a(b.this, context, obj, strO);
            }

            @Override // com.anythink.core.common.h.k
            public final void onLoadStart(int i) {
            }
        });
    }
}
