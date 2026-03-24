package com.anythink.basead.f;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.anythink.basead.ui.AsseblemSplashATView;
import com.anythink.basead.ui.BaseSdkSplashATView;
import com.anythink.basead.ui.BaseSplashATView;
import com.anythink.basead.ui.SinglePictureSplashATView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g extends c {
    public com.anythink.basead.e.a a;
    public BaseSplashATView k;
    public boolean l;

    public g(Context context, m mVar, String str) {
        super(context, mVar, str, false);
    }

    @Override // com.anythink.basead.f.a
    public final void a(Activity activity, Map<String, Object> map) {
    }

    public final void a(final ViewGroup viewGroup) {
        n.a().b(new Runnable() { // from class: com.anythink.basead.f.g.1
            @Override // java.lang.Runnable
            public final void run() {
                g gVar;
                BaseSplashATView asseblemSplashATView;
                g gVar2 = g.this;
                if (BaseSdkSplashATView.isSinglePicture(gVar2.g, gVar2.d.n)) {
                    gVar = g.this;
                    Context context = viewGroup.getContext();
                    g gVar3 = g.this;
                    asseblemSplashATView = new SinglePictureSplashATView(context, gVar3.d, gVar3.g, gVar3.a);
                } else {
                    gVar = g.this;
                    Context context2 = viewGroup.getContext();
                    g gVar4 = g.this;
                    asseblemSplashATView = new AsseblemSplashATView(context2, gVar4.d, gVar4.g, gVar4.a);
                }
                gVar.k = asseblemSplashATView;
                g gVar5 = g.this;
                gVar5.k.setDontCountDown(gVar5.l);
                viewGroup.addView(g.this.k);
            }
        });
    }

    public final void a(com.anythink.basead.e.a aVar) {
        this.a = aVar;
    }

    @Override // com.anythink.basead.f.c, com.anythink.basead.f.a
    public final boolean a() {
        try {
            if (d()) {
                return com.anythink.basead.f.a.a.a(this.c).a(this.g, this.d, this.f);
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void b() {
        this.l = true;
    }

    public final void f() {
        this.a = null;
        BaseSplashATView baseSplashATView = this.k;
        if (baseSplashATView != null) {
            baseSplashATView.destroy();
            this.k = null;
        }
    }
}
