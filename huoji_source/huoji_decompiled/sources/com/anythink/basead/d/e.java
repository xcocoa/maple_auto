package com.anythink.basead.d;

import android.content.Context;
import com.anythink.basead.d.b;
import com.anythink.core.common.f.m;

/* JADX INFO: loaded from: classes.dex */
public final class e extends b {
    public boolean a;

    public e(Context context, b.EnumC0055b enumC0055b, m mVar, boolean z) {
        super(context, enumC0055b, mVar);
        this.a = z;
    }

    public final h a() {
        return new h(this.b, this.e, this.c, this.f, this.a);
    }

    public final void a(final com.anythink.basead.e.d dVar) {
        super.a(new com.anythink.basead.e.c() { // from class: com.anythink.basead.d.e.1
            @Override // com.anythink.basead.e.c
            public final void onAdCacheLoaded() {
                h hVarA = e.this.a();
                com.anythink.basead.e.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.onNativeAdLoaded(hVarA);
                }
            }

            @Override // com.anythink.basead.e.c
            public final void onAdDataLoaded() {
            }

            @Override // com.anythink.basead.e.c
            public final void onAdLoadFailed(com.anythink.basead.c.e eVar) {
                com.anythink.basead.e.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.onNativeAdLoadError(eVar);
                }
            }
        });
    }
}
