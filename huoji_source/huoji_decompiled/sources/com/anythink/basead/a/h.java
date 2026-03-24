package com.anythink.basead.a;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;

/* JADX INFO: loaded from: classes.dex */
public final class h implements com.anythink.core.common.g.b {
    public com.anythink.core.common.m.c a;
    public Context b = n.a().f();

    @Override // com.anythink.core.common.g.b
    public final void a(final l lVar, final String str, final String str2, boolean z) {
        if (z) {
            a.a(this.b, lVar);
            return;
        }
        com.anythink.core.common.f.n nVarO = lVar.o();
        if (nVarO == null) {
            return;
        }
        int iL = nVarO.L();
        int iM = nVarO.M();
        if (iL != 1) {
            if (iL != 3) {
                return;
            }
            com.anythink.core.common.b.a().a("1", new com.anythink.basead.c.g(lVar, str2, str));
        } else {
            final com.anythink.basead.a aVar = new com.anythink.basead.a() { // from class: com.anythink.basead.a.h.1
                @Override // com.anythink.basead.a, android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityPaused(Activity activity) {
                    super.onActivityPaused(activity);
                    com.anythink.core.common.m.c cVar = h.this.a;
                    if (cVar != null) {
                        cVar.b();
                    }
                }

                @Override // com.anythink.basead.a, android.app.Application.ActivityLifecycleCallbacks
                public final void onActivityResumed(Activity activity) {
                    super.onActivityResumed(activity);
                    com.anythink.core.common.m.c cVar = h.this.a;
                    if (cVar != null) {
                        cVar.a();
                    }
                }
            };
            this.a = new com.anythink.core.common.m.c(iM, new Runnable() { // from class: com.anythink.basead.a.h.2
                @Override // java.lang.Runnable
                public final void run() {
                    ((Application) h.this.b).unregisterActivityLifecycleCallbacks(aVar);
                    if (a.a(h.this.b, lVar)) {
                        com.anythink.core.common.n.e.a(str, lVar.t(), str2, 6, (String) null, 0L, 0L);
                    }
                }
            });
            try {
                ((Application) this.b).registerActivityLifecycleCallbacks(aVar);
            } catch (Exception unused) {
                com.anythink.core.common.n.e.a("Error", "Error, cannot registerActivityLifecycleCallbacks here!", n.a().q());
            }
        }
    }
}
