package com.anythink.basead.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.basead.d.b;
import com.anythink.basead.ui.AsseblemSplashATView;
import com.anythink.basead.ui.BaseSdkSplashATView;
import com.anythink.basead.ui.BaseSplashATView;
import com.anythink.basead.ui.MraidSplashATView;
import com.anythink.basead.ui.SinglePictureSplashATView;
import com.anythink.core.common.a.b;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.x;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class g extends b {
    private static final String l = "g";
    public BaseSplashATView a;
    public boolean k;
    private final Map<String, Object> m;

    /* JADX INFO: renamed from: com.anythink.basead.d.g$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ ViewGroup a;

        public AnonymousClass1(ViewGroup viewGroup) {
            this.a = viewGroup;
        }

        @Override // java.lang.Runnable
        public final void run() {
            g gVar;
            BaseSplashATView asseblemSplashATView;
            g gVar2 = g.this;
            com.anythink.core.common.a.i iVar = gVar2.f;
            if (iVar instanceof com.anythink.expressad.splash.d.c) {
                final boolean[] zArr = {false};
                ((com.anythink.expressad.splash.d.c) iVar).a(new com.anythink.expressad.out.e() { // from class: com.anythink.basead.d.g.1.1
                    @Override // com.anythink.expressad.out.e
                    public final void a() {
                        com.anythink.basead.e.a aVar = g.this.h;
                        if (aVar != null) {
                            aVar.onAdShow(new com.anythink.basead.e.i());
                        }
                    }

                    @Override // com.anythink.expressad.out.e
                    public final void a(int i) {
                        zArr[0] = true;
                        g.this.m.put(b.C0083b.a, Integer.valueOf(i));
                        com.anythink.basead.e.a aVar = g.this.h;
                        if (aVar != null) {
                            aVar.onAdClosed();
                        }
                        g.this.e();
                    }

                    @Override // com.anythink.expressad.out.e
                    public final void a(final com.anythink.expressad.foundation.d.c cVar) {
                        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.d.g.1.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                g.this.a(cVar, "");
                            }
                        }, 2, true);
                    }

                    @Override // com.anythink.expressad.out.e
                    public final void a(String str) {
                        com.anythink.basead.e.a aVar = g.this.h;
                        if (aVar != null) {
                            aVar.onShowFailed(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, str));
                        }
                    }

                    @Override // com.anythink.expressad.out.e
                    public final void b() {
                    }

                    @Override // com.anythink.expressad.out.e
                    public final void c() {
                    }

                    @Override // com.anythink.expressad.out.e
                    public final void d() {
                    }
                });
                this.a.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.anythink.basead.d.g.1.2
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view) {
                        String unused = g.l;
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view) {
                        String unused = g.l;
                        new StringBuilder("onViewDetachedFromWindow() >>> adx模板, dismissCallbacked[0]: ").append(zArr[0]);
                        if (zArr[0]) {
                            return;
                        }
                        try {
                            g.this.m.put(b.C0083b.a, 3);
                            com.anythink.basead.e.a aVar = g.this.h;
                            if (aVar != null) {
                                aVar.onAdClosed();
                            }
                            g.this.e();
                        } catch (Throwable unused2) {
                        }
                    }
                });
                ((com.anythink.expressad.splash.d.c) g.this.f).a(this.a);
                return;
            }
            if (gVar2.e.k()) {
                gVar = g.this;
                Context context = this.a.getContext();
                g gVar3 = g.this;
                asseblemSplashATView = new MraidSplashATView(context, gVar3.c, gVar3.e, gVar3.h);
            } else {
                g gVar4 = g.this;
                if (BaseSdkSplashATView.isSinglePicture(gVar4.e, gVar4.c.n)) {
                    gVar = g.this;
                    Context context2 = this.a.getContext();
                    g gVar5 = g.this;
                    asseblemSplashATView = new SinglePictureSplashATView(context2, gVar5.c, gVar5.e, gVar5.h);
                } else {
                    gVar = g.this;
                    Context context3 = this.a.getContext();
                    g gVar6 = g.this;
                    asseblemSplashATView = new AsseblemSplashATView(context3, gVar6.c, gVar6.e, gVar6.h);
                }
            }
            gVar.a = asseblemSplashATView;
            g gVar7 = g.this;
            gVar7.a.setAdExtraInfoMap(gVar7.m);
            g gVar8 = g.this;
            gVar8.a.setDontCountDown(gVar8.k);
            this.a.addView(g.this.a);
        }
    }

    public g(Context context, b.EnumC0055b enumC0055b, m mVar) {
        super(context, enumC0055b, mVar);
        HashMap map = new HashMap();
        this.m = map;
        a(map);
    }

    public final void a() {
        this.k = true;
    }

    public final void a(ViewGroup viewGroup) {
        if (super.c()) {
            x.a(false);
            n.a().b(new AnonymousClass1(viewGroup));
        }
    }

    @Override // com.anythink.basead.d.b
    public final void b() {
        BaseSplashATView baseSplashATView = this.a;
        if (baseSplashATView != null) {
            baseSplashATView.destroy();
            this.a = null;
        }
        com.anythink.core.common.a.i iVar = this.f;
        if (iVar == null || !(iVar instanceof com.anythink.expressad.splash.d.c)) {
            return;
        }
        ((com.anythink.expressad.splash.d.c) iVar).g();
    }

    public final boolean h() {
        return this.f == null;
    }
}
