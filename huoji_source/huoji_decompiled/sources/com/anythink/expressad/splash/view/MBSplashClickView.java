package com.anythink.expressad.splash.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;

/* JADX INFO: loaded from: classes.dex */
public class MBSplashClickView extends RelativeLayout {
    private static final String a = "MBSplashClickView";
    public final int TYPE_SPLASH_BTN_CLICK;
    public final int TYPE_SPLASH_BTN_GO;
    public final int TYPE_SPLASH_BTN_OPEN;
    private String b;
    private String c;
    private String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private String j;
    private int k;
    private ImageView l;
    private ImageView m;
    private final RectF n;
    private final Paint o;
    private final Paint p;

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.MBSplashClickView$1, reason: invalid class name */
    public class AnonymousClass1 implements Animation.AnimationListener {
        public final /* synthetic */ ScaleAnimation a;

        public AnonymousClass1(ScaleAnimation scaleAnimation) {
            this.a = scaleAnimation;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            MBSplashClickView.this.m.setVisibility(4);
            MBSplashClickView.this.m.postDelayed(new Runnable() { // from class: com.anythink.expressad.splash.view.MBSplashClickView.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    MBSplashClickView.this.m.startAnimation(AnonymousClass1.this.a);
                }
            }, 700L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
            MBSplashClickView.this.m.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.MBSplashClickView$2, reason: invalid class name */
    public class AnonymousClass2 implements Runnable {
        public final /* synthetic */ ScaleAnimation a;

        public AnonymousClass2(ScaleAnimation scaleAnimation) {
            this.a = scaleAnimation;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MBSplashClickView.this.m.startAnimation(this.a);
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.splash.view.MBSplashClickView$3, reason: invalid class name */
    public class AnonymousClass3 implements Animation.AnimationListener {
        public AnonymousClass3() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(final Animation animation) {
            MBSplashClickView.this.l.setVisibility(4);
            MBSplashClickView.this.l.postDelayed(new Runnable() { // from class: com.anythink.expressad.splash.view.MBSplashClickView.3.1
                @Override // java.lang.Runnable
                public final void run() {
                    MBSplashClickView.this.l.startAnimation(animation);
                }
            }, com.anythink.expressad.exoplayer.i.a.f);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
            MBSplashClickView.this.l.setVisibility(0);
        }
    }

    public MBSplashClickView(Context context) {
        super(context);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "anythink_splash_btn_arrow_right";
        this.f = "anythink_splash_btn_circle";
        this.g = "anythink_splash_btn_finger";
        this.h = "anythink_splash_btn_go";
        this.i = "anythink_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.n = new RectF();
        this.o = new Paint();
        this.p = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "anythink_splash_btn_arrow_right";
        this.f = "anythink_splash_btn_circle";
        this.g = "anythink_splash_btn_finger";
        this.h = "anythink_splash_btn_go";
        this.i = "anythink_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.n = new RectF();
        this.o = new Paint();
        this.p = new Paint();
        a();
    }

    public MBSplashClickView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "anythink_splash_btn_arrow_right";
        this.f = "anythink_splash_btn_circle";
        this.g = "anythink_splash_btn_finger";
        this.h = "anythink_splash_btn_go";
        this.i = "anythink_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.n = new RectF();
        this.o = new Paint();
        this.p = new Paint();
        a();
    }

    @RequiresApi(api = 21)
    public MBSplashClickView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.b = "";
        this.c = "";
        this.d = "";
        this.e = "anythink_splash_btn_arrow_right";
        this.f = "anythink_splash_btn_circle";
        this.g = "anythink_splash_btn_finger";
        this.h = "anythink_splash_btn_go";
        this.i = "anythink_splash_btn_light";
        this.TYPE_SPLASH_BTN_OPEN = 1;
        this.TYPE_SPLASH_BTN_GO = 2;
        this.TYPE_SPLASH_BTN_CLICK = 3;
        this.n = new RectF();
        this.o = new Paint();
        this.p = new Paint();
    }

    private void a() {
        this.o.setAntiAlias(true);
        this.o.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.p.setAntiAlias(true);
        this.p.setColor(-1);
        this.b = getContext().getString(i.a(getContext(), "anythink_cm_shake_view_click_default_view", i.g));
        this.c = getContext().getString(i.a(getContext(), "anythink_cm_shake_view_click_default_open", i.g));
        this.d = getContext().getString(i.a(getContext(), "anythink_cm_shake_view_click_default_inst", i.g));
    }

    private void a(int i) {
        int color = Color.parseColor("#666666");
        int color2 = Color.parseColor("#8FC31F");
        int color3 = Color.parseColor("#000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        if (i == 2) {
            gradientDrawable.setColor(color2);
        } else {
            gradientDrawable.setColor(color3);
            gradientDrawable.setStroke(2, color);
        }
        gradientDrawable.setCornerRadius(200.0f);
        setBackgroundDrawable(gradientDrawable);
    }

    private boolean a(String str) {
        int i;
        if (TextUtils.equals(str, this.b)) {
            i = 2;
        } else {
            if (!TextUtils.equals(str, this.d)) {
                if (!TextUtils.equals(str, this.c)) {
                    return false;
                }
                this.k = 1;
                return true;
            }
            i = 3;
        }
        this.k = i;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b() {
        boolean z;
        int i;
        int i2;
        String str = this.j;
        int iA = 0;
        if (TextUtils.equals(str, this.b)) {
            this.k = 2;
        } else if (TextUtils.equals(str, this.d)) {
            this.k = 3;
        } else {
            if (!TextUtils.equals(str, this.c)) {
                z = false;
                if (!z) {
                    if (TextUtils.isEmpty(this.j)) {
                        this.j = this.b;
                    }
                    this.k = 2;
                }
                i = this.k;
                int color = Color.parseColor("#666666");
                int color2 = Color.parseColor("#8FC31F");
                int color3 = Color.parseColor("#000000");
                GradientDrawable gradientDrawable = new GradientDrawable();
                if (i != 2) {
                    gradientDrawable.setColor(color2);
                } else {
                    gradientDrawable.setColor(color3);
                    gradientDrawable.setStroke(2, color);
                }
                gradientDrawable.setCornerRadius(200.0f);
                setBackgroundDrawable(gradientDrawable);
                TextView textView = new TextView(getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(15);
                textView.setLayoutParams(layoutParams);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setTextColor(-1);
                textView.setText(this.j);
                this.l = new ImageView(getContext());
                RelativeLayout.LayoutParams layoutParams2 = null;
                i2 = this.k;
                if (i2 != 2) {
                    iA = i.a(getContext(), "anythink_splash_btn_go", i.c);
                    layoutParams2 = new RelativeLayout.LayoutParams(t.b(getContext(), 35.0f), t.b(getContext(), 35.0f));
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(15);
                    layoutParams2.rightMargin = t.b(getContext(), 10.0f);
                } else if (i2 == 1) {
                    iA = i.a(getContext(), "anythink_splash_btn_light", i.c);
                    layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
                    layoutParams2.leftMargin = 20;
                    layoutParams2.rightMargin = 20;
                    ImageView imageView = new ImageView(getContext());
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
                    layoutParams3.addRule(11);
                    layoutParams3.addRule(15);
                    layoutParams3.rightMargin = t.b(getContext(), 50.0f);
                    imageView.setImageResource(i.a(getContext(), "anythink_splash_btn_arrow_right", i.c));
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    imageView.setLayoutParams(layoutParams3);
                    addView(imageView);
                } else if (i2 == 3) {
                    iA = i.a(getContext(), "anythink_splash_btn_finger", i.c);
                    layoutParams2 = new RelativeLayout.LayoutParams(t.b(getContext(), 25.0f), t.b(getContext(), 25.0f));
                    layoutParams2.addRule(11);
                    layoutParams2.rightMargin = t.b(getContext(), 50.0f);
                    layoutParams2.topMargin = t.b(getContext(), 18.0f);
                    this.m = new ImageView(getContext());
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(t.b(getContext(), 30.0f), t.b(getContext(), 30.0f));
                    layoutParams4.addRule(11);
                    layoutParams4.rightMargin = t.b(getContext(), 50.0f);
                    layoutParams4.topMargin = t.b(getContext(), 5.0f);
                    this.m.setLayoutParams(layoutParams4);
                    this.m.setImageResource(i.a(getContext(), "anythink_splash_btn_circle", i.c));
                    addView(this.m);
                }
                this.l.setLayoutParams(layoutParams2);
                this.l.setImageResource(iA);
                addView(textView);
                addView(this.l);
                invalidate();
            }
            this.k = 1;
        }
        z = true;
        if (!z) {
        }
        i = this.k;
        int color4 = Color.parseColor("#666666");
        int color22 = Color.parseColor("#8FC31F");
        int color32 = Color.parseColor("#000000");
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        if (i != 2) {
        }
        gradientDrawable2.setCornerRadius(200.0f);
        setBackgroundDrawable(gradientDrawable2);
        TextView textView2 = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(15);
        textView2.setLayoutParams(layoutParams5);
        textView2.setGravity(17);
        textView2.setTextSize(20.0f);
        textView2.setTextColor(-1);
        textView2.setText(this.j);
        this.l = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams22 = null;
        i2 = this.k;
        if (i2 != 2) {
        }
        this.l.setLayoutParams(layoutParams22);
        this.l.setImageResource(iA);
        addView(textView2);
        addView(this.l);
        invalidate();
    }

    private void c() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(400L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(200L);
        scaleAnimation2.setAnimationListener(new AnonymousClass1(scaleAnimation2));
        this.m.setVisibility(4);
        this.l.startAnimation(scaleAnimation);
        this.m.postDelayed(new AnonymousClass2(scaleAnimation2), 500L);
    }

    private void d() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
        translateAnimation.setDuration(1000L);
        translateAnimation.setAnimationListener(new AnonymousClass3());
        this.l.startAnimation(translateAnimation);
    }

    private void e() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(500L);
        scaleAnimation.setRepeatCount(-1);
        scaleAnimation.setRepeatMode(2);
        this.l.startAnimation(scaleAnimation);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.n, this.p, 31);
        canvas.drawRoundRect(this.n, 200.0f, 200.0f, this.p);
        canvas.saveLayer(this.n, this.o, 31);
        super.draw(canvas);
        canvas.restore();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initView(String str) {
        boolean z;
        int i;
        int i2;
        this.j = str;
        int iA = 0;
        if (TextUtils.equals(str, this.b)) {
            this.k = 2;
        } else if (TextUtils.equals(str, this.d)) {
            this.k = 3;
        } else {
            if (!TextUtils.equals(str, this.c)) {
                z = false;
                if (!z) {
                    if (TextUtils.isEmpty(this.j)) {
                        this.j = this.b;
                    }
                    this.k = 2;
                }
                i = this.k;
                int color = Color.parseColor("#666666");
                int color2 = Color.parseColor("#8FC31F");
                int color3 = Color.parseColor("#000000");
                GradientDrawable gradientDrawable = new GradientDrawable();
                if (i != 2) {
                    gradientDrawable.setColor(color2);
                } else {
                    gradientDrawable.setColor(color3);
                    gradientDrawable.setStroke(2, color);
                }
                gradientDrawable.setCornerRadius(200.0f);
                setBackgroundDrawable(gradientDrawable);
                TextView textView = new TextView(getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(15);
                textView.setLayoutParams(layoutParams);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setTextColor(-1);
                textView.setText(this.j);
                this.l = new ImageView(getContext());
                RelativeLayout.LayoutParams layoutParams2 = null;
                i2 = this.k;
                if (i2 != 2) {
                    iA = i.a(getContext(), "anythink_splash_btn_go", i.c);
                    layoutParams2 = new RelativeLayout.LayoutParams(t.b(getContext(), 35.0f), t.b(getContext(), 35.0f));
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(15);
                    layoutParams2.rightMargin = t.b(getContext(), 10.0f);
                } else if (i2 == 1) {
                    iA = i.a(getContext(), "anythink_splash_btn_light", i.c);
                    layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
                    layoutParams2.leftMargin = 20;
                    layoutParams2.rightMargin = 20;
                    ImageView imageView = new ImageView(getContext());
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
                    layoutParams3.addRule(11);
                    layoutParams3.addRule(15);
                    layoutParams3.rightMargin = t.b(getContext(), 50.0f);
                    imageView.setImageResource(i.a(getContext(), "anythink_splash_btn_arrow_right", i.c));
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    imageView.setLayoutParams(layoutParams3);
                    addView(imageView);
                } else if (i2 == 3) {
                    iA = i.a(getContext(), "anythink_splash_btn_finger", i.c);
                    layoutParams2 = new RelativeLayout.LayoutParams(t.b(getContext(), 25.0f), t.b(getContext(), 25.0f));
                    layoutParams2.addRule(11);
                    layoutParams2.rightMargin = t.b(getContext(), 50.0f);
                    layoutParams2.topMargin = t.b(getContext(), 18.0f);
                    this.m = new ImageView(getContext());
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(t.b(getContext(), 30.0f), t.b(getContext(), 30.0f));
                    layoutParams4.addRule(11);
                    layoutParams4.rightMargin = t.b(getContext(), 50.0f);
                    layoutParams4.topMargin = t.b(getContext(), 5.0f);
                    this.m.setLayoutParams(layoutParams4);
                    this.m.setImageResource(i.a(getContext(), "anythink_splash_btn_circle", i.c));
                    addView(this.m);
                }
                this.l.setLayoutParams(layoutParams2);
                this.l.setImageResource(iA);
                addView(textView);
                addView(this.l);
                invalidate();
            }
            this.k = 1;
        }
        z = true;
        if (!z) {
        }
        i = this.k;
        int color4 = Color.parseColor("#666666");
        int color22 = Color.parseColor("#8FC31F");
        int color32 = Color.parseColor("#000000");
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        if (i != 2) {
        }
        gradientDrawable2.setCornerRadius(200.0f);
        setBackgroundDrawable(gradientDrawable2);
        TextView textView2 = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(15);
        textView2.setLayoutParams(layoutParams5);
        textView2.setGravity(17);
        textView2.setTextSize(20.0f);
        textView2.setTextColor(-1);
        textView2.setText(this.j);
        this.l = new ImageView(getContext());
        RelativeLayout.LayoutParams layoutParams22 = null;
        i2 = this.k;
        if (i2 != 2) {
        }
        this.l.setLayoutParams(layoutParams22);
        this.l.setImageResource(iA);
        addView(textView2);
        addView(this.l);
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        Animation animation;
        super.onAttachedToWindow();
        int i = this.k;
        if (i == 2) {
            ScaleAnimation scaleAnimation = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
            scaleAnimation.setDuration(500L);
            scaleAnimation.setRepeatCount(-1);
            scaleAnimation.setRepeatMode(2);
            animation = scaleAnimation;
        } else {
            if (i != 1) {
                if (i == 3) {
                    ScaleAnimation scaleAnimation2 = new ScaleAnimation(1.0f, 0.7f, 1.0f, 0.7f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation2.setDuration(400L);
                    scaleAnimation2.setRepeatCount(-1);
                    scaleAnimation2.setRepeatMode(2);
                    ScaleAnimation scaleAnimation3 = new ScaleAnimation(0.0f, 0.5f, 0.0f, 0.5f, 1, 0.5f, 1, 0.5f);
                    scaleAnimation3.setDuration(200L);
                    scaleAnimation3.setAnimationListener(new AnonymousClass1(scaleAnimation3));
                    this.m.setVisibility(4);
                    this.l.startAnimation(scaleAnimation2);
                    this.m.postDelayed(new AnonymousClass2(scaleAnimation3), 500L);
                    return;
                }
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0, -100.0f, 0, 1000.0f, 0, 0.0f, 0, 0.0f);
            translateAnimation.setDuration(1000L);
            translateAnimation.setAnimationListener(new AnonymousClass3());
            animation = translateAnimation;
        }
        this.l.startAnimation(animation);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.n.set(0.0f, 0.0f, getWidth(), getHeight());
    }
}
