package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;
import z2.fj;
import z2.mj;

/* JADX INFO: loaded from: classes2.dex */
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {
    public static final long OooO = 150;
    public static final long OooO0oo = 75;
    public static final long OooOO0 = 0;
    public static final long OooOO0O = 150;
    private final mj OooO0o;
    private final mj OooO0oO;

    public class OooO00o extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean OooO00o;
        public final /* synthetic */ View OooO0O0;

        public OooO00o(boolean z, View view) {
            this.OooO00o = z;
            this.OooO0O0 = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.OooO00o) {
                return;
            }
            this.OooO0O0.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.OooO00o) {
                this.OooO0O0.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.OooO0o = new mj(75L, 150L);
        this.OooO0oO = new mj(0L, 150L);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO0o = new mj(75L, 150L);
        this.OooO0oO = new mj(0L, 150L);
    }

    private void OooO0oo(View view, boolean z, boolean z3, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        mj mjVar = z ? this.OooO0o : this.OooO0oO;
        if (z) {
            if (!z3) {
                view.setAlpha(0.0f);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        mjVar.OooO00o(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    public AnimatorSet OooO0oO(View view, View view2, boolean z, boolean z3) {
        ArrayList arrayList = new ArrayList();
        OooO0oo(view2, z, z3, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        fj.OooO00o(animatorSet, arrayList);
        animatorSet.addListener(new OooO00o(z, view2));
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return super.onTouchEvent(coordinatorLayout, view, motionEvent);
    }
}
