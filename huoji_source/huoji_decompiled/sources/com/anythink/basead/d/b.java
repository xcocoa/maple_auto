package com.anythink.basead.d;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.a.b;
import com.anythink.basead.d.a.a;
import com.anythink.basead.d.b.a;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ai;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.ak;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    private EnumC0055b a;
    public Context b;
    public m c;
    public c d;
    public aj e;
    public com.anythink.core.common.a.i f;
    public com.anythink.basead.a.b g;
    public com.anythink.basead.e.a h;
    public ConcurrentHashMap<String, com.anythink.basead.a.b> i;
    public String j;
    private boolean k = false;
    private Map<String, Object> l;

    /* JADX INFO: renamed from: com.anythink.basead.d.b$2, reason: invalid class name */
    public class AnonymousClass2 implements a.InterfaceC0053a {
        public final /* synthetic */ String a;
        public final /* synthetic */ com.anythink.basead.e.c b;

        public AnonymousClass2(String str, com.anythink.basead.e.c cVar) {
            this.a = str;
            this.b = cVar;
        }

        @Override // com.anythink.basead.d.a.a.InterfaceC0053a
        public final void a(com.anythink.core.common.a.i iVar) {
        }

        @Override // com.anythink.basead.d.a.a.InterfaceC0053a
        public final void a(j jVar) {
            com.anythink.core.common.n.b bVarA = com.anythink.core.common.n.b.a();
            String str = this.a;
            long jCurrentTimeMillis = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder("recordOfferDataEndTime, ");
            sb.append(str);
            sb.append(", timeStamp: ");
            sb.append(jCurrentTimeMillis);
            bVarA.a(str).c = jCurrentTimeMillis;
            b.this.a(jVar);
            com.anythink.basead.e.c cVar = this.b;
            if (cVar != null) {
                cVar.onAdDataLoaded();
            }
        }

        @Override // com.anythink.basead.d.a.a.InterfaceC0053a
        public final void a(j jVar, com.anythink.basead.c.e eVar) {
            com.anythink.core.common.n.b.a().a(this.a, System.currentTimeMillis());
            String str = "0";
            if (!TextUtils.equals(String.valueOf(b.this.c.j), "0")) {
                str = "";
            } else if (b.this.c.o) {
                str = "1";
            }
            com.anythink.core.common.n.e.a(jVar, b.this.c, str, com.anythink.core.common.n.b.a().a(this.a), false);
            com.anythink.core.common.n.b.a().b(this.a);
            b.a(b.this, jVar, eVar, this.b, true);
        }

        @Override // com.anythink.basead.d.a.a.InterfaceC0053a
        public final void a(j jVar, com.anythink.core.common.a.i iVar) {
            b bVar = b.this;
            bVar.e = jVar;
            b.a(bVar, iVar);
            com.anythink.basead.a.a.a(33, jVar, new com.anythink.basead.c.i(b.this.c.d, ""));
            com.anythink.core.common.n.b.a().a(this.a, System.currentTimeMillis());
            com.anythink.core.common.n.e.a(jVar, b.this.c, TextUtils.equals(String.valueOf(b.this.c.j), "0") ? (b.this.c.o || iVar != null) ? "1" : "0" : "", com.anythink.core.common.n.b.a().a(this.a), true);
            com.anythink.core.common.n.b.a().b(this.a);
            b.a(b.this);
            com.anythink.basead.e.c cVar = this.b;
            if (cVar != null) {
                cVar.onAdCacheLoaded();
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.b$3, reason: invalid class name */
    public class AnonymousClass3 implements b.InterfaceC0048b {
        public AnonymousClass3() {
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void a() {
            com.anythink.basead.e.a aVar = b.this.h;
            if (aVar != null) {
                aVar.onAdClick(new com.anythink.basead.e.i().a(1, 13));
            }
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void a(boolean z) {
            com.anythink.basead.e.a aVar = b.this.h;
            if (aVar != null) {
                aVar.onDeeplinkCallback(z);
            }
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
            return false;
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void b() {
        }

        @Override // com.anythink.basead.a.b.InterfaceC0048b
        public final void c() {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.b$4, reason: invalid class name */
    public class AnonymousClass4 implements a.InterfaceC0056a {
        public final /* synthetic */ com.anythink.basead.e.c a;

        public AnonymousClass4(com.anythink.basead.e.c cVar) {
            this.a = cVar;
        }

        @Override // com.anythink.basead.d.b.a.InterfaceC0056a
        public final void a() {
            com.anythink.basead.e.c cVar = this.a;
            if (cVar != null) {
                cVar.onAdDataLoaded();
            }
        }

        @Override // com.anythink.basead.d.b.a.InterfaceC0056a
        public final void a(ai aiVar) {
            b bVar = b.this;
            bVar.e = aiVar;
            com.anythink.basead.a.a.a(33, b.this.e, new com.anythink.basead.c.i(bVar.c.d, ""));
            b.a(b.this);
            com.anythink.basead.e.c cVar = this.a;
            if (cVar != null) {
                cVar.onAdCacheLoaded();
            }
        }

        @Override // com.anythink.basead.d.b.a.InterfaceC0056a
        public final void a(ai aiVar, com.anythink.basead.c.e eVar) {
            b.a(b.this, aiVar, eVar, this.a, false);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.b$6, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass6 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC0055b.values().length];
            a = iArr;
            try {
                iArr[EnumC0055b.ADX_OFFER_REQUEST_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EnumC0055b.ONLINE_API_OFFER_REQUEST_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public interface a {
        void onAdCacheLoaded();
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.b$b, reason: collision with other inner class name */
    public enum EnumC0055b {
        ADX_OFFER_REQUEST_TYPE,
        ONLINE_API_OFFER_REQUEST_TYPE
    }

    public b(Context context, EnumC0055b enumC0055b, m mVar) {
        this.b = context.getApplicationContext();
        this.a = enumC0055b;
        this.c = mVar;
    }

    public static /* synthetic */ void a(b bVar, com.anythink.core.common.a.i iVar) {
        bVar.f = iVar;
        com.anythink.basead.a.b bVar2 = new com.anythink.basead.a.b(bVar.b, bVar.c, bVar.e);
        bVar.g = bVar2;
        bVar2.a(bVar.new AnonymousClass3());
    }

    public static /* synthetic */ void a(b bVar, l lVar, com.anythink.basead.c.e eVar, com.anythink.basead.e.c cVar, boolean z) {
        if (lVar != null) {
            com.anythink.basead.a.a.a(34, lVar, new com.anythink.basead.c.i(bVar.c.d, ""));
        }
        if (lVar instanceof ai) {
            com.anythink.core.basead.b.a();
            Context contextF = n.a().f();
            com.anythink.core.basead.b.a();
            com.anythink.core.basead.b.b(contextF, com.anythink.core.basead.b.a(bVar.c));
        }
        if (z) {
            try {
                com.anythink.core.common.a.a.a().b(n.a().f(), bVar.c.a);
            } catch (Throwable unused) {
            }
        }
        if (cVar != null) {
            cVar.onAdLoadFailed(eVar);
        }
    }

    private void a(com.anythink.core.common.a.i iVar) {
        this.f = iVar;
        com.anythink.basead.a.b bVar = new com.anythink.basead.a.b(this.b, this.c, this.e);
        this.g = bVar;
        bVar.a(new AnonymousClass3());
    }

    private void a(l lVar, com.anythink.basead.c.e eVar, com.anythink.basead.e.c cVar, boolean z) {
        if (lVar != null) {
            com.anythink.basead.a.a.a(34, lVar, new com.anythink.basead.c.i(this.c.d, ""));
        }
        if (lVar instanceof ai) {
            com.anythink.core.basead.b.a();
            Context contextF = n.a().f();
            com.anythink.core.basead.b.a();
            com.anythink.core.basead.b.b(contextF, com.anythink.core.basead.b.a(this.c));
        }
        if (z) {
            try {
                com.anythink.core.common.a.a.a().b(n.a().f(), this.c.a);
            } catch (Throwable unused) {
            }
        }
        if (cVar != null) {
            cVar.onAdLoadFailed(eVar);
        }
    }

    public static /* synthetic */ boolean a(b bVar) {
        bVar.k = true;
        return true;
    }

    private void b(com.anythink.basead.e.c cVar) {
        try {
            m mVar = this.c;
            if (mVar != null && !TextUtils.isEmpty(mVar.b) && !TextUtils.isEmpty(this.c.a)) {
                com.anythink.core.common.n.b.a();
                String strA = com.anythink.core.common.n.b.a(this.c);
                com.anythink.core.common.n.b bVarA = com.anythink.core.common.n.b.a();
                long jCurrentTimeMillis = System.currentTimeMillis();
                StringBuilder sb = new StringBuilder("recordOfferLoadStartTime, ");
                sb.append(strA);
                sb.append(", timeStamp: ");
                sb.append(jCurrentTimeMillis);
                bVarA.a(strA).a = jCurrentTimeMillis;
                com.anythink.basead.d.a.a.a(this.b).a(this.c, new AnonymousClass2(strA, cVar));
                return;
            }
            if (cVar != null) {
                cVar.onAdLoadFailed(com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, com.anythink.basead.c.f.w));
            }
        } catch (Throwable th) {
            th.printStackTrace();
            if (cVar != null) {
                cVar.onAdLoadFailed(com.anythink.basead.c.f.a("-9999", th.getMessage()));
            }
        }
    }

    private void c(com.anythink.basead.e.c cVar) {
        try {
            com.anythink.basead.d.b.a.a(this.b).a(this.c, this.j, new AnonymousClass4(cVar));
        } catch (Throwable th) {
            th.printStackTrace();
            if (cVar != null) {
                cVar.onAdLoadFailed(com.anythink.basead.c.f.a("-9999", th.getMessage()));
            }
        }
    }

    public final String a(aj ajVar) {
        return this.c.b + this.c.c + this.c.f + ajVar.t() + System.currentTimeMillis();
    }

    public final void a(final a aVar) {
        if (AnonymousClass6.a[this.a.ordinal()] != 1) {
            return;
        }
        if (c()) {
            if (aVar != null) {
                aVar.onAdCacheLoaded();
            }
        } else if (this.c != null) {
            com.anythink.basead.d.a.a.a(this.b).a(this.e, this.c, new a.InterfaceC0053a() { // from class: com.anythink.basead.d.b.1
                @Override // com.anythink.basead.d.a.a.InterfaceC0053a
                public final void a(com.anythink.core.common.a.i iVar) {
                    b.a(b.this, iVar);
                }

                @Override // com.anythink.basead.d.a.a.InterfaceC0053a
                public final void a(j jVar) {
                }

                @Override // com.anythink.basead.d.a.a.InterfaceC0053a
                public final void a(j jVar, com.anythink.basead.c.e eVar) {
                }

                @Override // com.anythink.basead.d.a.a.InterfaceC0053a
                public final void a(j jVar, com.anythink.core.common.a.i iVar) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.onAdCacheLoaded();
                    }
                }
            });
        }
    }

    public final void a(c cVar) {
        this.d = cVar;
        m mVar = this.c;
        com.anythink.core.common.f.n nVar = mVar.n;
        if (nVar instanceof ak) {
            ak akVar = (ak) nVar;
            boolean z = mVar.f == 66;
            if (akVar == null || cVar == null) {
                return;
            }
            akVar.x(cVar.a());
            if (!z) {
                akVar.y(cVar.b());
            }
            akVar.e(cVar.d());
            akVar.r(cVar.c());
            akVar.q(cVar.e());
            akVar.b(cVar.f());
            akVar.p(cVar.g());
            akVar.c(cVar.h());
            akVar.d(cVar.i());
            akVar.f(cVar.j());
        }
    }

    public final void a(com.anythink.basead.e.a aVar) {
        this.h = aVar;
    }

    public final void a(com.anythink.basead.e.c cVar) {
        int i = AnonymousClass6.a[this.a.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            try {
                com.anythink.basead.d.b.a.a(this.b).a(this.c, this.j, new AnonymousClass4(cVar));
                return;
            } catch (Throwable th) {
                th.printStackTrace();
                cVar.onAdLoadFailed(com.anythink.basead.c.f.a("-9999", th.getMessage()));
                return;
            }
        }
        try {
            m mVar = this.c;
            if (mVar != null && !TextUtils.isEmpty(mVar.b) && !TextUtils.isEmpty(this.c.a)) {
                com.anythink.core.common.n.b.a();
                String strA = com.anythink.core.common.n.b.a(this.c);
                com.anythink.core.common.n.b bVarA = com.anythink.core.common.n.b.a();
                long jCurrentTimeMillis = System.currentTimeMillis();
                StringBuilder sb = new StringBuilder("recordOfferLoadStartTime, ");
                sb.append(strA);
                sb.append(", timeStamp: ");
                sb.append(jCurrentTimeMillis);
                bVarA.a(strA).a = jCurrentTimeMillis;
                com.anythink.basead.d.a.a.a(this.b).a(this.c, new AnonymousClass2(strA, cVar));
                return;
            }
            cVar.onAdLoadFailed(com.anythink.basead.c.f.a(com.anythink.basead.c.f.i, com.anythink.basead.c.f.w));
        } catch (Throwable th2) {
            th2.printStackTrace();
            cVar.onAdLoadFailed(com.anythink.basead.c.f.a("-9999", th2.getMessage()));
        }
    }

    public final void a(j jVar) {
        if (jVar.c() == 1) {
            com.anythink.core.common.a.d.a().b();
            if (com.anythink.core.common.o.i.a(this.b, jVar.F())) {
                StringBuilder sb = new StringBuilder("check offer installed(onAdDataLoaded):ture,dsp offerid:");
                sb.append(jVar.ae());
                sb.append(",packagename:");
                sb.append(jVar.F());
                com.anythink.core.common.a.d.a().c(jVar);
                return;
            }
            StringBuilder sb2 = new StringBuilder("check offer installed(onAdDataLoaded):false,need record show,dsp offerid:");
            sb2.append(jVar.ae());
            sb2.append(",packagename:");
            sb2.append(jVar.F());
            com.anythink.core.common.a.d.a().a(jVar);
        }
    }

    public final synchronized void a(com.anythink.expressad.foundation.d.c cVar, String str) {
        try {
            if (this.g == null) {
                return;
            }
            if (this.i == null) {
                this.i = new ConcurrentHashMap<>(2);
            }
            com.anythink.basead.a.b bVarA = this.i.get(cVar.aZ());
            if (bVarA == null) {
                bVarA = com.anythink.basead.d.a.b.a(this.g, cVar);
                this.i.put(cVar.aZ(), bVarA);
            }
            if (bVarA != null) {
                com.anythink.basead.c.i iVar = new com.anythink.basead.c.i(this.c.d, str);
                iVar.g = new com.anythink.basead.c.a();
                bVarA.a(new b.InterfaceC0048b() { // from class: com.anythink.basead.d.b.5
                    @Override // com.anythink.basead.a.b.InterfaceC0048b
                    public final void a() {
                        com.anythink.basead.e.a aVar = b.this.h;
                        if (aVar != null) {
                            aVar.onAdClick(new com.anythink.basead.e.i().a(1, 13));
                        }
                    }

                    @Override // com.anythink.basead.a.b.InterfaceC0048b
                    public final void a(boolean z) {
                        com.anythink.basead.e.a aVar = b.this.h;
                        if (aVar != null) {
                            aVar.onDeeplinkCallback(z);
                        }
                    }

                    @Override // com.anythink.basead.a.b.InterfaceC0048b
                    public final boolean a(String str2, IOfferClickHandler iOfferClickHandler) {
                        return false;
                    }

                    @Override // com.anythink.basead.a.b.InterfaceC0048b
                    public final void b() {
                    }

                    @Override // com.anythink.basead.a.b.InterfaceC0048b
                    public final void c() {
                    }
                });
                bVarA.a(iVar);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(String str) {
        this.j = str;
    }

    public final void a(Map<String, Object> map) {
        this.l = map;
    }

    public void b() {
        this.e = null;
    }

    public final boolean c() {
        aj ajVar;
        int i = AnonymousClass6.a[this.a.ordinal()];
        if (i != 1) {
            if (i != 2 || (ajVar = this.e) == null || !(ajVar instanceof ai) || ajVar.Y()) {
                return false;
            }
            if (this.k) {
                return true;
            }
            if (com.anythink.basead.a.b.c.a(this.e, this.c)) {
                this.k = true;
                return true;
            }
            return false;
        }
        if (this.e == null) {
            this.e = com.anythink.basead.d.a.a.a(this.b).a(this.c);
        }
        aj ajVar2 = this.e;
        if (ajVar2 == null || ajVar2.Y()) {
            return false;
        }
        aj ajVar3 = this.e;
        if ((ajVar3 instanceof j) && !TextUtils.isEmpty(((j) ajVar3).a())) {
            com.anythink.core.common.a.i iVar = this.f;
            if (iVar != null) {
                return iVar.isReady();
            }
            return false;
        }
        if (this.k) {
            return true;
        }
        if (!com.anythink.basead.a.b.c.a(this.e, this.c)) {
            return false;
        }
        this.k = true;
        return true;
    }

    public final void d() {
        a((a) null);
    }

    public final synchronized void e() {
        com.anythink.basead.a.b bVar = this.g;
        if (bVar != null) {
            bVar.d();
            this.g = null;
        }
        ConcurrentHashMap<String, com.anythink.basead.a.b> concurrentHashMap = this.i;
        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
            Iterator<Map.Entry<String, com.anythink.basead.a.b>> it = this.i.entrySet().iterator();
            while (it.hasNext()) {
                com.anythink.basead.a.b value = it.next().getValue();
                if (value != null) {
                    value.d();
                    it.remove();
                }
            }
        }
    }

    public final l f() {
        return this.e;
    }

    public final Map<String, Object> g() {
        return this.l;
    }
}
