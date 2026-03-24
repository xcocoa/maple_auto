package com.octopus.ad.internal.view;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.octopus.ad.AdRequest;
import com.octopus.ad.R;
import com.octopus.ad.b.b;
import com.octopus.ad.internal.animation.Animator;
import com.octopus.ad.internal.animation.TransitionDirection;
import com.octopus.ad.internal.animation.TransitionType;
import com.octopus.ad.internal.l;
import com.octopus.ad.internal.m;
import com.octopus.ad.internal.network.ServerResponse;
import com.octopus.ad.internal.network.a;
import com.octopus.ad.internal.utilities.HaoboLog;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.utilities.WebviewUtil;
import com.octopus.ad.internal.video.AdVideoView;
import com.octopus.ad.utils.h;
import com.octopus.ad.utils.i;
import com.octopus.ad.utils.j;
import com.octopus.ad.widget.ScrollClickView;

/* JADX INFO: loaded from: classes2.dex */
public class BannerAdViewImpl extends AdViewImpl implements ViewTreeObserver.OnGlobalLayoutListener {
    private i A;
    private com.octopus.ad.utils.h B;
    private boolean C;
    private com.octopus.ad.internal.view.b D;
    private a E;
    public boolean m;
    public int n;
    public int o;
    private int p;
    private boolean q;
    private boolean r;
    private BroadcastReceiver s;
    private boolean t;
    private boolean u;
    private boolean v;
    private Animator w;
    private boolean x;
    private AdWebView y;
    private j z;

    /* JADX INFO: renamed from: com.octopus.ad.internal.view.BannerAdViewImpl$7, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass7 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[a.values().length];
            a = iArr;
            try {
                iArr[a.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.TOP_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[a.TOP_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[a.CENTER_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[a.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[a.CENTER_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[a.BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[a.BOTTOM_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[a.BOTTOM_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum a {
        TOP_LEFT,
        TOP_CENTER,
        TOP_RIGHT,
        CENTER_LEFT,
        CENTER,
        CENTER_RIGHT,
        BOTTOM_LEFT,
        BOTTOM_CENTER,
        BOTTOM_RIGHT;

        public int a() {
            switch (AnonymousClass7.a[ordinal()]) {
                case 1:
                    return 51;
                case 2:
                    return 49;
                case 3:
                    return 53;
                case 4:
                    return 19;
                case 5:
                default:
                    return 17;
                case 6:
                    return 21;
                case 7:
                    return 83;
                case 8:
                    return 81;
                case 9:
                    return 85;
            }
        }
    }

    public class b implements Animation.AnimationListener {
        private final com.octopus.ad.internal.view.b b;
        private final Animator c;

        public b(com.octopus.ad.internal.view.b bVar, Animator animator) {
            this.b = bVar;
            this.c = animator;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            animation.setAnimationListener(null);
            final com.octopus.ad.internal.view.b bVar = this.b;
            final Animator animator = this.c;
            if (bVar == null || animator == null) {
                return;
            }
            bVar.getView().getHandler().post(new Runnable() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.b.1
                @Override // java.lang.Runnable
                public void run() {
                    animator.clearAnimation();
                    bVar.destroy();
                    animator.setAnimation();
                }
            });
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public BannerAdViewImpl(Context context) {
        super(context);
        this.C = true;
    }

    public BannerAdViewImpl(Context context, int i) {
        super(context);
        this.C = true;
        setAutoRefreshInterval(i);
    }

    public BannerAdViewImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.C = true;
    }

    public BannerAdViewImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.C = true;
    }

    public BannerAdViewImpl(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
        this.C = true;
    }

    private void a(double d) {
        j jVar = this.z;
        if (jVar != null) {
            jVar.a(d);
            View viewA = this.z.a(ViewUtil.px2dip(getContext(), getWidth()), ViewUtil.px2dip(getContext(), getHeight()));
            if (viewA != null) {
                this.z.a(new j.a() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.2
                    @Override // com.octopus.ad.utils.j.a
                    public void a() {
                        BannerAdViewImpl.this.a("", "", "", "", "", "", "", "", 2);
                    }
                });
                addView(viewA);
            }
        }
    }

    private void a(int i) {
        boolean zA = com.octopus.ad.utils.g.a(i);
        com.octopus.ad.utils.b.f.a("OctopusAd", "octopus clickable = " + zA);
        if (zA) {
            return;
        }
        disableFullClick(new View.OnTouchListener() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.3
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    private void a(final String str, int i, final i.a aVar) {
        if (aVar != null) {
            this.A.a(aVar);
        }
        final int iDip2px = ViewUtil.dip2px(getContext(), i);
        setScrollClick(new View.OnTouchListener() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.6
            public float a;
            public float b;
            public float c;
            public float d;
            public float e;
            public float f;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                i.a aVar2;
                String str2;
                String str3;
                String str4;
                String str5;
                String str6;
                String str7;
                String str8;
                StringBuilder sb;
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.a = motionEvent.getX();
                    this.b = motionEvent.getY();
                    this.c = motionEvent.getX();
                    this.d = motionEvent.getY();
                    this.e = motionEvent.getRawX();
                    this.f = motionEvent.getRawY();
                } else if (action == 1) {
                    com.octopus.ad.utils.b.f.b("ScrollClickUtil", "mCurPosX = " + this.c + ",mCurPosY = " + this.d + ",mPosX = " + this.a + ",mPosY = " + this.b);
                    float f = this.d;
                    float f2 = this.b;
                    if (f - f2 <= 0.0f || Math.abs(f - f2) <= iDip2px) {
                        float f3 = this.d;
                        float f4 = this.b;
                        if (f3 - f4 >= 0.0f || Math.abs(f3 - f4) <= iDip2px) {
                            float f5 = this.c;
                            float f6 = this.a;
                            if (f5 - f6 >= 0.0f || Math.abs(f5 - f6) <= iDip2px) {
                                float f7 = this.c;
                                float f8 = this.a;
                                if (f7 - f8 < 0.0f && Math.abs(f7 - f8) > iDip2px && ScrollClickView.DIR_RIGHT.equalsIgnoreCase(str) && (aVar2 = aVar) != null) {
                                    str2 = this.a + "";
                                    str3 = this.b + "";
                                    str4 = this.e + "";
                                    str5 = this.f + "";
                                    str6 = motionEvent.getX() + "";
                                    str7 = motionEvent.getY() + "";
                                    str8 = motionEvent.getRawX() + "";
                                    sb = new StringBuilder();
                                    sb.append(motionEvent.getRawY());
                                    sb.append("");
                                    aVar2.a(str2, str3, str4, str5, str6, str7, str8, sb.toString());
                                }
                            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(str) && (aVar2 = aVar) != null) {
                                str2 = this.a + "";
                                str3 = this.b + "";
                                str4 = this.e + "";
                                str5 = this.f + "";
                                str6 = motionEvent.getX() + "";
                                str7 = motionEvent.getY() + "";
                                str8 = motionEvent.getRawX() + "";
                                sb = new StringBuilder();
                                sb.append(motionEvent.getRawY());
                                sb.append("");
                                aVar2.a(str2, str3, str4, str5, str6, str7, str8, sb.toString());
                            }
                        } else if (ScrollClickView.DIR_UP.equalsIgnoreCase(str) && (aVar2 = aVar) != null) {
                            str2 = this.a + "";
                            str3 = this.b + "";
                            str4 = this.e + "";
                            str5 = this.f + "";
                            str6 = motionEvent.getX() + "";
                            str7 = motionEvent.getY() + "";
                            str8 = motionEvent.getRawX() + "";
                            sb = new StringBuilder();
                            sb.append(motionEvent.getRawY());
                            sb.append("");
                            aVar2.a(str2, str3, str4, str5, str6, str7, str8, sb.toString());
                        }
                    } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(str) && (aVar2 = aVar) != null) {
                        str2 = this.a + "";
                        str3 = this.b + "";
                        str4 = this.e + "";
                        str5 = this.f + "";
                        str6 = motionEvent.getX() + "";
                        str7 = motionEvent.getY() + "";
                        str8 = motionEvent.getRawX() + "";
                        sb = new StringBuilder();
                        sb.append(motionEvent.getRawY());
                        sb.append("");
                        aVar2.a(str2, str3, str4, str5, str6, str7, str8, sb.toString());
                    }
                } else if (action == 2) {
                    this.c = motionEvent.getX();
                    this.d = motionEvent.getY();
                }
                return true;
            }
        });
    }

    private void j() {
        this.q = false;
        this.p = -1;
        this.r = false;
        this.x = true;
    }

    private void k() {
        if (this.s != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        this.s = new BroadcastReceiver() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.1
            /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
            /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
            @Override // android.content.BroadcastReceiver
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onReceive(Context context, Intent intent) {
                String str;
                int i;
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
                    BannerAdViewImpl.this.h();
                    str = HaoboLog.baseLogTag;
                    i = R.string.screen_off_stop;
                } else {
                    if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                        return;
                    }
                    boolean z = false;
                    if (BannerAdViewImpl.this.p <= 0) {
                        if (BannerAdViewImpl.this.r) {
                            BannerAdViewImpl.this.h();
                            BannerAdViewImpl.this.g();
                            z = true;
                        }
                        if (z) {
                            return;
                        }
                        str = HaoboLog.baseLogTag;
                        i = R.string.screen_on_start;
                    } else {
                        BannerAdViewImpl.this.g();
                        z = true;
                        if (z) {
                        }
                    }
                }
                HaoboLog.d(str, HaoboLog.getString(i));
            }
        };
        try {
            com.octopus.ad.utils.b.f.c("OctopusAd", "before registerReceiver");
            getContext().registerReceiver(this.s, intentFilter);
        } catch (Throwable unused) {
            com.octopus.ad.utils.b.f.c("OctopusAd", "ignore error");
        }
    }

    private void l() {
        if (this.p > 0) {
            k();
        }
    }

    private void m() {
        i iVar = this.A;
        if (iVar != null) {
            iVar.a();
            View viewA = this.A.a(ViewUtil.px2dip(getContext(), getWidth()), ViewUtil.px2dip(getContext(), getHeight()));
            if (viewA != null) {
                a(ScrollClickView.DIR_UP, 100, new i.a() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.4
                    @Override // com.octopus.ad.utils.i.a
                    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                        BannerAdViewImpl.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
                    }
                });
                addView(viewA);
            }
        }
    }

    private void n() {
        View viewA;
        com.octopus.ad.utils.h hVar = this.B;
        if (hVar == null || (viewA = hVar.a(ViewUtil.px2dip(getContext(), getWidth()), ViewUtil.px2dip(getContext(), getHeight()), true)) == null) {
            return;
        }
        this.B.a(new h.a() { // from class: com.octopus.ad.internal.view.BannerAdViewImpl.5
            @Override // com.octopus.ad.utils.h.a
            public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                BannerAdViewImpl.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
            }
        });
        addView(viewA);
    }

    private void o() {
        StringBuilder sb = new StringBuilder();
        sb.append("enter dismantleBroadcast mReceiver == null ? ");
        sb.append(this.s == null);
        com.octopus.ad.utils.b.f.c("OctopusAd", sb.toString());
        if (this.s == null) {
            return;
        }
        try {
            getContext().unregisterReceiver(this.s);
            com.octopus.ad.utils.b.f.c("OctopusAd", "after unregisterReceiver");
        } catch (IllegalArgumentException unused) {
            com.octopus.ad.utils.b.f.c("OctopusAd", "got IllegalArgumentException");
        }
        this.s = null;
    }

    private void p() {
        j jVar = this.z;
        if (jVar != null) {
            jVar.c();
            this.z = null;
        }
        com.octopus.ad.utils.h hVar = this.B;
        if (hVar != null) {
            hVar.a();
        }
        i iVar = this.A;
        if (iVar != null) {
            iVar.c();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void a(Context context, AttributeSet attributeSet) {
        this.p = -1;
        this.m = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = new Animator(getContext(), TransitionType.NONE, TransitionDirection.UP, 500L);
        View view = (View) getParent();
        if (view != null) {
            int measuredHeight = view.getMeasuredHeight();
            int measuredHeight2 = view.getMeasuredHeight();
            m mVarA = m.a();
            int iM = (int) ((measuredHeight / mVarA.m()) + 0.5f);
            this.h.d((int) ((measuredHeight2 / mVarA.l()) + 0.5f));
            this.h.e(iM);
        }
        super.a(context, attributeSet);
        l();
        this.h.a(this.a != null ? l.SPLASH : l.BANNER);
        this.mAdFetcher.a(this.p);
        if (this.x) {
            this.mAdFetcher.b();
            this.q = true;
        }
        this.z = new j(getContext());
        this.A = new i(getContext());
        this.B = new com.octopus.ad.utils.h(getContext());
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void a(com.octopus.ad.internal.view.b bVar) {
        int refreshInterval;
        if (bVar == null || bVar.failed() || bVar.getView() == null) {
            onAdFailedToLoad(AdRequest.INVALID_DISPLAY);
            HaoboLog.e(HaoboLog.baseLogTag, "Loaded an ad with an invalid displayable");
            return;
        }
        if (this.c == bVar) {
            return;
        }
        this.D = bVar;
        if (getTransitionType() == TransitionType.NONE) {
            removeAllViews();
            com.octopus.ad.internal.view.b bVar2 = this.c;
            if (bVar2 != null) {
                bVar2.destroy();
            }
            View view = bVar.getView();
            addView(view);
            if (view instanceof AdWebView) {
                com.octopus.ad.utils.b.f.a("OctopusAd", "set mAdWebView");
                this.y = (AdWebView) view;
            }
            if (view.getLayoutParams() != null) {
                ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity = getAdAlignment().a();
            }
            if (getMediaType() != l.SPLASH || (bVar.getView() instanceof AdVideoView)) {
                bVar.visible();
            }
        } else {
            if (bVar.getView().getLayoutParams() != null) {
                ((FrameLayout.LayoutParams) bVar.getView().getLayoutParams()).gravity = getAdAlignment().a();
                this.w.setLayoutParams(bVar.getView().getLayoutParams());
            }
            if (getChildCount() == 0 || indexOfChild(this.w) == -1) {
                removeAllViews();
                if (getMediaType() != l.SPLASH || (bVar.getView() instanceof AdVideoView)) {
                    bVar.visible();
                }
                addView(this.w, 0);
                this.w.addView(bVar.getView());
            } else {
                if (getMediaType() != l.SPLASH || (bVar.getView() instanceof AdVideoView)) {
                    bVar.visible();
                }
                this.w.addView(bVar.getView());
                this.w.showNext();
            }
            com.octopus.ad.internal.view.b bVar3 = this.c;
            if (bVar3 != null) {
                if (bVar3.getView().getAnimation() != null) {
                    bVar3.getView().getAnimation().setAnimationListener(new b(bVar3, this.w));
                } else {
                    bVar3.destroy();
                }
            }
        }
        b();
        if (this.a == null && (refreshInterval = bVar.getRefreshInterval()) > 0 && this.C) {
            setAutoRefreshInterval(refreshInterval * 1000);
        }
        this.c = bVar;
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void activityOnDestroy() {
        com.octopus.ad.internal.view.b bVar = this.D;
        if (bVar != null) {
            bVar.onDestroy();
            this.D = null;
        }
        com.octopus.ad.utils.b.f.c("OctopusAd", "enter activityOnDestroy before dismantleBroadcast");
        o();
        p();
        if (this.mAdFetcher != null) {
            h();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void activityOnPause() {
        com.octopus.ad.internal.view.b bVar = this.D;
        if (bVar != null) {
            bVar.onPause();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void activityOnResume() {
        com.octopus.ad.internal.view.b bVar = this.D;
        if (bVar != null) {
            bVar.onResume();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void b(Context context, AttributeSet attributeSet) {
        String str;
        int i;
        boolean opensNativeBrowser;
        String str2;
        String string;
        j();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AdView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        HaoboLog.v(HaoboLog.xmlLogTag, HaoboLog.getString(R.string.found_n_in_xml, indexCount));
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.AdView_adSlotId) {
                setAdSlotId(typedArrayObtainStyledAttributes.getString(index));
                str2 = HaoboLog.xmlLogTag;
                string = HaoboLog.getString(R.string.placement_id, typedArrayObtainStyledAttributes.getString(index));
            } else if (index == R.styleable.AdView_auto_refresh_interval) {
                int i3 = typedArrayObtainStyledAttributes.getInt(index, -1);
                setAutoRefreshInterval(i3);
                if (i3 <= 0) {
                    this.x = true;
                }
                str2 = HaoboLog.xmlLogTag;
                string = HaoboLog.getString(R.string.xml_set_period, i3);
            } else {
                if (index == R.styleable.AdView_test) {
                    m.a().b = typedArrayObtainStyledAttributes.getBoolean(index, false);
                    str = HaoboLog.xmlLogTag;
                    i = R.string.xml_set_test;
                    opensNativeBrowser = m.a().b;
                } else {
                    if (index == R.styleable.AdView_adSize) {
                        String string2 = typedArrayObtainStyledAttributes.getString(index);
                        com.octopus.ad.a aVar = null;
                        if (string2 != null && !string2.isEmpty()) {
                            try {
                                aVar = (com.octopus.ad.a) com.octopus.ad.a.class.getDeclaredField(string2).get(null);
                            } catch (Exception unused) {
                            }
                        }
                        if (aVar == null) {
                            aVar = com.octopus.ad.a.g;
                        }
                        HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(R.string.xml_ad_size, aVar.toString()));
                        setAdSize(aVar.b(), aVar.a());
                    } else if (index == R.styleable.AdView_should_reload_on_resume) {
                        setShouldReloadOnResume(typedArrayObtainStyledAttributes.getBoolean(index, false));
                        str = HaoboLog.xmlLogTag;
                        i = R.string.xml_set_should_reload;
                        opensNativeBrowser = this.r;
                    } else if (index == R.styleable.AdView_opens_native_browser) {
                        setOpensNativeBrowser(typedArrayObtainStyledAttributes.getBoolean(index, false));
                        str = HaoboLog.xmlLogTag;
                        i = R.string.xml_set_opens_native_browser;
                        opensNativeBrowser = getOpensNativeBrowser();
                    } else if (index == R.styleable.AdView_expands_to_fit_screen_width) {
                        setExpandsToFitScreenWidth(typedArrayObtainStyledAttributes.getBoolean(index, false));
                        str = HaoboLog.xmlLogTag;
                        i = R.string.xml_set_expands_to_full_screen_width;
                        opensNativeBrowser = this.t;
                    } else if (index == R.styleable.AdView_resize_ad_to_fit_container) {
                        setResizeAdToFitContainer(typedArrayObtainStyledAttributes.getBoolean(index, false));
                        str = HaoboLog.xmlLogTag;
                        i = R.string.xml_resize_ad_to_fit_container;
                        opensNativeBrowser = this.u;
                    } else if (index == R.styleable.AdView_show_loading_indicator) {
                        HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(R.string.show_loading_indicator_xml));
                        setShowLoadingIndicator(typedArrayObtainStyledAttributes.getBoolean(index, true));
                    } else if (index == R.styleable.AdView_transition_type) {
                        HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(R.string.transition_type));
                        setTransitionType(TransitionType.getTypeForInt(typedArrayObtainStyledAttributes.getInt(index, 0)));
                    } else if (index == R.styleable.AdView_transition_direction) {
                        HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(R.string.transition_direction));
                        setTransitionDirection(TransitionDirection.getDirectionForInt(typedArrayObtainStyledAttributes.getInt(index, 0)));
                    } else if (index == R.styleable.AdView_transition_duration) {
                        HaoboLog.d(HaoboLog.xmlLogTag, HaoboLog.getString(R.string.transition_duration));
                        setTransitionDuration(typedArrayObtainStyledAttributes.getInt(index, 1000));
                    } else if (index == R.styleable.AdView_load_landing_page_in_background) {
                        setLoadsInBackground(typedArrayObtainStyledAttributes.getBoolean(index, true));
                        str = HaoboLog.xmlLogTag;
                        i = R.string.xml_load_landing_page_in_background;
                        opensNativeBrowser = this.g;
                    }
                }
                HaoboLog.d(str, HaoboLog.getString(i, opensNativeBrowser));
            }
            HaoboLog.d(str2, string);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a();
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean d() {
        return true;
    }

    public void disableFullClick(View.OnTouchListener onTouchListener) {
        AdWebView adWebView = this.y;
        if (adWebView != null) {
            adWebView.setOnTouchListener(onTouchListener);
        }
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean e() {
        return false;
    }

    @SuppressLint({"NewApi"})
    public void expandToFitScreenWidth(int i, int i2, com.octopus.ad.internal.view.b bVar) {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i3 = point.x;
        int iFloor = (int) Math.floor(i2 * (i3 / i));
        this.n = getLayoutParams().height;
        this.o = getLayoutParams().width;
        if (getLayoutParams().width > 0 || getLayoutParams().width == -2) {
            getLayoutParams().width = i3;
        }
        getLayoutParams().height = iFloor;
        View view = bVar.getView();
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        } else {
            view.getLayoutParams().width = -1;
            view.getLayoutParams().height = -1;
        }
        view.invalidate();
        this.m = true;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public void f() {
    }

    public void g() {
        if (this.q) {
            return;
        }
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.start));
        this.mAdFetcher.b();
        this.q = true;
    }

    public a getAdAlignment() {
        if (this.E == null) {
            this.E = a.CENTER;
        }
        return this.E;
    }

    public int getAdHeight() {
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.get_height, this.h.g()));
        return this.h.g();
    }

    public int getAdWidth() {
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.get_width, this.h.f()));
        return this.h.f();
    }

    public int getAutoRefreshInterval() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.get_period, this.p));
        return this.p;
    }

    public boolean getExpandsToFitScreenWidth() {
        return this.t;
    }

    @Override // com.octopus.ad.internal.a
    public l getMediaType() {
        return this.a != null ? l.SPLASH : l.BANNER;
    }

    public boolean getResizeAdToFitContainer() {
        return this.u;
    }

    public boolean getShouldReloadOnResume() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.get_should_resume, this.r));
        return this.r;
    }

    public TransitionDirection getTransitionDirection() {
        return this.w.getTransitionDirection();
    }

    public long getTransitionDuration() {
        return this.w.getTransitionDuration();
    }

    public TransitionType getTransitionType() {
        return this.w.getTransitionType();
    }

    public void h() {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.stop));
        this.mAdFetcher.a();
        this.q = false;
    }

    public void i() {
        this.m = false;
        if (getLayoutParams() != null) {
            getLayoutParams().height = this.n;
            getLayoutParams().width = this.o;
        }
    }

    public boolean isAutoRefresh() {
        return this.C;
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl
    public boolean loadAd(a.C0197a c0197a) {
        if (!super.loadAd(c0197a)) {
            return false;
        }
        this.q = true;
        return true;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ServerResponse serverResponse;
        b.m interEvent;
        if (Build.VERSION.SDK_INT >= 16) {
            getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
        if (getMediaType() != l.SPLASH || (serverResponse = this.serverResponse) == null || (interEvent = serverResponse.getInterEvent()) == null) {
            return;
        }
        b.r rVarC = interEvent.c();
        if (rVarC != null && rVarC.a() == 1) {
            a(rVarC.b());
        }
        b.p pVarD = interEvent.d();
        if (pVarD != null && pVarD.a() == 1) {
            m();
        }
        b.l lVarA = interEvent.a();
        a(lVarA != null ? lVarA.a() : 0);
        b.o oVarB = interEvent.b();
        if (oVarB == null || oVarB.a() != 1) {
            return;
        }
        n();
    }

    @Override // com.octopus.ad.internal.view.AdViewImpl, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.d) {
            this.d = false;
            return;
        }
        if (!this.v || z) {
            m mVarA = m.a();
            int iL = (int) (((i3 - i) / mVarA.l()) + 0.5f);
            int iM = (int) (((i4 - i2) / mVarA.m()) + 0.5f);
            if (iL < this.h.f() || (iM < this.h.g() && iL > 0 && iM > 0)) {
                HaoboLog.e(HaoboLog.baseLogTag, HaoboLog.getString(R.string.adsize_too_big, iL, iM, this.h.f(), this.h.g()));
                c();
                com.octopus.ad.internal.c cVar = this.mAdFetcher;
                if (cVar != null) {
                    cVar.a();
                    return;
                }
                return;
            }
            this.h.d(iL);
            this.h.e(iM);
            if (!this.v) {
                c();
            }
            this.v = true;
        }
        if (this.q) {
            k();
            if (this.r) {
                g();
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i != 0) {
            com.octopus.ad.utils.b.f.c("OctopusAd", "enter onWindowVisibilityChanged before dismantleBroadcast");
            o();
            HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.hidden));
            if (this.mAdFetcher != null && this.q) {
                h();
            }
            if (getChildAt(0) instanceof WebView) {
                WebviewUtil.onPause((WebView) getChildAt(0));
                return;
            }
            return;
        }
        k();
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.unhidden));
        if ((this.q || this.r || this.p > 0) && !this.f && !this.d && !a() && this.mAdFetcher != null) {
            g();
        }
        this.f = false;
        if (getChildAt(0) instanceof WebView) {
            WebviewUtil.onResume((WebView) getChildAt(0));
        }
    }

    public void resetContainerIfNeeded() {
        if (this.m) {
            i();
        }
    }

    @SuppressLint({"NewApi"})
    public void resizeWebViewToFitContainer(int i, int i2, com.octopus.ad.internal.view.b bVar) {
        int measuredWidth = getWidth() <= 0 ? getMeasuredWidth() : getWidth();
        int measuredHeight = getHeight() <= 0 ? getMeasuredHeight() : getHeight();
        if (measuredHeight <= 0 || measuredWidth <= 0) {
            HaoboLog.w(HaoboLog.baseLogTag, "Unable to resize ad to fit container because of failure to obtain the container size.");
            return;
        }
        float f = i / measuredWidth;
        float f2 = i2 / measuredHeight;
        View view = bVar.getView();
        if (f < f2) {
            measuredWidth = (i * measuredHeight) / i2;
            if (view instanceof WebView) {
                ((WebView) view).setInitialScale((int) Math.ceil((measuredHeight * 100) / i2));
            }
        } else {
            measuredHeight = (i2 * measuredWidth) / i;
            if (view instanceof WebView) {
                ((WebView) view).setInitialScale((int) Math.ceil((measuredWidth * 100) / i));
            }
        }
        if (view.getLayoutParams() == null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(measuredWidth, measuredHeight);
            layoutParams.gravity = 17;
            view.setLayoutParams(layoutParams);
        } else {
            view.getLayoutParams().width = measuredWidth;
            view.getLayoutParams().height = measuredHeight;
            ((FrameLayout.LayoutParams) view.getLayoutParams()).gravity = 17;
        }
        view.invalidate();
    }

    public void setAdAlignment(a aVar) {
        this.E = aVar;
    }

    public void setAdSize(int i, int i2) {
        HaoboLog.d(HaoboLog.baseLogTag, HaoboLog.getString(R.string.set_size, i, i2));
        this.h.b(i);
        this.h.c(i2);
    }

    public void setAutoRefresh(boolean z) {
        this.C = z;
    }

    public void setAutoRefreshInterval(int i) {
        if (i > 0) {
            i = Math.max(10000, i);
        }
        this.p = i;
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_period, this.p));
        com.octopus.ad.internal.c cVar = this.mAdFetcher;
        if (cVar != null) {
            cVar.a(this.p);
        }
    }

    public void setExpandsToFitScreenWidth(boolean z) {
        this.t = z;
    }

    public void setResizeAdToFitContainer(boolean z) {
        this.u = z;
    }

    public void setScrollClick(View.OnTouchListener onTouchListener) {
        AdWebView adWebView = this.y;
        if (adWebView != null) {
            adWebView.setOnTouchListener(onTouchListener);
        }
    }

    public void setShouldReloadOnResume(boolean z) {
        HaoboLog.d(HaoboLog.publicFunctionsLogTag, HaoboLog.getString(R.string.set_should_resume, z));
        this.r = z;
    }

    public void setTransitionDirection(TransitionDirection transitionDirection) {
        this.w.setTransitionDirection(transitionDirection);
    }

    public void setTransitionDuration(long j) {
        this.w.setTransitionDuration(j);
    }

    public void setTransitionType(TransitionType transitionType) {
        this.w.setTransitionType(transitionType);
    }
}
