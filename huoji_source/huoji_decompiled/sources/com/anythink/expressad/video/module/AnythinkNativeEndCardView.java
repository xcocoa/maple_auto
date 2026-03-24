package com.anythink.expressad.video.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.anythink.core.common.o.n;
import com.anythink.expressad.foundation.d.d;
import com.anythink.expressad.foundation.g.d.c;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.x;
import com.anythink.expressad.shake.MBShakeView;
import com.anythink.expressad.video.dynview.a;
import com.anythink.expressad.video.dynview.f.h;
import com.anythink.expressad.video.dynview.widget.AnyThinkLevelLayoutView;
import com.anythink.expressad.video.dynview.widget.AnythinkBaitClickView;
import com.anythink.expressad.video.module.a.a.j;
import com.anythink.expressad.video.signal.f;
import com.anythink.expressad.video.signal.factory.b;
import com.anythink.expressad.videocommon.view.RoundImageView;
import com.anythink.expressad.videocommon.view.StarLevelView;
import com.anythink.expressad.widget.FeedBackButton;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnythinkNativeEndCardView extends AnythinkBaseView implements f {
    private static final String n = "anythink_reward_endcard_native_hor";
    private static final String o = "anythink_reward_endcard_native_land";
    private static final String p = "anythink_reward_endcard_native_half_portrait";
    private static final String q = "anythink_reward_endcard_native_half_landscape";
    private ImageView A;
    private TextView B;
    private TextView C;
    private TextView D;
    private LinearLayout E;
    private FeedBackButton F;
    private Runnable G;
    private RelativeLayout H;
    private b I;
    private boolean J;
    private boolean K;
    private int L;
    private boolean M;
    private boolean N;
    private boolean O;
    private AlphaAnimation P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private boolean U;
    private View V;
    private TextView W;
    private boolean aa;
    private String ab;
    private d ac;
    private MBShakeView ad;
    private com.anythink.expressad.shake.b ae;
    private AnythinkBaitClickView af;
    private int ag;
    private ViewGroup r;
    private ViewGroup s;
    private RelativeLayout t;
    private RelativeLayout u;
    private ImageView v;
    private ImageView w;
    private ImageView x;
    private ImageView y;
    private ImageView z;

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$10, reason: invalid class name */
    public class AnonymousClass10 implements h {
        public AnonymousClass10() {
        }

        @Override // com.anythink.expressad.video.dynview.f.h
        public final void a(a aVar) {
            AnythinkNativeEndCardView.this.addView(aVar.a());
            AnythinkNativeEndCardView.this.U = aVar.c();
            AnythinkNativeEndCardView anythinkNativeEndCardView = AnythinkNativeEndCardView.this;
            anythinkNativeEndCardView.f = anythinkNativeEndCardView.b(aVar.a());
            AnythinkNativeEndCardView.this.e();
        }

        @Override // com.anythink.expressad.video.dynview.f.h
        public final void a(com.anythink.expressad.video.dynview.c.b bVar) {
            new StringBuilder("errorMsg:").append(bVar.b());
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$11, reason: invalid class name */
    public class AnonymousClass11 implements c {
        public AnonymousClass11() {
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled()) {
                return;
            }
            try {
                if (AnythinkNativeEndCardView.this.w != null) {
                    AnythinkNativeEndCardView anythinkNativeEndCardView = AnythinkNativeEndCardView.this;
                    if (anythinkNativeEndCardView.i) {
                        anythinkNativeEndCardView.w.setBackgroundDrawable(null);
                    }
                    AnythinkNativeEndCardView.this.w.setImageBitmap(bitmap);
                }
                Bitmap bitmapBlurBitmap = AnythinkNativeEndCardView.this.blurBitmap(bitmap);
                if (bitmapBlurBitmap == null || bitmapBlurBitmap.isRecycled() || AnythinkNativeEndCardView.this.v == null) {
                    return;
                }
                AnythinkNativeEndCardView anythinkNativeEndCardView2 = AnythinkNativeEndCardView.this;
                if (anythinkNativeEndCardView2.i) {
                    anythinkNativeEndCardView2.v.setBackgroundDrawable(null);
                }
                AnythinkNativeEndCardView.this.v.setImageBitmap(bitmapBlurBitmap);
            } catch (Throwable unused) {
                if (AnythinkNativeEndCardView.this.v != null) {
                    AnythinkNativeEndCardView.this.v.setVisibility(4);
                }
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$12, reason: invalid class name */
    public class AnonymousClass12 implements c {
        public AnonymousClass12() {
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled() || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            try {
                int iB = t.b(AnythinkNativeEndCardView.this.a, 12.0f);
                AnythinkNativeEndCardView.this.y.getLayoutParams().height = iB;
                AnythinkNativeEndCardView.this.y.getLayoutParams().width = (int) (iB * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                AnythinkNativeEndCardView.this.y.setImageBitmap(bitmap);
                AnythinkNativeEndCardView.this.y.setBackgroundColor(1426063360);
            } catch (Throwable unused) {
            }
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$13, reason: invalid class name */
    public class AnonymousClass13 implements View.OnClickListener {
        public final /* synthetic */ String a;

        public AnonymousClass13(String str) {
            this.a = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(AnythinkNativeEndCardView.this.a, this.a);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$4, reason: invalid class name */
    public class AnonymousClass4 implements com.anythink.expressad.foundation.f.a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void a() {
            AnythinkNativeEndCardView.this.O = true;
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void b() {
            AnythinkNativeEndCardView.this.O = false;
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void c() {
            AnythinkNativeEndCardView.this.O = false;
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$5, reason: invalid class name */
    public class AnonymousClass5 implements View.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 0);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$6, reason: invalid class name */
    public class AnonymousClass6 extends com.anythink.expressad.shake.b {
        public AnonymousClass6(int i, int i2) {
            super(i, i2);
        }

        @Override // com.anythink.expressad.shake.b
        public final void a() {
            if (!AnythinkNativeEndCardView.this.O && AnythinkNativeEndCardView.this.N && AnythinkNativeEndCardView.this.isShown()) {
                AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 4);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$7, reason: invalid class name */
    public class AnonymousClass7 implements View.OnAttachStateChangeListener {
        public boolean a = false;

        public AnonymousClass7() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(@NonNull View view) {
            if (this.a || AnythinkNativeEndCardView.this.ae == null) {
                return;
            }
            this.a = true;
            com.anythink.expressad.shake.a.a().a(AnythinkNativeEndCardView.this.ae);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(@NonNull View view) {
            if (AnythinkNativeEndCardView.this.ae != null) {
                com.anythink.expressad.shake.a.a().b(AnythinkNativeEndCardView.this.ae);
            }
            AnythinkNativeEndCardView.this.ae = null;
            this.a = false;
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$8, reason: invalid class name */
    public class AnonymousClass8 implements View.OnClickListener {
        public AnonymousClass8() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 0);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.module.AnythinkNativeEndCardView$9, reason: invalid class name */
    public class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 2);
        }
    }

    public AnythinkNativeEndCardView(Context context) {
        super(context);
        this.J = false;
        this.K = false;
        this.L = 0;
        this.M = false;
        this.N = false;
        this.O = false;
        this.U = false;
        this.ag = 1;
    }

    public AnythinkNativeEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.J = false;
        this.K = false;
        this.L = 0;
        this.M = false;
        this.N = false;
        this.O = false;
        this.U = false;
        this.ag = 1;
    }

    public AnythinkNativeEndCardView(Context context, AttributeSet attributeSet, boolean z, int i, boolean z3, int i2, int i3) {
        super(context, attributeSet, z, i, z3, i2, i3);
        this.J = false;
        this.K = false;
        this.L = 0;
        this.M = false;
        this.N = false;
        this.O = false;
        this.U = false;
        this.ag = 1;
    }

    private void a() {
        new com.anythink.expressad.video.dynview.j.c();
        com.anythink.expressad.video.dynview.c cVarA = com.anythink.expressad.video.dynview.j.c.a(getContext(), this.b, this.j);
        com.anythink.expressad.video.dynview.b.a();
        com.anythink.expressad.video.dynview.b.a(cVarA, new AnonymousClass10());
    }

    private void a(View view) {
        if (view == null) {
            setLayout();
            preLoadData(this.I);
        } else {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            b(view);
            c();
        }
        h();
    }

    public static /* synthetic */ void a(AnythinkNativeEndCardView anythinkNativeEndCardView, int i) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (JSONException e) {
            e = e;
        }
        try {
            jSONObject.put(com.anythink.expressad.foundation.g.a.ce, anythinkNativeEndCardView.a(i));
            if (anythinkNativeEndCardView.b.k() == 5) {
                jSONObject.put("camp_position", 0);
            }
        } catch (JSONException e2) {
            e = e2;
            jSONObject2 = jSONObject;
            e.printStackTrace();
            jSONObject = jSONObject2;
        }
        anythinkNativeEndCardView.e.a(105, jSONObject);
    }

    public static /* synthetic */ boolean a(AnythinkNativeEndCardView anythinkNativeEndCardView) {
        anythinkNativeEndCardView.K = true;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b() {
        View view;
        int i = this.ag;
        String str = q;
        String str2 = p;
        if (i == 0) {
            if (!this.aa) {
                str2 = n;
            }
            if (isLandscape()) {
                if (!this.aa) {
                    str = o;
                }
                str2 = str;
            }
        } else {
            if (i != 1) {
                str2 = "";
            } else if (!this.aa) {
                str2 = n;
            }
            if (i == 2) {
                if (!this.aa) {
                }
                str2 = str;
            }
        }
        int iFindLayout = findLayout(str2);
        if (iFindLayout > 0) {
            if (isLandscape()) {
                ViewGroup viewGroup = (ViewGroup) this.c.inflate(iFindLayout, (ViewGroup) null);
                this.s = viewGroup;
                addView(viewGroup);
                view = this.s;
            } else {
                ViewGroup viewGroup2 = (ViewGroup) this.c.inflate(iFindLayout, (ViewGroup) null);
                this.r = viewGroup2;
                addView(viewGroup2);
                view = this.r;
            }
            this.f = b(view);
            e();
        }
    }

    private boolean b(int i) {
        View view;
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.c.inflate(i, (ViewGroup) null);
            this.s = viewGroup;
            addView(viewGroup);
            view = this.s;
        } else {
            ViewGroup viewGroup2 = (ViewGroup) this.c.inflate(i, (ViewGroup) null);
            this.r = viewGroup2;
            addView(viewGroup2);
            view = this.r;
        }
        return b(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(View view) {
        try {
            this.t = (RelativeLayout) view.findViewById(filterFindViewId(this.U, "anythink_native_ec_layout"));
            this.u = (RelativeLayout) view.findViewById(filterFindViewId(this.U, "anythink_native_ec_layer_layout"));
            this.w = (ImageView) view.findViewById(filterFindViewId(this.U, "anythink_iv_adbanner"));
            this.x = (ImageView) view.findViewById(filterFindViewId(this.U, "anythink_iv_icon"));
            this.y = (ImageView) view.findViewById(filterFindViewId(this.U, "anythink_iv_flag"));
            this.z = (ImageView) view.findViewById(filterFindViewId(this.U, "anythink_iv_link"));
            this.B = (TextView) view.findViewById(filterFindViewId(this.U, "anythink_tv_apptitle"));
            this.E = (LinearLayout) view.findViewById(filterFindViewId(this.U, "anythink_sv_starlevel"));
            this.V = view.findViewById(filterFindViewId(this.U, "anythink_iv_close"));
            View viewFindViewById = view.findViewById(filterFindViewId(this.U, "anythink_tv_cta"));
            if (viewFindViewById != null && (viewFindViewById instanceof TextView)) {
                this.W = (TextView) viewFindViewById;
            }
            this.F = (FeedBackButton) view.findViewById(filterFindViewId(this.U, "anythink_native_endcard_feed_btn"));
            this.H = (RelativeLayout) view.findViewById(filterFindViewId(this.U, "anythink_native_ec_controller"));
            this.v = (ImageView) view.findViewById(filterFindViewId(this.U, "anythink_iv_adbanner_bg"));
            if (!this.i) {
                this.C = (TextView) view.findViewById(filterFindViewId(this.U, "anythink_tv_appdesc"));
                TextView textView = (TextView) view.findViewById(filterFindViewId(this.U, "anythink_tv_number"));
                this.D = textView;
                return isNotNULL(this.v, this.w, this.x, this.B, this.C, textView, this.E, this.V, this.W);
            }
            ImageView imageView = this.w;
            if (imageView != null && (imageView instanceof RoundImageView)) {
                ((RoundImageView) imageView).setBorderRadius(10);
            }
            ImageView imageView2 = this.x;
            if (imageView2 != null && (imageView2 instanceof RoundImageView)) {
                ((RoundImageView) imageView2).setBorderRadius(10);
            }
            return isNotNULL(this.v, this.w, this.x, this.B, this.E, this.V);
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    private void c(int i) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (JSONException e) {
            e = e;
        }
        try {
            jSONObject.put(com.anythink.expressad.foundation.g.a.ce, a(i));
            if (this.b.k() == 5) {
                jSONObject.put("camp_position", 0);
            }
        } catch (JSONException e2) {
            e = e2;
            jSONObject2 = jSONObject;
            e.printStackTrace();
            jSONObject = jSONObject2;
        }
        this.e.a(105, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        c();
        if (!this.f) {
            this.e.a(104, "");
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.P = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void f() {
        ImageView imageView;
        com.anythink.expressad.foundation.g.d.b.a(this.a.getApplicationContext()).a(this.b.be(), new AnonymousClass11());
        com.anythink.expressad.foundation.g.d.b.a(this.a.getApplicationContext()).a(this.b.bd(), new j(this.x, t.b(com.anythink.core.common.b.n.a().f(), 8.0f)));
        this.B.setText(this.b.bb());
        TextView textView = this.W;
        if (textView != null) {
            textView.setText(this.b.cU);
        }
        TextView textView2 = this.C;
        if (textView2 != null) {
            textView2.setText(this.b.bc());
        }
        TextView textView3 = this.D;
        if (textView3 != null) {
            textView3.setText(this.b.aY() + ")");
        }
        this.E.removeAllViews();
        double dAX = this.b.aX();
        if (dAX <= 0.0d) {
            dAX = 5.0d;
        }
        LinearLayout linearLayout = this.E;
        if (linearLayout instanceof StarLevelView) {
            ((StarLevelView) linearLayout).initScore(dAX);
        }
        LinearLayout linearLayout2 = this.E;
        if (linearLayout2 instanceof AnyThinkLevelLayoutView) {
            ((AnyThinkLevelLayoutView) linearLayout2).setRatingAndUser(dAX, this.b.aY());
        }
        if (!TextUtils.isEmpty(this.b.I()) && this.b.I().contains("alecfc=1")) {
            this.J = true;
        }
        com.anythink.expressad.foundation.g.d.b.a(this.a.getApplicationContext()).a(TextUtils.isEmpty(this.b.aE()) ? com.anythink.expressad.a.ab : this.b.aE(), new AnonymousClass12());
        com.anythink.expressad.foundation.b.a.c().f();
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
        if (aVarB != null) {
            String strJ = aVarB.J();
            if (TextUtils.isEmpty(strJ)) {
                this.z.setVisibility(8);
            }
            this.z.setOnClickListener(new AnonymousClass13(strJ));
        } else {
            this.z.setVisibility(8);
        }
        if (!this.K) {
            this.V.setVisibility(8);
        }
        if (Build.VERSION.SDK_INT >= 17 || (imageView = this.v) == null) {
            return;
        }
        imageView.setVisibility(8);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int g() {
        int i = this.ag;
        String str = q;
        String str2 = p;
        if (i == 0) {
            if (!this.aa) {
                str2 = n;
            }
            if (isLandscape()) {
                if (!this.aa) {
                    str = o;
                }
                str2 = str;
            }
        } else {
            if (i != 1) {
                str2 = "";
            } else if (!this.aa) {
                str2 = n;
            }
            if (i == 2) {
                if (!this.aa) {
                }
                str2 = str;
            }
        }
        return findLayout(str2);
    }

    private void h() {
        RelativeLayout relativeLayout;
        if (!this.f || (relativeLayout = this.H) == null) {
            return;
        }
        relativeLayout.postDelayed(new Runnable() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.3
            @Override // java.lang.Runnable
            public final void run() {
                com.anythink.expressad.foundation.d.c cVar = AnythinkNativeEndCardView.this.b;
                if (cVar != null && !cVar.j() && AnythinkNativeEndCardView.this.b.f() != 2) {
                    AnythinkNativeEndCardView.this.H.setPadding(AnythinkNativeEndCardView.this.Q, AnythinkNativeEndCardView.this.S, AnythinkNativeEndCardView.this.R, AnythinkNativeEndCardView.this.T);
                    AnythinkNativeEndCardView.this.H.startAnimation(AnythinkNativeEndCardView.this.P);
                }
                AnythinkNativeEndCardView.this.H.setVisibility(0);
                if (AnythinkNativeEndCardView.this.V.getVisibility() != 0 && AnythinkNativeEndCardView.this.K) {
                    AnythinkNativeEndCardView.this.V.setVisibility(0);
                }
                AnythinkNativeEndCardView.o(AnythinkNativeEndCardView.this);
            }
        }, 200L);
    }

    private void i() {
        if (!com.anythink.expressad.foundation.f.b.a().b()) {
            FeedBackButton feedBackButton = this.F;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        this.b.l(this.ab);
        com.anythink.expressad.foundation.f.b.a().a(this.ab + "_2", new AnonymousClass4());
        com.anythink.expressad.foundation.f.b.a().a(this.ab + "_2", this.b);
        com.anythink.expressad.foundation.f.b.a().c(this.ab + "_1");
        com.anythink.expressad.foundation.f.b.a().a(this.ab + "_2", this.F);
        if (this.F != null) {
            com.anythink.expressad.foundation.f.b.a().a(this.ab + "_2", this.F);
        }
    }

    private void j() {
        int i;
        int i2;
        try {
            com.anythink.expressad.foundation.d.c cVar = this.b;
            if (cVar == null || !cVar.j()) {
                return;
            }
            String strI = this.b.I();
            if (TextUtils.isEmpty(strI)) {
                strI = this.b.P();
            }
            String strA = x.a(strI, "shake_strength");
            String strA2 = x.a(strI, "shake_time");
            if (TextUtils.isEmpty("1") || this.ad != null) {
                return;
            }
            AnythinkBaitClickView anythinkBaitClickView = this.af;
            if (anythinkBaitClickView != null) {
                anythinkBaitClickView.setVisibility(8);
            }
            MBShakeView mBShakeView = new MBShakeView(getContext());
            this.ad = mBShakeView;
            mBShakeView.initView(this.b.cU, true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (isLandscape()) {
                layoutParams.addRule(13);
            } else {
                layoutParams.addRule(2, findID("anythink_iv_logo"));
                layoutParams.addRule(14);
                this.ad.setPadding(0, 0, 0, t.b(getContext(), 20.0f));
            }
            this.ad.setLayoutParams(layoutParams);
            RelativeLayout relativeLayout = this.t;
            if (relativeLayout != null && relativeLayout.isShown()) {
                if (this.W != null) {
                    this.t.addView(this.ad);
                }
                this.W.setVisibility(4);
                this.ad.setOnClickListener(new AnonymousClass5());
                int i3 = 10;
                if (!TextUtils.isEmpty(strA) && (i2 = Integer.parseInt(strA)) >= 0) {
                    i3 = i2;
                }
                int i4 = 5000;
                if (!TextUtils.isEmpty(strA2) && (i = Integer.parseInt(strA2)) > 0) {
                    i4 = i * 1000;
                }
                this.ae = new AnonymousClass6(i3, i4);
                this.ad.addOnAttachStateChangeListener(new AnonymousClass7());
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    private void k() {
        try {
            com.anythink.expressad.foundation.d.c cVar = this.b;
            if (cVar == null || !cVar.j()) {
                return;
            }
            String strI = this.b.I();
            if (TextUtils.isEmpty(strI)) {
                strI = this.b.P();
            }
            String strA = x.a(strI, "bait_click");
            int i = 1;
            try {
                i = Integer.parseInt(strA);
            } catch (Throwable th) {
                th.getMessage();
            }
            if (TextUtils.isEmpty(strA) || i == 0 || this.af != null) {
                return;
            }
            AnythinkBaitClickView anythinkBaitClickView = new AnythinkBaitClickView(getContext());
            this.af = anythinkBaitClickView;
            anythinkBaitClickView.init(1342177280, i);
            this.af.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            RelativeLayout relativeLayout = this.u;
            if (relativeLayout != null) {
                relativeLayout.addView(this.af);
                this.af.startAnimation();
                this.af.setOnClickListener(new AnonymousClass8());
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    private void l() {
        try {
            com.anythink.expressad.foundation.d.c cVar = this.b;
            if (cVar == null || !cVar.j()) {
                return;
            }
            String strI = this.b.I();
            if (TextUtils.isEmpty(strI)) {
                strI = this.b.P();
            }
            String strA = x.a(strI, "alac");
            if (TextUtils.isEmpty(strA) || !strA.equals("1")) {
                return;
            }
            postDelayed(new AnonymousClass9(), 1000L);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static /* synthetic */ void o(AnythinkNativeEndCardView anythinkNativeEndCardView) {
        if (!com.anythink.expressad.foundation.f.b.a().b()) {
            FeedBackButton feedBackButton = anythinkNativeEndCardView.F;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        anythinkNativeEndCardView.b.l(anythinkNativeEndCardView.ab);
        com.anythink.expressad.foundation.f.b.a().a(anythinkNativeEndCardView.ab + "_2", anythinkNativeEndCardView.new AnonymousClass4());
        com.anythink.expressad.foundation.f.b.a().a(anythinkNativeEndCardView.ab + "_2", anythinkNativeEndCardView.b);
        com.anythink.expressad.foundation.f.b.a().c(anythinkNativeEndCardView.ab + "_1");
        com.anythink.expressad.foundation.f.b.a().a(anythinkNativeEndCardView.ab + "_2", anythinkNativeEndCardView.F);
        if (anythinkNativeEndCardView.F != null) {
            com.anythink.expressad.foundation.f.b.a().a(anythinkNativeEndCardView.ab + "_2", anythinkNativeEndCardView.F);
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
            RenderScript renderScriptCreate = RenderScript.create(this.a.getApplicationContext());
            ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
            Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmap);
            Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
            scriptIntrinsicBlurCreate.setRadius(25.0f);
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
            allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
            renderScriptCreate.destroy();
            return bitmapCreateBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public final void c() {
        if (this.f) {
            this.t.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.14
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (AnythinkNativeEndCardView.this.J) {
                        AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 1);
                    }
                }
            });
            this.V.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AnythinkNativeEndCardView.this.e.a(104, "");
                }
            });
            TextView textView = this.W;
            if (textView != null) {
                textView.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.16
                    @Override // com.anythink.expressad.widget.a
                    public final void a(View view) {
                        AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 0);
                    }
                });
            }
            this.x.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.17
                @Override // com.anythink.expressad.widget.a
                public final void a(View view) {
                    AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 0);
                }
            });
            this.w.setOnClickListener(new com.anythink.expressad.widget.a() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.2
                @Override // com.anythink.expressad.widget.a
                public final void a(View view) {
                    AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this, 0);
                }
            });
        }
    }

    public boolean canBackPress() {
        View view = this.V;
        return view != null && view.getVisibility() == 0;
    }

    public void clearMoreOfferBitmap() {
        d dVar;
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null || !cVar.j() || (dVar = this.ac) == null || (arrayList = dVar.J) == null || arrayList.size() <= 0) {
            return;
        }
        for (com.anythink.expressad.foundation.d.c cVar2 : this.ac.J) {
            if (!TextUtils.isEmpty(cVar2.bd())) {
                com.anythink.expressad.foundation.g.d.b.a(com.anythink.core.common.b.n.a().f()).c(cVar2.bd());
            }
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void init(Context context) {
    }

    public boolean isDyXmlSuccess() {
        return this.U;
    }

    public void notifyShowListener() {
        this.e.a(110, "");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        int i;
        int i2;
        int i3;
        super.onAttachedToWindow();
        if (this.G == null) {
            this.G = new Runnable() { // from class: com.anythink.expressad.video.module.AnythinkNativeEndCardView.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnythinkNativeEndCardView.a(AnythinkNativeEndCardView.this);
                    if (AnythinkNativeEndCardView.this.V != null) {
                        AnythinkNativeEndCardView.this.V.setVisibility(0);
                    }
                }
            };
        }
        Runnable runnable = this.G;
        if (runnable != null) {
            postDelayed(runnable, this.L * 1000);
            if (!this.N) {
                this.N = true;
            }
            try {
                com.anythink.expressad.foundation.d.c cVar = this.b;
                if (cVar != null && cVar.j()) {
                    String strI = this.b.I();
                    if (TextUtils.isEmpty(strI)) {
                        strI = this.b.P();
                    }
                    String strA = x.a(strI, "alac");
                    if (!TextUtils.isEmpty(strA) && strA.equals("1")) {
                        postDelayed(new AnonymousClass9(), 1000L);
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        try {
            com.anythink.expressad.foundation.d.c cVar2 = this.b;
            if (cVar2 != null && cVar2.j()) {
                String strI2 = this.b.I();
                if (TextUtils.isEmpty(strI2)) {
                    strI2 = this.b.P();
                }
                String strA2 = x.a(strI2, "bait_click");
                try {
                    i3 = Integer.parseInt(strA2);
                } catch (Throwable th2) {
                    th2.getMessage();
                    i3 = 1;
                }
                if (!TextUtils.isEmpty(strA2) && i3 != 0 && this.af == null) {
                    AnythinkBaitClickView anythinkBaitClickView = new AnythinkBaitClickView(getContext());
                    this.af = anythinkBaitClickView;
                    anythinkBaitClickView.init(1342177280, i3);
                    this.af.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    RelativeLayout relativeLayout = this.u;
                    if (relativeLayout != null) {
                        relativeLayout.addView(this.af);
                        this.af.startAnimation();
                        this.af.setOnClickListener(new AnonymousClass8());
                    }
                }
            }
        } catch (Throwable th3) {
            th3.getMessage();
        }
        try {
            com.anythink.expressad.foundation.d.c cVar3 = this.b;
            if (cVar3 == null || !cVar3.j()) {
                return;
            }
            String strI3 = this.b.I();
            if (TextUtils.isEmpty(strI3)) {
                strI3 = this.b.P();
            }
            String strA3 = x.a(strI3, "shake_strength");
            String strA4 = x.a(strI3, "shake_time");
            if (TextUtils.isEmpty("1") || this.ad != null) {
                return;
            }
            AnythinkBaitClickView anythinkBaitClickView2 = this.af;
            if (anythinkBaitClickView2 != null) {
                anythinkBaitClickView2.setVisibility(8);
            }
            MBShakeView mBShakeView = new MBShakeView(getContext());
            this.ad = mBShakeView;
            mBShakeView.initView(this.b.cU, true);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (isLandscape()) {
                layoutParams.addRule(13);
            } else {
                layoutParams.addRule(2, findID("anythink_iv_logo"));
                layoutParams.addRule(14);
                this.ad.setPadding(0, 0, 0, t.b(getContext(), 20.0f));
            }
            this.ad.setLayoutParams(layoutParams);
            RelativeLayout relativeLayout2 = this.t;
            if (relativeLayout2 != null && relativeLayout2.isShown()) {
                if (this.W != null) {
                    this.t.addView(this.ad);
                }
                this.W.setVisibility(4);
                this.ad.setOnClickListener(new AnonymousClass5());
                int i4 = 10;
                if (!TextUtils.isEmpty(strA3) && (i2 = Integer.parseInt(strA3)) >= 0) {
                    i4 = i2;
                }
                int i5 = 5000;
                if (!TextUtils.isEmpty(strA4) && (i = Integer.parseInt(strA4)) > 0) {
                    i5 = i * 1000;
                }
                this.ae = new AnonymousClass6(i4, i5);
                this.ad.addOnAttachStateChangeListener(new AnonymousClass7());
            }
        } catch (Throwable th4) {
            th4.getMessage();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.G;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        if (this.ae != null) {
            com.anythink.expressad.shake.a.a().b(this.ae);
            this.ae = null;
        }
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        ViewGroup viewGroup;
        super.onSelfConfigurationChanged(configuration);
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null || !cVar.j()) {
            RelativeLayout relativeLayout = this.H;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(4);
            }
            this.d = configuration.orientation;
            new StringBuilder(" native onSelfConfigurationChanged:").append(this.d);
            if (this.d == 2) {
                removeView(this.r);
                viewGroup = this.s;
            } else {
                removeView(this.s);
                viewGroup = this.r;
            }
            a(viewGroup);
        }
    }

    @Override // com.anythink.expressad.video.signal.f
    public void preLoadData(b bVar) {
        ImageView imageView;
        this.I = bVar;
        try {
            if (this.b == null || !this.f) {
                return;
            }
            com.anythink.expressad.foundation.g.d.b.a(this.a.getApplicationContext()).a(this.b.be(), new AnonymousClass11());
            com.anythink.expressad.foundation.g.d.b.a(this.a.getApplicationContext()).a(this.b.bd(), new j(this.x, t.b(com.anythink.core.common.b.n.a().f(), 8.0f)));
            this.B.setText(this.b.bb());
            TextView textView = this.W;
            if (textView != null) {
                textView.setText(this.b.cU);
            }
            TextView textView2 = this.C;
            if (textView2 != null) {
                textView2.setText(this.b.bc());
            }
            TextView textView3 = this.D;
            if (textView3 != null) {
                textView3.setText(this.b.aY() + ")");
            }
            this.E.removeAllViews();
            double dAX = this.b.aX();
            if (dAX <= 0.0d) {
                dAX = 5.0d;
            }
            LinearLayout linearLayout = this.E;
            if (linearLayout instanceof StarLevelView) {
                ((StarLevelView) linearLayout).initScore(dAX);
            }
            LinearLayout linearLayout2 = this.E;
            if (linearLayout2 instanceof AnyThinkLevelLayoutView) {
                ((AnyThinkLevelLayoutView) linearLayout2).setRatingAndUser(dAX, this.b.aY());
            }
            if (!TextUtils.isEmpty(this.b.I()) && this.b.I().contains("alecfc=1")) {
                this.J = true;
            }
            com.anythink.expressad.foundation.g.d.b.a(this.a.getApplicationContext()).a(TextUtils.isEmpty(this.b.aE()) ? com.anythink.expressad.a.ab : this.b.aE(), new AnonymousClass12());
            com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
            if (aVarB != null) {
                String strJ = aVarB.J();
                if (TextUtils.isEmpty(strJ)) {
                    this.z.setVisibility(8);
                }
                this.z.setOnClickListener(new AnonymousClass13(strJ));
            } else {
                this.z.setVisibility(8);
            }
            if (!this.K) {
                this.V.setVisibility(8);
            }
            if (Build.VERSION.SDK_INT >= 17 || (imageView = this.v) == null) {
                return;
            }
            imageView.setVisibility(8);
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public void release() {
        try {
            removeAllViews();
            AlphaAnimation alphaAnimation = this.P;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.ae = null;
            this.G = null;
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void setCloseBtnDelay(int i) {
        this.L = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setLayout() {
        View view;
        if (this.i) {
            new com.anythink.expressad.video.dynview.j.c();
            com.anythink.expressad.video.dynview.c cVarA = com.anythink.expressad.video.dynview.j.c.a(getContext(), this.b, this.j);
            com.anythink.expressad.video.dynview.b.a();
            com.anythink.expressad.video.dynview.b.a(cVarA, new AnonymousClass10());
            return;
        }
        int i = this.ag;
        String str = q;
        String str2 = p;
        if (i == 0) {
            if (!this.aa) {
                str2 = n;
            }
            if (isLandscape()) {
                if (!this.aa) {
                    str = o;
                }
                str2 = str;
            }
        } else {
            if (i != 1) {
                str2 = "";
            } else if (!this.aa) {
                str2 = n;
            }
            if (i == 2) {
                if (!this.aa) {
                }
                str2 = str;
            }
        }
        int iFindLayout = findLayout(str2);
        if (iFindLayout > 0) {
            if (isLandscape()) {
                ViewGroup viewGroup = (ViewGroup) this.c.inflate(iFindLayout, (ViewGroup) null);
                this.s = viewGroup;
                addView(viewGroup);
                view = this.s;
            } else {
                ViewGroup viewGroup2 = (ViewGroup) this.c.inflate(iFindLayout, (ViewGroup) null);
                this.r = viewGroup2;
                addView(viewGroup2);
                view = this.r;
            }
            this.f = b(view);
            e();
        }
    }

    public void setMoreOfferCampaignUnit(d dVar) {
        ArrayList<com.anythink.expressad.foundation.d.c> arrayList;
        MBShakeView mBShakeView;
        com.anythink.expressad.foundation.d.c cVar = this.b;
        if (cVar == null || !cVar.j()) {
            return;
        }
        this.ac = dVar;
        if (dVar == null || (arrayList = dVar.J) == null || arrayList.size() <= 5 || (mBShakeView = this.ad) == null) {
            return;
        }
        mBShakeView.setPadding(0, 0, 0, t.b(getContext(), 5.0f));
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        new StringBuilder("NOTCH NativeEndCard ").append(String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        this.Q = i;
        this.R = i2;
        this.S = i3;
        this.T = i4;
        h();
    }

    public void setOnPause() {
        this.N = false;
    }

    public void setOnResume() {
        this.N = true;
    }

    public void setUnitId(String str) {
        this.ab = str;
    }
}
