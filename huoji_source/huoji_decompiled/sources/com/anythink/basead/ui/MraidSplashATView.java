package com.anythink.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.anythink.basead.c.f;
import com.anythink.basead.ui.MraidContainerView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class MraidSplashATView extends BaseSplashATView {
    public MraidContainerView v;
    public boolean w;

    /* JADX INFO: renamed from: com.anythink.basead.ui.MraidSplashATView$2, reason: invalid class name */
    public class AnonymousClass2 implements MraidContainerView.a {
        public AnonymousClass2() {
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void a() {
            try {
                MraidSplashATView.a(MraidSplashATView.this);
            } catch (Throwable unused) {
            }
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void a(String str) {
            MraidSplashATView.this.c.w(str);
            MraidSplashATView.this.a(1, 13);
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void b() {
            MraidSplashATView.this.a(106);
            MraidSplashATView.this.p();
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void c() {
            MraidSplashATView.this.a(f.a(f.k, f.Q));
            MraidSplashATView.this.a(true, 5);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.MraidSplashATView$3, reason: invalid class name */
    public class AnonymousClass3 implements ViewTreeObserver.OnGlobalLayoutListener {
        public final /* synthetic */ ViewTreeObserver a;

        public AnonymousClass3(ViewTreeObserver viewTreeObserver) {
            this.a = viewTreeObserver;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            try {
                MraidSplashATView mraidSplashATView = MraidSplashATView.this;
                if (!mraidSplashATView.w) {
                    mraidSplashATView.w = true;
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mraidSplashATView.v.getLayoutParams();
                    layoutParams.width = i.a(n.a().f(), MraidSplashATView.this.c.g());
                    layoutParams.height = i.a(n.a().f(), MraidSplashATView.this.c.h());
                    int width = MraidSplashATView.this.getWidth();
                    int height = MraidSplashATView.this.getHeight();
                    float fG = MraidSplashATView.this.c.g() / (MraidSplashATView.this.c.h() * 1.0f);
                    layoutParams.width = Math.min(width, layoutParams.width);
                    int iMin = Math.min(height, layoutParams.height);
                    layoutParams.height = iMin;
                    int i = layoutParams.width;
                    float f = i / (iMin * 1.0f);
                    if (f > fG) {
                        layoutParams.width = (int) (iMin * fG);
                    } else if (f < fG) {
                        layoutParams.height = (int) (i / fG);
                    }
                    layoutParams.gravity = 17;
                }
                this.a.removeGlobalOnLayoutListener(this);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.MraidSplashATView$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MraidSplashATView mraidSplashATView = MraidSplashATView.this;
            if (mraidSplashATView.H == null) {
                return;
            }
            MraidSplashATView.super.h();
        }
    }

    public MraidSplashATView(Context context) {
        super(context);
    }

    public MraidSplashATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar, aVar);
    }

    public static /* synthetic */ void a(MraidSplashATView mraidSplashATView) {
        if (mraidSplashATView.c.k() && mraidSplashATView.v == null) {
            return;
        }
        super.a(mraidSplashATView.b.n.V() < 0 ? 100 : mraidSplashATView.b.n.V(), mraidSplashATView.new AnonymousClass4());
    }

    private void b() {
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.c, this.b, new AnonymousClass2());
        this.v = mraidContainerView;
        mraidContainerView.setNeedRegisterVolumeChangeReceiver(true);
        this.v.init();
        FrameLayout frameLayout = (FrameLayout) findViewById(i.a(getContext(), "myoffer_splash_web", "id"));
        if (this.c.g() > 0 && this.c.h() > 0) {
            ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new AnonymousClass3(viewTreeObserver));
            if (frameLayout != null) {
                frameLayout.setBackgroundDrawable(new com.anythink.basead.ui.a.a());
            }
        }
        if (frameLayout != null) {
            this.v.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.addView(this.v);
        }
    }

    private void c() {
        if (this.c.k() && this.v == null) {
            return;
        }
        super.a(this.b.n.V() < 0 ? 100 : this.b.n.V(), new AnonymousClass4());
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a() {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_web_splash_ad_layout", "layout"), this);
        com.anythink.basead.ui.d.a aVar = this.L;
        if (aVar != null) {
            aVar.a(-102).a(new com.anythink.basead.ui.c.a() { // from class: com.anythink.basead.ui.MraidSplashATView.1
                @Override // com.anythink.basead.ui.c.a
                public final void a(int i, int i2) {
                    MraidSplashATView.this.a(i, i2);
                }
            }).a(getContext(), this);
        }
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.c, this.b, new AnonymousClass2());
        this.v = mraidContainerView;
        mraidContainerView.setNeedRegisterVolumeChangeReceiver(true);
        this.v.init();
        FrameLayout frameLayout = (FrameLayout) findViewById(i.a(getContext(), "myoffer_splash_web", "id"));
        if (this.c.g() > 0 && this.c.h() > 0) {
            ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new AnonymousClass3(viewTreeObserver));
            if (frameLayout != null) {
                frameLayout.setBackgroundDrawable(new com.anythink.basead.ui.a.a());
            }
        }
        if (frameLayout != null) {
            this.v.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.addView(this.v);
        }
    }

    @Override // com.anythink.basead.ui.BaseSplashATView, com.anythink.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        MraidContainerView mraidContainerView = this.v;
        if (mraidContainerView != null) {
            mraidContainerView.release();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        MraidContainerView mraidContainerView = this.v;
        if (mraidContainerView != null) {
            mraidContainerView.fireMraidIsViewable(z);
        }
    }

    @Override // com.anythink.basead.ui.BaseSplashATView
    public final void p() {
        int size = this.p.size();
        for (int i = 0; i < size; i++) {
            View view = this.p.get(i);
            if (view != null) {
                view.setOnClickListener(this.K);
            }
        }
    }
}
