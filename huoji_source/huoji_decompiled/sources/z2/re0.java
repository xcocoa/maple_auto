package z2;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import razerdp.basepopup.BasePopupHelper;
import razerdp.library.R;

/* JADX INFO: loaded from: classes2.dex */
public class re0 extends View {
    public BasePopupHelper OoooOoO;

    private re0(Context context) {
        this(context, null);
    }

    private re0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private re0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public static re0 OooO00o(Context context, BasePopupHelper basePopupHelper) {
        re0 re0Var = new re0(context);
        re0Var.OooO0Oo(context, basePopupHelper);
        return re0Var;
    }

    private void OooO0Oo(Context context, BasePopupHelper basePopupHelper) {
        Animation animationLoadAnimation;
        if (nf0.OooO0O0(basePopupHelper.OoooO0())) {
            setVisibility(8);
            return;
        }
        this.OoooOoO = basePopupHelper;
        setVisibility(0);
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(basePopupHelper.OoooO0());
        } else {
            setBackgroundDrawable(basePopupHelper.OoooO0());
        }
        if (!basePopupHelper.o0ooOO0() || (animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.basepopup_fade_in)) == null) {
            return;
        }
        animationLoadAnimation.setDuration(Math.max(animationLoadAnimation.getDuration(), basePopupHelper.OoooOo0() - 200));
        animationLoadAnimation.setFillAfter(true);
        startAnimation(animationLoadAnimation);
    }

    public void OooO0O0() {
        this.OoooOoO = null;
    }

    public void OooO0OO() {
        Animation animationLoadAnimation;
        BasePopupHelper basePopupHelper = this.OoooOoO;
        if (basePopupHelper == null || !basePopupHelper.o0ooOO0() || (animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.basepopup_fade_out)) == null) {
            return;
        }
        animationLoadAnimation.setDuration(Math.max(animationLoadAnimation.getDuration(), this.OoooOoO.OooOooO() - 200));
        animationLoadAnimation.setFillAfter(true);
        startAnimation(animationLoadAnimation);
    }

    public void OooO0o0() {
        BasePopupHelper basePopupHelper = this.OoooOoO;
        if (basePopupHelper != null) {
            int i = Build.VERSION.SDK_INT;
            Drawable drawableOoooO0 = basePopupHelper.OoooO0();
            if (i >= 16) {
                setBackground(drawableOoooO0);
            } else {
                setBackgroundDrawable(drawableOoooO0);
            }
        }
    }
}
