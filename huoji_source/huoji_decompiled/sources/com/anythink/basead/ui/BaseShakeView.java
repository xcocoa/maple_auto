package com.anythink.basead.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.anythink.basead.c.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.e;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseShakeView extends LinearLayout {
    public ImageView a;
    public ImageView b;
    public ValueAnimator c;
    public int d;
    public String e;
    public String f;
    public String g;
    public String h;
    public Bitmap i;
    public h j;
    private int k;
    private a l;

    public interface a {
        boolean a();
    }

    public BaseShakeView(Context context) {
        super(context);
        this.k = 0;
        this.j = new h() { // from class: com.anythink.basead.ui.BaseShakeView.1
            @Override // com.anythink.basead.c.h
            public final boolean a() {
                if (BaseShakeView.this.isShown() && BaseShakeView.this.l != null) {
                    return BaseShakeView.this.l.a();
                }
                return false;
            }
        };
        a();
    }

    public BaseShakeView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = 0;
        this.j = new h() { // from class: com.anythink.basead.ui.BaseShakeView.1
            @Override // com.anythink.basead.c.h
            public final boolean a() {
                if (BaseShakeView.this.isShown() && BaseShakeView.this.l != null) {
                    return BaseShakeView.this.l.a();
                }
                return false;
            }
        };
        a();
    }

    public BaseShakeView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = 0;
        this.j = new h() { // from class: com.anythink.basead.ui.BaseShakeView.1
            @Override // com.anythink.basead.c.h
            public final boolean a() {
                if (BaseShakeView.this.isShown() && BaseShakeView.this.l != null) {
                    return BaseShakeView.this.l.a();
                }
                return false;
            }
        };
        a();
    }

    @RequiresApi(api = 21)
    public BaseShakeView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.k = 0;
        this.j = new h() { // from class: com.anythink.basead.ui.BaseShakeView.1
            @Override // com.anythink.basead.c.h
            public final boolean a() {
                if (BaseShakeView.this.isShown() && BaseShakeView.this.l != null) {
                    return BaseShakeView.this.l.a();
                }
                return false;
            }
        };
        a();
    }

    public static /* synthetic */ int b(BaseShakeView baseShakeView) {
        int i = baseShakeView.k;
        baseShakeView.k = i + 1;
        return i;
    }

    private void b() {
        if (this.a != null) {
            ValueAnimator valueAnimatorA = a(this.d);
            this.c = valueAnimatorA;
            if (valueAnimatorA != null) {
                valueAnimatorA.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        n.a().b(new Runnable() { // from class: com.anythink.basead.ui.BaseShakeView.6
            @Override // java.lang.Runnable
            public final void run() {
                BaseShakeView baseShakeView = BaseShakeView.this;
                ImageView imageView = baseShakeView.a;
                if (imageView != null) {
                    Bitmap bitmap = baseShakeView.i;
                    if (bitmap != null) {
                        imageView.setImageBitmap(bitmap);
                    } else {
                        imageView.setImageResource(i.a(baseShakeView.getContext(), "myoffer_shake_icon", com.anythink.expressad.foundation.h.i.c));
                    }
                }
                BaseShakeView baseShakeView2 = BaseShakeView.this;
                ImageView imageView2 = baseShakeView2.b;
                if (imageView2 != null) {
                    Bitmap bitmap2 = baseShakeView2.i;
                    if (bitmap2 != null) {
                        imageView2.setImageBitmap(bitmap2);
                    } else {
                        imageView2.setImageResource(i.a(baseShakeView2.getContext(), "myoffer_shake_icon", com.anythink.expressad.foundation.h.i.c));
                    }
                }
            }
        });
    }

    public ValueAnimator a(int i) {
        ValueAnimator valueAnimatorOfFloat;
        ImageView imageView;
        Runnable runnable;
        if (i == 2) {
            int iA = i.a(getContext(), 8.0f);
            float f = iA;
            float f2 = -iA;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, f, f2, f, f2, iA / 2, r5 / 2, iA / 4, r5 / 4, 0.0f);
            valueAnimatorOfFloat2.setDuration(1000L);
            valueAnimatorOfFloat2.setRepeatCount(-1);
            valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.basead.ui.BaseShakeView.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BaseShakeView.this.a.setTranslationX(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.anythink.basead.ui.BaseShakeView.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    BaseShakeView.b(BaseShakeView.this);
                }
            });
            valueAnimatorOfFloat2.setInterpolator(new Interpolator() { // from class: com.anythink.basead.ui.BaseShakeView.9
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f3) {
                    if (BaseShakeView.this.k % 3 == 2) {
                        return 0.0f;
                    }
                    return f3;
                }
            });
            return valueAnimatorOfFloat2;
        }
        if (i != 3) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, -25.0f, 0.0f, 25.0f, 0.0f);
            valueAnimatorOfFloat.setDuration(500L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.basead.ui.BaseShakeView.14
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BaseShakeView.this.a.setRotation(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.anythink.basead.ui.BaseShakeView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    BaseShakeView.b(BaseShakeView.this);
                }
            });
            valueAnimatorOfFloat.setInterpolator(new Interpolator() { // from class: com.anythink.basead.ui.BaseShakeView.3
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f3) {
                    if (BaseShakeView.this.k % 3 == 2) {
                        return 0.0f;
                    }
                    return f3;
                }
            });
            imageView = this.a;
            runnable = new Runnable() { // from class: com.anythink.basead.ui.BaseShakeView.4
                @Override // java.lang.Runnable
                public final void run() {
                    int width = (int) (((double) BaseShakeView.this.a.getWidth()) * 0.5d);
                    int height = (int) (((double) BaseShakeView.this.a.getHeight()) * 0.5d);
                    BaseShakeView.this.a.setPivotX(width);
                    BaseShakeView.this.a.setPivotY(height);
                }
            };
        } else {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(-10.0f, 10.0f);
            valueAnimatorOfFloat.setDuration(150L);
            valueAnimatorOfFloat.setRepeatMode(2);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.basead.ui.BaseShakeView.10
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BaseShakeView.this.a.setRotation(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.anythink.basead.ui.BaseShakeView.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    BaseShakeView.b(BaseShakeView.this);
                }
            });
            valueAnimatorOfFloat.setInterpolator(new Interpolator() { // from class: com.anythink.basead.ui.BaseShakeView.12
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f3) {
                    if ((BaseShakeView.this.k / 2) % 3 == 0) {
                        return 0.0f;
                    }
                    return f3;
                }
            });
            imageView = this.a;
            runnable = new Runnable() { // from class: com.anythink.basead.ui.BaseShakeView.13
                @Override // java.lang.Runnable
                public final void run() {
                    int width = (int) (((double) BaseShakeView.this.a.getWidth()) * 0.8d);
                    int height = (int) (((double) BaseShakeView.this.a.getHeight()) * 0.8d);
                    BaseShakeView.this.a.setPivotX(width);
                    BaseShakeView.this.a.setPivotY(height);
                }
            };
        }
        imageView.post(runnable);
        return valueAnimatorOfFloat;
    }

    public abstract void a();

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.a != null) {
            ValueAnimator valueAnimatorA = a(this.d);
            this.c = valueAnimatorA;
            if (valueAnimatorA != null) {
                valueAnimatorA.start();
            }
        }
        com.anythink.expressad.shake.a.a().a(this.j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        com.anythink.expressad.shake.a.a().b(this.j);
    }

    public void setOnShakeListener(a aVar, com.anythink.core.common.f.n nVar) {
        this.j.a(nVar.R(), nVar.S());
        this.l = aVar;
    }

    public void setShakeSetting(com.anythink.core.common.f.n nVar) {
        this.d = nVar.a();
        this.e = nVar.b();
        this.f = nVar.c();
        this.g = nVar.d();
        this.h = nVar.e();
        if (TextUtils.isEmpty(this.e)) {
            c();
        } else {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.basead.ui.BaseShakeView.5
                @Override // java.lang.Runnable
                public final void run() {
                    int iMin;
                    try {
                        iMin = Math.min(BaseShakeView.this.getResources().getDisplayMetrics().widthPixels, BaseShakeView.this.getResources().getDisplayMetrics().heightPixels) / 2;
                    } catch (Throwable unused) {
                        iMin = 0;
                    }
                    BaseShakeView baseShakeView = BaseShakeView.this;
                    baseShakeView.i = com.anythink.core.common.res.b.a(baseShakeView.getContext()).b(new e(3, BaseShakeView.this.e), iMin, iMin);
                    BaseShakeView.this.c();
                }
            }, 2, true);
        }
    }
}
