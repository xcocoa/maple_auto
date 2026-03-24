package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.anythink.basead.c.e;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.a.b;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.a.f;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseSplashATView extends BaseATView {
    public TextView C;
    public CloseFrameLayout D;
    public String E;
    public Timer F;
    public volatile boolean G;
    public com.anythink.basead.e.a H;
    public b I;
    public final long J;
    public final View.OnClickListener K;
    public com.anythink.basead.ui.d.a L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    private f.b v;
    private long w;
    private Map<String, Object> x;

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseSplashATView$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (BaseSplashATView.this.b.n.v() == 0 || BaseSplashATView.this.O) {
                BaseSplashATView.this.a(true, 1);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseSplashATView$3, reason: invalid class name */
    public class AnonymousClass3 extends TimerTask {
        public AnonymousClass3() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            BaseSplashATView baseSplashATView = BaseSplashATView.this;
            if (x.a(baseSplashATView, baseSplashATView.v)) {
                BaseSplashATView.this.post(new Runnable() { // from class: com.anythink.basead.ui.BaseSplashATView.3.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        long j = BaseSplashATView.this.w;
                        BaseSplashATView baseSplashATView2 = BaseSplashATView.this;
                        if (j <= 0) {
                            BaseSplashATView.e(baseSplashATView2);
                        } else {
                            baseSplashATView2.a(baseSplashATView2.w);
                        }
                        BaseSplashATView.this.w -= 1000;
                    }
                });
            }
        }
    }

    public BaseSplashATView(Context context) {
        super(context);
        this.E = "Skip";
        this.J = 1000L;
        this.w = com.anythink.expressad.exoplayer.f.a;
        this.K = new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseSplashATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseSplashATView baseSplashATView = BaseSplashATView.this;
                View view2 = baseSplashATView.s;
                if (view2 == null || view2 != view) {
                    BaseSplashATView.super.a(1, 2);
                } else {
                    BaseSplashATView.super.a(1, 1);
                }
            }
        };
        this.M = false;
        this.N = false;
        this.O = false;
    }

    public BaseSplashATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar);
        this.E = "Skip";
        this.J = 1000L;
        this.w = com.anythink.expressad.exoplayer.f.a;
        this.K = new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseSplashATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseSplashATView baseSplashATView = BaseSplashATView.this;
                View view2 = baseSplashATView.s;
                if (view2 == null || view2 != view) {
                    BaseSplashATView.super.a(1, 2);
                } else {
                    BaseSplashATView.super.a(1, 1);
                }
            }
        };
        this.M = false;
        this.N = false;
        this.O = false;
        this.v = new f.b();
        this.H = aVar;
        this.E = getResources().getString(i.a(getContext(), "myoffer_splash_skip_text", com.anythink.expressad.foundation.h.i.g));
        this.C = (TextView) findViewById(i.a(getContext(), "myoffer_splash_skip", "id"));
        this.D = (CloseFrameLayout) findViewById(i.a(getContext(), "myoffer_splash_skip_area", "id"));
        this.w = this.b.n.t();
        this.G = false;
        a(this.D, this.b.n.n());
        if (lVar.d() == 4) {
            try {
                TextView textView = (TextView) findViewById(i.a(getContext(), "myoffer_splash_ad_install_btn", "id"));
                Drawable directlySplashAdCTAButtongBgDrawable = ATSDKGlobalSetting.getDirectlySplashAdCTAButtongBgDrawable();
                if (textView != null) {
                    if (directlySplashAdCTAButtongBgDrawable != null) {
                        textView.setBackgroundDrawable(directlySplashAdCTAButtongBgDrawable);
                    } else {
                        textView.setBackgroundResource(i.a(getContext(), "myoffer_splash_bg_rectangle_btn_cta_directly_asseblem", com.anythink.expressad.foundation.h.i.c));
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        TextView textView;
        StringBuilder sb;
        String str;
        if (this.b.n.v() == 0) {
            textView = this.C;
            sb = new StringBuilder();
            sb.append(j / 1000);
            sb.append("s | ");
            str = this.E;
        } else {
            textView = this.C;
            sb = new StringBuilder();
            sb.append(j / 1000);
            str = " s";
        }
        sb.append(str);
        textView.setText(sb.toString());
    }

    private void b() {
        if (this.N) {
            return;
        }
        this.N = true;
        if (this.P) {
            return;
        }
        this.D.setVisibility(0);
        this.D.setOnClickListener(new AnonymousClass2());
        this.O = false;
        Timer timer = new Timer();
        this.F = timer;
        timer.schedule(new AnonymousClass3(), 1000L, 1000L);
        a(this.w);
        this.w -= 1000;
    }

    private void c() {
        this.D.setVisibility(0);
        this.D.setOnClickListener(new AnonymousClass2());
        this.O = false;
        Timer timer = new Timer();
        this.F = timer;
        timer.schedule(new AnonymousClass3(), 1000L, 1000L);
        a(this.w);
        this.w -= 1000;
    }

    public static /* synthetic */ void e(BaseSplashATView baseSplashATView) {
        baseSplashATView.a(true, 2);
        baseSplashATView.C.setText(baseSplashATView.E);
        baseSplashATView.O = true;
    }

    private void o() {
        a(true, 2);
        this.C.setText(this.E);
        this.O = true;
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a(int i, int i2) {
        super.a(i, i2);
        a(this.D, this.b.n.m());
    }

    public final void a(e eVar) {
        if (this.M) {
            return;
        }
        this.M = true;
        com.anythink.basead.e.a aVar = this.H;
        if (aVar != null) {
            aVar.onShowFailed(eVar);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a(com.anythink.basead.e.i iVar) {
        com.anythink.basead.e.a aVar = this.H;
        if (aVar != null) {
            aVar.onAdClick(iVar);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a(boolean z) {
        com.anythink.basead.e.a aVar = this.H;
        if (aVar != null) {
            aVar.onDeeplinkCallback(z);
        }
    }

    public final void a(boolean z, int i) {
        Timer timer = this.F;
        if (timer != null) {
            timer.cancel();
        }
        this.F = null;
        if (this.G) {
            return;
        }
        this.G = true;
        a(115);
        if (!this.M) {
            a(com.anythink.basead.c.f.a(com.anythink.basead.c.f.k, "SplashView not showing on screen."));
        }
        Map<String, Object> map = this.x;
        if (map != null) {
            map.put(b.C0083b.a, Integer.valueOf(i));
            this.x.put(b.C0083b.b, Boolean.valueOf(z));
        }
        com.anythink.basead.e.a aVar = this.H;
        if (aVar != null) {
            aVar.onAdClosed();
        }
    }

    public void checkSkipViewLocation() {
        try {
            ViewGroup.LayoutParams layoutParams = this.C.getLayoutParams();
            if (layoutParams instanceof FrameLayout.LayoutParams) {
                int iB = ((FrameLayout.LayoutParams) layoutParams).topMargin + i.b(getContext());
                int[] iArr = new int[2];
                this.C.getLocationOnScreen(iArr);
                if (iArr[1] < iB) {
                    int i = iB - iArr[1];
                    ViewParent parent = this.C.getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).setPadding(((ViewGroup) parent).getPaddingLeft(), ((ViewGroup) parent).getPaddingTop() + i, ((ViewGroup) parent).getPaddingRight(), ((ViewGroup) parent).getPaddingBottom());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void d() {
        super.d();
        m mVar = this.b;
        if (mVar != null) {
            this.L = new com.anythink.basead.ui.d.a(this.c, mVar.n);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        this.H = null;
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void e() {
        this.M = true;
        com.anythink.basead.e.a aVar = this.H;
        if (aVar != null) {
            aVar.onAdShow(new com.anythink.basead.e.i());
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void f() {
        if (this.c instanceof aj) {
            if (this.I == null) {
                this.I = new b(this);
            }
            this.I.b();
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void g() {
        if (!(this.c instanceof aj) || this.I == null) {
            return;
        }
        post(new Runnable() { // from class: com.anythink.basead.ui.BaseSplashATView.4
            @Override // java.lang.Runnable
            public final void run() {
                BaseSplashATView.this.I.c();
            }
        });
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final RelativeLayout.LayoutParams m() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.b.n.w() == 2) {
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            layoutParams.setMargins(0, 0, 0, i.a(getContext(), 154.0f));
        } else {
            int measuredHeight = (getMeasuredHeight() * 2) / 3;
            layoutParams.addRule(11);
            layoutParams.setMargins(0, measuredHeight, 0, 0);
        }
        return layoutParams;
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final int n() {
        return 3;
    }

    @Override // com.anythink.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.anythink.basead.ui.BaseATView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(false, 3);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        checkSkipViewLocation();
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
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (Build.VERSION.SDK_INT < 24) {
            if (i == 0) {
                a(110);
            } else {
                a(111);
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i != 0 || this.N) {
            return;
        }
        this.N = true;
        if (this.P) {
            return;
        }
        this.D.setVisibility(0);
        this.D.setOnClickListener(new AnonymousClass2());
        this.O = false;
        Timer timer = new Timer();
        this.F = timer;
        timer.schedule(new AnonymousClass3(), 1000L, 1000L);
        a(this.w);
        this.w -= 1000;
    }

    public void p() {
        int size = this.p.size();
        for (int i = 0; i < size; i++) {
            View view = this.p.get(i);
            if (view != null) {
                view.setOnClickListener(this.K);
            }
        }
    }

    public void setAdExtraInfoMap(Map<String, Object> map) {
        this.x = map;
    }

    public void setDontCountDown(boolean z) {
        CloseFrameLayout closeFrameLayout;
        this.P = z;
        if (!z || (closeFrameLayout = this.D) == null) {
            return;
        }
        closeFrameLayout.setVisibility(8);
    }
}
