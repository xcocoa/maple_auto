package com.anythink.core.common.a;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.aw;
import com.anythink.core.common.f.q;
import com.anythink.core.common.o.v;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static volatile c b;
    private final String a = getClass().getSimpleName();
    private Map<String, a> c = new ConcurrentHashMap();

    public class a {
        private av b;
        private ATBaseAdAdapter c;
        private BaseAd d;
        private com.anythink.core.common.f.b e;
        private String f;
        private com.anythink.core.common.f.h g;

        public a() {
        }

        private void a(ATBaseAdAdapter aTBaseAdAdapter) {
            this.c = aTBaseAdAdapter;
        }

        private void a(BaseAd baseAd) {
            this.d = baseAd;
        }

        private void a(av avVar) {
            this.b = avVar;
        }

        private void a(com.anythink.core.common.f.b bVar) {
            this.e = bVar;
        }

        public final synchronized com.anythink.core.common.f.b a() {
            boolean zInternalIsAdReady;
            String unused = c.this.a;
            StringBuilder sb = new StringBuilder("AdxDefaultInternal generateAdxAdCacheInfo has release:");
            sb.append(this.c == null);
            sb.append(",initTrackingInfo:");
            sb.append(this.g != null);
            if (this.c == null) {
                return null;
            }
            com.anythink.core.common.f.h hVar = this.g;
            if (hVar == null) {
                return null;
            }
            if (this.e != null) {
                String unused2 = c.this.a;
                return this.e;
            }
            this.d = null;
            hVar.E(12);
            if (TextUtils.equals(this.g.aj(), "0")) {
                BaseAd baseAdObject = this.c.getBaseAdObject(n.a().f());
                this.d = baseAdObject;
                zInternalIsAdReady = baseAdObject != null;
            } else {
                zInternalIsAdReady = this.c.internalIsAdReady();
            }
            String unused3 = c.this.a;
            if (zInternalIsAdReady) {
                v.a(this.c, this.g, this.b);
                BaseAd baseAd = this.d;
                if (baseAd != null) {
                    baseAd.setTrackingInfo(this.c.getTrackingInfo().V());
                }
                this.b.M().b(this.f);
                com.anythink.core.b.d.b.a(this.c, this.b, this.g, this.d);
                com.anythink.core.common.f.b bVar = new com.anythink.core.common.f.b();
                this.e = bVar;
                bVar.a(this.c);
                this.e.c(System.currentTimeMillis());
                this.e.b(this.b.q());
                this.e.a(this.b.B());
                this.e.a("3");
                BaseAd baseAd2 = this.d;
                if (baseAd2 != null) {
                    this.e.a(baseAd2);
                }
            }
            return this.e;
        }

        public final synchronized void a(String str, com.anythink.core.common.f.h hVar) {
            String unused = c.this.a;
            this.f = str;
            this.g = hVar;
        }

        public final synchronized void b() {
            String unused = c.this.a;
            StringBuilder sb = new StringBuilder("AdxDefaultInternal generateAdxAdCacheInfo has release:");
            boolean z = true;
            sb.append(this.c == null);
            sb.append(",initTrackingInfo:");
            if (this.g == null) {
                z = false;
            }
            sb.append(z);
            a();
        }

        public final synchronized void c() {
            String unused = c.this.a;
            this.c = null;
            this.d = null;
            this.e = null;
        }

        public final synchronized double d() {
            return com.anythink.core.common.o.h.a(this.b);
        }

        public final av e() {
            return this.b;
        }

        public final com.anythink.core.common.f.b f() {
            return this.e;
        }
    }

    private c() {
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c();
                }
            }
        }
        return b;
    }

    public final a a(Context context, String str, String str2, av avVar, com.anythink.core.d.f fVar, Map<String, Object> map) {
        if (TextUtils.isEmpty(str) || avVar == null) {
            return null;
        }
        aw awVarA = com.anythink.core.common.a.a().a(str, avVar);
        if (awVarA != null && awVarA.a((q) null).b() != null) {
            return null;
        }
        a aVar = this.c.get(str);
        if (aVar != null && aVar.c != null) {
            return aVar;
        }
        q qVarA = com.anythink.core.b.f.a().a(str, avVar);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" getAdDefaultCacheInfo requestId:");
        sb.append(str2);
        sb.append(",bidresult can use:");
        sb.append((qVarA == null || qVarA.a()) ? false : true);
        if (qVarA != null && !qVarA.a()) {
            avVar.a(qVarA, 0, 2, 1);
            ATBaseAdAdapter aTBaseAdAdapterA = com.anythink.core.common.o.j.a(avVar);
            if (aTBaseAdAdapterA == null) {
                return null;
            }
            boolean zInternalInitNetworkObjectByPlacementId = aTBaseAdAdapterA.internalInitNetworkObjectByPlacementId(context, fVar.a(str, str2, avVar), map);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(" getAdDefaultCacheInfo Adapter initSuccess:");
            sb2.append(zInternalInitNetworkObjectByPlacementId);
            if (zInternalInitNetworkObjectByPlacementId) {
                a aVar2 = new a();
                aVar2.c = aTBaseAdAdapterA;
                aVar2.b = avVar;
                this.c.put(str, aVar2);
                return aVar2;
            }
        }
        return null;
    }

    public final com.anythink.core.common.f.b a(String str) {
        a aVar;
        if (TextUtils.isEmpty(str) || (aVar = this.c.get(str)) == null || aVar.c == null || aVar.e == null || !aVar.e.j()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" getValidAdxDefaultCacheInfo return none");
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("getValidAdxDefaultCacheInfo return cache,price:");
        sb2.append(aVar.d());
        return aVar.e;
    }

    public final void a(String str, String str2) {
        a aVar;
        if (TextUtils.isEmpty(str) || (aVar = this.c.get(str)) == null || aVar.b == null || !aVar.b.u().equals(str2)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(") tempAdxDefaultCacheInfo.release");
        aVar.c();
    }
}
