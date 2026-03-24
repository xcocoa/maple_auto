package com.anythink.core.common;

import android.content.Context;
import android.util.Log;
import com.anythink.core.api.ATSDK;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ax;
import com.anythink.core.common.f.ba;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    public String a;
    public String b;
    private List<com.anythink.core.common.b.a> e;
    private final String c = n.class.getSimpleName();
    private final Object d = new Object();
    private com.anythink.core.common.b.a f = new com.anythink.core.common.b.a() { // from class: com.anythink.core.common.n.1
        @Override // com.anythink.core.common.b.a
        public final void onAdLoadFail(AdError adError) {
            synchronized (n.this.d) {
                Iterator it = n.this.e.iterator();
                while (it.hasNext()) {
                    com.anythink.core.common.b.a aVar = (com.anythink.core.common.b.a) it.next();
                    if (aVar != null) {
                        n nVar = n.this;
                        com.anythink.core.common.o.p.a(nVar.a, String.valueOf(nVar.b), h.n.D, h.n.m, "returned no eligible ads from any mediated networks. [listener:" + aVar.toString() + "]");
                        aVar.onAdLoadFail(adError);
                        it.remove();
                    }
                }
            }
        }

        @Override // com.anythink.core.common.b.a
        public final void onAdLoaded() {
            synchronized (n.this.d) {
                if (n.this.e != null) {
                    Iterator it = n.this.e.iterator();
                    while (it.hasNext()) {
                        com.anythink.core.common.b.a aVar = (com.anythink.core.common.b.a) it.next();
                        if (aVar != null) {
                            n nVar = n.this;
                            com.anythink.core.common.o.p.a(nVar.a, String.valueOf(nVar.b), h.n.D, h.n.l, "[listener:" + aVar.toString() + "]");
                            aVar.onAdLoaded();
                            it.remove();
                        }
                    }
                }
            }
        }
    };

    private void a(int i, com.anythink.core.common.f.v vVar, ba baVar) {
        com.anythink.core.d.f fVarD;
        if (vVar == null || vVar.c()) {
            return;
        }
        boolean zP = baVar == null ? i == 3 : baVar.p();
        if (zP) {
            com.anythink.core.d.h hVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f());
            fVarD = hVarA.d(this.a);
            if (fVarD == null) {
                fVarD = hVarA.e(this.a);
            }
            StringBuilder sb = new StringBuilder("callbackLoaded::handleWFReload() >>> placementId: ");
            sb.append(this.a);
            sb.append(" localPlaceStrategyType: ");
            sb.append(fVarD == null ? "本地缓存策略为空" : Integer.valueOf(fVarD.aR()));
            sb.append("  isCanReloadWhenWFFinish: ");
            sb.append(fVarD == null ? null : Boolean.valueOf(fVarD.aU()));
            zP = fVarD != null && fVarD.aU();
        } else {
            fVarD = null;
        }
        StringBuilder sb2 = new StringBuilder("callbackLoaded::handleWFReload() >>> loadType: ");
        sb2.append(vVar.d);
        sb2.append(" isCanReload: ");
        sb2.append(zP);
        if (zP) {
            int i2 = fVarD.aL() ? 13 : 14;
            f fVarA = f.a(vVar.a(), this.a, this.b);
            com.anythink.core.common.f.v vVarB = vVar.b();
            vVarB.d = i2;
            vVarB.f = null;
            vVarB.e = null;
            fVarA.a(vVar.a(), this.b, this.a, vVarB, (com.anythink.core.common.b.a) null);
        }
    }

    private static void a(ba baVar) {
        if (baVar == null) {
            return;
        }
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(com.anythink.core.common.b.n.a().f()).b(com.anythink.core.common.b.n.a().o());
        if (aVarB == null || aVarB.I()) {
            String str = w.a;
            return;
        }
        com.anythink.core.common.l.d dVarB = aVarB.b();
        if (dVarB != null && dVarB.d() != 2) {
            String str2 = w.a;
        } else if (w.a().a(baVar.a())) {
            w.a().a(dVarB, baVar.a().l());
        }
    }

    private void a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    private boolean a(f fVar) {
        com.anythink.core.d.f fVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(this.a);
        return (fVarA == null || fVar == null || ATAdxSetting.getInstance().isAdxNetworkMode(this.a) || fVarA.h() != 1 || fVar.c() >= fVarA.i()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.anythink.core.d.f] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.anythink.core.common.b.b, com.anythink.core.common.n] */
    /* JADX WARN: Type inference failed for: r6v5 */
    public final void a(int i, com.anythink.core.common.f.v vVar, ba baVar, int i2) {
        ?? r6;
        int i3;
        ?? r13;
        com.anythink.core.common.j.d dVar;
        com.anythink.core.d.f fVarA;
        ax axVar;
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append("::requestId::");
        sb.append(vVar.a);
        sb.append("::callbackLoaded::loadType::");
        sb.append(vVar.d);
        sb.append("::callbackType::");
        sb.append(i);
        sb.append("::");
        sb.append(baVar != null ? baVar.toString() : "");
        f fVarA2 = u.a().a(this.a, String.valueOf(this.b));
        if (baVar != null && i2 != 10 && (fVarA = baVar.a()) != null) {
            if (fVarA.h() != 1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.a);
                sb2.append("::requestId::");
                sb2.append(vVar.a);
                sb2.append("::callbackLoaded::loadType::");
                sb2.append(vVar.d);
                sb2.append("::updateUpStatus::callbackType::");
                sb2.append(i);
                sb2.append("::");
                sb2.append(baVar.toString());
                if (fVarA2 != null) {
                    axVar = new ax(System.currentTimeMillis(), baVar.n());
                    fVarA2.a(axVar, fVarA);
                }
            } else if (i == 1) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(this.a);
                sb3.append("::requestId::");
                sb3.append(vVar.a);
                sb3.append("::callbackLoaded::loadType::");
                sb3.append(vVar.d);
                sb3.append("::updateUpStatus::callbackType::");
                sb3.append(i);
                sb3.append("::");
                sb3.append(baVar.toString());
                if (fVarA2 != null) {
                    axVar = new ax(System.currentTimeMillis(), baVar.n());
                    fVarA2.a(axVar, fVarA);
                }
            }
        }
        if (fVarA2 != null) {
            fVarA2.d();
        }
        com.anythink.core.d.f fVarA3 = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f()).a(this.a);
        boolean z = (fVarA3 == null || fVarA2 == null || ATAdxSetting.getInstance().isAdxNetworkMode(this.a) || fVarA3.h() != 1 || fVarA2.c() >= fVarA3.i()) ? false : true;
        this.f.onAdLoaded();
        if (vVar.d == 9 || i == 3 || !z || fVarA2 == null) {
            r6 = 0;
            i3 = 3;
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.a);
            sb4.append("::requestId::");
            sb4.append(vVar.a);
            sb4.append("::callbackLoaded::loadType::");
            sb4.append(vVar.d);
            sb4.append("::StartToFilledToLoad::callbackType::");
            sb4.append(i);
            sb4.append("::");
            sb4.append(baVar.toString());
            com.anythink.core.common.f.v vVarB = vVar.b();
            vVarB.d = 9;
            vVarB.f = null;
            vVarB.e = null;
            r6 = 0;
            i3 = 3;
            fVarA2.a(com.anythink.core.common.b.n.a().f(), this.b, this.a, vVarB, (com.anythink.core.common.b.a) null);
        }
        if (i == 1 && fVarA2 != null && (dVar = fVarA2.k) != null) {
            dVar.b();
        }
        if (vVar != null && !vVar.c()) {
            boolean zP = baVar == null ? i == i3 : baVar.p();
            if (zP) {
                com.anythink.core.d.h hVarA = com.anythink.core.d.h.a(com.anythink.core.common.b.n.a().f());
                com.anythink.core.d.f fVarD = hVarA.d(this.a);
                com.anythink.core.d.f fVarE = fVarD == null ? hVarA.e(this.a) : fVarD;
                ?? sb5 = new StringBuilder("callbackLoaded::handleWFReload() >>> placementId: ");
                sb5.append(this.a);
                sb5.append(" localPlaceStrategyType: ");
                sb5.append(fVarE == null ? "本地缓存策略为空" : Integer.valueOf(fVarE.aR()));
                sb5.append("  isCanReloadWhenWFFinish: ");
                sb5.append(fVarE == null ? r6 : Boolean.valueOf(fVarE.aU()));
                zP = fVarE != null && fVarE.aU();
                r13 = fVarE;
            } else {
                r13 = r6;
            }
            StringBuilder sb6 = new StringBuilder("callbackLoaded::handleWFReload() >>> loadType: ");
            sb6.append(vVar.d);
            sb6.append(" isCanReload: ");
            sb6.append(zP);
            if (zP) {
                int i4 = r13.aL() ? 13 : 14;
                f fVarA4 = f.a(vVar.a(), this.a, this.b);
                com.anythink.core.common.f.v vVarB2 = vVar.b();
                vVarB2.d = i4;
                vVarB2.f = r6;
                vVarB2.e = r6;
                fVarA4.a(vVar.a(), this.b, this.a, vVarB2, (com.anythink.core.common.b.a) null);
            }
        }
        a(baVar);
    }

    public final void a(int i, final com.anythink.core.common.f.v vVar, ba baVar, AdError adError) {
        final f fVarA = u.a().a(this.a, String.valueOf(this.b));
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append("::requestId::");
        sb.append(vVar.a);
        sb.append("::callbackLoadFail::loadType::");
        sb.append(vVar.d);
        sb.append("::callbackFailType::");
        sb.append(i);
        sb.append("::");
        sb.append(baVar != null ? baVar.toString() : "");
        if (baVar == null || i != 2 || !baVar.b()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.a);
            sb2.append("::requestId::");
            sb2.append(vVar.a);
            sb2.append("::callbackLoadFail::loadType::");
            sb2.append(vVar.d);
            sb2.append("::noReTry::callbackFailType::");
            sb2.append(i);
            sb2.append("::");
            sb2.append(baVar != null ? baVar.toString() : "");
            if (i != 3 && fVarA != null) {
                fVarA.e();
            }
            this.f.onAdLoadFail(adError);
        } else if (fVarA != null && !u.a().e(this.a)) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.a);
            sb3.append("::requestId::");
            sb3.append(vVar.a);
            sb3.append("::callbackLoadFail::loadType::");
            sb3.append(vVar.d);
            sb3.append("::delayToStartRetryLoad::callbackFailType::");
            sb3.append(i);
            sb3.append("::");
            sb3.append(baVar != null ? baVar.toString() : "");
            com.anythink.core.common.b.n.a();
            com.anythink.core.common.b.n.b(new Runnable() { // from class: com.anythink.core.common.n.2
                @Override // java.lang.Runnable
                public final void run() {
                    com.anythink.core.common.f.v vVarB = vVar.b();
                    vVarB.d = 8;
                    vVarB.f = null;
                    vVarB.e = null;
                    f fVar = fVarA;
                    Context contextF = com.anythink.core.common.b.n.a().f();
                    n nVar = n.this;
                    fVar.a(contextF, nVar.b, nVar.a, vVarB, (com.anythink.core.common.b.a) null);
                }
            }, baVar.c());
        }
        if (fVarA != null) {
            fVarA.a(adError);
        }
        if (i != 2 && ATSDK.isNetworkLogDebug()) {
            Log.e("anythink", "ad load failed: " + this.a + ", " + adError.printStackTrace());
        }
        a(baVar);
    }

    public final void a(com.anythink.core.common.b.a aVar) {
        synchronized (this.d) {
            if (this.e == null) {
                this.e = new ArrayList();
            }
            if (aVar == null) {
                return;
            }
            boolean z = false;
            Iterator<com.anythink.core.common.b.a> it = this.e.iterator();
            while (it.hasNext()) {
                if (it.next() == aVar) {
                    z = true;
                }
            }
            if (!z) {
                this.e.add(aVar);
            }
        }
    }

    public final void b(com.anythink.core.common.b.a aVar) {
        synchronized (this.d) {
            List<com.anythink.core.common.b.a> list = this.e;
            if (list == null) {
                return;
            }
            list.remove(aVar);
        }
    }
}
