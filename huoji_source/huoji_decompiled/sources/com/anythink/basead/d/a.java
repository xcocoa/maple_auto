package com.anythink.basead.d;

import android.content.Context;
import android.view.View;
import com.anythink.basead.d.b;
import com.anythink.basead.ui.BaseBannerATView;
import com.anythink.basead.ui.MraidBannerATView;
import com.anythink.basead.ui.SdkBannerATView;
import com.anythink.core.common.f.m;
import com.anythink.expressad.out.TemplateBannerView;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    public BaseBannerATView a;
    private final String k;
    private com.anythink.expressad.out.h l;

    public a(Context context, b.EnumC0055b enumC0055b, m mVar) {
        super(context, enumC0055b, mVar);
        this.k = a.class.getSimpleName();
        this.l = new com.anythink.expressad.out.h() { // from class: com.anythink.basead.d.a.1
            @Override // com.anythink.expressad.out.h
            public final void a() {
            }

            @Override // com.anythink.expressad.out.h
            public final void a(final com.anythink.expressad.foundation.d.c cVar) {
                com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.d.a.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.a(cVar, "");
                    }
                }, 2, true);
            }

            @Override // com.anythink.expressad.out.h
            public final void a(String str) {
            }

            @Override // com.anythink.expressad.out.h
            public final void b() {
                com.anythink.basead.e.a aVar = a.this.h;
                if (aVar != null) {
                    aVar.onAdShow(new com.anythink.basead.e.i());
                }
            }

            @Override // com.anythink.expressad.out.h
            public final void c() {
            }

            @Override // com.anythink.expressad.out.h
            public final void d() {
            }

            @Override // com.anythink.expressad.out.h
            public final void e() {
            }

            @Override // com.anythink.expressad.out.h
            public final void f() {
                com.anythink.basead.e.a aVar = a.this.h;
                if (aVar != null) {
                    aVar.onAdClosed();
                }
                a.this.e();
            }
        };
    }

    public final View a() {
        com.anythink.core.common.a.i iVar = this.f;
        if ((iVar instanceof TemplateBannerView) && iVar != null) {
            ((TemplateBannerView) iVar).setBannerAdListener(this.l);
            return (TemplateBannerView) this.f;
        }
        if (this.a == null && super.c()) {
            this.a = this.e.k() ? new MraidBannerATView(this.b, this.c, this.e, this.h) : new SdkBannerATView(this.b, this.c, this.e, this.h);
        }
        return this.a;
    }

    @Override // com.anythink.basead.d.b
    public final void b() {
        super.b();
        com.anythink.core.common.a.i iVar = this.f;
        if (iVar instanceof TemplateBannerView) {
            ((TemplateBannerView) iVar).release();
        }
        BaseBannerATView baseBannerATView = this.a;
        if (baseBannerATView != null) {
            baseBannerATView.destroy();
        }
        this.f = null;
        this.h = null;
    }
}
