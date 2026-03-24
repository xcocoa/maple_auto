package com.anythink.core.common.p;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.b.q;
import com.anythink.core.common.f.ao;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.aw;
import com.anythink.core.common.o.v;
import com.anythink.core.common.o.w;
import com.anythink.core.common.u;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static final String a = "e";
    public String b;
    public av c;
    public com.anythink.core.common.f.h d;
    public String e;
    public int f;
    public ATBaseAdAdapter g;
    public c h;
    public boolean i;
    public boolean j;
    public long k;
    public long l;
    public com.anythink.core.common.m.b m;
    public com.anythink.core.common.m.b n;
    public d o;
    public Boolean p;
    public int q;
    public String r;
    public boolean s;

    /* JADX INFO: renamed from: com.anythink.core.common.p.e$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ ATBaseAdAdapter a;
        public final /* synthetic */ String b;
        public final /* synthetic */ av c;
        public final /* synthetic */ Map d;

        public AnonymousClass1(ATBaseAdAdapter aTBaseAdAdapter, String str, av avVar, Map map) {
            this.a = aTBaseAdAdapter;
            this.b = str;
            this.c = avVar;
            this.d = map;
        }

        @Override // java.lang.Runnable
        public final void run() {
            c cVar = e.this.h;
            if (cVar != null) {
                cVar.a(this.a, this.b);
            }
            Context contextA = e.a(e.this);
            byte b = 0;
            if (contextA == null) {
                if (e.this.h != null) {
                    b bVar = new b();
                    bVar.a = 0;
                    bVar.c = SystemClock.elapsedRealtime() - e.this.k;
                    bVar.b = ErrorCode.getErrorCode(ErrorCode.adapterInnerError, "", "Request Context is null! Please check the Ad init Context.");
                    e.this.a(this.a, bVar);
                    return;
                }
                return;
            }
            e.a(e.this, contextA, this.c, this.a);
            try {
                Map<String, Object> mapB = e.b(e.this);
                e.this.g = this.a;
                com.anythink.core.common.i.e.a().c();
                ATBaseAdAdapter aTBaseAdAdapter = this.a;
                Map<String, Object> map = this.d;
                e eVar = e.this;
                aTBaseAdAdapter.internalLoad(contextA, map, mapB, new com.anythink.core.common.p.a(eVar.d, eVar.e, this.d, new a(eVar, eVar, this.a, b)));
                com.anythink.core.common.f.h trackingInfo = this.a.getTrackingInfo();
                trackingInfo.g(this.a.getInternalNetworkPlacementId());
                c cVar2 = e.this.h;
                if (cVar2 != null) {
                    cVar2.a(trackingInfo, this.a);
                }
            } catch (Throwable th) {
                b bVar2 = new b();
                bVar2.a = 0;
                bVar2.c = SystemClock.elapsedRealtime() - e.this.k;
                bVar2.b = ErrorCode.getErrorCode(ErrorCode.adapterInnerError, "", th.getMessage());
                e.this.a(this.a, bVar2);
            }
        }
    }

    public class a implements ATCustomLoadListener {
        public ATBaseAdAdapter a;
        public e b;

        private a(e eVar, ATBaseAdAdapter aTBaseAdAdapter) {
            this.b = eVar;
            this.a = aTBaseAdAdapter;
        }

        public /* synthetic */ a(e eVar, e eVar2, ATBaseAdAdapter aTBaseAdAdapter, byte b) {
            this(eVar2, aTBaseAdAdapter);
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdCacheLoaded(final BaseAd... baseAdArr) {
            com.anythink.core.common.i.e.a().d();
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.p.e.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    ATBaseAdAdapter aTBaseAdAdapter;
                    synchronized (a.this) {
                        a aVar = a.this;
                        e eVar = aVar.b;
                        if (eVar != null && (aTBaseAdAdapter = aVar.a) != null) {
                            eVar.a(aTBaseAdAdapter, baseAdArr);
                            a aVar2 = a.this;
                            aVar2.b = null;
                            aVar2.a = null;
                        }
                    }
                }
            });
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdDataLoaded() {
            e.d(e.this);
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.p.e.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (a.this) {
                        a aVar = a.this;
                        e eVar = aVar.b;
                        if (eVar != null && aVar.a != null) {
                            eVar.o();
                        }
                    }
                }
            });
        }

        @Override // com.anythink.core.api.ATCustomLoadListener
        public final void onAdLoadError(final String str, final String str2) {
            com.anythink.core.common.i.e.a().d();
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.p.e.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (a.this) {
                        a aVar = a.this;
                        if (aVar.b != null && aVar.a != null) {
                            b bVar = new b();
                            bVar.a = 0;
                            bVar.b = ErrorCode.getErrorCode(ErrorCode.noADError, str, str2);
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            a aVar2 = a.this;
                            bVar.c = jElapsedRealtime - e.this.k;
                            aVar2.b.a(aVar2.a, bVar);
                            a aVar3 = a.this;
                            aVar3.b = null;
                            aVar3.a = null;
                        }
                    }
                }
            });
        }
    }

    public e(av avVar, int i) {
        this.c = avVar;
        this.q = i;
        this.e = avVar.u();
        this.r = this.e + "_" + hashCode();
    }

    public static /* synthetic */ Context a(e eVar) {
        Context contextE = eVar.o.b.get();
        if (!(contextE instanceof Activity)) {
            contextE = n.a().E();
        }
        if (ATSDK.isNetworkLogDebug()) {
            Log.d(a, "requestContext = ".concat(String.valueOf(contextE)));
        }
        return contextE;
    }

    private void a(long j) {
        if (j == -1) {
            return;
        }
        this.n = m();
        com.anythink.core.common.m.d.a().a(this.n, j, false);
    }

    private void a(Context context, av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (com.anythink.core.d.a.at()) {
            q qVarA = q.a(n.a().f());
            try {
                if (qVarA.c(avVar.d()) || !aTBaseAdAdapter.internalSetUserDataConsent(context, qVarA.c(), ATSDK.isEUTraffic(this.o.a))) {
                    return;
                }
                qVarA.b(avVar.d());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter) {
        this.g = aTBaseAdAdapter;
    }

    private void a(ATBaseAdAdapter aTBaseAdAdapter, av avVar) {
        Map<String, Object> mapH = h();
        String strValueOf = String.valueOf(this.o.e.ah());
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(aTBaseAdAdapter, strValueOf, avVar, mapH);
        if (TextUtils.equals(strValueOf, "2")) {
            n.a().b(anonymousClass1);
        } else {
            com.anythink.core.common.o.b.b.a().c(anonymousClass1);
        }
    }

    private synchronized void a(ATBaseAdAdapter aTBaseAdAdapter, av avVar, com.anythink.core.common.f.b bVar) {
        if (k()) {
            return;
        }
        f();
        g();
        this.g = null;
        this.p = Boolean.TRUE;
        if (this.i) {
            this.d.r = 1;
        }
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(this.r, aTBaseAdAdapter, avVar, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(ATBaseAdAdapter aTBaseAdAdapter, BaseAd... baseAdArr) {
        if (k()) {
            return;
        }
        av unitGroupInfo = aTBaseAdAdapter.getUnitGroupInfo();
        this.d.f((SystemClock.elapsedRealtime() - this.k) + (unitGroupInfo.m() == 2 ? unitGroupInfo.l() : 0L));
        f();
        g();
        this.g = null;
        this.p = Boolean.TRUE;
        if (this.i) {
            this.d.r = 1;
        }
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(this.r, aTBaseAdAdapter, baseAdArr);
        }
    }

    public static /* synthetic */ void a(e eVar, Context context, av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (com.anythink.core.d.a.at()) {
            q qVarA = q.a(n.a().f());
            try {
                if (qVarA.c(avVar.d()) || !aTBaseAdAdapter.internalSetUserDataConsent(context, qVarA.c(), ATSDK.isEUTraffic(eVar.o.a))) {
                    return;
                }
                qVarA.b(avVar.d());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static /* synthetic */ Map b(e eVar) {
        Object obj;
        Map<String, Object> map = eVar.o.f;
        if (map == null) {
            return new HashMap(2);
        }
        if (eVar.c.d() != 2 || (obj = map.get("admob_content_urls")) == null || !(obj instanceof List)) {
            return map;
        }
        com.anythink.core.common.n.e.a(eVar.b, eVar.d, "admob_content_urls", obj);
        return map;
    }

    private void b(long j) {
        if (j == -1) {
            return;
        }
        this.m = m();
        com.anythink.core.common.m.d.a().a(this.m, j, false);
    }

    public static /* synthetic */ void d(e eVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - eVar.k;
        eVar.l = jElapsedRealtime;
        com.anythink.core.common.f.h hVar = eVar.d;
        if (hVar != null) {
            hVar.e(jElapsedRealtime);
        }
    }

    private void f() {
        if (this.m != null) {
            com.anythink.core.common.m.d.a().b(this.m);
            this.m = null;
        }
    }

    private void g() {
        if (this.n != null) {
            com.anythink.core.common.m.d.a().b(this.n);
            this.n = null;
        }
    }

    private Map<String, Object> h() {
        String str;
        int iAo;
        d dVar = this.o;
        com.anythink.core.d.f fVar = dVar.e;
        String str2 = dVar.c;
        if (fVar == null) {
            return new HashMap();
        }
        Map<String, Object> mapA = fVar.a(this.b, str2, this.c);
        int iD = this.c.d();
        if (iD == 2) {
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.o.a).b(n.a().o());
            if (aVarB != null) {
                mapA.put(h.p.l, Boolean.valueOf(aVarB.l() == 1));
            }
            if (fVar.d() == 1) {
                str = h.p.o;
                iAo = fVar.d();
            } else {
                str = h.p.o;
                iAo = this.c.ao();
            }
            mapA.put(str, Integer.valueOf(iAo));
        } else if (iD == 6) {
            JSONObject jSONObjectA = com.anythink.core.common.o.h.a(this.o.a, str2, this.b, fVar.ah(), this.f);
            if (fVar.aH() == 1) {
                mapA.put("tp_info", jSONObjectA.toString());
            }
        } else if (iD == 22) {
            com.anythink.core.common.o.b.a(fVar, mapA, this.c, this.o.i);
        }
        if (w.a(this.c) && this.o.e.aC() == 1) {
            ao aoVarA = com.anythink.core.a.a.a(this.o.a).a(this.b, this.o.e.ah());
            mapA.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.AD_LOAD_SEQ, Integer.valueOf(aoVarA != null ? aoVarA.c : 0));
            synchronized (u.a().a(this.b)) {
                String strA = u.a().a(this.b, this.c.d());
                if (!TextUtils.isEmpty(strA)) {
                    mapA.put(ATAdConst.NETWORK_REQUEST_PARAMS_KEY.CONTENT, strA);
                }
            }
        }
        return mapA;
    }

    private Map<String, Object> i() {
        Object obj;
        Map<String, Object> map = this.o.f;
        if (map == null) {
            return new HashMap(2);
        }
        if (this.c.d() != 2 || (obj = map.get("admob_content_urls")) == null || !(obj instanceof List)) {
            return map;
        }
        com.anythink.core.common.n.e.a(this.b, this.d, "admob_content_urls", obj);
        return map;
    }

    private Context j() {
        Context contextE = this.o.b.get();
        if (!(contextE instanceof Activity)) {
            contextE = n.a().E();
        }
        if (ATSDK.isNetworkLogDebug()) {
            Log.d(a, "requestContext = ".concat(String.valueOf(contextE)));
        }
        return contextE;
    }

    private boolean k() {
        return !this.s || this.j || q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        if (k()) {
            return;
        }
        this.i = true;
        new StringBuilder("network short timeout: ").append(this.e);
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(this.r, this.e);
        }
    }

    private com.anythink.core.common.m.b m() {
        return new com.anythink.core.common.m.b() { // from class: com.anythink.core.common.p.e.2
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.common.p.e.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.this.l();
                    }
                });
            }
        };
    }

    private void n() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.k;
        this.l = jElapsedRealtime;
        com.anythink.core.common.f.h hVar = this.d;
        if (hVar != null) {
            hVar.e(jElapsedRealtime);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o() {
        f();
    }

    private void p() {
        this.g = null;
    }

    private boolean q() {
        return this.p != null;
    }

    private long r() {
        return this.k;
    }

    private boolean s() {
        return this.i;
    }

    private av t() {
        return this.c;
    }

    public final String a() {
        return this.r;
    }

    public final void a(double d) {
        com.anythink.core.common.f.b bVarE;
        boolean z;
        BaseAd baseAdB;
        ATBaseAdAdapter aTBaseAdAdapterA;
        boolean z3;
        String str;
        this.s = true;
        if (this.c.k() && this.c.M() != null && !TextUtils.isEmpty(this.o.c)) {
            this.c.M().b(this.o.c);
        }
        aw awVarA = com.anythink.core.common.a.a().a(this.b, this.c);
        if (awVarA != null) {
            com.anythink.core.common.f.f fVarA = awVarA.a(this.c.M());
            int iD = fVarA.d();
            if (this.c.j() == 1) {
                bVarE = fVarA.e();
                if (bVarE != null) {
                    new StringBuilder("CacheCheck:: Bidding Offer Cache exist：").append(this.c.toString());
                    z = true;
                }
                z = false;
            } else {
                com.anythink.core.common.f.b bVarA = fVarA.a();
                if (fVarA.c() && bVarA != null) {
                    if (com.anythink.core.common.o.h.a(this.c) <= d) {
                        StringBuilder sb = new StringBuilder("CacheCheck:: upstatus = 1, Normal Offer price < loadedMinPrice ：");
                        sb.append(d);
                        sb.append(", AdSource:");
                        sb.append(this.c.toString());
                    } else if (iD >= this.c.an()) {
                        new StringBuilder("CacheCheck:: upstatus = 1, cache size > setting size, AdSource:").append(this.c.toString());
                    }
                    bVarE = bVarA;
                    z = true;
                }
                bVarE = bVarA;
                z = false;
            }
            StringBuilder sb2 = new StringBuilder("CacheCheck:: Offer Cache exist, need to real request status:");
            sb2.append(!z);
            sb2.append(", current cache size:");
            sb2.append(iD);
            sb2.append("\n");
            sb2.append(this.c.toString());
        } else {
            new StringBuilder("CacheCheck:: Offer Cache not exist, need to real request status:true, current cache size:0\n").append(this.c.toString());
            bVarE = null;
            z = false;
        }
        if (z) {
            c cVar = this.h;
            if (cVar != null) {
                cVar.a(bVarE.d().getTrackingInfo(), bVarE.d());
            }
            new StringBuilder("CacheCheck:: Callback by cached：").append(this.c.toString());
            a(bVarE.d(), this.c, bVarE);
            return;
        }
        new StringBuilder("CacheCheck:: Start real request：").append(this.c.toString());
        com.anythink.core.common.f.q qVarM = this.c.M();
        if (qVarM == null || !qVarM.s) {
            baseAdB = null;
            aTBaseAdAdapterA = null;
            z3 = false;
        } else {
            com.anythink.core.b.c.a aVar = qVarM.r;
            if (aVar != null) {
                aTBaseAdAdapterA = aVar.a();
                baseAdB = aVar.b();
            } else {
                baseAdB = null;
                aTBaseAdAdapterA = null;
            }
            qVarM.r = null;
            z3 = true;
        }
        if (aTBaseAdAdapterA == null && !z3) {
            aTBaseAdAdapterA = com.anythink.core.common.o.j.a(this.c);
        }
        ATBaseAdAdapter aTBaseAdAdapter = aTBaseAdAdapterA;
        if (aTBaseAdAdapter == null) {
            if (this.h != null) {
                b bVar = new b();
                bVar.a = 0;
                bVar.c = z3 ? this.c.l() : 0L;
                String str2 = z3 ? ErrorCode.c2sBiddingCacheError : ErrorCode.adapterNotExistError;
                if (z3) {
                    str = "";
                } else {
                    str = this.c.i() + " does not exist!";
                }
                bVar.b = ErrorCode.getErrorCode(str2, "", str);
                a((ATBaseAdAdapter) null, bVar);
                return;
            }
            return;
        }
        try {
            com.anythink.core.common.o.e.a(this.c.d(), aTBaseAdAdapter.getInternalNetworkSDKVersion());
        } catch (Throwable unused) {
        }
        com.anythink.core.common.f.h hVarA = v.a(aTBaseAdAdapter, this.d, this.c);
        this.d = hVarA;
        c cVar2 = this.h;
        if (cVar2 != null) {
            cVar2.a(hVarA);
        }
        long jC = this.c.C();
        if (jC != -1) {
            this.m = m();
            com.anythink.core.common.m.d.a().a(this.m, jC, false);
        }
        long jR = this.c.r();
        if (jR != -1) {
            this.n = m();
            com.anythink.core.common.m.d.a().a(this.n, jR, false);
        }
        this.k = SystemClock.elapsedRealtime();
        Context context = this.o.b.get();
        if (context != null && (context instanceof Activity)) {
            aTBaseAdAdapter.refreshActivityContext((Activity) context);
        }
        if (z3) {
            c cVar3 = this.h;
            if (cVar3 != null) {
                cVar3.a(this.d, aTBaseAdAdapter);
            }
            if (baseAdB != null) {
                a(aTBaseAdAdapter, baseAdB);
                return;
            } else {
                a(aTBaseAdAdapter, new BaseAd[0]);
                return;
            }
        }
        av avVar = this.c;
        Map<String, Object> mapH = h();
        String strValueOf = String.valueOf(this.o.e.ah());
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(aTBaseAdAdapter, strValueOf, avVar, mapH);
        if (TextUtils.equals(strValueOf, "2")) {
            n.a().b(anonymousClass1);
        } else {
            com.anythink.core.common.o.b.b.a().c(anonymousClass1);
        }
    }

    public final synchronized void a(final ATBaseAdAdapter aTBaseAdAdapter, b bVar) {
        if (k()) {
            return;
        }
        f();
        g();
        if (aTBaseAdAdapter != null) {
            n.a().b(new Runnable() { // from class: com.anythink.core.common.p.e.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        ATBaseAdAdapter aTBaseAdAdapter2 = aTBaseAdAdapter;
                        if (aTBaseAdAdapter2 != null) {
                            aTBaseAdAdapter2.internalDestory();
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            });
        }
        this.g = null;
        this.p = Boolean.FALSE;
        boolean z = this.j;
        if (z) {
            this.d.r = 2;
        } else if (this.i) {
            this.d.r = 1;
        }
        if (!z) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            com.anythink.core.common.c.a().a(this.e, jCurrentTimeMillis);
            com.anythink.core.common.c.a().a(this.e, jCurrentTimeMillis, bVar.b);
        }
        bVar.d = this.d;
        bVar.e = this.c;
        c cVar = this.h;
        if (cVar != null) {
            cVar.a(this.r, aTBaseAdAdapter, bVar);
        }
    }

    public final void a(c cVar) {
        this.h = cVar;
    }

    public final void a(d dVar) {
        this.o = dVar;
        this.b = dVar.d;
        this.d = dVar.h;
        this.f = dVar.g;
    }

    public final synchronized void b() {
        if (k()) {
            return;
        }
        this.p = Boolean.FALSE;
        this.j = true;
        b bVar = new b();
        bVar.a = 0;
        bVar.c = SystemClock.elapsedRealtime() - this.k;
        bVar.b = ErrorCode.getErrorCode(ErrorCode.timeOutError, "", "");
        a(this.g, bVar);
    }

    public final Boolean c() {
        return this.p;
    }

    public final boolean d() {
        return (q() && this.i) ? false : true;
    }

    public final int e() {
        return this.q;
    }
}
