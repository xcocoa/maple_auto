package z2;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class of0 {

    public static abstract class OooO00o implements Animation.AnimationListener {
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public static Animation OooO00o(boolean z) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        alphaAnimation.setDuration(360L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        return alphaAnimation;
    }

    public static Animation OooO0O0(boolean z) {
        return OooO0Oo(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f, z ? 0.0f : 1.0f, z ? 1.0f : 0.0f, 1, 0.5f, 1, 0.5f);
    }

    public static AnimatorSet OooO0OO(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        if (view != null) {
            animatorSet.playTogether(ObjectAnimator.ofFloat(view, "translationY", 250.0f, 0.0f).setDuration(400L), ObjectAnimator.ofFloat(view, "alpha", 0.4f, 1.0f).setDuration(375L));
        }
        return animatorSet;
    }

    public static Animation OooO0Oo(float f, float f2, float f3, float f4, int i, float f5, int i2, float f6) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f3, f4, i, f5, i2, f6);
        scaleAnimation.setDuration(360L);
        return scaleAnimation;
    }

    public static Animation OooO0o(int i, int i2, int i3) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i, i2);
        translateAnimation.setDuration(i3);
        return translateAnimation;
    }

    public static Animation OooO0o0(float f, float f2, int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 0.0f, 2, 0.0f, 2, f, 2, f2);
        translateAnimation.setDuration(i);
        return translateAnimation;
    }
}
