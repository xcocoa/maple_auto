package com.anythink.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.anythink.basead.a.d;
import com.anythink.basead.ui.PanelView;
import com.anythink.basead.ui.animplayerview.AlbumScaleAnimPlayerView;
import com.anythink.basead.ui.animplayerview.BasePlayerView;
import com.anythink.basead.ui.animplayerview.EmptyAnimPlayer;
import com.anythink.basead.ui.animplayerview.GuideToClickAnimPlayerView;
import com.anythink.basead.ui.animplayerview.RedPacketAnimPlayerView;
import com.anythink.basead.ui.animplayerview.ViewPagerAnimPlayerView;
import com.anythink.basead.ui.animplayerview.WebLandpagePlayerView;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.i;
import com.anythink.core.common.ui.component.RoundImageView;

/* JADX INFO: loaded from: classes.dex */
public class FullScreenATView extends BaseScreenATView {
    public static final String TAG = FullScreenATView.class.getSimpleName();
    private CountDownCloseView ad;
    private CloseHeaderView ae;
    private PanelView af;
    private com.anythink.basead.ui.d.a ag;

    public FullScreenATView(Context context) {
        super(context);
    }

    public FullScreenATView(Context context, m mVar, l lVar, String str, int i, int i2) {
        super(context, mVar, lVar, str, i, i2);
        setId(i.a(getContext(), "myoffer_full_screen_view_id", "id"));
        if (mVar != null) {
            this.ag = new com.anythink.basead.ui.d.a(lVar, mVar.n);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0073, code lost:
    
        r1.width = r8.x;
        r1.height = r4;
        r0.setLayoutParams(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00eb, code lost:
    
        if (r1 != null) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void R() {
        int iA;
        RelativeLayout.LayoutParams layoutParams;
        this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (!d.b(this.c) && b(this.E)) {
            PanelView panelViewO = O();
            int i = this.E;
            if (i == 1) {
                this.K.setBackgroundColor(-1);
                int i2 = (int) (this.y * 0.5f);
                iA = TextUtils.isEmpty(this.c.x()) ? this.y - i2 : (this.y - i2) + i.a(getContext(), 50.0f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i2));
                this.N.setNeedArc(true);
                layoutParams = (RelativeLayout.LayoutParams) panelViewO.getLayoutParams();
            } else if (i == 2) {
                int iA2 = i.a(getContext(), 300.0f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(this.x - iA2, -1));
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) panelViewO.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.width = iA2;
                    layoutParams2.height = -1;
                    panelViewO.setLayoutParams(layoutParams2);
                }
            } else if (i == 5) {
                int i3 = this.y;
                iA = (int) (i3 * 0.5f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3 - iA));
                layoutParams = (RelativeLayout.LayoutParams) panelViewO.getLayoutParams();
            } else if (i != 6) {
                if (this.b.n.D() != 0) {
                    View shakeView = panelViewO.getShakeView();
                    if (k()) {
                        if (shakeView != null) {
                            shakeView.setVisibility(0);
                        }
                    } else if (shakeView != null) {
                        shakeView.setVisibility(8);
                    }
                }
            }
            panelViewO.removeAllViews();
            panelViewO.setLayoutType(this.E);
        }
        this.K.addView(this.N, 0);
    }

    private void S() {
        Context context;
        int i;
        if (((BaseScreenATView) this).v == 1 && this.H) {
            RoundImageView roundImageView = new RoundImageView(getContext().getApplicationContext());
            roundImageView.setImageResource(i.a(getContext(), "myoffer_reward_icon", com.anythink.expressad.foundation.h.i.c));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i.a(getContext(), 60.0f), i.a(getContext(), 60.0f));
            int iIndexOfChild = 2;
            float f = 12.0f;
            if (b(this.E) && ((i = this.E) == 2 || i == 6)) {
                layoutParams.leftMargin = this.x - i.a(getContext(), 330.0f);
                context = getContext();
                f = 22.0f;
            } else {
                layoutParams.leftMargin = i.a(getContext(), 12.0f);
                context = getContext();
            }
            layoutParams.topMargin = i.a(context, f);
            roundImageView.setLayoutParams(layoutParams);
            try {
                iIndexOfChild = this.K.indexOfChild(this.M) + 1;
            } catch (Throwable unused) {
            }
            this.K.addView(roundImageView, iIndexOfChild);
        }
    }

    private boolean T() {
        return ((BaseScreenATView) this).v == 1 && this.F != 100;
    }

    private boolean U() {
        if (((BaseScreenATView) this).v != 1) {
            return false;
        }
        int i = this.F;
        return i == 1 || i == 101;
    }

    private boolean V() {
        return M();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void A() {
        super.A();
        if (T()) {
            if (this.F != 101) {
                CountDownCloseView countDownCloseView = this.ad;
                if (countDownCloseView != null) {
                    countDownCloseView.setVisibility(0);
                    return;
                }
                return;
            }
            CloseHeaderView closeHeaderView = this.ae;
            if (closeHeaderView != null) {
                closeHeaderView.setVisibility(0);
                if (this.ae.getCloseImageView() != null) {
                    this.ae.getCloseImageView().setVisibility(0);
                }
            }
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void B() {
        int iAs = this.b.n.as();
        int i = ((BaseScreenATView) this).v;
        if (i != 1) {
            if (i != 3) {
                c(1);
                return;
            }
            if (this.G) {
                c(1);
                return;
            }
            C();
            if (iAs == 1 || iAs == 2) {
                c(1);
                return;
            }
            if (l()) {
                this.r = true;
            }
            q();
            return;
        }
        if (this.r) {
            c(1);
            return;
        }
        if (this.H) {
            if (iAs != 1 && iAs != 3) {
                C();
                if (l()) {
                    this.r = true;
                }
                q();
                return;
            }
        } else {
            if (iAs != 1 && iAs != 2) {
                double dCeil = Math.ceil(this.b.n.k() / 1000.0d);
                if (this.L != null) {
                    double dCeil2 = Math.ceil(r2.getVideoLength() / 1000.0d);
                    if (dCeil > dCeil2) {
                        dCeil = dCeil2;
                    }
                }
                RewardExitConfirmDialogActivity.a(getContext(), String.valueOf((int) dCeil), new Runnable() { // from class: com.anythink.basead.ui.FullScreenATView.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        FullScreenATView.this.C();
                        FullScreenATView.this.c(1);
                    }
                }, T() ? 2 : 1);
                return;
            }
            try {
                Toast.makeText(getContext(), getContext().getString(i.a(getContext(), "myoffer_reward_exit_tips_msg", com.anythink.expressad.foundation.h.i.g)), 0).show();
            } catch (Throwable unused) {
            }
        }
        C();
        c(1);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void D() {
        super.D();
        if (T()) {
            H();
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void E() {
        super.E();
        if (this.F != 100) {
            this.S.setVisibility(8);
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void F() {
        super.F();
        com.anythink.basead.ui.d.a aVar = this.ag;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void G() {
        super.G();
        com.anythink.basead.ui.d.a aVar = this.ag;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        if (r1 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0085, code lost:
    
        r1.width = r8.x;
        r1.height = r4;
        r0.setLayoutParams(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fc, code lost:
    
        if (r1 != null) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008f  */
    @Override // com.anythink.basead.ui.BaseScreenATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void J() {
        BaseEndCardView baseEndCardView;
        int iA;
        RelativeLayout.LayoutParams layoutParams;
        if (this.K == null || (baseEndCardView = this.N) == null || baseEndCardView.getParent() != null) {
            return;
        }
        if (!d.a(this.c, this.b)) {
            Q();
            return;
        }
        this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (!d.b(this.c) && b(this.E)) {
            PanelView panelViewO = O();
            int i = this.E;
            if (i == 1) {
                this.K.setBackgroundColor(-1);
                int i2 = (int) (this.y * 0.5f);
                iA = TextUtils.isEmpty(this.c.x()) ? this.y - i2 : (this.y - i2) + i.a(getContext(), 50.0f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i2));
                this.N.setNeedArc(true);
                layoutParams = (RelativeLayout.LayoutParams) panelViewO.getLayoutParams();
            } else if (i == 2) {
                int iA2 = i.a(getContext(), 300.0f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(this.x - iA2, -1));
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) panelViewO.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.width = iA2;
                    layoutParams2.height = -1;
                    panelViewO.setLayoutParams(layoutParams2);
                }
            } else if (i == 5) {
                int i3 = this.y;
                iA = (int) (i3 * 0.5f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3 - iA));
                layoutParams = (RelativeLayout.LayoutParams) panelViewO.getLayoutParams();
            } else if (i != 6) {
                if (this.b.n.D() != 0) {
                    View shakeView = panelViewO.getShakeView();
                    if (k()) {
                        if (shakeView != null) {
                            shakeView.setVisibility(0);
                        }
                    } else if (shakeView != null) {
                        shakeView.setVisibility(8);
                    }
                }
            }
            panelViewO.removeAllViews();
            panelViewO.setLayoutType(this.E);
        }
        this.K.addView(this.N, 0);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void K() {
        Context context;
        int i;
        super.K();
        if (((BaseScreenATView) this).v == 1 && this.H) {
            RoundImageView roundImageView = new RoundImageView(getContext().getApplicationContext());
            roundImageView.setImageResource(i.a(getContext(), "myoffer_reward_icon", com.anythink.expressad.foundation.h.i.c));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i.a(getContext(), 60.0f), i.a(getContext(), 60.0f));
            int iIndexOfChild = 2;
            float f = 12.0f;
            if (b(this.E) && ((i = this.E) == 2 || i == 6)) {
                layoutParams.leftMargin = this.x - i.a(getContext(), 330.0f);
                context = getContext();
                f = 22.0f;
            } else {
                layoutParams.leftMargin = i.a(getContext(), 12.0f);
                context = getContext();
            }
            layoutParams.topMargin = i.a(context, f);
            roundImageView.setLayoutParams(layoutParams);
            try {
                iIndexOfChild = this.K.indexOfChild(this.M) + 1;
            } catch (Throwable unused) {
            }
            this.K.addView(roundImageView, iIndexOfChild);
        }
        if (d.b(this.c)) {
            PanelView panelView = this.M;
            if (panelView != null) {
                panelView.setVisibility(8);
            }
            PanelView panelView2 = this.af;
            if (panelView2 != null) {
                panelView2.setVisibility(8);
            }
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final CloseImageView L() {
        if (T()) {
            if (this.F == 101) {
                CloseHeaderView closeHeaderView = this.ae;
                if (closeHeaderView != null && closeHeaderView.getCloseImageView() != null) {
                    return this.ae.getCloseImageView();
                }
            } else {
                CountDownCloseView countDownCloseView = this.ad;
                if (countDownCloseView != null) {
                    return countDownCloseView;
                }
            }
        }
        return super.L();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final ViewGroup N() {
        CloseHeaderView closeHeaderView = this.ae;
        return (closeHeaderView == null || closeHeaderView.getVisibility() != 0 || this.ae.getFeedbackButton() == null) ? super.N() : this.ae.getFeedbackButton();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final PanelView O() {
        PanelView panelView;
        PanelView panelView2;
        return (d.a(this.c, this.b) || (panelView2 = this.af) == null) ? (this.G || this.F == 1 || (panelView = this.af) == null) ? super.O() : panelView : panelView2;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void P() {
        PanelView panelView;
        if (M()) {
            return;
        }
        if (((BaseScreenATView) this).v != 1 || this.F == 100) {
            super.P();
            if (!l() || (panelView = this.af) == null) {
                return;
            }
            panelView.setVisibility(8);
            return;
        }
        BasePlayerView basePlayerView = this.L;
        if (basePlayerView == null || basePlayerView.getParent() == null) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, -getMeasuredWidth(), 0.0f, 0.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.4f);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.setFillAfter(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setDuration(300L);
        animationSet.setAnimationListener(new Animation.AnimationListener() { // from class: com.anythink.basead.ui.FullScreenATView.4
            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationEnd(Animation animation) {
                BasePlayerView basePlayerView2 = FullScreenATView.this.L;
                if (basePlayerView2 != null) {
                    basePlayerView2.post(new Runnable() { // from class: com.anythink.basead.ui.FullScreenATView.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            FullScreenATView.super.P();
                            if (FullScreenATView.this.af != null) {
                                FullScreenATView.this.af.setVisibility(8);
                            }
                        }
                    });
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public final void onAnimationStart(Animation animation) {
            }
        });
        this.L.startAnimation(animationSet);
        PanelView panelView2 = this.af;
        if (panelView2 == null || panelView2.getVisibility() != 0) {
            return;
        }
        this.af.startAnimation(animationSet);
    }

    public final void Q() {
        this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (!d.b(this.c)) {
            O().setVisibility(0);
        }
        this.K.addView(this.N, 0);
    }

    @Override // com.anythink.basead.ui.BaseATView
    public void a() {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_full_screen", "layout"), this);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void a(long j) {
        int i;
        boolean z = true;
        if (((BaseScreenATView) this).v != 1 || ((i = this.F) != 1 && i != 101)) {
            z = false;
        }
        if (z) {
            return;
        }
        super.a(j);
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        if (!M()) {
            return super.a(str, iOfferClickHandler);
        }
        this.G = true;
        boolean zOpenInternalWebView = ((WebLandpagePlayerView) this.L).openInternalWebView(str, iOfferClickHandler);
        if (zOpenInternalWebView) {
            a(105);
            com.anythink.basead.ui.d.a aVar = this.ag;
            if (aVar != null) {
                aVar.a();
            }
        }
        return zOpenInternalWebView;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void b() {
        super.b();
        com.anythink.basead.ui.d.a aVar = this.ag;
        if (aVar != null) {
            aVar.a(this.E == 8 ? -101 : -100).a(new com.anythink.basead.ui.c.a() { // from class: com.anythink.basead.ui.FullScreenATView.1
                @Override // com.anythink.basead.ui.c.a
                public final void a(int i, int i2) {
                    FullScreenATView.this.a(i, i2);
                }
            }).a(getContext(), this);
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void b(long j) {
        if (!T()) {
            super.b(j);
            return;
        }
        CloseHeaderView closeHeaderView = this.ae;
        if (closeHeaderView != null && closeHeaderView.getVisibility() == 0) {
            this.ae.refresh(j);
        }
        CountDownCloseView countDownCloseView = this.ad;
        if (countDownCloseView == null || countDownCloseView.getVisibility() != 0) {
            return;
        }
        this.ad.refresh(j);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public boolean b(int i) {
        return (i == 0 || i == 1 || i == 2 || i == 5 || i == 6) ? d.a(this.c) : i == 8;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void c() {
        super.c();
        this.ad = (CountDownCloseView) findViewById(i.a(getContext(), "myoffer_btn_countdown_close_id", "id"));
        this.ae = (CloseHeaderView) findViewById(i.a(getContext(), "myoffer_btn_close_header_view_id", "id"));
        this.af = (PanelView) findViewById(i.a(getContext(), "myoffer_banner_view_for_anim_player_id", "id"));
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void c(long j) {
        if (!T()) {
            super.c(j);
            return;
        }
        CloseHeaderView closeHeaderView = this.ae;
        if (closeHeaderView != null && closeHeaderView.getVisibility() == 0) {
            this.ae.setDuration(j);
        }
        CountDownCloseView countDownCloseView = this.ad;
        if (countDownCloseView == null || countDownCloseView.getVisibility() != 0) {
            return;
        }
        this.ad.setDuration(j);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void d(int i) {
        if (!T()) {
            super.d(i);
        } else {
            this.Q.setVisibility(8);
            this.P.setVisibility(8);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final int n() {
        return 1;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void o() {
        super.o();
        if (this.L == null || !T()) {
            return;
        }
        Context context = getContext();
        int i = this.F;
        BasePlayerView emptyAnimPlayer = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 101 ? new EmptyAnimPlayer(context) : new WebLandpagePlayerView(context) : new AlbumScaleAnimPlayerView(context) : new ViewPagerAnimPlayerView(context) : new RedPacketAnimPlayerView(context) : new GuideToClickAnimPlayerView(context) : new EmptyAnimPlayer(context);
        emptyAnimPlayer.setVisibility(8);
        ViewGroup viewGroup = (ViewGroup) this.L.getParent();
        viewGroup.addView(emptyAnimPlayer, viewGroup.indexOfChild(this.L), this.L.getLayoutParams());
        viewGroup.removeView(this.L);
        this.L = emptyAnimPlayer;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void q() {
        if (M()) {
            return;
        }
        super.q();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public int r() {
        int i = this.E;
        return i == 8 ? i : this.x < this.y ? this.ab >= this.ac ? 1 : 5 : this.ab < this.ac ? 2 : 6;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void w() {
        PanelView panelView = this.af;
        if (panelView != null) {
            panelView.setVisibility(4);
            this.af.init(this.c, this.b, this.w, k(), new PanelView.a() { // from class: com.anythink.basead.ui.FullScreenATView.2
                @Override // com.anythink.basead.ui.PanelView.a
                public final void a(int i, int i2) {
                    FullScreenATView.this.a(i, i2);
                }

                @Override // com.anythink.basead.ui.PanelView.a
                public final boolean a() {
                    if (!FullScreenATView.this.y()) {
                        return false;
                    }
                    FullScreenATView.this.a(4, 5);
                    return true;
                }
            });
        }
        super.w();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void x() {
        super.x();
        if (d.a(this.c)) {
            this.E = 0;
        } else {
            this.E = 8;
        }
        PanelView panelView = this.M;
        if (panelView != null) {
            panelView.setLayoutType(this.E);
            if (this.E == 8 && this.b.n.D() == 0) {
                this.M.getCTAButton().setVisibility(8);
            }
        }
        PanelView panelView2 = this.af;
        if (panelView2 != null) {
            panelView2.setLayoutType(this.E);
            if (this.E == 8 && this.b.n.D() == 0) {
                this.af.getCTAButton().setVisibility(8);
            }
        }
    }
}
