package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import z2.ej;

/* JADX INFO: loaded from: classes2.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int OooO0Oo = 225;
    private static final int OooO0o = 1;
    public static final int OooO0o0 = 175;
    private static final int OooO0oO = 2;
    private int OooO00o;
    private int OooO0O0;
    private ViewPropertyAnimator OooO0OO;

    public class OooO00o extends AnimatorListenerAdapter {
        public OooO00o() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.OooO0OO = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.OooO00o = 0;
        this.OooO0O0 = 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO00o = 0;
        this.OooO0O0 = 2;
    }

    private void OooO0O0(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.OooO0OO = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new OooO00o());
    }

    public void OooO0OO(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.OooO0OO;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.OooO0O0 = 1;
        OooO0O0(v, this.OooO00o, 175L, ej.OooO0OO);
    }

    public void OooO0Oo(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.OooO0OO;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.OooO0O0 = 2;
        OooO0O0(v, 0, 225L, ej.OooO0Oo);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.OooO00o = v.getMeasuredHeight();
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        int i5 = this.OooO0O0;
        if (i5 != 1 && i2 > 0) {
            OooO0OO(v);
        } else {
            if (i5 == 2 || i2 >= 0) {
                return;
            }
            OooO0Oo(v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return i == 2;
    }
}
