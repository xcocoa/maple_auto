package com.anythink.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.a.e;
import com.anythink.basead.c.f;
import com.anythink.basead.e.h;
import com.anythink.basead.ui.PanelView;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.m.d;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class ThirdPartyFullScreenATView extends BaseScreenATView {
    public static final String TAG = ThirdPartyFullScreenATView.class.getSimpleName();
    public View ad;
    public Timer ae;
    private BaseAd af;
    private final com.anythink.core.common.m.a ag;
    private final com.anythink.core.common.m.b ah;

    /* JADX INFO: renamed from: com.anythink.basead.ui.ThirdPartyFullScreenATView$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ int a;

        public AnonymousClass3(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.a * 1000;
            CountDownView countDownView = ThirdPartyFullScreenATView.this.P;
            if (countDownView != null && countDownView.getVisibility() == 0) {
                ThirdPartyFullScreenATView.this.P.refresh(i);
            }
            ThirdPartyFullScreenATView thirdPartyFullScreenATView = ThirdPartyFullScreenATView.this;
            int i2 = thirdPartyFullScreenATView.C;
            if (i2 < 0 || i < i2) {
                return;
            }
            thirdPartyFullScreenATView.I();
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.ThirdPartyFullScreenATView$6, reason: invalid class name */
    public class AnonymousClass6 extends TimerTask {
        public AnonymousClass6() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public final void run() {
            ThirdPartyFullScreenATView thirdPartyFullScreenATView = ThirdPartyFullScreenATView.this;
            ThirdPartyFullScreenATView.a(thirdPartyFullScreenATView, (int) thirdPartyFullScreenATView.af.getVideoProgress());
        }
    }

    public ThirdPartyFullScreenATView(Context context) {
        super(context);
        this.ag = d.a();
        this.ah = new com.anythink.core.common.m.b() { // from class: com.anythink.basead.ui.ThirdPartyFullScreenATView.1
            @Override // java.lang.Runnable
            public final void run() {
                ThirdPartyFullScreenATView.this.I();
            }
        };
    }

    public ThirdPartyFullScreenATView(Context context, m mVar, l lVar, String str, int i, int i2, BaseAd baseAd) {
        super(context, mVar, lVar, str, i, i2);
        this.ag = d.a();
        this.ah = new com.anythink.core.common.m.b() { // from class: com.anythink.basead.ui.ThirdPartyFullScreenATView.1
            @Override // java.lang.Runnable
            public final void run() {
                ThirdPartyFullScreenATView.this.I();
            }
        };
        this.af = baseAd;
        this.ad = baseAd.getAdMediaView(new Object[0]);
        setId(i.a(getContext(), "myoffer_thirdparty_full_screen_view_id", "id"));
    }

    private void Q() {
        int i = this.C;
        if (i < 0) {
            return;
        }
        if (i > 0) {
            this.ag.a(this.ah, i, true);
        } else {
            I();
        }
    }

    private void R() {
        View cTAButton;
        ArrayList arrayList = new ArrayList();
        int iD = this.b.n.D();
        if (iD == 0) {
            arrayList.addAll(this.M.getClickViews());
            arrayList.add(this.M);
            cTAButton = this.N;
            if (cTAButton != null) {
                arrayList.add(cTAButton);
            }
        } else if (iD != 1) {
            if (iD == 2) {
                arrayList.addAll(this.M.getClickViews());
                cTAButton = this.M;
                arrayList.add(cTAButton);
            }
        } else if (this.M.getCTAButton() != null) {
            cTAButton = this.M.getCTAButton();
            arrayList.add(cTAButton);
        }
        this.af.registerListener(this, arrayList, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004f, code lost:
    
        if (r0 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        r0.width = r6.x;
        r0.height = r3;
        r6.M.setLayoutParams(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d4, code lost:
    
        if (r0 != null) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void S() {
        int iA;
        RelativeLayout.LayoutParams layoutParams;
        View shakeView;
        this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        if (b(this.E)) {
            int i = this.E;
            if (i == 1) {
                this.K.setBackgroundColor(-1);
                int i2 = (int) (this.y * 0.5f);
                iA = TextUtils.isEmpty(this.c.x()) ? this.y - i2 : (this.y - i2) + i.a(getContext(), 50.0f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i2));
                this.N.setNeedArc(true);
                layoutParams = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
            } else if (i == 2) {
                int iA2 = i.a(getContext(), 300.0f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(this.x - iA2, -1));
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.width = iA2;
                    layoutParams2.height = -1;
                    this.M.setLayoutParams(layoutParams2);
                }
            } else if (i == 5) {
                int i3 = this.y;
                iA = (int) (i3 * 0.5f);
                this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3 - iA));
                layoutParams = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
            } else if (i != 6) {
                if (i == 8 && (shakeView = this.M.getShakeView()) != null) {
                    shakeView.setVisibility(8);
                }
            }
            this.M.removeAllViews();
            this.M.setLayoutType(this.E);
        }
        this.K.addView(this.N, 1);
    }

    private void T() {
        this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        O().setVisibility(0);
        this.K.addView(this.N, 1);
    }

    private void U() {
        if (this.ae == null) {
            Timer timer = new Timer();
            this.ae = timer;
            timer.schedule(new AnonymousClass6(), 0L, 300L);
        }
    }

    private void V() {
        Timer timer = this.ae;
        if (timer != null) {
            timer.cancel();
        }
    }

    private void W() {
        Timer timer = this.ae;
        if (timer != null) {
            timer.cancel();
            this.ae = null;
        }
        this.ag.b(this.ah);
    }

    private boolean X() {
        BaseAd baseAd = this.af;
        return (baseAd == null || !TextUtils.equals(baseAd.getAdType(), "1") || this.ad == null) ? false : true;
    }

    public static /* synthetic */ void a(ThirdPartyFullScreenATView thirdPartyFullScreenATView) {
        if (thirdPartyFullScreenATView.ae == null) {
            Timer timer = new Timer();
            thirdPartyFullScreenATView.ae = timer;
            timer.schedule(thirdPartyFullScreenATView.new AnonymousClass6(), 0L, 300L);
        }
    }

    public static /* synthetic */ void a(ThirdPartyFullScreenATView thirdPartyFullScreenATView, int i) {
        thirdPartyFullScreenATView.post(thirdPartyFullScreenATView.new AnonymousClass3(i));
    }

    public static /* synthetic */ void b(ThirdPartyFullScreenATView thirdPartyFullScreenATView) {
        Timer timer = thirdPartyFullScreenATView.ae;
        if (timer != null) {
            timer.cancel();
        }
    }

    private void e(int i) {
        post(new AnonymousClass3(i));
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void B() {
        super.c(1);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void I() {
        super.I();
        this.ag.b(this.ah);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0063, code lost:
    
        if (r0 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
        r0.width = r6.x;
        r0.height = r3;
        r6.M.setLayoutParams(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e8, code lost:
    
        if (r0 != null) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    @Override // com.anythink.basead.ui.BaseScreenATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J() {
        BaseEndCardView baseEndCardView;
        int iA;
        RelativeLayout.LayoutParams layoutParams;
        View shakeView;
        if (this.K == null || (baseEndCardView = this.N) == null || baseEndCardView.getParent() != null) {
            return;
        }
        if (X()) {
            this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            if (b(this.E)) {
                int i = this.E;
                if (i == 1) {
                    this.K.setBackgroundColor(-1);
                    int i2 = (int) (this.y * 0.5f);
                    iA = TextUtils.isEmpty(this.c.x()) ? this.y - i2 : (this.y - i2) + i.a(getContext(), 50.0f);
                    this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i2));
                    this.N.setNeedArc(true);
                    layoutParams = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
                } else if (i == 2) {
                    int iA2 = i.a(getContext(), 300.0f);
                    this.N.setLayoutParams(new RelativeLayout.LayoutParams(this.x - iA2, -1));
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.width = iA2;
                        layoutParams2.height = -1;
                        this.M.setLayoutParams(layoutParams2);
                    }
                } else if (i == 5) {
                    int i3 = this.y;
                    iA = (int) (i3 * 0.5f);
                    this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3 - iA));
                    layoutParams = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
                } else if (i != 6) {
                    if (i == 8 && (shakeView = this.M.getShakeView()) != null) {
                        shakeView.setVisibility(8);
                    }
                }
                this.M.removeAllViews();
                this.M.setLayoutType(this.E);
            }
        } else {
            this.N.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            O().setVisibility(0);
        }
        this.K.addView(this.N, 1);
        R();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void K() {
        View view = this.ad;
        if (view != null && view.getParent() != null) {
            ((ViewGroup) this.ad.getParent()).removeView(this.ad);
        }
        CountDownView countDownView = this.P;
        if (countDownView != null) {
            countDownView.setVisibility(8);
        }
        MuteImageView muteImageView = this.S;
        if (muteImageView != null) {
            muteImageView.setVisibility(8);
        }
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a() {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_thirdparty_full_screen", "layout"), this);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final boolean b(int i) {
        return (i == 0 || i == 1 || i == 2 || i == 5 || i == 6) ? com.anythink.basead.a.d.a(this.c) : i == 8;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView, com.anythink.basead.ui.BaseATView
    public void destroy() {
        super.destroy();
        Timer timer = this.ae;
        if (timer != null) {
            timer.cancel();
            this.ae = null;
        }
        this.ag.b(this.ah);
        BaseAd baseAd = this.af;
        if (baseAd != null) {
            baseAd.clear(this);
            this.af.destroy();
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void init() {
        b();
        this.D = b(this.E);
        this.af.setNativeEventListener(new com.anythink.core.common.b.m() { // from class: com.anythink.basead.ui.ThirdPartyFullScreenATView.2
            @Override // com.anythink.core.common.b.m
            public final void a(String str, String str2) {
                ThirdPartyFullScreenATView.this.q();
                ThirdPartyFullScreenATView.this.a(f.a(str, str2));
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdClicked(View view) {
                h hVar = ThirdPartyFullScreenATView.this.T;
                if (hVar != null) {
                    hVar.b(new com.anythink.basead.e.i().a(1, 13));
                }
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdDislikeButtonClick() {
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdImpressed() {
                h hVar = ThirdPartyFullScreenATView.this.T;
                if (hVar != null) {
                    hVar.a(new com.anythink.basead.e.i());
                }
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdVideoEnd() {
                ThirdPartyFullScreenATView.b(ThirdPartyFullScreenATView.this);
                ThirdPartyFullScreenATView.this.I();
                h hVar = ThirdPartyFullScreenATView.this.T;
                if (hVar != null) {
                    hVar.b();
                }
                ThirdPartyFullScreenATView.this.q();
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdVideoProgress(int i) {
                ThirdPartyFullScreenATView.b(ThirdPartyFullScreenATView.this);
                ThirdPartyFullScreenATView.a(ThirdPartyFullScreenATView.this, i);
            }

            @Override // com.anythink.core.common.b.l
            public final void onAdVideoStart() {
                ThirdPartyFullScreenATView.a(ThirdPartyFullScreenATView.this);
                h hVar = ThirdPartyFullScreenATView.this.T;
                if (hVar != null) {
                    hVar.a();
                }
            }

            @Override // com.anythink.core.common.b.l
            public final void onDeeplinkCallback(boolean z) {
            }

            @Override // com.anythink.core.common.b.l
            public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            }
        });
        if (!this.G) {
            int i = ((BaseScreenATView) this).v;
            if (1 == i || 3 != i) {
                return;
            }
            if (X()) {
                p();
                int i2 = this.C;
                if (i2 >= 0) {
                    if (i2 > 0) {
                        this.ag.a(this.ah, i2, true);
                        return;
                    } else {
                        I();
                        return;
                    }
                }
                return;
            }
        }
        q();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void p() {
        View view = this.ad;
        if (view != null) {
            this.K.addView(view, 0, new RelativeLayout.LayoutParams(-1, -1));
            c(((int) this.af.getVideoDuration()) * 1000);
            E();
            R();
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final int r() {
        int i = this.E;
        return i == 8 ? i : this.x < this.y ? this.W >= this.aa ? 1 : 5 : this.W < this.aa ? 2 : 6;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void v() {
        String strY = this.c.y();
        if (TextUtils.isEmpty(strY)) {
            return;
        }
        e.a();
        int[] iArrA = c.a(e.a(2, strY));
        if (iArrA != null) {
            int i = iArrA[0];
            this.ab = i;
            int i2 = iArrA[1];
            this.ac = i2;
            this.W = i;
            this.aa = i2;
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void w() {
        PanelView panelView = this.M;
        if (panelView != null) {
            panelView.setVisibility(4);
            this.M.init(this.c, this.b, this.w, false, new PanelView.a() { // from class: com.anythink.basead.ui.ThirdPartyFullScreenATView.4
                @Override // com.anythink.basead.ui.PanelView.a
                public final void a(int i, int i2) {
                }

                @Override // com.anythink.basead.ui.PanelView.a
                public final boolean a() {
                    return false;
                }
            });
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void x() {
        super.x();
        if (this.M != null) {
            if (com.anythink.basead.a.d.a(this.c)) {
                this.E = 0;
            } else {
                this.E = 8;
            }
            this.M.setLayoutType(this.E);
            if (this.E == 8 && this.b.n.D() == 0) {
                this.M.getCTAButton().setVisibility(8);
            }
            this.M.setVisibility(0);
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void z() {
        MuteImageView muteImageView = this.S;
        if (muteImageView == null) {
            return;
        }
        muteImageView.setMute(this.I);
        this.S.setVisibility(4);
        this.S.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.ThirdPartyFullScreenATView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ThirdPartyFullScreenATView thirdPartyFullScreenATView = ThirdPartyFullScreenATView.this;
                if (thirdPartyFullScreenATView.ad == null || thirdPartyFullScreenATView.S == null || thirdPartyFullScreenATView.af == null) {
                    return;
                }
                ThirdPartyFullScreenATView thirdPartyFullScreenATView2 = ThirdPartyFullScreenATView.this;
                boolean z = !thirdPartyFullScreenATView2.I;
                thirdPartyFullScreenATView2.I = z;
                thirdPartyFullScreenATView2.S.setMute(z);
                ThirdPartyFullScreenATView.this.af.setVideoMute(ThirdPartyFullScreenATView.this.I);
            }
        });
    }
}
