package z2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import razerdp.basepopup.BasePopupHelper;
import razerdp.blur.BlurImageView;
import razerdp.library.R;
import razerdp.util.log.PopupLog;

/* JADX INFO: loaded from: classes2.dex */
public class ve0 extends FrameLayout {
    private BlurImageView OoooOoO;
    private OooO0O0 OoooOoo;

    public class OooO00o implements ye0 {
        public OooO00o() {
        }

        @Override // z2.ye0
        public void OooO0O0(boolean z) {
        }

        @Override // z2.ye0
        public boolean OooO0Oo() {
            return false;
        }

        @Override // z2.ye0
        public void OooOO0o(boolean z) {
            ve0.this.OooO0Oo(z ? -2L : 0L);
        }
    }

    public final class OooO0O0 {
        public View OooO00o;
        public BasePopupHelper OooO0O0;

        public OooO0O0(View view, BasePopupHelper basePopupHelper) {
            Animation animationLoadAnimation;
            this.OooO00o = view;
            this.OooO0O0 = basePopupHelper;
            if ((view instanceof re0) || !basePopupHelper.o0ooOO0() || (animationLoadAnimation = AnimationUtils.loadAnimation(ve0.this.getContext(), R.anim.basepopup_fade_in)) == null) {
                return;
            }
            animationLoadAnimation.setDuration(Math.max(animationLoadAnimation.getDuration(), this.OooO0O0.OoooOo0() - 200));
            animationLoadAnimation.setFillAfter(true);
            this.OooO00o.startAnimation(animationLoadAnimation);
        }

        public void OooO00o() {
            View view = this.OooO00o;
            if (view != null) {
                ve0 ve0Var = ve0.this;
                ve0Var.addViewInLayout(view, -1, ve0Var.generateDefaultLayoutParams());
            }
        }

        public void OooO0O0() {
            View view = this.OooO00o;
            if (view instanceof re0) {
                ((re0) view).OooO0O0();
            }
            this.OooO00o = null;
        }

        public void OooO0OO() {
            BasePopupHelper basePopupHelper;
            Animation animationLoadAnimation;
            View view = this.OooO00o;
            if (view instanceof re0) {
                ((re0) view).OooO0OO();
                return;
            }
            if (view == null || (basePopupHelper = this.OooO0O0) == null || !basePopupHelper.o0ooOO0() || (animationLoadAnimation = AnimationUtils.loadAnimation(ve0.this.getContext(), R.anim.basepopup_fade_out)) == null) {
                return;
            }
            animationLoadAnimation.setDuration(Math.max(animationLoadAnimation.getDuration(), this.OooO0O0.OooOooO() - 200));
            animationLoadAnimation.setFillAfter(true);
            this.OooO00o.startAnimation(animationLoadAnimation);
        }

        public void OooO0Oo(int i, int i2, int i3, int i4) {
            View view = this.OooO00o;
            if (view == null) {
                return;
            }
            view.layout(i, i2, i3, i4);
        }

        public void OooO0o0() {
            View view = this.OooO00o;
            if (view instanceof re0) {
                ((re0) view).OooO0o0();
            }
        }
    }

    private ve0(Context context) {
        this(context, null);
    }

    private ve0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ve0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public static ve0 OooO0O0(Context context, BasePopupHelper basePopupHelper) {
        ve0 ve0Var = new ve0(context);
        ve0Var.OooO0o(context, basePopupHelper);
        return ve0Var;
    }

    private void OooO0o(Context context, BasePopupHelper basePopupHelper) {
        setLayoutAnimation(null);
        if (basePopupHelper == null) {
            setBackgroundColor(0);
            return;
        }
        if (basePopupHelper.Ooooooo()) {
            BlurImageView blurImageView = new BlurImageView(context);
            this.OoooOoO = blurImageView;
            blurImageView.OooO0o(basePopupHelper.OooOoOO());
            addViewInLayout(this.OoooOoO, -1, generateDefaultLayoutParams());
        }
        if (basePopupHelper.OooOoO() != null) {
            this.OoooOoo = new OooO0O0(basePopupHelper.OooOoO(), basePopupHelper);
        } else if (!nf0.OooO0O0(basePopupHelper.OoooO0())) {
            this.OoooOoo = new OooO0O0(re0.OooO00o(context, basePopupHelper), basePopupHelper);
        }
        OooO0O0 oooO0O0 = this.OoooOoo;
        if (oooO0O0 != null) {
            oooO0O0.OooO00o();
        }
        basePopupHelper.o0OO00O(new OooO00o());
    }

    public void OooO0OO(int i, int i2, int i3, int i4, int i5) {
        int left = getLeft();
        int top = getTop();
        int right = getRight();
        int bottom = getBottom();
        int i6 = i & 7;
        if (i6 == 3) {
            i4 = right;
        } else {
            if (i6 != 5) {
                if (i6 != 8388611) {
                    if (i6 != 8388613) {
                        i2 = left;
                    }
                }
                i4 = right;
            }
            i2 = left;
        }
        int i7 = i & 112;
        if (i7 == 48) {
            i5 = bottom;
        } else if (i7 != 80) {
            i3 = top;
            i5 = bottom;
        } else {
            i3 = top;
        }
        OooO0O0 oooO0O0 = this.OoooOoo;
        if (oooO0O0 != null) {
            oooO0O0.OooO0Oo(i2, i3, i4, i5);
        }
    }

    public void OooO0Oo(long j) {
        BlurImageView blurImageView = this.OoooOoO;
        if (blurImageView != null) {
            blurImageView.OooO(j);
        }
        OooO0O0 oooO0O0 = this.OoooOoo;
        if (oooO0O0 != null) {
            oooO0O0.OooO0OO();
        }
    }

    public void OooO0o0(long j) {
        BlurImageView blurImageView = this.OoooOoO;
        if (blurImageView != null) {
            blurImageView.OooOOO(j);
        }
    }

    public void OooO0oO() {
        BlurImageView blurImageView = this.OoooOoO;
        if (blurImageView != null) {
            blurImageView.OooOOo();
        }
        OooO0O0 oooO0O0 = this.OoooOoo;
        if (oooO0O0 != null) {
            oooO0O0.OooO0o0();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        PopupLog.OooO0oo("dispatch  >> " + zDispatchKeyEvent);
        return zDispatchKeyEvent;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new FrameLayout.LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeAllViews();
        OooO0O0 oooO0O0 = this.OoooOoo;
        if (oooO0O0 != null) {
            oooO0O0.OooO0O0();
            this.OoooOoo = null;
        }
        BlurImageView blurImageView = this.OoooOoO;
        if (blurImageView != null) {
            blurImageView.OooO0oo();
            this.OoooOoO = null;
        }
    }
}
