package z2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import z2.fk;

/* JADX INFO: loaded from: classes2.dex */
public final class dk {

    public static class OooO00o extends AnimatorListenerAdapter {
        public final /* synthetic */ fk OooO00o;

        public OooO00o(fk fkVar) {
            this.OooO00o = fkVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.OooO00o.OooO0O0();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.OooO00o.OooO00o();
        }
    }

    private dk() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Animator OooO00o(fk fkVar, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(fkVar, (Property<fk, V>) fk.OooO0OO.OooO00o, (TypeEvaluator) fk.OooO0O0.OooO0O0, (Object[]) new fk.OooO[]{new fk.OooO(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return objectAnimatorOfObject;
        }
        fk.OooO revealInfo = fkVar.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) fkVar, (int) f, (int) f2, revealInfo.OooO0OO, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Animator OooO0O0(fk fkVar, float f, float f2, float f3, float f4) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(fkVar, (Property<fk, V>) fk.OooO0OO.OooO00o, (TypeEvaluator) fk.OooO0O0.OooO0O0, (Object[]) new fk.OooO[]{new fk.OooO(f, f2, f3), new fk.OooO(f, f2, f4)});
        if (Build.VERSION.SDK_INT < 21) {
            return objectAnimatorOfObject;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) fkVar, (int) f, (int) f2, f3, f4);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    public static Animator.AnimatorListener OooO0OO(fk fkVar) {
        return new OooO00o(fkVar);
    }
}
