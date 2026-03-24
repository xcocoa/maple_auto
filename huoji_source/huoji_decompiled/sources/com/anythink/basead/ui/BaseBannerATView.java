package com.anythink.basead.ui;

import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseBannerATView extends BaseATView {
    public final String TAG;
    public com.anythink.basead.e.a v;
    public CloseImageView w;
    public View x;
    private com.anythink.basead.ui.d.b y;

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseBannerATView$1, reason: invalid class name */
    public class AnonymousClass1 implements com.anythink.basead.ui.c.a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.basead.ui.c.a
        public final void a(int i, int i2) {
            BaseBannerATView.this.a(i, i2);
        }
    }

    public BaseBannerATView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
    }

    public BaseBannerATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar);
        this.TAG = getClass().getSimpleName();
        this.v = aVar;
        if (mVar != null) {
            if (lVar == null || !lVar.P()) {
                n nVar = mVar.n;
                if (nVar != null && nVar.am()) {
                    com.anythink.basead.ui.d.b bVar = new com.anythink.basead.ui.d.b();
                    this.y = bVar;
                    bVar.a(true).a(new AnonymousClass1());
                } else {
                    com.anythink.basead.ui.d.b bVar2 = this.y;
                    if (bVar2 != null) {
                        bVar2.a(false);
                    }
                }
            }
        }
    }

    private void a(m mVar, l lVar) {
        if (mVar != null) {
            if (lVar == null || !lVar.P()) {
                n nVar = mVar.n;
                if (nVar != null && nVar.am()) {
                    com.anythink.basead.ui.d.b bVar = new com.anythink.basead.ui.d.b();
                    this.y = bVar;
                    bVar.a(true).a(new AnonymousClass1());
                } else {
                    com.anythink.basead.ui.d.b bVar2 = this.y;
                    if (bVar2 != null) {
                        bVar2.a(false);
                    }
                }
            }
        }
    }

    private boolean o() {
        if (this.x == null) {
            this.x = findViewById(i.a(getContext(), "myoffer_guide2click_container", "id"));
        }
        View view = this.x;
        return view != null && view.getVisibility() == 0;
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a(int i, int i2) {
        super.a(i, i2);
        a(this.w, this.b.n.m());
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a(com.anythink.basead.e.i iVar) {
        com.anythink.basead.e.a aVar = this.v;
        if (aVar != null) {
            aVar.onAdClick(iVar);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a(boolean z) {
        com.anythink.basead.e.a aVar = this.v;
        if (aVar != null) {
            aVar.onDeeplinkCallback(z);
        }
    }

    public void b() {
        a(this.b.n.V() < 0 ? 100 : this.b.n.V(), new Runnable() { // from class: com.anythink.basead.ui.BaseBannerATView.2
            @Override // java.lang.Runnable
            public final void run() {
                BaseBannerATView.super.h();
            }
        });
    }

    public void c() {
        this.w.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseBannerATView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.anythink.basead.e.a aVar = BaseBannerATView.this.v;
                if (aVar != null) {
                    aVar.onAdClosed();
                }
            }
        });
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void e() {
        com.anythink.basead.e.a aVar = this.v;
        if (aVar != null) {
            aVar.onAdShow(new com.anythink.basead.e.i());
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final RelativeLayout.LayoutParams m() {
        int measuredHeight = getMeasuredHeight() - i.a(getContext(), 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, measuredHeight, 0, 0);
        return layoutParams;
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final int n() {
        return 4;
    }

    @Override // com.anythink.basead.ui.BaseATView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        com.anythink.basead.ui.d.b bVar;
        return (o() || (bVar = this.y) == null) ? super.onInterceptTouchEvent(motionEvent) : bVar.a(motionEvent);
    }

    @Override // com.anythink.basead.ui.BaseATView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.anythink.basead.ui.d.b bVar;
        return (o() || (bVar = this.y) == null) ? super.onTouchEvent(motionEvent) : bVar.a(this, motionEvent);
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        if (Build.VERSION.SDK_INT >= 24) {
            if (z) {
                a(110);
            } else {
                a(111);
            }
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (Build.VERSION.SDK_INT < 24) {
            if (i == 0) {
                a(110);
            } else {
                a(111);
            }
        }
    }
}
