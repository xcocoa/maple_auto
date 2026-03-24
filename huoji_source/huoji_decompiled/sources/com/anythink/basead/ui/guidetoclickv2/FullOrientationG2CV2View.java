package com.anythink.basead.ui.guidetoclickv2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class FullOrientationG2CV2View extends BaseG2CV2View {
    public ValueAnimator c;
    public ImageView d;
    public d e;
    private int f;
    private float g;
    private float h;
    private float i;
    private float j;
    private int k;

    /* JADX INFO: renamed from: com.anythink.basead.ui.guidetoclickv2.FullOrientationG2CV2View$1, reason: invalid class name */
    public class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        public AnonymousClass1() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (FullOrientationG2CV2View.this.d != null) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i = FullOrientationG2CV2View.this.f % 4;
                if (i == 1) {
                    FullOrientationG2CV2View.this.d.setTranslationY(fFloatValue);
                    return;
                }
                if (i == 2) {
                    FullOrientationG2CV2View.this.d.setTranslationX(-fFloatValue);
                } else if (i != 3) {
                    FullOrientationG2CV2View.this.d.setTranslationY(-fFloatValue);
                } else {
                    FullOrientationG2CV2View.this.d.setTranslationX(fFloatValue);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.guidetoclickv2.FullOrientationG2CV2View$2, reason: invalid class name */
    public class AnonymousClass2 extends AnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            FullOrientationG2CV2View.b(FullOrientationG2CV2View.this);
        }
    }

    public FullOrientationG2CV2View(Context context) {
        super(context);
        this.f = 0;
    }

    public static /* synthetic */ int b(FullOrientationG2CV2View fullOrientationG2CV2View) {
        int i = fullOrientationG2CV2View.f;
        fullOrientationG2CV2View.f = i + 1;
        return i;
    }

    public static /* synthetic */ float c(FullOrientationG2CV2View fullOrientationG2CV2View, float f) {
        float f2 = fullOrientationG2CV2View.i + f;
        fullOrientationG2CV2View.i = f2;
        return f2;
    }

    private void c() {
        if (this.c == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, i.a(getContext(), 12.0f), 0.0f);
            this.c = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(500L);
            this.c.setRepeatCount(-1);
            this.c.addUpdateListener(new AnonymousClass1());
            this.c.addListener(new AnonymousClass2());
        }
    }

    public static /* synthetic */ float d(FullOrientationG2CV2View fullOrientationG2CV2View, float f) {
        float f2 = fullOrientationG2CV2View.j + f;
        fullOrientationG2CV2View.j = f2;
        return f2;
    }

    private d d() {
        for (ViewParent parent = getParent(); parent.getParent() != null; parent = parent.getParent()) {
            if (parent instanceof d) {
                return (d) parent;
            }
        }
        return null;
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a() {
        super.a();
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a(int i, int i2) {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_g2c_v2_full_orientation", "layout"), this);
        this.k = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.d = (ImageView) findViewById(i.a(getContext(), "myoffer_g2c_fullori_finger", "id"));
        if (this.c == null) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, i.a(getContext(), 12.0f), 0.0f);
            this.c = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(500L);
            this.c.setRepeatCount(-1);
            this.c.addUpdateListener(new AnonymousClass1());
            this.c.addListener(new AnonymousClass2());
        }
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void b() {
        super.b();
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        d dVar;
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        while (true) {
            if (parent.getParent() == null) {
                dVar = null;
                break;
            } else {
                if (parent instanceof d) {
                    dVar = (d) parent;
                    break;
                }
                parent = parent.getParent();
            }
        }
        this.e = dVar;
        if (dVar != null) {
            dVar.setCallback(new c() { // from class: com.anythink.basead.ui.guidetoclickv2.FullOrientationG2CV2View.3
                @Override // com.anythink.basead.ui.guidetoclickv2.c
                public final boolean a(MotionEvent motionEvent) {
                    int action = motionEvent.getAction();
                    if (action != 0) {
                        if (action == 1) {
                            if (FullOrientationG2CV2View.this.i + FullOrientationG2CV2View.this.j <= FullOrientationG2CV2View.this.k) {
                                return false;
                            }
                            b.a aVar = FullOrientationG2CV2View.this.b;
                            if (aVar != null) {
                                aVar.a(11, 21);
                            }
                            return true;
                        }
                        if (action != 2) {
                            return false;
                        }
                        float x = motionEvent.getX() - FullOrientationG2CV2View.this.g;
                        float y = motionEvent.getY() - FullOrientationG2CV2View.this.h;
                        FullOrientationG2CV2View.c(FullOrientationG2CV2View.this, Math.abs(x));
                        FullOrientationG2CV2View.d(FullOrientationG2CV2View.this, Math.abs(y));
                    }
                    FullOrientationG2CV2View.this.g = motionEvent.getX();
                    FullOrientationG2CV2View.this.h = motionEvent.getY();
                    return false;
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d dVar = this.e;
        if (dVar != null) {
            dVar.setCallback(null);
        }
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public void release() {
        super.release();
        ValueAnimator valueAnimator = this.c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }
}
