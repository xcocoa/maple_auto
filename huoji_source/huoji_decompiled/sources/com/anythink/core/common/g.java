package com.anythink.core.common;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.IATAdFilter;
import com.anythink.core.common.a.c;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.ba;
import com.anythink.core.common.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public com.anythink.core.common.m.b E;
    public com.anythink.core.common.p.g G;
    public c.a H;
    public av K;
    public double L;
    public av N;
    public WeakReference<Context> b;
    public int c;
    public ba e;
    public String f;
    public String g;
    public Map<String, Object> h;
    public com.anythink.core.common.f.h i;
    public com.anythink.core.common.f.v j;
    public com.anythink.core.common.b.b k;
    public boolean o;
    public boolean p;
    public String s;
    public long u;
    public int v;
    public int w;
    public boolean z;
    private final String P = getClass().getSimpleName();
    public String d = "";
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean q = false;
    public boolean r = false;
    public Object x = new Object();
    public double y = -1.0d;
    public double A = -1.0d;
    public com.anythink.core.common.m.b D = null;
    public com.anythink.core.common.m.b J = new com.anythink.core.common.m.b() { // from class: com.anythink.core.common.g.1
        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.o.b.b.a().c(new Runnable() { // from class: com.anythink.core.common.g.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.a();
                }
            });
        }
    };
    public boolean M = false;
    public boolean O = false;
    public Context a = com.anythink.core.common.b.n.a().f();
    public AdError t = ErrorCode.getErrorCode(ErrorCode.noADError, "", "");
    public Map<String, com.anythink.core.common.p.e> B = new ConcurrentHashMap();
    public List<av> C = Collections.synchronizedList(new ArrayList(3));
    public com.anythink.core.common.p.j F = new com.anythink.core.common.p.j();
    public List<ATBaseAdAdapter> I = new ArrayList();

    /* JADX INFO: renamed from: com.anythink.core.common.g$2, reason: invalid class name */
    public class AnonymousClass2 implements com.anythink.core.common.m.b {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.D = null;
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.g.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    g.this.j();
                }
            }, 2, true);
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.g$3, reason: invalid class name */
    public class AnonymousClass3 implements com.anythink.core.common.m.b {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.p();
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.common.g$5, reason: invalid class name */
    public class AnonymousClass5 implements com.anythink.core.common.p.c {
        public final /* synthetic */ av a;

        public AnonymousClass5(av avVar) {
            this.a = avVar;
        }

        @Override // com.anythink.core.common.p.c
        public final void a(ATBaseAdAdapter aTBaseAdAdapter, String str) {
            g.this.a(aTBaseAdAdapter, str);
        }

        @Override // com.anythink.core.common.p.c
        public final void a(com.anythink.core.common.f.h hVar) {
            com.anythink.core.common.n.c.a(g.this.a).a(1, hVar);
            com.anythink.core.common.o.p.a(hVar, h.n.a, h.n.n, "");
        }

        @Override // com.anythink.core.common.p.c
        public final void a(com.anythink.core.common.f.h hVar, ATBaseAdAdapter aTBaseAdAdapter) {
            g.a(g.this, hVar);
            if (this.a.aD() == 1) {
                g.a(g.this, aTBaseAdAdapter);
            }
        }

        @Override // com.anythink.core.common.p.c
        public final void a(String str, ATBaseAdAdapter aTBaseAdAdapter, av avVar, com.anythink.core.common.f.b bVar) {
            g.this.a(str, aTBaseAdAdapter, bVar.e(), avVar);
        }

        @Override // com.anythink.core.common.p.c
        public final void a(String str, ATBaseAdAdapter aTBaseAdAdapter, com.anythink.core.common.p.b bVar) {
            g.this.a(str, bVar);
            if (aTBaseAdAdapter == null || aTBaseAdAdapter.getUnitGroupInfo() == null) {
                return;
            }
            aTBaseAdAdapter.getUnitGroupInfo();
            if (this.a.aD() == 1) {
                g.b(g.this, aTBaseAdAdapter);
            }
        }

        @Override // com.anythink.core.common.p.c
        public final void a(String str, ATBaseAdAdapter aTBaseAdAdapter, BaseAd... baseAdArr) {
            IATAdFilter iATAdFilterP = com.anythink.core.common.b.n.a().p(g.this.g);
            BaseAd baseAd = (baseAdArr == null || baseAdArr.length <= 0) ? null : baseAdArr[0];
            if (iATAdFilterP == null || !iATAdFilterP.isAdFilter(com.anythink.core.common.b.j.a(aTBaseAdAdapter), baseAd)) {
                g.this.a(str, aTBaseAdAdapter, baseAdArr != null ? Arrays.asList(baseAdArr) : null);
            } else {
                com.anythink.core.common.p.b bVar = new com.anythink.core.common.p.b();
                bVar.a = 8;
                bVar.c = aTBaseAdAdapter.getTrackingInfo().S();
                bVar.b = ErrorCode.getErrorCode(ErrorCode.adSourceNotFilledError, "", "");
                bVar.d = aTBaseAdAdapter.getTrackingInfo();
                bVar.e = aTBaseAdAdapter.getUnitGroupInfo();
                g.this.a(str, bVar);
            }
            if (this.a.aD() == 1) {
                g.b(g.this, aTBaseAdAdapter);
            }
        }

        @Override // com.anythink.core.common.p.c
        public final void a(String str, String str2) {
            g.this.a(str);
            if (this.a.aD() == 1) {
                g.this.E();
            }
        }
    }

    public static class a {
        public static final int a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
    }

    public g(Context context) {
        this.b = new WeakReference<>(context);
    }

    private synchronized boolean A() {
        StringBuilder sb = new StringBuilder("hasFinishAllRequest:\n isFinishBidding: ");
        sb.append(this.l);
        sb.append("\n requestWaitingPool: ");
        sb.append(this.G.c());
        sb.append("\n requestingPool: ");
        sb.append(this.G.e());
        sb.append("\n defaultRequestWaitingPool: ");
        sb.append(this.G.f());
        sb.append("\n showCapWaitingPool: ");
        sb.append(this.G.k());
        return this.G.v();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean B() {
        boolean z;
        if (this.G.c() == 0) {
            z = this.G.e() == 0;
        }
        return z;
    }

    private void C() {
        if (this.J != null) {
            com.anythink.core.common.m.d.a().b(this.J);
        }
    }

    private com.anythink.core.common.f.b D() {
        c.a aVar;
        com.anythink.core.common.f.b bVarA = com.anythink.core.common.a.a().a(this.a, this.g);
        return (bVarA == null && (aVar = this.H) != null) ? aVar.a() : bVarA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        if (this.I.size() == 0) {
            return;
        }
        synchronized (this.I) {
            Iterator<ATBaseAdAdapter> it = this.I.iterator();
            while (it.hasNext()) {
                it.next().destory();
            }
            this.I.clear();
        }
    }

    private void a(int i, List<av> list, final i.a aVar) {
        boolean z = this.K != null || com.anythink.core.common.o.w.a(this.C);
        com.anythink.core.common.f.a aVar2 = new com.anythink.core.common.f.a();
        aVar2.b = this.a;
        aVar2.c = this.j;
        aVar2.d = this.f;
        aVar2.e = this.g;
        aVar2.f = this.e.a().ah();
        aVar2.g = this.e.l();
        aVar2.h = this.e.m();
        h.a();
        aVar2.l = h.a(this.e.a(), z);
        h.a();
        aVar2.o = h.a(this.e.a());
        h.a();
        aVar2.p = h.b(this.e.a());
        aVar2.j = list;
        aVar2.n = this.e;
        aVar2.s = this.i;
        aVar2.q = this.h;
        aVar2.v = this.G.r();
        aVar2.w = this.G.s();
        aVar2.x = this.G.t();
        aVar2.m = z;
        aVar2.t = i;
        aVar2.u = com.anythink.core.common.o.h.a(this.N);
        aVar2.y = this.G.a();
        com.anythink.core.b.b bVar = new com.anythink.core.b.b(aVar2);
        bVar.a(ATSDK.isNetworkLogDebug());
        bVar.a(new i.a() { // from class: com.anythink.core.common.g.8
            @Override // com.anythink.core.common.i.a
            public final void a(String str) {
                i.a aVar3 = aVar;
                if (aVar3 != null) {
                    aVar3.a(str);
                }
            }

            @Override // com.anythink.core.common.i.a
            public final void a(String str, List<av> list2, List<av> list3, boolean z3) {
                i.a aVar3 = aVar;
                if (aVar3 != null) {
                    aVar3.a(str, list2, list3, z3);
                }
            }
        });
    }

    private void a(long j) {
        if (this.E != null) {
            com.anythink.core.common.m.d.a().a(this.E, j, false);
        }
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter == null) {
            return;
        }
        synchronized (this.I) {
            if (aTBaseAdAdapter != null) {
                this.I.add(aTBaseAdAdapter);
            }
        }
    }

    private void a(AdError adError) {
        n nVar;
        com.anythink.core.common.o.p.a("Mediation", "placementId:" + this.g + ";result_callback:fail;loadType:" + this.j.d + ";");
        v.a(this.a).a(this.g, this.f, false);
        com.anythink.core.common.f.v vVar = this.j;
        if (vVar == null || (nVar = vVar.f) == null) {
            return;
        }
        nVar.a(2, vVar, this.e, adError);
        this.j.f = null;
    }

    private synchronized void a(av avVar) {
        this.G.b(avVar);
    }

    private void a(av avVar, double d, boolean z) {
        if (avVar == null) {
            return;
        }
        d(avVar);
        if (d > this.y) {
            this.y = d;
            if (d != d || !z || !this.z) {
                this.z = !z;
            }
        }
        double dA = com.anythink.core.common.o.h.a(avVar);
        double d2 = this.A;
        if (d2 == -1.0d || dA < d2) {
            this.A = dA;
        }
        boolean zE = this.G.e(avVar);
        if (this.n && this.m && zE) {
            com.anythink.core.c.b.a().a(this.g, this.f, this.e.a().ao(), this.G.b().a());
        }
    }

    private synchronized void a(av avVar, int i) {
        this.G.b(avVar, i);
    }

    private void a(com.anythink.core.common.f.h hVar) {
        this.i = hVar;
    }

    private void a(com.anythink.core.common.f.h hVar, AdError adError) {
        com.anythink.core.common.b.b bVar = this.k;
        if (bVar != null) {
            bVar.b(hVar, adError);
        }
    }

    public static /* synthetic */ void a(g gVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            synchronized (gVar.I) {
                if (aTBaseAdAdapter != null) {
                    gVar.I.add(aTBaseAdAdapter);
                }
            }
        }
    }

    public static /* synthetic */ void a(g gVar, com.anythink.core.common.f.h hVar) {
        com.anythink.core.common.b.b bVar = gVar.k;
        if (bVar != null) {
            bVar.c(hVar);
        }
    }

    public static /* synthetic */ void a(g gVar, com.anythink.core.common.p.e eVar, com.anythink.core.common.f.h hVar, av avVar) {
        com.anythink.core.common.p.d dVar = new com.anythink.core.common.p.d();
        dVar.a = gVar.a;
        dVar.b = gVar.b;
        dVar.c = gVar.f;
        dVar.d = gVar.g;
        dVar.e = gVar.e.a();
        dVar.f = gVar.h;
        dVar.g = gVar.v;
        dVar.h = hVar;
        dVar.i = gVar.G.t();
        eVar.a(dVar);
        eVar.a(gVar.new AnonymousClass5(avVar));
        eVar.a(gVar.A);
    }

    private void a(com.anythink.core.common.p.e eVar) {
        boolean zD = eVar.d();
        if (zD) {
            this.G.a(-1, eVar.e());
        }
        b(eVar);
        s();
        if (this.H != null && this.G.b().a() != this.H.e() && this.y >= this.H.d()) {
            StringBuilder sb = new StringBuilder("checkToRequestNextAdSource release mAdxDefaultCacheInfo,mLoadedMaxPrice:");
            sb.append(this.y);
            sb.append(", mAdxDefaultCacheInfo.getPrice():");
            sb.append(this.H.d());
            this.H.c();
        }
        if (zD) {
            if (this.G.o() == 0 && this.G.c() == 0 && (this.q || this.l)) {
                v();
            }
            new StringBuilder("checkToRequestNextAdSource: try to call next AdSource.||").append(eVar.e());
            this.G.a(eVar.e());
            a(this.G.b(eVar.e()), eVar.e());
            l();
        }
    }

    private void a(com.anythink.core.common.p.e eVar, ATBaseAdAdapter aTBaseAdAdapter, av avVar, com.anythink.core.common.f.h hVar, boolean z, BaseAd... baseAdArr) {
        int i;
        hVar.g(aTBaseAdAdapter.getInternalNetworkPlacementId());
        double dA = eVar.e() != 2 ? com.anythink.core.common.o.h.a(avVar) : 0.0d;
        a(avVar, dA, z);
        com.anythink.core.b.d.b.a(aTBaseAdAdapter, avVar, hVar, baseAdArr);
        this.G.f(avVar);
        double d = this.L;
        if (d <= 0.0d) {
            i = 0;
        } else {
            if (d < dA) {
                hVar.s = 2;
                com.anythink.core.common.p.g.a(this.a, this.g, this.f, avVar, null);
            }
            i = 1;
        }
        hVar.s = i;
        com.anythink.core.common.p.g.a(this.a, this.g, this.f, avVar, null);
    }

    private void a(com.anythink.core.common.p.e eVar, com.anythink.core.common.f.h hVar, av avVar) {
        com.anythink.core.common.p.d dVar = new com.anythink.core.common.p.d();
        dVar.a = this.a;
        dVar.b = this.b;
        dVar.c = this.f;
        dVar.d = this.g;
        dVar.e = this.e.a();
        dVar.f = this.h;
        dVar.g = this.v;
        dVar.h = hVar;
        dVar.i = this.G.t();
        eVar.a(dVar);
        eVar.a(new AnonymousClass5(avVar));
        eVar.a(this.A);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str) {
        if (this.F.b()) {
            return;
        }
        a(this.B.get(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(String str, ATBaseAdAdapter aTBaseAdAdapter, BaseAd baseAd, av avVar) {
        com.anythink.core.common.p.e eVarRemove = this.B.remove(str);
        if (eVarRemove == null) {
            return;
        }
        a(eVarRemove, aTBaseAdAdapter, avVar, aTBaseAdAdapter.getTrackingInfo(), true, baseAd);
        new StringBuilder("[Enter] onCacheAdLoaded: ").append(avVar.toString());
        a(avVar);
        u();
        c(aTBaseAdAdapter.getTrackingInfo());
        avVar.u();
        a(eVarRemove);
    }

    private synchronized void a(List<av> list, int i) {
        if (!this.F.b() && !this.F.c() && list != null && list.size() != 0) {
            this.G.a(list);
            new StringBuilder("addAdSourceToRequestingPool:start to request:  requesting size:").append(this.G.e());
            Iterator<av> it = list.iterator();
            while (it.hasNext()) {
                b(it.next(), i);
            }
        }
    }

    private void a(Map<String, Object> map) {
        this.h = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(com.anythink.core.common.f.h hVar, av avVar, int i, String str) {
        boolean z;
        com.anythink.core.common.f.e eVarC = u.a().c(this.g);
        if (eVarC == null || !eVarC.a(avVar)) {
            z = false;
        } else {
            com.anythink.core.common.o.p.a(this.g, hVar, "Can't Load On Showing", avVar, -1, -1);
            com.anythink.core.common.n.e.a(hVar, 7, ErrorCode.getErrorCode(ErrorCode.loadInShowingFilter, "", "Can't Load On Showing"));
            u.a().a(this.g, eVarC.a(), this.f);
            this.G.a(avVar, i);
            a(avVar);
            this.G.a(i);
            this.B.remove(str);
            this.G.a(-1, i);
            a(this.G.b(i), i);
            z = true;
        }
        return z;
    }

    private void b(long j) {
        com.anythink.core.common.m.d.a().a(this.J, j, false);
    }

    private void b(ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter == null) {
            return;
        }
        synchronized (this.I) {
            if (aTBaseAdAdapter != null) {
                this.I.remove(aTBaseAdAdapter);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(av avVar) {
        this.t.putNetworkErrorMsg(avVar.u(), avVar.d(), avVar.e(), ErrorCode.getErrorCode(ErrorCode.noADError, "", avVar.A()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final av avVar, final int i) {
        final com.anythink.core.common.p.e eVar = new com.anythink.core.common.p.e(avVar, i);
        final String strA = eVar.a();
        this.B.put(strA, eVar);
        this.G.a(1, i);
        com.anythink.core.common.o.b.b.a().c(new Runnable() { // from class: com.anythink.core.common.g.4
            @Override // java.lang.Runnable
            public final void run() {
                String string;
                synchronized (g.this) {
                    if (g.this.F.b()) {
                        g.this.B.remove(strA);
                        return;
                    }
                    if (com.anythink.core.common.o.w.a(avVar) && TextUtils.isEmpty(u.a().a(g.this.g, avVar.d()))) {
                        u.a().a(g.this.g, avVar.d(), avVar.h());
                    }
                    boolean zB = g.b(i);
                    com.anythink.core.common.f.h hVarV = g.this.i.V();
                    if (zB) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(avVar.d());
                        string = sb.toString();
                    } else {
                        string = g.this.s;
                    }
                    hVarV.m(string);
                    com.anythink.core.common.o.v.a(hVarV, avVar, g.this.v, true);
                    hVarV.c(SystemClock.elapsedRealtime() - g.this.u);
                    if (g.this.a(hVarV, avVar, i, strA)) {
                        return;
                    }
                    String unused = g.this.P;
                    new StringBuilder("startAdSourceRequest: ").append(avVar.toString());
                    boolean zA = com.anythink.core.common.p.g.a(g.this.g, avVar, hVarV);
                    g.this.v++;
                    if (zA) {
                        com.anythink.core.common.p.b bVar = new com.anythink.core.common.p.b();
                        bVar.a = 6;
                        bVar.b = ErrorCode.getErrorCode(ErrorCode.noADError, "", "Bid result has expired.");
                        bVar.c = 0L;
                        bVar.d = hVarV;
                        bVar.e = avVar;
                        g.this.a(strA, bVar);
                        return;
                    }
                    if (avVar.k()) {
                        g.this.d(avVar);
                    }
                    int iAb = avVar.ab();
                    if (iAb > 0) {
                        hVarV.q = iAb;
                    } else {
                        g gVar = g.this;
                        if (gVar.m && gVar.w < gVar.e.h()) {
                            iAb = 5;
                            hVarV.q = iAb;
                        }
                    }
                    g.a(g.this, eVar, hVarV, avVar);
                }
            }
        });
    }

    private void b(com.anythink.core.common.f.h hVar) {
        com.anythink.core.common.b.b bVar = this.k;
        if (bVar != null) {
            bVar.c(hVar);
        }
    }

    public static /* synthetic */ void b(g gVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (aTBaseAdAdapter != null) {
            synchronized (gVar.I) {
                if (aTBaseAdAdapter != null) {
                    gVar.I.remove(aTBaseAdAdapter);
                }
            }
        }
    }

    private void b(com.anythink.core.common.p.e eVar) {
        if (eVar.c() == null || !eVar.c().booleanValue() || eVar.e() == 2 || !eVar.c().booleanValue()) {
            return;
        }
        this.w++;
    }

    public static /* synthetic */ boolean b(int i) {
        return i == 3 || i == 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(av avVar) {
        this.G.c(avVar);
        com.anythink.core.common.p.g.a(this.a, this.g, this.f, null, avVar);
        this.G.d(avVar);
    }

    private void c(com.anythink.core.common.f.h hVar) {
        com.anythink.core.common.b.b bVar = this.k;
        if (bVar != null) {
            bVar.d(hVar);
        }
    }

    private static boolean c(int i) {
        return i == 3 || i == 5;
    }

    private synchronized void d(int i) {
        int iP = i != 2 ? this.G.p() : this.G.q();
        if (iP == 0) {
            StringBuilder sb = new StringBuilder("checkToAddAdSourceToRequestingPool: vail requesting num: ");
            sb.append(iP);
            sb.append(" | requestFrom: ");
            sb.append(i);
            a(this.G.b(i), i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(av avVar) {
        if (avVar != null && com.anythink.core.common.p.g.h(avVar) > com.anythink.core.common.o.h.a(this.N)) {
            this.N = avVar;
        }
    }

    private void e(int i) {
        v();
        if (this.M) {
            return;
        }
        f(i);
    }

    private void f(int i) {
        com.anythink.core.d.f fVarA;
        com.anythink.core.common.o.p.a("Mediation", "placementId:" + this.g + ";result_callback:success;loadType:" + this.j.d + ";");
        v.a(this.a).a(this.g, this.f, true);
        com.anythink.core.common.f.v vVar = this.j;
        if (vVar != null && vVar.f != null) {
            boolean z = false;
            try {
                ba baVar = this.e;
                if (baVar != null && (fVarA = baVar.a()) != null) {
                    try {
                        u uVarA = u.a();
                        String str = this.g;
                        StringBuilder sb = new StringBuilder();
                        sb.append(this.e.a().ah());
                        if (uVarA.a(str, sb.toString()) != null) {
                            f.a(fVarA, this.i);
                            f.b(fVarA, this.i);
                        }
                    } catch (com.anythink.core.common.f.g e) {
                        com.anythink.core.common.f.v vVar2 = this.j;
                        vVar2.f.a(1, vVar2, this.e, e.a);
                        z = true;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (!z) {
                com.anythink.core.common.f.v vVar3 = this.j;
                vVar3.f.a(this.z ? 1 : 2, vVar3, this.e, i);
            }
            this.j.f = null;
        }
        com.anythink.core.c.b.a().a(this.g, this.f, this.e.a().ao(), this.G.b().a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.g);
        sb.append(":filled timeup to check cache.");
        com.anythink.core.common.f.b bVarD = D();
        this.r = true;
        if (this.n || bVarD == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.g);
            sb2.append(":filled timeup to check no cache, do nothing.");
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.g);
            sb3.append(":filled timeup to check cache exist.");
            av unitGroupInfo = bVarD.d() != null ? bVarD.d().getUnitGroupInfo() : null;
            a(unitGroupInfo, com.anythink.core.common.o.h.a(unitGroupInfo), true);
            a(9);
        }
    }

    private synchronized void k() {
        if (this.o) {
            this.G.b(this.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        double dA = this.G.a(false);
        double dT = t();
        new StringBuilder("checkWaterfallStatus: vail requesting num: ").append(this.G.o());
        new StringBuilder("checkWaterfallStatus:isFinishBidding:").append(this.l);
        new StringBuilder("checkWaterfallStatus:currentCacheNum >= mStrategy.getCachedOffersNum():").append(this.w >= this.e.h());
        new StringBuilder("checkWaterfallStatus:getCacheLowestPrice() > getWaitingResponseMaxPrice():").append(dA > dT);
        new StringBuilder("checkWaterfallStatus:requestHasShow:").append(this.F.c());
        new StringBuilder("checkWaterfallStatus:hasLongTimeout:").append(this.F.b());
        if ((this.l && this.w >= this.e.h() && dA >= dT) || this.F.c() || this.F.b()) {
            this.o = true;
            k();
            if (this.G.o() == 0) {
                com.anythink.core.common.p.g.a(this.a, this.g);
                com.anythink.core.common.p.g.a(this.g);
                r();
            }
        }
        q();
        if (this.o || A()) {
            r();
        }
    }

    private void m() {
        if (this.H != null) {
            com.anythink.core.common.f.h hVarV = this.i.V();
            com.anythink.core.common.o.v.a(hVarV, this.H.e(), 0, true);
            this.H.a(this.f, hVarV);
        }
    }

    private void n() {
        if (this.e.j() < 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.g);
            sb.append(": no filled count down.");
        } else {
            this.D = new AnonymousClass2();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.g);
            sb2.append(": start filled count down.mWaterfallSetting.getWaitWaterfaillFillTime():");
            sb2.append(this.e.j());
            com.anythink.core.common.m.d.a().a(this.D, this.e.j(), false);
        }
    }

    private com.anythink.core.common.m.b o() {
        return new AnonymousClass3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        if (!this.n && this.G.f() > 0) {
            this.E = null;
            av avVarG = this.G.g();
            new StringBuilder("handleDefaultAdSourceRequest: startLoadDefaultAdSource:").append(avVarG.toString());
            this.G.a(avVarG);
            StringBuilder sb = new StringBuilder("handleDefaultAdSourceRequest:start to request: waiting size:");
            sb.append(this.G.f());
            sb.append("; requesting size:");
            sb.append(this.G.q());
            b(avVarG, 2);
        }
    }

    private synchronized void q() {
        com.anythink.core.common.f.q qVarM;
        if (!this.F.g() && this.F.e()) {
            if (this.F.b()) {
                return;
            }
            if (this.i.X()) {
                new StringBuilder("tryToSendWinNotice(), in adx network mode, do nothing: ").append(this.g);
                return;
            }
            av avVarB = this.G.b(this.l);
            if (avVarB != null && (qVarM = avVarB.M()) != null) {
                this.F.h();
                new StringBuilder("tryToSendWinNotice(), send win notice: ").append(avVarB.toString());
                com.anythink.core.b.d.b.a(qVarM, avVarB);
            }
            return;
        }
        StringBuilder sb = new StringBuilder("tryToSendWinNotice(), mHasSendWinNotice: ");
        sb.append(this.F.g());
        sb.append(", mHasHBAdSource: ");
        sb.append(this.F.e());
    }

    private synchronized void r() {
        if (!this.F.e()) {
            new StringBuilder("tryToSendLossNotice(), mHasHBAdSource: ").append(this.F.e());
        } else {
            if (this.F.b()) {
                return;
            }
            this.G.a(this.i.V());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void s() {
        boolean z;
        double dT = t();
        double d = this.y;
        if (d >= 0.0d) {
            if (((this.l || this.q) && d >= dT) || this.r) {
                if (!this.n) {
                    a(-1);
                }
                w();
            }
        } else if (this.l) {
            if (this.E == null || !B()) {
                z = false;
            } else {
                com.anythink.core.common.m.d.a().b(this.E);
                this.E.run();
                this.E = null;
                z = true;
            }
            if (z) {
                return;
            }
            if (A() && !this.n) {
                z();
            }
        }
    }

    private double t() {
        av avVarA;
        if (this.e.k() == 2) {
            synchronized (this.B) {
                avVarA = com.anythink.core.common.p.g.a(this.B);
            }
        } else {
            avVarA = null;
        }
        return Math.max(Math.max(com.anythink.core.common.o.h.a(this.G.d()), com.anythink.core.common.o.h.a(this.G.j())), com.anythink.core.common.o.h.a(avVarA));
    }

    private synchronized void u() {
        this.G.i();
        if (this.E != null) {
            com.anythink.core.common.m.d.a().b(this.E);
            this.E = null;
        }
    }

    private synchronized boolean v() {
        if (this.G.m()) {
            return false;
        }
        if (this.F.c()) {
            return false;
        }
        this.F.f();
        this.O = true;
        a(8, this.G.n(), new i.a() { // from class: com.anythink.core.common.g.6
            @Override // com.anythink.core.common.i.a
            public final void a(String str) {
            }

            @Override // com.anythink.core.common.i.a
            public final void a(String str, List<av> list, List<av> list2, boolean z) {
                for (av avVar : list) {
                    g.this.c(avVar);
                    avVar.x(8);
                    g.this.G.a(avVar);
                    g.this.b(avVar, 3);
                }
                if (list2 != null) {
                    Iterator<av> it = list2.iterator();
                    while (it.hasNext()) {
                        g.this.b(it.next());
                    }
                }
                g gVar = g.this;
                gVar.O = false;
                gVar.s();
            }
        });
        return true;
    }

    private synchronized void w() {
        if (this.l) {
            if (this.F.c()) {
                return;
            }
            List<av> list = this.C;
            if (list != null && list.size() != 0) {
                if (this.p) {
                    return;
                }
                this.p = true;
                a(7, this.C, new i.a() { // from class: com.anythink.core.common.g.7
                    @Override // com.anythink.core.common.i.a
                    public final void a(String str) {
                    }

                    @Override // com.anythink.core.common.i.a
                    public final void a(String str, List<av> list2, List<av> list3, boolean z) {
                        if (g.this.F.c()) {
                            String unused = g.this.P;
                            for (av avVar : list2) {
                                g.this.G.d(avVar);
                                com.anythink.core.common.p.g.a(avVar, g.this.i);
                            }
                            return;
                        }
                        g gVar = g.this;
                        if (gVar.w < gVar.e.h()) {
                            String unused2 = g.this.P;
                            g.this.a(list2, (List<av>) null, (List<av>) null);
                            g.this.l();
                            return;
                        }
                        String unused3 = g.this.P;
                        double dA = g.this.G.a(false);
                        int size = list2.size();
                        ArrayList<av> arrayList = new ArrayList(size);
                        ArrayList arrayList2 = new ArrayList(size);
                        for (int i = 0; i < size; i++) {
                            av avVar2 = list2.get(i);
                            g.this.G.d(avVar2);
                            if (com.anythink.core.common.o.h.a(avVar2) > dA) {
                                arrayList.add(avVar2);
                            } else {
                                arrayList2.add(avVar2);
                            }
                        }
                        for (av avVar3 : arrayList) {
                            g.this.c(avVar3);
                            avVar3.x(7);
                            g.this.G.a(avVar3);
                            g.this.b(avVar3, 5);
                        }
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            com.anythink.core.common.p.g.a((av) it.next(), g.this.i);
                        }
                    }
                });
            }
        }
    }

    private boolean x() {
        if (this.E == null || !B()) {
            return false;
        }
        com.anythink.core.common.m.d.a().b(this.E);
        this.E.run();
        this.E = null;
        return true;
    }

    private void y() {
        n nVar;
        this.n = true;
        this.m = false;
        if (this.J != null) {
            com.anythink.core.common.m.d.a().b(this.J);
        }
        com.anythink.core.common.n.e.a(this.i.V(), this.t);
        if (!this.M) {
            AdError adError = this.t;
            com.anythink.core.common.o.p.a("Mediation", "placementId:" + this.g + ";result_callback:fail;loadType:" + this.j.d + ";");
            v.a(this.a).a(this.g, this.f, false);
            com.anythink.core.common.f.v vVar = this.j;
            if (vVar != null && (nVar = vVar.f) != null) {
                nVar.a(2, vVar, this.e, adError);
                this.j.f = null;
            }
        }
        f();
    }

    private void z() {
        com.anythink.core.common.f.b bVarD = D();
        if (bVarD != null) {
            av unitGroupInfo = bVarD.d() != null ? bVarD.d().getUnitGroupInfo() : null;
            a(unitGroupInfo, com.anythink.core.common.o.h.a(unitGroupInfo), true);
            a(9);
        } else {
            if (v()) {
                return;
            }
            y();
        }
    }

    public final synchronized void a() {
        ConcurrentHashMap concurrentHashMap;
        this.F.a();
        synchronized (this.B) {
            concurrentHashMap = new ConcurrentHashMap(this.B);
        }
        Iterator it = concurrentHashMap.entrySet().iterator();
        while (it.hasNext()) {
            com.anythink.core.common.p.e eVar = (com.anythink.core.common.p.e) ((Map.Entry) it.next()).getValue();
            if (eVar != null) {
                eVar.b();
            }
        }
        if (!this.n) {
            this.n = true;
            z();
        }
        l();
    }

    public final synchronized void a(double d, av avVar) {
        E();
        if (!this.F.g() && avVar != null && avVar.k()) {
            this.F.h();
        }
        if (d > this.L) {
            this.L = d;
        }
        int iAh = this.e.a().ah();
        if (iAh == 0 || iAh == 2) {
            return;
        }
        this.F.d();
        u uVarA = u.a();
        String str = this.g;
        StringBuilder sb = new StringBuilder();
        sb.append(this.e.a().ah());
        f fVarA = uVarA.a(str, sb.toString());
        if (fVarA != null) {
            fVarA.a(this.f);
        } else {
            com.anythink.core.common.n.e.a("AdManage is null--notifyimpression", "Id:" + this.g + "--format:" + this.e.a().ah(), com.anythink.core.common.b.n.a().q());
        }
        if (!this.n) {
            a(10);
        }
        l();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(int i) {
        boolean z;
        u();
        if (this.D != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.g);
            sb.append(":remove filled countdown.");
            com.anythink.core.common.m.d.a().b(this.D);
            this.D = null;
        }
        c.a aVar = this.H;
        if (aVar != null && (aVar.e() == this.G.b().a() || this.H.d() > this.y)) {
            this.H.b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.g);
            sb2.append(":set adx default cache from loadedReason:");
            sb2.append(i);
            a(this.H.e(), this.H.d(), true);
            i = 11;
        }
        if (i != 5) {
            switch (i) {
                case 9:
                case 10:
                case 11:
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
        }
        this.n = true;
        this.m = true;
        if (this.J != null) {
            com.anythink.core.common.m.d.a().b(this.J);
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.u;
        com.anythink.core.common.f.h hVarV = this.i.V();
        hVarV.b(true);
        hVarV.f(jElapsedRealtime);
        if (z) {
            hVarV.E(i);
        }
        com.anythink.core.common.n.c.a(this.a).a(12, hVarV);
        com.anythink.core.common.p.g.a(this.a, this.g);
        com.anythink.core.common.p.g.a(this.g);
        e(i);
    }

    public final void a(ATBaseAdAdapter aTBaseAdAdapter, String str) {
        if (aTBaseAdAdapter != null) {
            str.hashCode();
            if (str.equals("0")) {
                aTBaseAdAdapter.setRequestNum(aTBaseAdAdapter.getUnitGroupInfo().s());
            } else if (str.equals("4")) {
                aTBaseAdAdapter.setFetchAdTimeout(this.j.h);
            }
        }
    }

    public final void a(com.anythink.core.common.b.b bVar) {
        this.k = bVar;
    }

    public final void a(com.anythink.core.common.f.v vVar) {
        this.j = vVar;
    }

    public final void a(com.anythink.core.common.p.h hVar) {
        this.G = new com.anythink.core.common.p.g(hVar);
        this.l = hVar.g;
        this.f = hVar.b;
        this.g = hVar.a;
        this.e = hVar.c;
        this.c = hVar.h;
        this.s = com.anythink.core.common.p.g.b(hVar.d);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0016 A[Catch: all -> 0x0083, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x000a, B:9:0x0016, B:11:0x0048, B:13:0x0052, B:14:0x0055), top: B:20:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void a(String str, ATBaseAdAdapter aTBaseAdAdapter, List<? extends BaseAd> list) {
        com.anythink.core.common.p.e eVarRemove;
        if (aTBaseAdAdapter != null) {
            aTBaseAdAdapter.getTrackingInfo().F();
            eVarRemove = this.B.remove(str);
            if (eVarRemove != null) {
                return;
            }
            com.anythink.core.common.f.h trackingInfo = aTBaseAdAdapter.getTrackingInfo();
            av unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
            new StringBuilder("[Enter] onAdLoaded(): ").append(unitGroupInfo.toString());
            a(unitGroupInfo);
            u();
            a(eVarRemove, aTBaseAdAdapter, unitGroupInfo, trackingInfo, false, new BaseAd[0]);
            if (unitGroupInfo.C() != -1 && trackingInfo.R() > 0) {
                com.anythink.core.common.n.e.a(trackingInfo);
            }
            c(aTBaseAdAdapter.getTrackingInfo());
            com.anythink.core.common.n.c.a(this.a).a(2, trackingInfo);
            com.anythink.core.common.a.a().a(this.g, aTBaseAdAdapter, list, unitGroupInfo.q());
            com.anythink.core.common.o.p.a(trackingInfo, h.n.b, h.n.l, "");
            a(eVarRemove);
            return;
        }
        eVarRemove = this.B.remove(str);
        if (eVarRemove != null) {
        }
    }

    public final synchronized void a(String str, com.anythink.core.common.p.b bVar) {
        com.anythink.core.common.b.b bVar2;
        com.anythink.core.common.f.h hVar = bVar.d;
        av avVar = bVar.e;
        AdError adError = bVar.b;
        long j = bVar.c;
        String strF = hVar.F();
        com.anythink.core.common.p.e eVarRemove = this.B.remove(str);
        if (eVarRemove == null) {
            return;
        }
        new StringBuilder("[Enter] onAdError(): ").append(avVar.toString());
        a(avVar);
        this.t.putNetworkErrorMsg(strF, hVar.P(), hVar.ae(), adError);
        com.anythink.core.common.n.e.a(hVar, bVar.a, adError, j);
        if (j > 0 && (bVar2 = this.k) != null) {
            bVar2.b(hVar, adError);
        }
        com.anythink.core.common.o.p.a(hVar, h.n.b, h.n.m, adError.printStackTrace());
        a(eVarRemove);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0092 A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:5:0x0005, B:6:0x0009, B:8:0x000f, B:12:0x001e, B:14:0x0025, B:17:0x002d, B:39:0x00a3, B:40:0x00a7, B:42:0x00ad, B:43:0x00bb, B:20:0x0049, B:35:0x007b, B:37:0x0092, B:38:0x0094, B:24:0x0063, B:45:0x00bd), top: B:49:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(List<av> list, List<av> list2, List<av> list3) {
        String str;
        String str2;
        synchronized (this.x) {
            if (list2 != null) {
                try {
                    Iterator<av> it = list2.iterator();
                    while (it.hasNext()) {
                        b(it.next());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (list3 != null) {
                this.C.addAll(list3);
            }
            if (list != null && list.size() != 0) {
                this.F.f();
                av avVar = list.get(0);
                boolean zA = com.anythink.core.common.p.g.a(avVar, this.F);
                boolean zG = this.G.g(avVar);
                if (zA || zG) {
                    StringBuilder sb = new StringBuilder("isAdvanceRequest: ");
                    sb.append(zA);
                    sb.append(", cutInLine: ");
                    sb.append(zG);
                    String str3 = !this.n ? "1" : this.m ? "2" : "3";
                    if (zA) {
                        str2 = "1";
                    } else if (zG) {
                        str2 = "2";
                    } else {
                        str = "1";
                        com.anythink.core.common.n.e.a(this.i, avVar.d(), avVar.u(), com.anythink.core.common.o.h.a(avVar), str3, str);
                        if (avVar.aa()) {
                            this.K = avVar;
                        }
                        c(avVar);
                        list.remove(0);
                        this.G.a(avVar);
                        b(avVar, 3);
                    }
                    str = str2;
                    com.anythink.core.common.n.e.a(this.i, avVar.d(), avVar.u(), com.anythink.core.common.o.h.a(avVar), str3, str);
                    if (avVar.aa()) {
                    }
                    c(avVar);
                    list.remove(0);
                    this.G.a(avVar);
                    b(avVar, 3);
                }
                for (av avVar2 : list) {
                    c(avVar2);
                    a(avVar2, 1);
                }
            }
        }
    }

    public final void b() {
        long jA = this.G.a(this.l, this.e.a().B());
        if (jA > -1) {
            this.E = new AnonymousClass3();
        }
        this.u = SystemClock.elapsedRealtime();
        StringBuilder sb = new StringBuilder();
        sb.append(this.g);
        sb.append(": start waterfall.");
        com.anythink.core.common.m.d.a().a(this.J, this.e.i(), false);
        if (this.G.h() && this.l) {
            v();
        }
        a(this.G.u(), 1);
        if (this.E != null) {
            com.anythink.core.common.m.d.a().a(this.E, jA, false);
        }
        if (this.H != null) {
            com.anythink.core.common.f.h hVarV = this.i.V();
            com.anythink.core.common.o.v.a(hVarV, this.H.e(), 0, true);
            this.H.a(this.f, hVarV);
        }
        if (this.e.j() < 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.g);
            sb2.append(": no filled count down.");
        } else {
            this.D = new AnonymousClass2();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.g);
            sb3.append(": start filled count down.mWaterfallSetting.getWaitWaterfaillFillTime():");
            sb3.append(this.e.j());
            com.anythink.core.common.m.d.a().a(this.D, this.e.j(), false);
        }
    }

    public final boolean c() {
        if (this.n) {
            return true;
        }
        return this.l && this.G.c() == 0 && this.G.o() == 0;
    }

    public final void d() {
        this.q = true;
        s();
    }

    public final void e() {
        synchronized (this.x) {
            this.l = true;
            this.q = true;
            s();
            l();
        }
    }

    public final void f() {
        this.M = true;
        u uVarA = u.a();
        String str = this.g;
        StringBuilder sb = new StringBuilder();
        sb.append(this.e.a().ah());
        f fVarA = uVarA.a(str, sb.toString());
        if (fVarA != null) {
            fVarA.a(this.f);
            return;
        }
        com.anythink.core.common.n.e.a("AdManage is null--notifycancel", "Id:" + this.g + "--format:" + this.e.a().ah(), com.anythink.core.common.b.n.a().q());
    }

    public final void g() {
        List<com.anythink.core.common.p.f> listL = this.G.l();
        synchronized (listL) {
            if (listL.size() > 0) {
                av avVarA = listL.remove(0).a();
                if (!this.n || this.w < this.e.h() || com.anythink.core.common.o.h.a(avVarA) > this.y) {
                    this.G.a(avVarA);
                    b(avVarA, 4);
                }
            }
            if (listL.size() > 0) {
                for (com.anythink.core.common.p.f fVar : listL) {
                    av avVarA2 = fVar.a();
                    if (!this.n || this.w < this.e.h() || com.anythink.core.common.o.h.a(avVarA2) > this.y) {
                        int iB = fVar.b();
                        if (iB == 1) {
                            a(avVarA2, 1);
                        } else if (iB == 2) {
                            a(avVarA2, 2);
                        } else if (iB == 3) {
                            this.G.a(avVarA2);
                            b(avVarA2, 3);
                        }
                        d(iB);
                    }
                }
            }
            listL.clear();
        }
        l();
    }

    public final c.a h() {
        return this.H;
    }

    public final com.anythink.core.d.f i() {
        return this.e.a();
    }
}
