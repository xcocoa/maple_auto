package com.anythink.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.basead.ui.MraidContainerView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class MraidBannerATView extends BaseBannerATView {
    public boolean A;
    public boolean B;
    public MraidContainerView y;
    public boolean z;

    /* JADX INFO: renamed from: com.anythink.basead.ui.MraidBannerATView$1, reason: invalid class name */
    public class AnonymousClass1 implements MraidContainerView.a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void a() {
            MraidBannerATView mraidBannerATView = MraidBannerATView.this;
            mraidBannerATView.z = true;
            mraidBannerATView.o();
            try {
                MraidBannerATView.this.b();
            } catch (Throwable unused) {
            }
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void a(String str) {
            MraidBannerATView.this.c.w(str);
            MraidBannerATView.this.a(1, 13);
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void b() {
        }

        @Override // com.anythink.basead.ui.MraidContainerView.a
        public final void c() {
        }
    }

    public MraidBannerATView(Context context) {
        super(context);
    }

    public MraidBannerATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar, aVar);
        c();
    }

    private void p() {
        int iA;
        int iA2;
        String strX = this.b.n.x();
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_web_banner_ad_layout", "layout"), this);
        iA = i.a(getContext(), 50.0f);
        iA2 = i.a(getContext(), 320.0f);
        strX.hashCode();
        switch (strX) {
            case "300x250":
                iA2 = i.a(getContext(), 300.0f);
                iA = i.a(getContext(), 250.0f);
                break;
            case "320x90":
                iA2 = i.a(getContext(), 320.0f);
                iA = i.a(getContext(), 90.0f);
                break;
            case "728x90":
                iA2 = i.a(getContext(), 720.0f);
                iA = i.a(getContext(), 90.0f);
                break;
        }
        int iMin = Math.min(iA2, getResources().getDisplayMetrics().widthPixels);
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.c, this.b, new AnonymousClass1());
        this.y = mraidContainerView;
        mraidContainerView.init();
        FrameLayout frameLayout = (FrameLayout) findViewById(i.a(getContext(), "myoffer_banner_web", "id"));
        this.y.setMinimumHeight(i.a(getContext(), 50.0f));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iMin, iA);
        layoutParams.gravity = 17;
        frameLayout.addView(this.y, 0, layoutParams);
        setLayoutParams(new ViewGroup.LayoutParams(iMin, iA));
        this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
        if (this.b.n.y() != 0) {
            this.w.setVisibility(8);
        } else {
            this.w.setVisibility(0);
            a(this.w, this.b.n.n());
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a() {
        int iA;
        int iA2;
        String strX = this.b.n.x();
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_web_banner_ad_layout", "layout"), this);
        iA = i.a(getContext(), 50.0f);
        iA2 = i.a(getContext(), 320.0f);
        strX.hashCode();
        switch (strX) {
            case "300x250":
                iA2 = i.a(getContext(), 300.0f);
                iA = i.a(getContext(), 250.0f);
                break;
            case "320x90":
                iA2 = i.a(getContext(), 320.0f);
                iA = i.a(getContext(), 90.0f);
                break;
            case "728x90":
                iA2 = i.a(getContext(), 720.0f);
                iA = i.a(getContext(), 90.0f);
                break;
        }
        int iMin = Math.min(iA2, getResources().getDisplayMetrics().widthPixels);
        MraidContainerView mraidContainerView = new MraidContainerView(getContext(), this.c, this.b, new AnonymousClass1());
        this.y = mraidContainerView;
        mraidContainerView.init();
        FrameLayout frameLayout = (FrameLayout) findViewById(i.a(getContext(), "myoffer_banner_web", "id"));
        this.y.setMinimumHeight(i.a(getContext(), 50.0f));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iMin, iA);
        layoutParams.gravity = 17;
        frameLayout.addView(this.y, 0, layoutParams);
        setLayoutParams(new ViewGroup.LayoutParams(iMin, iA));
        this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
        if (this.b.n.y() != 0) {
            this.w.setVisibility(8);
        } else {
            this.w.setVisibility(0);
            a(this.w, this.b.n.n());
        }
    }

    @Override // com.anythink.basead.ui.BaseBannerATView
    public final void b() {
        if (this.y == null) {
            return;
        }
        super.b();
    }

    @Override // com.anythink.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        MraidContainerView mraidContainerView = this.y;
        if (mraidContainerView != null) {
            mraidContainerView.release();
        }
    }

    public final synchronized void o() {
        if (this.z && this.A && !this.B) {
            this.B = true;
            e.a(this.b, this.c);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A = true;
        o();
    }

    @Override // com.anythink.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A = false;
    }
}
