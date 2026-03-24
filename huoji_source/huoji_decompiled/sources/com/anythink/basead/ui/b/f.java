package com.anythink.basead.ui.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.BaseSdkSplashATView;
import com.anythink.basead.ui.BaseShakeView;
import com.anythink.basead.ui.ShakeBorderThumbView;
import com.anythink.basead.ui.ShakeThumbView;
import com.anythink.basead.ui.ShakeView;
import com.anythink.basead.ui.b.b;
import com.anythink.basead.ui.b.e;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.common.f.l;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import com.anythink.expressad.video.module.a.a.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f extends b {
    public BaseShakeView i;
    public BaseShakeView j;
    private boolean p = false;
    public final long k = m.ag;
    public final long l = 500;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;

    private void a(BaseShakeView baseShakeView) {
        baseShakeView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.b.f.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.a aVar = f.this.h;
                if (aVar != null) {
                    aVar.a(1, 5);
                }
            }
        });
        baseShakeView.setOnShakeListener(new BaseShakeView.a() { // from class: com.anythink.basead.ui.b.f.3
            @Override // com.anythink.basead.ui.BaseShakeView.a
            public final boolean a() {
                if (!f.this.b()) {
                    return false;
                }
                b.a aVar = f.this.h;
                if (aVar == null) {
                    return true;
                }
                aVar.a(4, 5);
                return true;
            }
        }, this.c.n);
    }

    private void c() {
        View view = this.g;
        int iIndexOfChild = (view == null || this.d.indexOfChild(view) <= 0) ? -1 : this.d.indexOfChild(this.g);
        if (this.e == 3) {
            BaseShakeView baseShakeView = this.i;
            if (baseShakeView != null) {
                x.a(baseShakeView);
                this.i.setVisibility(0);
                this.d.addView(this.i, iIndexOfChild);
                return;
            }
            return;
        }
        RelativeLayout relativeLayout = null;
        try {
            relativeLayout = (RelativeLayout) this.d.findViewById(i.a(this.a, "myoffer_end_card_id", "id"));
        } catch (Throwable unused) {
        }
        BaseShakeView baseShakeView2 = this.i;
        if (baseShakeView2 != null) {
            x.a(baseShakeView2);
            this.i.setVisibility(8);
            if (relativeLayout != null) {
                relativeLayout.addView(this.i);
            } else {
                this.d.addView(this.i, iIndexOfChild);
            }
        }
        BaseShakeView baseShakeView3 = this.j;
        if (baseShakeView3 != null) {
            x.a(baseShakeView3);
            this.j.setVisibility(8);
            if (relativeLayout != null) {
                relativeLayout.addView(this.j);
            } else {
                this.d.addView(this.j, iIndexOfChild);
            }
        }
    }

    private void d() {
        if (this.i == null || this.j == null || this.p || !g()) {
            return;
        }
        this.p = true;
        this.i.setVisibility(0);
        this.i.postDelayed(new Runnable() { // from class: com.anythink.basead.ui.b.f.1
            @Override // java.lang.Runnable
            public final void run() {
                if (f.this.g()) {
                    try {
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.2f);
                        valueAnimatorOfFloat.setDuration(500L);
                        valueAnimatorOfFloat.setRepeatCount(1);
                        valueAnimatorOfFloat.setRepeatMode(2);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.basead.ui.b.f.1.1
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                                if (f.this.i.getVisibility() == 0) {
                                    f.this.i.setAlpha(fFloatValue);
                                }
                                BaseShakeView baseShakeView = f.this.j;
                                if (baseShakeView == null || baseShakeView.getVisibility() != 0) {
                                    return;
                                }
                                f.this.j.setAlpha(fFloatValue);
                            }
                        });
                        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.anythink.basead.ui.b.f.1.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationRepeat(Animator animator) {
                                super.onAnimationRepeat(animator);
                                f.this.i.setVisibility(8);
                                f fVar = f.this;
                                if (fVar.j == null || !fVar.g()) {
                                    return;
                                }
                                f.this.j.setAlpha(0.2f);
                                f.this.j.setVisibility(0);
                            }
                        });
                        valueAnimatorOfFloat.start();
                    } catch (Throwable unused) {
                        f.this.i.setVisibility(8);
                        f fVar = f.this;
                        if (fVar.j == null || !fVar.g()) {
                            return;
                        }
                        f.this.j.setVisibility(0);
                    }
                }
            }
        }, m.ag);
    }

    private void e() {
        f();
        if (this.j == null || this.e != 1 || com.anythink.basead.a.d.b(this.b) || com.anythink.basead.a.d.a(this.b) || this.c.n.D() != 0) {
            return;
        }
        this.j.setAlpha(1.0f);
        this.j.setVisibility(0);
    }

    private void f() {
        BaseShakeView baseShakeView = this.i;
        if (baseShakeView != null) {
            baseShakeView.setVisibility(8);
        }
        BaseShakeView baseShakeView2 = this.j;
        if (baseShakeView2 != null) {
            baseShakeView2.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        return (this.e == 1 && com.anythink.basead.a.d.a(this.b, this.c) && this.m) ? false : true;
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a() {
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(int i, Map<String, Object> map) {
        boolean z = false;
        if (i == 102) {
            this.m = true;
            if (this.e == 1 && com.anythink.basead.a.d.a(this.b, this.c)) {
                f();
                if (this.j == null || this.e != 1 || com.anythink.basead.a.d.b(this.b) || com.anythink.basead.a.d.a(this.b) || this.c.n.D() != 0) {
                    return;
                }
                this.j.setAlpha(1.0f);
                this.j.setVisibility(0);
                return;
            }
            return;
        }
        if (i == 105) {
            f();
            return;
        }
        if (i == 106) {
            if (this.e == 3 && com.anythink.basead.a.d.b(this.b)) {
                c();
                return;
            }
            return;
        }
        if (i == 110) {
            this.n = true;
            return;
        }
        if (i == 111) {
            this.n = false;
            return;
        }
        switch (i) {
            case 114:
                if (this.e == 1) {
                    c();
                    d();
                }
                if (map != null) {
                    Object obj = map.get(e.a.a);
                    if ((obj instanceof Integer) && ((Integer) obj).intValue() == 1) {
                        z = true;
                    }
                }
                if (z || (this.e == 2 && !com.anythink.basead.a.d.a(this.b))) {
                    c();
                    d();
                }
                break;
            case 115:
                this.o = true;
                break;
            case 116:
                if (this.e == 3 && !com.anythink.basead.a.d.b(this.b)) {
                    c();
                    break;
                }
                break;
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(Context context, l lVar, com.anythink.core.common.f.m mVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i, b.a aVar) {
        ShakeBorderThumbView shakeBorderThumbView;
        BaseShakeView baseShakeView;
        int iA;
        BaseShakeView baseShakeView2;
        super.a(context, lVar, mVar, viewGroup, relativeLayout, view, i, aVar);
        boolean z = true;
        if (this.e != 3) {
            this.i = new ShakeThumbView(context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.i.setLayoutParams(layoutParams);
            this.j = new ShakeBorderThumbView(context);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(11);
            if (i == 1 && com.anythink.core.common.o.e.g(context) == 2) {
                layoutParams2.addRule(12);
                layoutParams2.setMargins(0, 0, 0, i.a(context, 192.0f));
            } else {
                layoutParams2.addRule(15);
            }
            this.j.setLayoutParams(layoutParams2);
            a(this.i);
            baseShakeView2 = this.j;
        } else {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            if ((this.c.n.ao() != 1 || TextUtils.isEmpty(this.c.n.aq())) && !this.c.n.ab() && !this.c.n.al()) {
                z = false;
            }
            if (this.b.k()) {
                if (z) {
                    shakeBorderThumbView = new ShakeBorderThumbView(context);
                    this.i = shakeBorderThumbView;
                    layoutParams3.addRule(11);
                    layoutParams3.addRule(15);
                    this.i.setLayoutParams(layoutParams3);
                    baseShakeView2 = this.i;
                } else {
                    this.i = new ShakeThumbView(context);
                    layoutParams3.addRule(13);
                    baseShakeView = this.i;
                    iA = i.a(context, 26.0f);
                    baseShakeView.setPadding(0, 0, 0, iA);
                    this.i.setLayoutParams(layoutParams3);
                    baseShakeView2 = this.i;
                }
            } else if (BaseSdkSplashATView.isSinglePicture(this.b, this.c.n)) {
                this.i = new ShakeView(context);
                layoutParams3.addRule(14);
                layoutParams3.addRule(12);
                int iA2 = i.a(context, this.c.n.w() == 2 ? 46.0f : 63.0f);
                if (this.c.n.al()) {
                    iA2 = i.a(context, 100.0f);
                }
                ((ShakeView) this.i).setNeedHideShakeIcon(z);
                layoutParams3.setMargins(0, 0, 0, iA2);
                if (lVar.d() == 4) {
                    String directlySplashAdShakeIconString = ATSDKGlobalSetting.getDirectlySplashAdShakeIconString();
                    if (!TextUtils.isEmpty(directlySplashAdShakeIconString)) {
                        ((ShakeView) this.i).setShakeHintText(directlySplashAdShakeIconString);
                    }
                }
                this.i.setLayoutParams(layoutParams3);
                baseShakeView2 = this.i;
            } else if (z) {
                shakeBorderThumbView = new ShakeBorderThumbView(context);
                this.i = shakeBorderThumbView;
                layoutParams3.addRule(11);
                layoutParams3.addRule(15);
                this.i.setLayoutParams(layoutParams3);
                baseShakeView2 = this.i;
            } else {
                this.i = new ShakeThumbView(context);
                layoutParams3.addRule(13);
                if (this.c.n.w() == 2) {
                    baseShakeView = this.i;
                    iA = i.a(context, 26.0f);
                } else {
                    baseShakeView = this.i;
                    iA = i.a(context, 92.0f);
                }
                baseShakeView.setPadding(0, 0, 0, iA);
                this.i.setLayoutParams(layoutParams3);
                baseShakeView2 = this.i;
            }
        }
        a(baseShakeView2);
        BaseShakeView baseShakeView3 = this.i;
        if (baseShakeView3 != null) {
            baseShakeView3.setShakeSetting(this.c.n);
        }
        BaseShakeView baseShakeView4 = this.j;
        if (baseShakeView4 != null) {
            baseShakeView4.setShakeSetting(this.c.n);
        }
    }

    public final boolean b() {
        int i = this.e;
        if (i == 3 || !this.n) {
            return i == 3 && !this.o;
        }
        return true;
    }
}
