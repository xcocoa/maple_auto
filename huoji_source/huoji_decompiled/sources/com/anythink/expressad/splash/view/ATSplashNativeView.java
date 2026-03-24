package com.anythink.expressad.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.o.c;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.n;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.shake.MBShakeView;
import com.anythink.expressad.widget.FeedBackButton;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class ATSplashNativeView extends RelativeLayout {
    private static final String a = "MBSplashNativeView";
    private int A;
    private int B;
    private float C;
    private float D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private String J;
    private String K;
    private ATSplashView L;
    private c M;
    private MBShakeView N;
    private String O;
    private String P;
    private String Q;
    private com.anythink.expressad.shake.b R;
    private MBNoRecycledCrashImageView b;
    private MBNoRecycledCrashImageView c;
    private RelativeLayout d;
    private ImageView e;
    private FeedBackButton f;
    private TextView g;
    private RelativeLayout h;
    private MBNoRecycledCrashImageView i;
    private TextView j;
    private MBNoRecycledCrashImageView k;
    private TextView l;
    private TextView m;
    private RelativeLayout n;
    private TextView o;
    private TextView p;
    private TextView q;
    private MBSplashClickView r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$1, reason: invalid class name */
    public class AnonymousClass1 implements com.anythink.expressad.foundation.g.d.c {
        public AnonymousClass1() {
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            MBNoRecycledCrashImageView mBNoRecycledCrashImageView;
            if (bitmap == null) {
                return;
            }
            try {
                if (bitmap.isRecycled()) {
                    return;
                }
                try {
                    if (bitmap.getWidth() < bitmap.getHeight()) {
                        ATSplashNativeView.a(ATSplashNativeView.this);
                        ATSplashNativeView.this.h.setVisibility(4);
                        ATSplashNativeView.this.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        mBNoRecycledCrashImageView = ATSplashNativeView.this.c;
                    } else {
                        if (ATSplashNativeView.this.A == 1) {
                            ATSplashNativeView.this.h.setVisibility(0);
                            try {
                                Bitmap bitmapA = n.a(bitmap, t.b(com.anythink.core.common.b.n.a().f(), 10.0f));
                                if (bitmapA != null && !bitmapA.isRecycled()) {
                                    ATSplashNativeView.this.k.setScaleType(ImageView.ScaleType.FIT_XY);
                                    ATSplashNativeView.this.k.setImageBitmap(bitmapA);
                                }
                            } catch (Throwable th) {
                                try {
                                    th.getMessage();
                                    ATSplashNativeView.this.k.setImageBitmap(bitmap);
                                } catch (Throwable th2) {
                                    th2.getMessage();
                                }
                            }
                            ATSplashNativeView.this.j.setText(ATSplashNativeView.this.M.bb());
                            ATSplashNativeView.h(ATSplashNativeView.this);
                            com.anythink.core.common.o.c.a(com.anythink.core.common.b.n.a().f(), bitmap, new c.a() { // from class: com.anythink.expressad.splash.view.ATSplashNativeView.1.1
                                @Override // com.anythink.core.common.o.c.a
                                public final void a() {
                                }

                                @Override // com.anythink.core.common.o.c.a
                                public final void a(Bitmap bitmap2) {
                                    if (bitmap2 == null || bitmap2.isRecycled()) {
                                        return;
                                    }
                                    ATSplashNativeView.this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    ATSplashNativeView.this.b.setImageBitmap(bitmap2);
                                }
                            });
                            return;
                        }
                        ATSplashNativeView.this.h.setVisibility(4);
                        ATSplashNativeView.this.c.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        mBNoRecycledCrashImageView = ATSplashNativeView.this.c;
                    }
                    com.anythink.core.common.o.c.a(com.anythink.core.common.b.n.a().f(), bitmap, new c.a() { // from class: com.anythink.expressad.splash.view.ATSplashNativeView.1.1
                        @Override // com.anythink.core.common.o.c.a
                        public final void a() {
                        }

                        @Override // com.anythink.core.common.o.c.a
                        public final void a(Bitmap bitmap2) {
                            if (bitmap2 == null || bitmap2.isRecycled()) {
                                return;
                            }
                            ATSplashNativeView.this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                            ATSplashNativeView.this.b.setImageBitmap(bitmap2);
                        }
                    });
                    return;
                } catch (Throwable unused) {
                    ATSplashNativeView.this.c.setImageBitmap(bitmap);
                    return;
                }
                mBNoRecycledCrashImageView.setImageBitmap(bitmap);
            } catch (Throwable th3) {
                th3.getMessage();
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$10, reason: invalid class name */
    public class AnonymousClass10 implements View.OnClickListener {
        public AnonymousClass10() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (ATSplashNativeView.this.G) {
                if (ATSplashNativeView.this.L.getSplashJSBridgeImpl() != null && ATSplashNativeView.this.L.getSplashJSBridgeImpl().getSplashBridgeListener() != null) {
                    ATSplashNativeView.this.L.getSplashJSBridgeImpl().getSplashBridgeListener().c();
                }
                ATSplashNativeView.this.g.setVisibility(4);
                ATSplashNativeView.this.g.setEnabled(false);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$11, reason: invalid class name */
    public class AnonymousClass11 implements com.anythink.expressad.foundation.f.a {
        public AnonymousClass11() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void a() {
            ATSplashNativeView.this.I = true;
            ATSplashNativeView.b(ATSplashNativeView.this, false);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void b() {
            ATSplashNativeView.this.I = false;
            ATSplashNativeView.b(ATSplashNativeView.this, true);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void c() {
            ATSplashNativeView.this.I = false;
            ATSplashNativeView.b(ATSplashNativeView.this, true);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ATSplashNativeView.a(ATSplashNativeView.this, 0);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$3, reason: invalid class name */
    public class AnonymousClass3 extends com.anythink.expressad.shake.b {
        public AnonymousClass3(int i, int i2) {
            super(i, i2);
        }

        @Override // com.anythink.expressad.shake.b
        public final void a() {
            if (ATSplashNativeView.this.I || ATSplashNativeView.this.H || !ATSplashNativeView.this.isShown()) {
                return;
            }
            ATSplashNativeView.a(ATSplashNativeView.this, 4);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$4, reason: invalid class name */
    public class AnonymousClass4 implements com.anythink.expressad.foundation.g.d.c {
        public AnonymousClass4() {
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            Bitmap bitmapA;
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled()) {
                        return;
                    }
                    try {
                        if (ATSplashNativeView.this.i == null || (bitmapA = n.a(bitmap, t.b(com.anythink.core.common.b.n.a().f(), 40.0f))) == null || bitmapA.isRecycled()) {
                            return;
                        }
                        ATSplashNativeView.this.i.setImageBitmap(bitmapA);
                    } catch (Throwable th) {
                        th.getMessage();
                        ATSplashNativeView.this.i.setImageBitmap(bitmap);
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
            ATSplashNativeView.this.i.setVisibility(4);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$6, reason: invalid class name */
    public class AnonymousClass6 implements View.OnClickListener {
        public AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ATSplashNativeView.a(ATSplashNativeView.this, 1);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$7, reason: invalid class name */
    public class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ATSplashNativeView.a(ATSplashNativeView.this, 0);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$8, reason: invalid class name */
    public class AnonymousClass8 implements View.OnClickListener {
        public AnonymousClass8() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (ATSplashNativeView.this.M.aG() != null) {
                String strC = ATSplashNativeView.this.M.aG().c();
                if (TextUtils.isEmpty(strC)) {
                    return;
                }
                com.anythink.core.common.o.n.a(ATSplashNativeView.this.getContext(), strC);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.ATSplashNativeView$9, reason: invalid class name */
    public class AnonymousClass9 implements View.OnClickListener {
        public AnonymousClass9() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            com.anythink.expressad.foundation.d.a aVarAG = ATSplashNativeView.this.M.aG();
            if (aVarAG != null) {
                com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), aVarAG.a());
            }
        }
    }

    public ATSplashNativeView(Context context) {
        super(context);
        this.H = false;
        this.I = false;
    }

    public ATSplashNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ATSplashNativeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.H = false;
        this.I = false;
    }

    public ATSplashNativeView(Context context, ATSplashView aTSplashView, com.anythink.expressad.splash.a.b bVar) {
        Context applicationContext;
        String str;
        super(context);
        this.H = false;
        this.I = false;
        if (bVar == null) {
            throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
        }
        this.J = bVar.b();
        this.K = bVar.a();
        this.M = bVar.c();
        this.L = aTSplashView;
        this.s = bVar.e();
        this.v = bVar.f();
        this.u = bVar.g();
        this.w = bVar.h();
        this.x = bVar.i();
        this.y = bVar.j();
        this.z = bVar.k();
        this.A = bVar.l();
        this.G = bVar.d();
        this.B = bVar.m();
        try {
            if (this.A == 1) {
                applicationContext = getContext().getApplicationContext();
                str = "anythink_splash_portrait";
            } else {
                applicationContext = getContext().getApplicationContext();
                str = "anythink_splash_landscape";
            }
            View viewInflate = LayoutInflater.from(getContext()).inflate(i.a(applicationContext, str, "layout"), (ViewGroup) null);
            addView(viewInflate);
            this.b = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_image_bg", "id"));
            this.c = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_image", "id"));
            this.d = (RelativeLayout) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_topcontroller", "id"));
            this.e = (ImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_link", "id"));
            this.f = (FeedBackButton) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_feedback", "id"));
            this.g = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_skip", "id"));
            this.h = (RelativeLayout) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_landscape_foreground", "id"));
            this.i = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_icon", "id"));
            this.j = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_title", "id"));
            this.k = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_foregroundimage", "id"));
            this.l = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_adrect", "id"));
            this.n = (RelativeLayout) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_layout_appinfo", "id"));
            this.o = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_appinfo", "id"));
            this.p = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_privacy", "id"));
            this.q = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_permission", "id"));
            this.r = (MBSplashClickView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_click", "id"));
            this.m = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_adcircle", "id"));
            int iA = i.a(getContext().getApplicationContext(), "anythink_splash_count_time_can_skip", i.g);
            int iA2 = i.a(getContext().getApplicationContext(), "anythink_splash_count_time_can_skip_not", i.g);
            int iA3 = i.a(getContext().getApplicationContext(), "anythink_splash_count_time_can_skip_s", i.g);
            this.P = getContext().getResources().getString(iA);
            this.Q = getContext().getResources().getString(iA2);
            this.O = getContext().getResources().getString(iA3);
        } catch (Throwable th) {
            th.getMessage();
        }
        if (com.anythink.expressad.foundation.f.b.a().b()) {
            this.M.l(this.J);
            com.anythink.expressad.foundation.f.b.a().a(this.J, new AnonymousClass11());
            com.anythink.expressad.foundation.f.b.a().a(this.J, this.f);
            com.anythink.expressad.foundation.f.b.a().a(this.J, this.M);
        } else {
            FeedBackButton feedBackButton = this.f;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
            }
        }
        if (TextUtils.isEmpty(this.M.be())) {
            this.c.setVisibility(4);
        } else {
            com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).a(this.M.be(), new AnonymousClass1());
        }
        e();
        if (this.M.aG() == null || this.w != 0) {
            this.n.setVisibility(8);
        } else {
            com.anythink.expressad.foundation.d.a aVarAG = this.M.aG();
            StringBuilder sb = new StringBuilder();
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_app_name", i.g)));
            sb.append(aVarAG.b());
            sb.append("\n");
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_version", i.g)));
            sb.append(aVarAG.e());
            sb.append("\n");
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_publish", i.g)));
            sb.append(aVarAG.f());
            sb.append("\n");
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_update_time", i.g)));
            sb.append(aVarAG.d());
            this.o.setText(sb);
        }
        if (this.v == 1 || this.x == 1) {
            this.r.setVisibility(8);
        } else {
            this.r.initView(this.M.cU);
        }
        if (this.u == 1) {
            setOnClickListener(new AnonymousClass6());
        } else {
            this.r.setOnClickListener(new AnonymousClass7());
        }
        this.p.setOnClickListener(new AnonymousClass8());
        this.q.setOnClickListener(new AnonymousClass9());
        this.g.setOnClickListener(new AnonymousClass10());
        if (this.x == 1) {
            MBShakeView mBShakeView = new MBShakeView(getContext());
            this.N = mBShakeView;
            mBShakeView.initView(this.M.cU);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.N.setLayoutParams(layoutParams);
            addView(this.N);
            this.r.setVisibility(4);
            this.r.setEnabled(false);
            this.N.setOnClickListener(new AnonymousClass2());
            this.R = new AnonymousClass3(this.y, this.z * 1000);
        }
        updateCountDown(this.s);
    }

    private void a() {
        Context applicationContext;
        String str;
        try {
            if (this.A == 1) {
                applicationContext = getContext().getApplicationContext();
                str = "anythink_splash_portrait";
            } else {
                applicationContext = getContext().getApplicationContext();
                str = "anythink_splash_landscape";
            }
            View viewInflate = LayoutInflater.from(getContext()).inflate(i.a(applicationContext, str, "layout"), (ViewGroup) null);
            addView(viewInflate);
            this.b = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_image_bg", "id"));
            this.c = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_image", "id"));
            this.d = (RelativeLayout) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_topcontroller", "id"));
            this.e = (ImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_link", "id"));
            this.f = (FeedBackButton) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_feedback", "id"));
            this.g = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_skip", "id"));
            this.h = (RelativeLayout) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_landscape_foreground", "id"));
            this.i = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_icon", "id"));
            this.j = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_title", "id"));
            this.k = (MBNoRecycledCrashImageView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_iv_foregroundimage", "id"));
            this.l = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_adrect", "id"));
            this.n = (RelativeLayout) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_layout_appinfo", "id"));
            this.o = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_appinfo", "id"));
            this.p = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_privacy", "id"));
            this.q = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_permission", "id"));
            this.r = (MBSplashClickView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_click", "id"));
            this.m = (TextView) viewInflate.findViewById(i.a(getContext().getApplicationContext(), "anythink_splash_tv_adcircle", "id"));
            int iA = i.a(getContext().getApplicationContext(), "anythink_splash_count_time_can_skip", i.g);
            int iA2 = i.a(getContext().getApplicationContext(), "anythink_splash_count_time_can_skip_not", i.g);
            int iA3 = i.a(getContext().getApplicationContext(), "anythink_splash_count_time_can_skip_s", i.g);
            this.P = getContext().getResources().getString(iA);
            this.Q = getContext().getResources().getString(iA2);
            this.O = getContext().getResources().getString(iA3);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void a(int i) {
        if (this.L.getSplashJSBridgeImpl() == null || this.L.getSplashJSBridgeImpl().getSplashBridgeListener() == null) {
            return;
        }
        try {
            this.L.getSplashJSBridgeImpl().getSplashBridgeListener().a(com.anythink.expressad.splash.a.a.a.a(com.anythink.expressad.splash.a.a.a.a(i, this.C, this.D), this.M));
        } catch (Throwable th) {
            th.getMessage();
            this.L.getSplashJSBridgeImpl().getSplashBridgeListener().a(this.M);
        }
    }

    public static /* synthetic */ void a(ATSplashNativeView aTSplashNativeView, int i) {
        if (aTSplashNativeView.L.getSplashJSBridgeImpl() == null || aTSplashNativeView.L.getSplashJSBridgeImpl().getSplashBridgeListener() == null) {
            return;
        }
        try {
            aTSplashNativeView.L.getSplashJSBridgeImpl().getSplashBridgeListener().a(com.anythink.expressad.splash.a.a.a.a(com.anythink.expressad.splash.a.a.a.a(i, aTSplashNativeView.C, aTSplashNativeView.D), aTSplashNativeView.M));
        } catch (Throwable th) {
            th.getMessage();
            aTSplashNativeView.L.getSplashJSBridgeImpl().getSplashBridgeListener().a(aTSplashNativeView.M);
        }
    }

    private void a(boolean z) {
        if (this.L.getSplashJSBridgeImpl() == null || this.L.getSplashJSBridgeImpl().getSplashBridgeListener() == null) {
            return;
        }
        this.L.getSplashJSBridgeImpl().getSplashBridgeListener().a(z ? 2 : 1, this.t);
    }

    public static /* synthetic */ boolean a(ATSplashNativeView aTSplashNativeView) {
        aTSplashNativeView.F = true;
        return true;
    }

    private void b() {
        if (com.anythink.expressad.foundation.f.b.a().b()) {
            this.M.l(this.J);
            com.anythink.expressad.foundation.f.b.a().a(this.J, new AnonymousClass11());
            com.anythink.expressad.foundation.f.b.a().a(this.J, this.f);
            com.anythink.expressad.foundation.f.b.a().a(this.J, this.M);
        } else {
            FeedBackButton feedBackButton = this.f;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
            }
        }
        if (TextUtils.isEmpty(this.M.be())) {
            this.c.setVisibility(4);
        } else {
            com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).a(this.M.be(), new AnonymousClass1());
        }
        e();
        if (this.M.aG() == null || this.w != 0) {
            this.n.setVisibility(8);
        } else {
            com.anythink.expressad.foundation.d.a aVarAG = this.M.aG();
            StringBuilder sb = new StringBuilder();
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_app_name", i.g)));
            sb.append(aVarAG.b());
            sb.append("\n");
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_version", i.g)));
            sb.append(aVarAG.e());
            sb.append("\n");
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_publish", i.g)));
            sb.append(aVarAG.f());
            sb.append("\n");
            sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_update_time", i.g)));
            sb.append(aVarAG.d());
            this.o.setText(sb);
        }
        if (this.v == 1 || this.x == 1) {
            this.r.setVisibility(8);
        } else {
            this.r.initView(this.M.cU);
        }
        if (this.u == 1) {
            setOnClickListener(new AnonymousClass6());
        } else {
            this.r.setOnClickListener(new AnonymousClass7());
        }
        this.p.setOnClickListener(new AnonymousClass8());
        this.q.setOnClickListener(new AnonymousClass9());
        this.g.setOnClickListener(new AnonymousClass10());
        if (this.x == 1) {
            MBShakeView mBShakeView = new MBShakeView(getContext());
            this.N = mBShakeView;
            mBShakeView.initView(this.M.cU);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.N.setLayoutParams(layoutParams);
            addView(this.N);
            this.r.setVisibility(4);
            this.r.setEnabled(false);
            this.N.setOnClickListener(new AnonymousClass2());
            this.R = new AnonymousClass3(this.y, this.z * 1000);
        }
        updateCountDown(this.s);
    }

    public static /* synthetic */ void b(ATSplashNativeView aTSplashNativeView, boolean z) {
        if (aTSplashNativeView.L.getSplashJSBridgeImpl() == null || aTSplashNativeView.L.getSplashJSBridgeImpl().getSplashBridgeListener() == null) {
            return;
        }
        aTSplashNativeView.L.getSplashJSBridgeImpl().getSplashBridgeListener().a(z ? 2 : 1, aTSplashNativeView.t);
    }

    private void c() {
        if (TextUtils.isEmpty(this.M.be())) {
            this.c.setVisibility(4);
        } else {
            com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).a(this.M.be(), new AnonymousClass1());
        }
    }

    private void d() {
        if (TextUtils.isEmpty(this.M.bd())) {
            this.i.setVisibility(4);
        } else {
            com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).a(this.M.bd(), new AnonymousClass4());
        }
    }

    private void e() {
        Drawable drawable;
        TextView textView;
        com.anythink.expressad.foundation.b.a.c().f();
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
        if (aVarB != null) {
            final String strJ = aVarB.J();
            if (TextUtils.isEmpty(strJ)) {
                this.e.setVisibility(8);
            }
            this.e.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.splash.view.ATSplashNativeView.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    com.anythink.core.common.o.n.a(ATSplashNativeView.this.getContext(), strJ);
                }
            });
        } else {
            this.e.setVisibility(8);
        }
        try {
            drawable = getResources().getDrawable(i.a(getContext().getApplicationContext(), "anythink_splash_m_circle", i.c));
            try {
                drawable.setBounds(0, 0, t.b(getContext(), 10.0f), t.b(getContext(), 10.0f));
            } catch (Throwable th) {
                th = th;
                th.getMessage();
            }
        } catch (Throwable th2) {
            th = th2;
            drawable = null;
        }
        if (this.A == 1 && this.F) {
            if (this.B != 0 && drawable != null) {
                this.m.setCompoundDrawables(drawable, null, null, null);
            }
            this.m.setText(getContext().getString(i.a(getContext(), "anythink_cm_app_info_app_label", i.g)));
            textView = this.l;
        } else {
            if (this.B != 0 && drawable != null) {
                this.l.setCompoundDrawables(drawable, null, null, null);
            }
            this.l.setText(getContext().getString(i.a(getContext(), "anythink_cm_app_info_app_label", i.g)));
            textView = this.m;
        }
        textView.setVisibility(4);
    }

    private void f() {
        if (this.M.aG() == null || this.w != 0) {
            this.n.setVisibility(8);
            return;
        }
        com.anythink.expressad.foundation.d.a aVarAG = this.M.aG();
        StringBuilder sb = new StringBuilder();
        sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_app_name", i.g)));
        sb.append(aVarAG.b());
        sb.append("\n");
        sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_version", i.g)));
        sb.append(aVarAG.e());
        sb.append("\n");
        sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_publish", i.g)));
        sb.append(aVarAG.f());
        sb.append("\n");
        sb.append(getContext().getString(i.a(getContext(), "anythink_cm_app_info_update_time", i.g)));
        sb.append(aVarAG.d());
        this.o.setText(sb);
    }

    private void g() {
        if (this.v == 1) {
            this.r.setVisibility(8);
        } else if (this.x == 1) {
            this.r.setVisibility(8);
        } else {
            this.r.initView(this.M.cU);
        }
    }

    private void h() {
        if (this.u == 1) {
            setOnClickListener(new AnonymousClass6());
        } else {
            this.r.setOnClickListener(new AnonymousClass7());
        }
        this.p.setOnClickListener(new AnonymousClass8());
        this.q.setOnClickListener(new AnonymousClass9());
        this.g.setOnClickListener(new AnonymousClass10());
    }

    public static /* synthetic */ void h(ATSplashNativeView aTSplashNativeView) {
        if (TextUtils.isEmpty(aTSplashNativeView.M.bd())) {
            aTSplashNativeView.i.setVisibility(4);
        } else {
            com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).a(aTSplashNativeView.M.bd(), aTSplashNativeView.new AnonymousClass4());
        }
    }

    private void i() {
        if (com.anythink.expressad.foundation.f.b.a().b()) {
            this.M.l(this.J);
            com.anythink.expressad.foundation.f.b.a().a(this.J, new AnonymousClass11());
            com.anythink.expressad.foundation.f.b.a().a(this.J, this.f);
            com.anythink.expressad.foundation.f.b.a().a(this.J, this.M);
            return;
        }
        FeedBackButton feedBackButton = this.f;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    private void j() {
        if (this.x == 1) {
            MBShakeView mBShakeView = new MBShakeView(getContext());
            this.N = mBShakeView;
            mBShakeView.initView(this.M.cU);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.N.setLayoutParams(layoutParams);
            addView(this.N);
            this.r.setVisibility(4);
            this.r.setEnabled(false);
            this.N.setOnClickListener(new AnonymousClass2());
            this.R = new AnonymousClass3(this.y, this.z * 1000);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.x != 1 || this.N == null || this.R == null) {
                return;
            }
            com.anythink.expressad.shake.a.a().a(this.R);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.C = motionEvent.getRawX();
        this.D = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        TextView textView = this.g;
        if (textView == null || textView.getParent() == null || !(this.g.getParent() instanceof ViewGroup)) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = ((ViewGroup) this.g.getParent()).getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            int iB = ((RelativeLayout.LayoutParams) layoutParams).topMargin + com.anythink.core.common.o.i.b(getContext());
            int[] iArr = new int[2];
            this.g.getLocationOnScreen(iArr);
            if (iArr[1] < iB) {
                int i5 = iB - iArr[1];
                ViewParent parent = this.g.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    viewGroup.setPadding(viewGroup.getPaddingLeft(), viewGroup.getPaddingTop() + i5, viewGroup.getPaddingRight(), viewGroup.getPaddingBottom() + i5);
                }
            }
        }
    }

    public void release() {
        try {
            if (this.R != null) {
                com.anythink.expressad.shake.a.a().b(this.R);
                this.R = null;
            }
            com.anythink.expressad.foundation.f.b.a().c(this.J);
            detachAllViewsFromParent();
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void setIsPause(boolean z) {
        this.H = z;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        this.d.setPadding(i, i3, i2, i4);
    }

    public void updateCountDown(int i) {
        StringBuilder sb;
        String str;
        if (this.g != null) {
            this.t = i;
            if (this.G) {
                sb = new StringBuilder();
                sb.append(this.P);
                sb.append(o4.OooO00o.OooO0Oo);
                sb.append(i);
                str = this.O;
            } else {
                sb = new StringBuilder();
                sb.append(i);
                sb.append(this.O);
                sb.append(o4.OooO00o.OooO0Oo);
                str = this.Q;
            }
            sb.append(str);
            this.g.setText(sb.toString());
        }
    }
}
