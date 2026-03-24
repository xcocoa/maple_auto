package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    @Nullable
    private AnimatorSet OooO0o0;

    public class OooO00o extends AnimatorListenerAdapter {
        public OooO00o() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.OooO0o0 = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    public boolean OooO0o0(View view, View view2, boolean z, boolean z3) {
        AnimatorSet animatorSet = this.OooO0o0;
        boolean z4 = animatorSet != null;
        if (z4) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetOooO0oO = OooO0oO(view, view2, z, z4);
        this.OooO0o0 = animatorSetOooO0oO;
        animatorSetOooO0oO.addListener(new OooO00o());
        this.OooO0o0.start();
        if (!z3) {
            this.OooO0o0.end();
        }
        return true;
    }

    @NonNull
    public abstract AnimatorSet OooO0oO(View view, View view2, boolean z, boolean z3);
}
