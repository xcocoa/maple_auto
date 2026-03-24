package com.octopus.ad.internal.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.octopus.ad.ADBidEvent;
import com.octopus.ad.AdActivity;
import com.octopus.ad.AdLifeControl;
import com.octopus.ad.AdRequest;
import com.octopus.ad.AppEventListener;
import com.octopus.ad.BannerAdListener;
import com.octopus.ad.BannerAdView;
import com.octopus.ad.IBidding;
import com.octopus.ad.InterstitialAdListener;
import com.octopus.ad.R;
import com.octopus.ad.RewardVideoAdListener;
import com.octopus.ad.SplashAdListener;
import com.octopus.ad.b.b;
import com.octopus.ad.b.e;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.LoadingDialogUtil;
import com.octopus.ad.internal.utilities.SPUtils;
import com.octopus.ad.internal.utilities.StringUtil;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.video.AdVideoView;
import com.octopus.ad.internal.view.AdWebView;
import com.octopus.ad.internal.view.e;
import com.octopus.ad.utils.ThreadUtils;
import com.octopus.ad.widget.SkipView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdViewImpl extends FrameLayout implements AdLifeControl, IBidding, com.octopus.ad.internal.a {
    private static FrameLayout ah;
    private static e ai;
    private static AdWebView.b aj;
    private boolean A;
    private AppCompatTextView B;
    private AppCompatTextView C;
    private ImageView D;
    private com.octopus.ad.a.a E;
    private AppCompatImageView F;
    private long G;
    private GestureDetector H;
    private float I;
    private float J;
    private float K;
    private float L;
    private FrameLayout M;
    private FrameLayout N;
    private int O;
    private String P;
    private String Q;
    private String R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    public ViewGroup a;
    private boolean aa;
    private boolean ab;
    private int ac;
    private View ad;
    private AdWebView ae;
    private boolean af;
    private final d ag;
    public a b;
    public int bottomPadding;
    public com.octopus.ad.internal.view.b c;
    public int clickCount;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public com.octopus.ad.internal.d h;
    public a.C0197a i;
    public boolean j;
    public boolean k;
    public int l;
    public int leftPadding;
    public int loadCount;
    private View m;
    public com.octopus.ad.internal.c mAdFetcher;
    private int n;
    private int o;
    private String p;
    private SplashAdListener q;
    private InterstitialAdListener r;
    public int rightPadding;
    private BannerAdListener s;
    public ServerResponse serverResponse;
    private RewardVideoAdListener t;
    public int topPadding;
    private AppEventListener u;
    private c v;
    private final Handler w;
    private b x;
    private boolean y;
    private boolean z;

    /* JADX INFO: renamed from: com.octopus.ad.internal.view.AdViewImpl$16, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass16 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e.a.values().length];
            a = iArr;
            try {
                iArr[e.a.bottom_center.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e.a.bottom_left.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[e.a.bottom_right.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[e.a.center.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[e.a.top_center.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[e.a.top_left.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[e.a.top_right.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static class a {
        public EnumC0201a a = EnumC0201a.UNCHANGE;
        public boolean b = false;

        /* JADX INFO: renamed from: com.octopus.ad.internal.view.AdViewImpl$a$a, reason: collision with other inner class name */
        public enum EnumC0201a {
            UNCHANGE,
            STATE_PREPARE_CHANGE,
            STATE_BACKGROUND,
            FINISHCLOSE
        }

        public synchronized void a(EnumC0201a enumC0201a) {
            EnumC0201a enumC0201a2 = EnumC0201a.STATE_PREPARE_CHANGE;
            if (enumC0201a == enumC0201a2 && this.a == EnumC0201a.UNCHANGE) {
                this.a = enumC0201a2;
            }
            EnumC0201a enumC0201a3 = EnumC0201a.STATE_BACKGROUND;
            if (enumC0201a == enumC0201a3 && this.a == enumC0201a2) {
                this.a = enumC0201a3;
            }
            EnumC0201a enumC0201a4 = EnumC0201a.FINISHCLOSE;
            if (enumC0201a == enumC0201a4 && this.a == enumC0201a3 && this.b) {
                this.a = enumC0201a4;
            }
        }

        public void a(boolean z) {
            this.b = z;
        }

        public boolean a() {
            return this.b;
        }

        public void b() {
            this.a = EnumC0201a.UNCHANGE;
        }

        public EnumC0201a c() {
            return this.a;
        }
    }

    public class b implements com.octopus.ad.internal.b {
        private Handler b;
        private com.octopus.ad.internal.network.b c;

        public b(Handler handler) {
            this.b = handler;
        }

        @Override // com.octopus.ad.internal.b
        public void a() {
            AdViewImpl.this.G = System.currentTimeMillis();
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.2
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl adViewImpl = AdViewImpl.this;
                    if (adViewImpl.serverResponse != null) {
                        Context context = adViewImpl.getContext();
                        AdViewImpl adViewImpl2 = AdViewImpl.this;
                        AdViewImpl.setAutoClickStrategy(context, adViewImpl2.serverResponse, adViewImpl2.ag);
                        AdViewImpl adViewImpl3 = AdViewImpl.this;
                        adViewImpl3.ab = AdViewImpl.isCallBackClick(adViewImpl3.serverResponse);
                        if (!AdViewImpl.this.ab) {
                            AdViewImpl.this.ac = 8;
                        }
                    }
                    AdViewImpl adViewImpl4 = AdViewImpl.this;
                    if (adViewImpl4.j) {
                        if (adViewImpl4.ad != null && (AdViewImpl.this.ad instanceof AdVideoView)) {
                            ((AdVideoView) AdViewImpl.this.ad).setOpt(AdViewImpl.this.ac);
                        }
                        if (AdViewImpl.this.t != null) {
                            AdViewImpl.this.t.onRewardVideoAdShown();
                            return;
                        }
                        return;
                    }
                    adViewImpl4.ae.setOpt(AdViewImpl.this.ac);
                    if (AdViewImpl.this.r != null) {
                        Log.e("OctopusAd", "enter Octopus ad show");
                        AdViewImpl.this.r.onAdShown();
                    }
                    if (AdViewImpl.this.s != null) {
                        Log.e("OctopusAd", "enter Octopus ad show");
                        AdViewImpl.this.s.onAdShown();
                    }
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a(final int i) {
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.3
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl.this.onAdFailedToLoad(i);
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a(final long j) {
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.8
                @Override // java.lang.Runnable
                public void run() {
                    if (AdViewImpl.this.q == null || b.this.c == null || !b.this.c.a().equals(l.SPLASH)) {
                        return;
                    }
                    AdViewImpl.this.q.onAdTick(j);
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a(final com.octopus.ad.internal.network.b bVar) {
            this.c = bVar;
            if (!bVar.a().equals(l.BANNER) && !bVar.a().equals(l.INTERSTITIAL) && !bVar.a().equals(l.SPLASH)) {
                a(AdRequest.INVALID_MEDIA_TYPE);
            } else if (AdViewImpl.this.serverResponse.getFilter() != 1) {
                this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AdViewImpl.this.setCreativeWidth(bVar.b().getCreativeWidth());
                        AdViewImpl.this.setCreativeHeight(bVar.b().getCreativeHeight());
                        AdViewImpl.this.setAdExtInfo(bVar.d());
                        AdViewImpl.this.setPrice(bVar.e());
                        AdViewImpl.this.setTagId(bVar.f());
                        AdViewImpl.this.setAdId(bVar.g());
                        AdViewImpl.this.a(bVar.b());
                        AdViewImpl adViewImpl = AdViewImpl.this;
                        if (adViewImpl.j) {
                            if (adViewImpl.t != null) {
                                AdViewImpl.this.t.onRewardVideoAdLoaded();
                            }
                        } else {
                            if (adViewImpl.r == null || !bVar.a().equals(l.INTERSTITIAL)) {
                                return;
                            }
                            Log.e("OctopusAd", "enter Octopus ad load");
                            AdViewImpl.this.r.onAdLoaded();
                        }
                    }
                });
            } else {
                a(AdRequest.ERROR_CODE_NO_FILL);
                AdViewImpl.this.sendLossNotice(bVar.e() + 100, "1001", ADBidEvent.OTHER);
            }
        }

        @Override // com.octopus.ad.internal.b
        public void a(final String str, final int i) {
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.7
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl adViewImpl = AdViewImpl.this;
                    if (!adViewImpl.j || adViewImpl.t == null) {
                        return;
                    }
                    AdViewImpl.this.t.onRewarded(new p(str, i));
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void a(final String str, final String str2) {
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.6
                @Override // java.lang.Runnable
                public void run() {
                    if (AdViewImpl.this.u != null) {
                        AdViewImpl.this.u.onAppEvent(str, str2);
                    }
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void b() {
            AdViewImpl.this.U = true;
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.4
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl adViewImpl = AdViewImpl.this;
                    if (!adViewImpl.j) {
                        if (adViewImpl.q != null) {
                            AdViewImpl.this.q.onAdClosed();
                        }
                        if (AdViewImpl.this.r != null) {
                            AdViewImpl.this.r.onAdClosed();
                        }
                        if (AdViewImpl.this.s != null) {
                            AdViewImpl.this.s.onAdClosed();
                        }
                    } else if (adViewImpl.t != null) {
                        AdViewImpl.this.t.onRewardVideoAdClosed();
                    }
                    AdViewImpl.this.b.b();
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void c() {
        }

        @Override // com.octopus.ad.internal.b
        public void d() {
            this.b.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.b.5
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl adViewImpl = AdViewImpl.this;
                    if (adViewImpl.j) {
                        if (adViewImpl.t != null) {
                            AdViewImpl.this.b.a(a.EnumC0201a.STATE_PREPARE_CHANGE);
                            Log.i("OctopusAd", "enter Octopus ad click");
                            if (!AdViewImpl.this.ab || AdViewImpl.this.W) {
                                return;
                            }
                            AdViewImpl.this.t.onRewardVideoAdClicked();
                            return;
                        }
                        return;
                    }
                    adViewImpl.b.a(a.EnumC0201a.STATE_PREPARE_CHANGE);
                    Log.i("OctopusAd", "enter Octopus ad click");
                    if (!AdViewImpl.this.ab || AdViewImpl.this.W) {
                        return;
                    }
                    if (AdViewImpl.this.q != null) {
                        AdViewImpl.this.q.onAdClicked();
                    }
                    if (AdViewImpl.this.r != null) {
                        AdViewImpl.this.r.onAdClicked();
                    }
                    if (AdViewImpl.this.s != null) {
                        AdViewImpl.this.s.onAdClicked();
                    }
                }
            });
        }

        @Override // com.octopus.ad.internal.b
        public void e() {
        }

        @Override // com.octopus.ad.internal.b
        public void f() {
        }
    }

    public static class c {
        public static final ArrayList<Pair<String, c>> a = new ArrayList<>();
    }

    public interface d {
        void a(int i);
    }

    public AdViewImpl(Context context) {
        this(context, (AttributeSet) null, 0);
    }

    public AdViewImpl(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdViewImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = null;
        this.m = null;
        this.p = "";
        this.b = new a();
        this.w = new Handler(Looper.getMainLooper()) { // from class: com.octopus.ad.internal.view.AdViewImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = true;
        this.y = false;
        this.z = true;
        this.h = null;
        this.i = null;
        this.A = false;
        this.j = false;
        this.k = false;
        this.ab = true;
        this.ac = 0;
        this.af = false;
        this.ag = new d() { // from class: com.octopus.ad.internal.view.AdViewImpl.19
            @Override // com.octopus.ad.internal.view.AdViewImpl.d
            public void a(int i2) {
                if (AdViewImpl.this.U || AdViewImpl.this.V || AdViewImpl.this.W) {
                    return;
                }
                AdViewImpl adViewImpl = AdViewImpl.this;
                if (adViewImpl.serverResponse != null) {
                    SPUtils.putFrequency(adViewImpl.getContext(), "frequency" + AdViewImpl.this.serverResponse.getTagId(), i2);
                    AdViewImpl.this.g();
                }
            }
        };
        this.l = 0;
        a(context, attributeSet);
    }

    public AdViewImpl(Context context, ViewGroup viewGroup, View view) {
        super(context, null, 0);
        this.a = null;
        this.m = null;
        this.p = "";
        this.b = new a();
        this.w = new Handler(Looper.getMainLooper()) { // from class: com.octopus.ad.internal.view.AdViewImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = true;
        this.y = false;
        this.z = true;
        this.h = null;
        this.i = null;
        this.A = false;
        this.j = false;
        this.k = false;
        this.ab = true;
        this.ac = 0;
        this.af = false;
        this.ag = new d() { // from class: com.octopus.ad.internal.view.AdViewImpl.19
            @Override // com.octopus.ad.internal.view.AdViewImpl.d
            public void a(int i2) {
                if (AdViewImpl.this.U || AdViewImpl.this.V || AdViewImpl.this.W) {
                    return;
                }
                AdViewImpl adViewImpl = AdViewImpl.this;
                if (adViewImpl.serverResponse != null) {
                    SPUtils.putFrequency(adViewImpl.getContext(), "frequency" + AdViewImpl.this.serverResponse.getTagId(), i2);
                    AdViewImpl.this.g();
                }
            }
        };
        this.l = 0;
        this.a = viewGroup;
        if (view == null) {
            this.S = true;
            this.m = new SkipView(context);
        } else {
            this.S = false;
            this.m = view;
        }
        a(context, (AttributeSet) null);
    }

    private void a(int i, int i2) {
        this.d = true;
        if (getLayoutParams() != null) {
            if (getLayoutParams().width > 0) {
                getLayoutParams().width = i;
            }
            if (getLayoutParams().height > 0) {
                getLayoutParams().height = i2;
            }
        }
        if (this.y && (getParent() instanceof View)) {
            View view = (View) getParent();
            if (view.getLayoutParams() != null) {
                if (view.getLayoutParams().width > 0) {
                    view.getLayoutParams().width = i;
                }
                if (view.getLayoutParams().height > 0) {
                    view.getLayoutParams().height = i2;
                }
            }
        }
    }

    private void a(com.octopus.ad.b.c cVar, int i) {
        this.V = true;
        AdWebView adWebView = this.ae;
        if (adWebView != null) {
            adWebView.handleClickView(cVar, System.currentTimeMillis(), System.currentTimeMillis() + 10, i, this.ac);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        int i;
        if (this.ae != null) {
            if (isAoClickCallBack(this.serverResponse)) {
                i = 0;
                this.W = false;
                this.ab = true;
            } else {
                this.W = true;
                i = 9;
            }
            this.ac = i;
            this.ae.handleClickView(null, System.currentTimeMillis(), System.currentTimeMillis() + 10, this.ac);
        }
    }

    public static FrameLayout getMRAIDFullscreenContainer() {
        return ah;
    }

    public static e getMRAIDFullscreenImplementation() {
        return ai;
    }

    public static AdWebView.b getMRAIDFullscreenListener() {
        return aj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ServerResponse serverResponse;
        AdWebView adWebView = this.ae;
        if (adWebView == null || (serverResponse = adWebView.ad) == null || this.serverResponse == null) {
            return;
        }
        this.aa = true;
        serverResponse.setIsLiftUp(true);
        i();
        if (com.octopus.ad.utils.g.a(this.serverResponse.getAcRatio())) {
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.21
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl.this.g();
                }
            }, new Random().nextInt(com.anythink.expressad.d.b.b) + com.anythink.expressad.d.b.b);
        }
    }

    private void i() {
        AdWebView adWebView = this.ae;
        adWebView.ad.handleView(adWebView, this.h.a());
    }

    public static boolean isAoClickCallBack(ServerResponse serverResponse) {
        b.t strategy;
        b.g gVarB;
        if (serverResponse == null || (strategy = serverResponse.getStrategy()) == null || (gVarB = strategy.b()) == null) {
            return false;
        }
        return com.octopus.ad.utils.g.a(gVarB.d());
    }

    public static boolean isCallBackClick(ServerResponse serverResponse) {
        b.t strategy;
        b.h hVarC;
        if (serverResponse == null || (strategy = serverResponse.getStrategy()) == null || (hVarC = strategy.c()) == null) {
            return true;
        }
        return com.octopus.ad.utils.g.a(hVarC.a());
    }

    public static void setAutoClickStrategy(Context context, ServerResponse serverResponse, final d dVar) {
        b.t strategy;
        b.g gVarB;
        if (serverResponse == null || (strategy = serverResponse.getStrategy()) == null || (gVarB = strategy.b()) == null || !com.octopus.ad.utils.g.a(gVarB.c())) {
            return;
        }
        SPUtils.refreshFrequencyDate(context);
        final int[] iArr = {gVarB.a()};
        int frequency = SPUtils.getFrequency(context, "frequency" + serverResponse.getTagId());
        if (frequency != -1) {
            iArr[0] = frequency;
        }
        if (iArr[0] > 0) {
            com.octopus.ad.utils.c.a(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.18
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d dVar2 = dVar;
                        int[] iArr2 = iArr;
                        int i = iArr2[0] - 1;
                        iArr2[0] = i;
                        dVar2.a(i);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }, ((long) gVarB.b()) * 1000);
        }
    }

    @SuppressLint({"DefaultLocale"})
    private void setDefaultSkip(Context context) {
        int screenWidth = (int) (((double) ViewUtil.getScreenWidth(context)) * 0.15d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(screenWidth, (int) (((double) screenWidth) * 0.45d));
        layoutParams.gravity = 53;
        layoutParams.topMargin = ViewUtil.dip2px(context, 20.0f);
        layoutParams.rightMargin = ViewUtil.dip2px(context, 20.0f);
        addView(this.m, layoutParams);
        View view = this.m;
        if (view != null) {
            ((SkipView) view).setData(1, 0);
        }
    }

    public static void setDpUpStrategy(Context context, ServerResponse serverResponse, final d dVar) {
        b.t strategy;
        b.k kVarD;
        boolean zA;
        if (serverResponse == null || (strategy = serverResponse.getStrategy()) == null || (kVarD = strategy.d()) == null || !kVarD.d() || !com.octopus.ad.utils.g.a(kVarD.c())) {
            return;
        }
        List<String> listE = kVarD.e();
        if (listE != null && listE.size() > 0) {
            Iterator<String> it = listE.iterator();
            zA = false;
            while (it.hasNext()) {
                String[] strArrSplit = it.next().split("-");
                if (strArrSplit.length == 2 && (zA = com.octopus.ad.utils.g.a(strArrSplit[0], strArrSplit[1]))) {
                    break;
                }
            }
        } else {
            zA = false;
        }
        if (zA) {
            SPUtils.refreshFrequencyDate(context);
            final int[] iArr = {kVarD.a()};
            int frequency = SPUtils.getFrequency(context, "liftUpfrequency" + serverResponse.getTagId());
            if (frequency != -1) {
                iArr[0] = frequency;
            }
            if (iArr[0] > 0) {
                com.octopus.ad.utils.c.a(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.20
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            d dVar2 = dVar;
                            int[] iArr2 = iArr;
                            int i = iArr2[0] - 1;
                            iArr2[0] = i;
                            dVar2.a(i);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                }, ((long) kVarD.b()) * 1000);
            }
        }
    }

    public static void setMRAIDFullscreenContainer(FrameLayout frameLayout) {
        ah = frameLayout;
    }

    public static void setMRAIDFullscreenImplementation(e eVar) {
        ai = eVar;
    }

    public static void setMRAIDFullscreenListener(AdWebView.b bVar) {
        aj = bVar;
    }

    public Context a(View view) {
        return view.getContext() instanceof MutableContextWrapper ? ((MutableContextWrapper) view.getContext()).getBaseContext() : getContext();
    }

    public void a(int i, int i2, int i3, int i4, e.a aVar, boolean z, final e eVar) {
        a(i, i2);
        ViewUtil.removeChildFromParent(this.C);
        if (this.l <= 0) {
            this.l = (int) (eVar.b.getContext().getResources().getDisplayMetrics().density * 50.0f);
        }
        this.C = new AppCompatTextView(getContext()) { // from class: com.octopus.ad.internal.view.AdViewImpl.13
            @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
            @SuppressLint({"NewApi", "DrawAllocation"})
            public void onLayout(boolean z3, int i5, int i6, int i7, int i8) {
                Activity activity;
                boolean z4;
                Point point;
                int i9;
                int i10;
                int[] iArr = new int[2];
                getLocationOnScreen(iArr);
                Point point2 = new Point(0, 0);
                try {
                    activity = (Activity) eVar.b.getContext();
                    z4 = true;
                } catch (ClassCastException unused) {
                    activity = null;
                    z4 = false;
                }
                if (z4) {
                    activity.getWindowManager().getDefaultDisplay().getSize(point2);
                }
                int[] iArr2 = new int[2];
                if (AdViewImpl.this.getMediaType().equals(l.INTERSTITIAL)) {
                    InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE.measure(0, 0);
                    InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE.getLocationOnScreen(iArr2);
                    point = new Point(InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE.getMeasuredWidth(), InterstitialAdViewImpl.INTERSTITIALADVIEW_TO_USE.getMeasuredHeight());
                } else {
                    AdViewImpl.this.measure(0, 0);
                    AdViewImpl.this.getLocationOnScreen(iArr2);
                    point = new Point(AdViewImpl.this.getMeasuredWidth(), AdViewImpl.this.getMeasuredHeight());
                }
                int i11 = point.x;
                int i12 = AdViewImpl.this.l;
                int iMin = i11 - i12;
                int iMin2 = point.y - i12;
                if (z4) {
                    iMin = (iArr2[0] + Math.min(point2.x, i11)) - AdViewImpl.this.l;
                    iMin2 = (iArr2[1] + Math.min(point2.y, point.y)) - AdViewImpl.this.l;
                    i9 = iArr2[0];
                    i10 = iArr2[1];
                } else {
                    i9 = 0;
                    i10 = 0;
                }
                if (iArr[0] + 1 < i9 || iArr[0] - 1 > iMin || iArr[1] + 1 < i10 || iArr[1] - 1 > iMin2) {
                    final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 53);
                    layoutParams.setMargins(40, 40, 40, 40);
                    post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.13.1
                        @Override // java.lang.Runnable
                        public void run() {
                            setLayoutParams(layoutParams);
                        }
                    });
                    AdViewImpl.this.C.setBackgroundDrawable(getResources().getDrawable(R.drawable.oct_close_background));
                    AdViewImpl.this.C.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.oct_text_selector));
                    AdViewImpl.this.C.setTextSize(2, 16.0f);
                    AdViewImpl.this.C.setText(R.string.skip_ad);
                }
            }
        };
        int i5 = this.l;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5, 17);
        int i6 = this.l;
        int i7 = (i2 / 2) - (i6 / 2);
        int i8 = (i / 2) - (i6 / 2);
        int i9 = AnonymousClass16.a[aVar.ordinal()];
        if (i9 == 1) {
            layoutParams.topMargin = i7;
        } else {
            if (i9 == 2) {
                layoutParams.rightMargin = i8;
            } else if (i9 == 3) {
                layoutParams.leftMargin = i8;
            } else if (i9 == 5) {
                layoutParams.bottomMargin = i7;
            } else {
                if (i9 == 6) {
                    layoutParams.rightMargin = i8;
                } else if (i9 == 7) {
                    layoutParams.leftMargin = i8;
                }
                layoutParams.bottomMargin = i7;
            }
            layoutParams.topMargin = i7;
        }
        this.C.setLayoutParams(layoutParams);
        this.C.setBackgroundColor(0);
        this.C.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                eVar.a();
            }
        });
        if (eVar.b.getParent() != null) {
            ((ViewGroup) eVar.b.getParent()).addView(this.C);
        }
    }

    public void a(int i, int i2, e eVar) {
        ViewUtil.removeChildFromParent(this.C);
        this.C = null;
        AdWebView adWebView = eVar.b;
        if (adWebView.a) {
            ViewUtil.removeChildFromParent(adWebView);
            if (eVar.d() != null) {
                eVar.d().addView(eVar.b, 0);
            }
            if (eVar.c() != null) {
                eVar.c().finish();
            }
            if (getMediaType().equals(l.BANNER) && (eVar.b.getContext() instanceof MutableContextWrapper)) {
                ((MutableContextWrapper) eVar.b.getContext()).setBaseContext(getContext());
            }
        }
        ah = null;
        ai = null;
        aj = null;
        a(i, i2);
        this.f = true;
        this.e = false;
    }

    public void a(int i, int i2, boolean z, final e eVar, AdWebView.b bVar) {
        a(i, i2);
        AppCompatTextView appCompatTextViewCreateCloseButton = ViewUtil.createCloseButton(getContext());
        this.C = appCompatTextViewCreateCloseButton;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) appCompatTextViewCreateCloseButton.getLayoutParams();
        if (!eVar.b.a && getChildAt(0) != null) {
            layoutParams.rightMargin = (getMeasuredWidth() - getChildAt(0).getMeasuredWidth()) / 2;
        }
        this.C.setLayoutParams(layoutParams);
        this.C.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                eVar.a();
            }
        });
        if (eVar.b.a) {
            a(eVar, z, bVar);
        } else {
            addView(this.C);
        }
        this.e = true;
    }

    public void a(Context context, AttributeSet attributeSet) {
        setBackgroundColor(0);
        this.x = new b(this.w);
        this.h = new com.octopus.ad.internal.d(context, StringUtil.createRequestId());
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.12
            @Override // java.lang.Runnable
            public void run() {
                AdViewImpl.this.H = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.12.1
                    @Override // android.view.GestureDetector.OnGestureListener
                    public boolean onDown(MotionEvent motionEvent) {
                        return false;
                    }

                    @Override // android.view.GestureDetector.OnGestureListener
                    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                        return false;
                    }

                    @Override // android.view.GestureDetector.OnGestureListener
                    public void onLongPress(MotionEvent motionEvent) {
                    }

                    @Override // android.view.GestureDetector.OnGestureListener
                    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                        return false;
                    }

                    @Override // android.view.GestureDetector.OnGestureListener
                    public void onShowPress(MotionEvent motionEvent) {
                    }

                    @Override // android.view.GestureDetector.OnGestureListener
                    public boolean onSingleTapUp(MotionEvent motionEvent) {
                        AdViewImpl.this.I = motionEvent.getX();
                        AdViewImpl.this.J = motionEvent.getY();
                        AdViewImpl.this.K = motionEvent.getRawX();
                        AdViewImpl.this.L = motionEvent.getRawY();
                        AdViewImpl adViewImpl = AdViewImpl.this;
                        int i = adViewImpl.clickCount;
                        int i2 = adViewImpl.loadCount;
                        return true;
                    }
                });
            }
        });
        try {
            HaoboLog.setErrorContext(getContext().getApplicationContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
        setPadding(0, 0, 0, 0);
        this.mAdFetcher = new com.octopus.ad.internal.c(this);
        if (attributeSet != null) {
            b(context, attributeSet);
        }
    }

    public abstract void a(com.octopus.ad.internal.view.b bVar);

    public void a(final e eVar, boolean z, AdWebView.b bVar) {
        eVar.a((ViewGroup) eVar.b.getParent());
        FrameLayout frameLayout = new FrameLayout(getContext());
        ViewUtil.removeChildFromParent(eVar.b);
        frameLayout.addView(eVar.b);
        if (this.C == null) {
            AppCompatTextView appCompatTextViewCreateCloseButton = ViewUtil.createCloseButton(getContext());
            this.C = appCompatTextViewCreateCloseButton;
            appCompatTextViewCreateCloseButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.10
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    eVar.a();
                }
            });
        }
        frameLayout.addView(this.C);
        ah = frameLayout;
        ai = eVar;
        aj = bVar;
        Class clsA = AdActivity.a();
        try {
            Intent intent = new Intent(getContext(), (Class<?>) clsA);
            intent.putExtra("ACTIVITY_TYPE", ServerResponse.EXTRAS_KEY_MRAID);
            getContext().startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            HaoboLog.e(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adactivity_missing, clsA.getName()));
            ah = null;
            ai = null;
            aj = null;
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i) {
        com.octopus.ad.b.c cVar = new com.octopus.ad.b.c();
        if (!TextUtils.isEmpty(str)) {
            cVar.a(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            cVar.b(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            cVar.c(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            cVar.d(str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            cVar.e(str5);
        }
        if (!TextUtils.isEmpty(str6)) {
            cVar.f(str6);
        }
        if (!TextUtils.isEmpty(str7)) {
            cVar.g(str7);
        }
        if (!TextUtils.isEmpty(str8)) {
            cVar.h(str8);
        }
        a(cVar, i);
    }

    public boolean a() {
        return this.e;
    }

    public abstract void activityOnDestroy();

    public abstract void activityOnPause();

    public abstract void activityOnResume();

    public void addBannerCloseBtn() {
        ViewUtil.removeChildFromParent(this.D);
        ImageView imageViewCreateImageCloseButton = ViewUtil.createImageCloseButton(getContext());
        this.D = imageViewCreateImageCloseButton;
        imageViewCreateImageCloseButton.setVisibility(0);
        this.D.setEnabled(true);
        this.D.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdViewImpl.this.getAdDispatcher().b();
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addCloseButton(int i, int i2, int i3, final View view, final boolean z) {
        Activity activity;
        this.ad = view;
        ViewUtil.removeChildFromParent(this.C);
        ViewUtil.removeChildFromParent(this.B);
        com.octopus.ad.a.a aVar = this.E;
        if (aVar != null) {
            aVar.d();
        }
        this.C = ViewUtil.createCloseButton(getContext(), this.leftPadding, this.topPadding, this.rightPadding, this.bottomPadding);
        final int i4 = 0;
        if (i3 != -1) {
            this.B = ViewUtil.createCountDown(getContext(), i3, this.leftPadding, this.topPadding, this.rightPadding, this.bottomPadding);
            if (i2 > 0) {
                this.C.setEnabled(false);
                i4 = i3 - i2;
            } else if (i2 == -1) {
                this.C.setVisibility(8);
            }
            com.octopus.ad.a.a aVar2 = new com.octopus.ad.a.a(i3 * 1000, 50L);
            this.E = aVar2;
            aVar2.a(new com.octopus.ad.a.b() { // from class: com.octopus.ad.internal.view.AdViewImpl.6
                @Override // com.octopus.ad.a.b
                public void a() {
                    AdViewImpl.this.B.setText("0");
                    if (!AdViewImpl.this.e()) {
                        AdViewImpl.this.b.a(true);
                        if (AdViewImpl.this.b.a() && (AdViewImpl.this.b.c() == a.EnumC0201a.UNCHANGE || AdViewImpl.this.b.c() == a.EnumC0201a.STATE_PREPARE_CHANGE)) {
                            AdViewImpl.this.getAdDispatcher().b();
                        }
                        if (AdViewImpl.this.a == null) {
                            HaoboLog.e(HaoboLog.jsLogTag, "Should not close banner!");
                            return;
                        }
                        return;
                    }
                    if (!z) {
                        AdViewImpl.this.getAdDispatcher().b();
                        Activity activity2 = AdViewImpl.this.getActivity(view);
                        if (activity2 == null || activity2.isFinishing()) {
                            return;
                        }
                        activity2.finish();
                        return;
                    }
                    View view2 = view;
                    if (view2 instanceof AdWebView) {
                        if (!((AdWebView) view2).loadAdBy(1)) {
                            return;
                        }
                    } else if (!(view2 instanceof AdVideoView) || !((AdVideoView) view2).getAdWebView().loadAdBy(1)) {
                        return;
                    }
                    ((com.octopus.ad.internal.a.b) ((InterstitialAdViewImpl) AdViewImpl.this).getAdImplementation()).g();
                }

                @Override // com.octopus.ad.a.b
                public void a(long j) {
                    int i5 = (int) ((j / 1000) + 1);
                    int i6 = i4;
                    if (i6 > 0 && i5 <= i6) {
                        AdViewImpl.this.C.setEnabled(true);
                    }
                    AdViewImpl.this.B.setText(Integer.toString(i5));
                }

                @Override // com.octopus.ad.a.b
                public void b() {
                }
            });
            this.E.a();
            if (view instanceof AdVideoView) {
                ((AdVideoView) view).setCountDownTimer(this.E);
            }
        } else {
            if (i2 == -1 || i == -1) {
                if (i == -1) {
                    if (!z || (activity = getActivity(view)) == null || activity.isFinishing()) {
                        return;
                    }
                    LoadingDialogUtil.getInstance().showLoadingDialog(activity);
                    return;
                }
                this.B = ViewUtil.createCountDown(getContext(), i, this.leftPadding, this.topPadding, this.rightPadding, this.bottomPadding);
                com.octopus.ad.a.a aVar3 = new com.octopus.ad.a.a(i * 1000, 50L);
                this.E = aVar3;
                aVar3.a(new com.octopus.ad.a.b() { // from class: com.octopus.ad.internal.view.AdViewImpl.8
                    @Override // com.octopus.ad.a.b
                    public void a() {
                        AdViewImpl.this.B.setText("0");
                        AdViewImpl.this.B.setVisibility(8);
                    }

                    @Override // com.octopus.ad.a.b
                    public void a(long j) {
                        AdViewImpl.this.B.setText(Integer.toString((int) ((j / 1000) + 1)));
                    }

                    @Override // com.octopus.ad.a.b
                    public void b() {
                    }
                });
                this.E.a();
                if (view instanceof AdVideoView) {
                    ((AdVideoView) view).setCountDownTimer(this.E);
                }
                ViewParent parent = e() ? view.getParent() : getParent();
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).addView(this.B);
                    return;
                }
                return;
            }
            this.B = ViewUtil.createCountDown(getContext(), i, this.leftPadding, this.topPadding, this.rightPadding, this.bottomPadding);
            if (i2 > 0) {
                this.C.setEnabled(false);
                i4 = i - i2;
            }
            com.octopus.ad.a.a aVar4 = new com.octopus.ad.a.a(i * 1000, 50L);
            this.E = aVar4;
            aVar4.a(new com.octopus.ad.a.b() { // from class: com.octopus.ad.internal.view.AdViewImpl.7
                @Override // com.octopus.ad.a.b
                public void a() {
                    AdViewImpl.this.B.setText("关闭");
                    AdViewImpl.this.B.setVisibility(0);
                    AdViewImpl.this.B.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.7.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (AdViewImpl.this.e()) {
                                AdViewImpl.this.getAdDispatcher().b();
                                AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                                Activity activity2 = AdViewImpl.this.getActivity(view);
                                if (activity2 == null || activity2.isFinishing()) {
                                    return;
                                }
                                activity2.finish();
                            }
                        }
                    });
                    AdViewImpl.this.C.setVisibility(8);
                    View view2 = view;
                    if (view2 instanceof AdVideoView) {
                        ((AdVideoView) view2).onRewardVideoAdReward();
                    }
                }

                @Override // com.octopus.ad.a.b
                public void a(long j) {
                    int i5 = (int) ((j / 1000) + 1);
                    AdViewImpl.this.B.setText(Integer.toString(i5));
                    int i6 = i4;
                    if (i6 <= 0 || i5 > i6) {
                        return;
                    }
                    View view2 = view;
                    if (view2 instanceof AdVideoView) {
                        ((AdVideoView) view2).onRewardVideoAdReward();
                    }
                    AdViewImpl.this.C.setEnabled(true);
                    AdViewImpl.this.C.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.7.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            AdViewImpl.this.getAdDispatcher().b();
                            if (AdViewImpl.this.E != null) {
                                AdViewImpl.this.E.d();
                            }
                            AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                            Activity activity2 = AdViewImpl.this.getActivity(view);
                            if (activity2 == null || activity2.isFinishing()) {
                                return;
                            }
                            activity2.finish();
                        }
                    });
                }

                @Override // com.octopus.ad.a.b
                public void b() {
                }
            });
            this.E.a();
            if (view instanceof AdVideoView) {
            }
        }
        this.C.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Activity activity2;
                if (!AdViewImpl.this.e()) {
                    AdViewImpl.this.getAdDispatcher().b();
                    if (AdViewImpl.this.E != null) {
                        AdViewImpl.this.E.d();
                    }
                    if (AdViewImpl.this.a != null) {
                        HaoboLog.e(HaoboLog.jsLogTag, "Should not close banner!");
                        return;
                    }
                    return;
                }
                if (z) {
                    View view3 = view;
                    if (view3 instanceof AdWebView) {
                        if (((AdWebView) view3).loadAdBy(1)) {
                            ((com.octopus.ad.internal.a.b) ((InterstitialAdViewImpl) AdViewImpl.this).getAdImplementation()).g();
                            return;
                        }
                        return;
                    } else {
                        if (!(view3 instanceof AdVideoView)) {
                            return;
                        }
                        AdViewImpl.this.getAdDispatcher().b();
                        if (AdViewImpl.this.E != null) {
                            AdViewImpl.this.E.d();
                        }
                        activity2 = AdViewImpl.this.getActivity(view);
                        if (activity2 == null || activity2.isFinishing()) {
                            return;
                        }
                    }
                } else {
                    AdViewImpl.this.getAdDispatcher().b();
                    activity2 = AdViewImpl.this.getActivity(view);
                    if (activity2 == null || activity2.isFinishing()) {
                        return;
                    } else {
                        activity2.onBackPressed();
                    }
                }
                activity2.finish();
            }
        });
        ViewParent parent2 = e() ? view.getParent() : getParent();
        if (parent2 instanceof FrameLayout) {
            FrameLayout frameLayout = (FrameLayout) parent2;
            frameLayout.addView(this.C);
            frameLayout.addView(this.B);
        }
    }

    public void addInterstitialCloseButton(int i, int i2, final View view, final boolean z) {
        ViewUtil.removeChildFromParent(this.B);
        if (i2 != -1) {
            this.B = ViewUtil.createInterstitialCountDown(getContext(), i2);
            final int i3 = i > 0 ? i2 - i : 0;
            com.octopus.ad.a.a aVar = new com.octopus.ad.a.a(i2 * 1000, 50L);
            this.E = aVar;
            aVar.a(new com.octopus.ad.a.b() { // from class: com.octopus.ad.internal.view.AdViewImpl.23
                @Override // com.octopus.ad.a.b
                public void a() {
                    AdViewImpl.this.B.setText("0");
                    if (!AdViewImpl.this.e()) {
                        AdViewImpl.this.getAdDispatcher().b();
                        if (AdViewImpl.this.a == null) {
                            HaoboLog.e(HaoboLog.jsLogTag, "Should not close banner!");
                            return;
                        }
                        return;
                    }
                    if (!z) {
                        AdViewImpl.this.getAdDispatcher().b();
                        Activity activity = AdViewImpl.this.getActivity(view);
                        if (activity == null || activity.isFinishing()) {
                            return;
                        }
                        activity.finish();
                        return;
                    }
                    View view2 = view;
                    if (view2 instanceof AdWebView) {
                        if (!((AdWebView) view2).loadAdBy(1)) {
                            return;
                        }
                    } else if (!(view2 instanceof AdVideoView) || !((AdVideoView) view2).getAdWebView().loadAdBy(1)) {
                        return;
                    }
                    ((com.octopus.ad.internal.a.b) ((InterstitialAdViewImpl) AdViewImpl.this).getAdImplementation()).g();
                }

                @Override // com.octopus.ad.a.b
                public void a(long j) {
                    int i4 = (int) ((j / 1000) + 1);
                    int i5 = i3;
                    AdViewImpl.this.B.setText(Integer.toString(i4));
                }

                @Override // com.octopus.ad.a.b
                public void b() {
                }
            });
        } else {
            if (i == -1) {
                return;
            }
            this.B = ViewUtil.createInterstitialCountDown(getContext(), i);
            com.octopus.ad.a.a aVar2 = new com.octopus.ad.a.a(i * 1000, 50L);
            this.E = aVar2;
            aVar2.a(new com.octopus.ad.a.b() { // from class: com.octopus.ad.internal.view.AdViewImpl.2
                @Override // com.octopus.ad.a.b
                public void a() {
                    AdViewImpl.this.B.setText("");
                    AdViewImpl.this.B.setBackgroundResource(R.drawable.oct_close);
                    AdViewImpl.this.B.setVisibility(0);
                    AdViewImpl.this.B.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.2.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (AdViewImpl.this.e()) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                if (!z) {
                                    AdViewImpl.this.getAdDispatcher().b();
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    Activity activity = AdViewImpl.this.getActivity(view);
                                    if (activity == null || activity.isFinishing()) {
                                        return;
                                    }
                                    activity.finish();
                                    return;
                                }
                                View view3 = view;
                                if (view3 instanceof AdWebView) {
                                    if (!((AdWebView) view3).loadAdBy(1)) {
                                        return;
                                    }
                                } else if (!(view3 instanceof AdVideoView) || !((AdVideoView) view3).getAdWebView().loadAdBy(1)) {
                                    return;
                                }
                                ((com.octopus.ad.internal.a.b) ((InterstitialAdViewImpl) AdViewImpl.this).getAdImplementation()).g();
                            }
                        }
                    });
                }

                @Override // com.octopus.ad.a.b
                public void a(long j) {
                    AdViewImpl.this.B.setText(Integer.toString((int) ((j / 1000) + 1)));
                }

                @Override // com.octopus.ad.a.b
                public void b() {
                }
            });
        }
        this.E.a();
        ViewParent parent = e() ? view.getParent() : getParent();
        if (parent instanceof FrameLayout) {
            ((FrameLayout) parent).addView(this.B);
        }
    }

    public void addMuteButton(final AdVideoView adVideoView, boolean z) {
        ViewUtil.removeChildFromParent(this.F);
        AppCompatImageView appCompatImageViewCreateMuteButton = ViewUtil.createMuteButton(getContext(), z);
        this.F = appCompatImageViewCreateMuteButton;
        appCompatImageViewCreateMuteButton.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdViewImpl.this.F.setImageResource(adVideoView.toggleMute() ? R.drawable.oct_voice_off : R.drawable.oct_voice_on);
            }
        });
        ViewParent parent = e() ? adVideoView.getParent() : getParent();
        if (parent instanceof FrameLayout) {
            ((FrameLayout) parent).addView(this.F);
        }
    }

    @SuppressLint({"DefaultLocale"})
    public void addSkipView(int i, View view) {
        b.t strategy;
        b.n nVarA;
        ViewUtil.removeChildFromParent(this.C);
        ViewUtil.removeChildFromParent(this.B);
        com.octopus.ad.a.a aVar = this.E;
        if (aVar != null) {
            aVar.d();
        }
        com.octopus.ad.a.a aVar2 = new com.octopus.ad.a.a((i <= 0 ? 5L : i) * 1000, 50L);
        this.E = aVar2;
        aVar2.a(new com.octopus.ad.a.b() { // from class: com.octopus.ad.internal.view.AdViewImpl.4
            @Override // com.octopus.ad.a.b
            public void a() {
                AdViewImpl.this.b.a(true);
                if (AdViewImpl.this.b.a() && (AdViewImpl.this.b.c() == a.EnumC0201a.UNCHANGE || AdViewImpl.this.b.c() == a.EnumC0201a.STATE_PREPARE_CHANGE)) {
                    AdViewImpl.this.getAdDispatcher().b();
                }
                if (AdViewImpl.this.a == null) {
                    HaoboLog.e(HaoboLog.jsLogTag, "Should not close banner!");
                }
            }

            @Override // com.octopus.ad.a.b
            public void a(long j) {
                AdViewImpl.this.getAdDispatcher().a(j);
                int i2 = (int) ((j / 1000) + 1);
                if (AdViewImpl.this.m == null || !AdViewImpl.this.S) {
                    return;
                }
                ((SkipView) AdViewImpl.this.m).setText(String.format("跳过 %d", Integer.valueOf(i2)));
            }

            @Override // com.octopus.ad.a.b
            public void b() {
            }
        });
        this.E.a();
        view.setVisibility(0);
        ServerResponse serverResponse = this.serverResponse;
        if (serverResponse != null && (strategy = serverResponse.getStrategy()) != null && (nVarA = strategy.a()) != null) {
            this.T = com.octopus.ad.utils.g.a(nVarA.a());
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.view.AdViewImpl.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (AdViewImpl.this.T) {
                    AdViewImpl.this.g();
                    return;
                }
                AdViewImpl.this.getAdDispatcher().b();
                if (AdViewImpl.this.E != null) {
                    AdViewImpl.this.E.d();
                }
            }
        });
    }

    public void b() {
        getVisibility();
    }

    public abstract void b(Context context, AttributeSet attributeSet);

    public void c() {
        getVisibility();
    }

    public void clearAdRequest() {
        this.i = null;
    }

    public void createAdLogo(ServerResponse.AdLogoInfo adLogoInfo, ServerResponse.AdLogoInfo adLogoInfo2) {
        ViewUtil.removeChildFromParent(this.M);
        ViewUtil.removeChildFromParent(this.N);
        if (!TextUtils.isEmpty(adLogoInfo.getAdurl())) {
            this.M = ViewUtil.createAdImageView(new MutableContextWrapper(getContext()), adLogoInfo);
        }
        if (TextUtils.isEmpty(adLogoInfo2.getAdurl())) {
            return;
        }
        this.N = ViewUtil.createLogoImageView(new MutableContextWrapper(getContext()), adLogoInfo2);
    }

    public abstract boolean d();

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        HaoboLog.d(HaoboLog.baseLogTag, "called destroy() on AdView");
        com.octopus.ad.internal.view.b bVar = this.c;
        if (bVar != null) {
            bVar.destroy();
            this.c = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.H.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract boolean e();

    public abstract void f();

    public void finalize() {
        try {
            super.finalize();
        } catch (Throwable unused) {
        }
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a();
        }
    }

    public Activity getActivity(View view) {
        return (Activity) a(view);
    }

    public com.octopus.ad.internal.b getAdDispatcher() {
        return this.x;
    }

    public String getAdId() {
        return this.R;
    }

    public com.octopus.ad.internal.d getAdParameters() {
        return this.h;
    }

    public a.C0197a getAdRequest() {
        return this.i;
    }

    public com.octopus.ad.a getAdSize() {
        return new com.octopus.ad.a(this.n, this.o);
    }

    public String getAdSlotId() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.get_placement_id, this.h.c()));
        return this.h.c();
    }

    public AppEventListener getAppEventListener() {
        return this.u;
    }

    public c getBrowserStyle() {
        return this.v;
    }

    public int getContainerHeight() {
        return this.h.i();
    }

    public int getContainerWidth() {
        return this.h.h();
    }

    public int getCreativeHeight() {
        return this.o;
    }

    public int getCreativeWidth() {
        return this.n;
    }

    public String getLandingPageUrl() {
        return this.Q;
    }

    public boolean getLoadsInBackground() {
        return this.g;
    }

    public String getMediationAdapterClassName() {
        return null;
    }

    public Handler getMyHandler() {
        return this.w;
    }

    public boolean getOpensNativeBrowser() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.get_opens_native_browser, this.h.j()));
        return this.h.j();
    }

    public int getPrice() {
        return this.O;
    }

    public RewardVideoAdListener getRewaredVideoAdListener() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.get_reward_video_ad_listener));
        return this.t;
    }

    public boolean getShowLoadingIndicator() {
        return this.z;
    }

    public ViewGroup getSplashParent() {
        return this.a;
    }

    public String getTagId() {
        return this.P;
    }

    public void isLoadToShow(AdWebView adWebView) {
        if (this.serverResponse.getFilter() == 1) {
            return;
        }
        this.ae = adWebView;
        this.af = true;
        Log.e("OctopusAd", "enter Octopus ad load");
        SplashAdListener splashAdListener = this.q;
        if (splashAdListener != null) {
            splashAdListener.onAdLoaded();
        }
        InterstitialAdListener interstitialAdListener = this.r;
        if (interstitialAdListener != null) {
            interstitialAdListener.onAdLoaded();
        }
        BannerAdListener bannerAdListener = this.s;
        if (bannerAdListener != null) {
            bannerAdListener.onAdLoaded();
            if (getMediaType().equals(l.BANNER)) {
                BannerAdView bannerAdView = new BannerAdView(getContext(), this);
                bannerAdView.checkShow();
                this.s.onRenderSuccess(bannerAdView);
            }
        }
    }

    public boolean isLoaded() {
        return this.af;
    }

    public boolean isLoading() {
        return this.A;
    }

    @Override // com.octopus.ad.internal.a
    public boolean isReadyToStart() {
        if (a()) {
            HaoboLog.e(HaoboLog.baseLogTag, HaoboLog.getString(R.string.already_expanded));
            return false;
        }
        com.octopus.ad.internal.d dVar = this.h;
        return (dVar == null || !dVar.l() || this.i == null) ? false : true;
    }

    public boolean isRewardVideo() {
        return this.j;
    }

    public boolean loadAd(a.C0197a c0197a) {
        com.octopus.ad.internal.c cVar;
        this.i = c0197a;
        if (!isReadyToStart()) {
            SplashAdListener splashAdListener = this.q;
            if (splashAdListener != null) {
                splashAdListener.onAdFailedToLoad(AdRequest.ERROR_CODE_NOT_READY_TO_REQUEST);
            }
            InterstitialAdListener interstitialAdListener = this.r;
            if (interstitialAdListener != null) {
                interstitialAdListener.onAdFailedToLoad(AdRequest.ERROR_CODE_NOT_READY_TO_REQUEST);
            }
            BannerAdListener bannerAdListener = this.s;
            if (bannerAdListener != null) {
                bannerAdListener.onAdFailedToLoad(AdRequest.ERROR_CODE_NOT_READY_TO_REQUEST);
            }
            return false;
        }
        if (getWindowVisibility() == 0 && (cVar = this.mAdFetcher) != null) {
            cVar.a();
            this.mAdFetcher.c();
            this.mAdFetcher.b();
            this.A = true;
            this.loadCount = 1;
            this.clickCount = 0;
            return true;
        }
        com.octopus.ad.internal.c cVar2 = this.mAdFetcher;
        if (cVar2 != null) {
            cVar2.a();
            this.mAdFetcher.c();
            this.mAdFetcher.b();
            this.A = true;
            this.loadCount = 1;
            this.clickCount = 0;
        }
        return false;
    }

    public void onAdFailedToLoad(int i) {
        if (this.j) {
            RewardVideoAdListener rewardVideoAdListener = this.t;
            if (rewardVideoAdListener != null) {
                rewardVideoAdListener.onRewardVideoAdFailedToLoad(i);
                return;
            }
            return;
        }
        SplashAdListener splashAdListener = this.q;
        if (splashAdListener != null) {
            splashAdListener.onAdFailedToLoad(i);
        }
        InterstitialAdListener interstitialAdListener = this.r;
        if (interstitialAdListener != null) {
            interstitialAdListener.onAdFailedToLoad(i);
        }
        BannerAdListener bannerAdListener = this.s;
        if (bannerAdListener != null) {
            bannerAdListener.onAdFailedToLoad(i);
        }
    }

    public void onBannerAdShow() {
        AdWebView adWebView = this.ae;
        if (adWebView != null) {
            adWebView.onAdShow();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a();
        }
        activityOnDestroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
        a aVar = this.b;
        a.EnumC0201a enumC0201a = a.EnumC0201a.FINISHCLOSE;
        aVar.a(enumC0201a);
        if (this.b.c() == enumC0201a) {
            getAdDispatcher().b();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
        this.b.a(a.EnumC0201a.STATE_BACKGROUND);
    }

    public void openAdInNativeBrowser(boolean z) {
        setOpensNativeBrowser(z);
    }

    public void pingClick(String str) {
        if (StringUtil.isEmpty(str)) {
            return;
        }
        new com.octopus.ad.internal.h(str).execute(new Void[0]);
    }

    public void pingConvert(String str) {
        if (StringUtil.isEmpty(str)) {
            return;
        }
        new com.octopus.ad.internal.h(str).execute(new Void[0]);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i, String str, String str2) {
        try {
            this.serverResponse.reportLoss(i, str, str2);
            setDpUpStrategy(getContext(), this.serverResponse, new d() { // from class: com.octopus.ad.internal.view.AdViewImpl.15
                @Override // com.octopus.ad.internal.view.AdViewImpl.d
                public void a(int i2) {
                    if (AdViewImpl.this.U || AdViewImpl.this.V || AdViewImpl.this.W || AdViewImpl.this.aa) {
                        return;
                    }
                    AdViewImpl adViewImpl = AdViewImpl.this;
                    if (adViewImpl.serverResponse != null) {
                        SPUtils.putFrequency(adViewImpl.getContext(), "liftUpfrequency" + AdViewImpl.this.serverResponse.getTagId(), i2);
                        AdViewImpl.this.h();
                    }
                }
            });
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i) {
        try {
            this.serverResponse.reportWin(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setAdExtInfo(String str) {
        this.p = str;
    }

    public void setAdId(String str) {
        this.R = str;
    }

    public void setAdSlotId(String str) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_placement_id, str));
        this.h.a(str);
    }

    public void setAdWebView(AdWebView adWebView) {
        this.ae = adWebView;
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.u = appEventListener;
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_banner_ad_listener));
        this.s = bannerAdListener;
    }

    public void setBrowserStyle(c cVar) {
        this.v = cVar;
    }

    public void setChannel(String str) {
        this.h.b(str);
    }

    public void setCloseButtonPadding(int i, int i2, int i3, int i4) {
        this.leftPadding = i;
        this.topPadding = i2;
        this.rightPadding = i3;
        this.bottomPadding = i4;
    }

    public void setCreativeHeight(int i) {
        this.o = i;
    }

    public void setCreativeWidth(int i) {
        this.n = i;
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_interstitial_ad_listener));
        this.r = interstitialAdListener;
    }

    public void setLandingPageUrl(String str) {
        this.Q = str;
    }

    public void setLoadsInBackground(boolean z) {
        this.g = z;
    }

    public void setOpensNativeBrowser(boolean z) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_opens_native_browser, z));
        this.h.b(z);
    }

    public void setPrice(int i) {
        this.O = i;
    }

    public void setRequestId(String str) {
        this.h.c(str);
    }

    public void setRewardVideoAdListener(RewardVideoAdListener rewardVideoAdListener) {
        if (!this.j) {
            HaoboLog.e(HaoboLog.publicFunctionsLogTag, "setRewardVideoAdListener() called on non-RewardVideoAd");
        } else {
            HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_reward_video_ad_listener));
            this.t = rewardVideoAdListener;
        }
    }

    public void setShouldResizeParent(boolean z) {
        this.y = z;
    }

    public void setShowLoadingIndicator(boolean z) {
        this.z = z;
    }

    public void setSplashAdListener(SplashAdListener splashAdListener) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_splash_ad_listener));
        this.q = splashAdListener;
    }

    public void setTag(String str) {
        if ("OctopusGroup".equals(str)) {
            h();
        }
    }

    public void setTagId(String str) {
        this.P = str;
    }

    public void showAd() {
        ViewGroup viewGroup = this.a;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.a.addView(this);
        }
        AdWebView adWebView = this.ae;
        ServerResponse serverResponse = adWebView.ad;
        this.serverResponse = serverResponse;
        if (serverResponse == null || serverResponse.mMediaType != l.SPLASH || this.m == null) {
            int showCloseBtnTime = adWebView.getShowCloseBtnTime();
            int autoCloseTime = this.ae.getAutoCloseTime();
            AdWebView adWebView2 = this.ae;
            addCloseButton(-1, showCloseBtnTime, autoCloseTime, adWebView2, adWebView2.ad.getAdType() == e.a.ADP_IVIDEO);
        } else {
            if (this.S) {
                setDefaultSkip(getContext());
            }
            addSkipView(this.ae.getAutoCloseTime(), this.m);
        }
        setAutoClickStrategy(getContext(), this.serverResponse, this.ag);
        boolean zIsCallBackClick = isCallBackClick(this.serverResponse);
        this.ab = zIsCallBackClick;
        if (!zIsCallBackClick) {
            this.ac = 8;
        }
        this.ae.setOpt(this.ac);
        if (this.q != null) {
            Log.e("OctopusAd", "enter Octopus ad show");
            this.q.onAdShown();
            this.ae.post(new Runnable() { // from class: com.octopus.ad.internal.view.AdViewImpl.17
                @Override // java.lang.Runnable
                public void run() {
                    AdViewImpl.this.ae.ad.handleView(AdViewImpl.this.ae, AdViewImpl.this.h.a());
                }
            });
        }
    }

    public void showAdLogo(View view) {
        ViewUtil.removeChildFromParent(this.M);
        ViewUtil.removeChildFromParent(this.N);
        ViewParent parent = e() ? view.getParent() : this;
        if (parent instanceof FrameLayout) {
            if (this.M != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, 42, 83);
                layoutParams.setMargins(16, 0, 0, 16);
                ((FrameLayout) parent).addView(this.M, layoutParams);
                this.M.setVisibility(0);
            }
            if (this.N != null) {
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, 42, 85);
                layoutParams2.setMargins(0, 0, 16, 16);
                ((FrameLayout) parent).addView(this.N, layoutParams2);
                this.N.setVisibility(0);
            }
        }
    }

    public void showBannerCloseBtn(View view) {
        ImageView imageView;
        if (!(view instanceof FrameLayout) || (imageView = this.D) == null) {
            return;
        }
        ((FrameLayout) view).addView(imageView);
    }
}
