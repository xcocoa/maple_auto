package com.cyjh.mobileanjian.ipc.uip;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.AnimatorRes;
import androidx.annotation.DrawableRes;
import androidx.viewpager.widget.ViewPager;
import com.cyjh.mqsdk.R;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends LinearLayout {
    private static final int o00Ooo = 8;
    private ViewPager OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private int Ooooo0o;
    private int OooooO0;
    private int OooooOO;
    private int OooooOo;
    private Animator Oooooo;
    private int Oooooo0;
    private Animator OoooooO;
    private Animator Ooooooo;
    private final ViewPager.OnPageChangeListener o00O0O;
    private DataSetObserver o00Oo0;
    private Animator o0OoOo0;
    private int ooOO;

    public class OooO00o implements ViewPager.OnPageChangeListener {
        public OooO00o() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public final void onPageSelected(int i) {
            a aVar;
            View childAt;
            if (a.this.OoooOoO.getAdapter() == null || a.this.OoooOoO.getAdapter().getCount() <= 0) {
                return;
            }
            if (a.this.OoooooO.isRunning()) {
                a.this.OoooooO.end();
                a.this.OoooooO.cancel();
            }
            if (a.this.Oooooo.isRunning()) {
                a.this.Oooooo.end();
                a.this.Oooooo.cancel();
            }
            if (a.this.ooOO >= 0 && (childAt = (aVar = a.this).getChildAt(aVar.ooOO)) != null) {
                childAt.setBackgroundResource(a.this.Oooooo0);
                a.this.OoooooO.setTarget(childAt);
                a.this.OoooooO.start();
            }
            View childAt2 = a.this.getChildAt(i);
            if (childAt2 != null) {
                childAt2.setBackgroundResource(a.this.OooooOo);
                a.this.Oooooo.setTarget(childAt2);
                a.this.Oooooo.start();
            }
            a.this.ooOO = i;
        }
    }

    public class OooO0O0 extends DataSetObserver {
        public OooO0O0() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            int count;
            a aVar;
            int currentItem;
            super.onChanged();
            if (a.this.OoooOoO == null || (count = a.this.OoooOoO.getAdapter().getCount()) == a.this.getChildCount()) {
                return;
            }
            if (a.this.ooOO < count) {
                aVar = a.this;
                currentItem = aVar.OoooOoO.getCurrentItem();
            } else {
                aVar = a.this;
                currentItem = -1;
            }
            aVar.ooOO = currentItem;
            a.this.OooO0Oo();
        }
    }

    public class OooO0OO implements Interpolator {
        private OooO0OO() {
        }

        public /* synthetic */ OooO0OO(a aVar, byte b) {
            this();
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            return Math.abs(1.0f - f);
        }
    }

    public a(Context context) {
        super(context);
        this.OoooOoo = -1;
        this.Ooooo00 = -1;
        this.Ooooo0o = -1;
        this.OooooO0 = R.animator.no_animator;
        this.OooooOO = 0;
        this.OooooOo = R.drawable.ci_blue_point;
        this.Oooooo0 = R.drawable.ci_gray_point;
        this.ooOO = -1;
        this.o00O0O = new OooO00o();
        this.o00Oo0 = new OooO0O0();
        OooO(context, null);
    }

    private a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoo = -1;
        this.Ooooo00 = -1;
        this.Ooooo0o = -1;
        this.OooooO0 = R.animator.no_animator;
        this.OooooOO = 0;
        this.OooooOo = R.drawable.ci_blue_point;
        this.Oooooo0 = R.drawable.ci_gray_point;
        this.ooOO = -1;
        this.o00O0O = new OooO00o();
        this.o00Oo0 = new OooO0O0();
        OooO(context, attributeSet);
    }

    private a(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoo = -1;
        this.Ooooo00 = -1;
        this.Ooooo0o = -1;
        this.OooooO0 = R.animator.no_animator;
        this.OooooOO = 0;
        this.OooooOo = R.drawable.ci_blue_point;
        this.Oooooo0 = R.drawable.ci_gray_point;
        this.ooOO = -1;
        this.o00O0O = new OooO00o();
        this.o00Oo0 = new OooO0O0();
        OooO(context, attributeSet);
    }

    @TargetApi(21)
    private a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.OoooOoo = -1;
        this.Ooooo00 = -1;
        this.Ooooo0o = -1;
        this.OooooO0 = R.animator.no_animator;
        this.OooooOO = 0;
        this.OooooOo = R.drawable.ci_blue_point;
        this.Oooooo0 = R.drawable.ci_gray_point;
        this.ooOO = -1;
        this.o00O0O = new OooO00o();
        this.o00Oo0 = new OooO0O0();
        OooO(context, attributeSet);
    }

    private void OooO(Context context, AttributeSet attributeSet) {
        OooOO0o(context, attributeSet);
        OooO0oo(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooO0Oo() {
        int i;
        Animator animator;
        removeAllViews();
        int count = this.OoooOoO.getAdapter().getCount();
        if (count <= 0) {
            return;
        }
        int currentItem = this.OoooOoO.getCurrentItem();
        int orientation = getOrientation();
        for (int i2 = 0; i2 < count; i2++) {
            if (currentItem == i2) {
                i = this.OooooOo;
                animator = this.Ooooooo;
            } else {
                i = this.Oooooo0;
                animator = this.o0OoOo0;
            }
            OooO0oO(orientation, i, animator);
        }
    }

    private void OooO0o(int i, int i2, int i3, @AnimatorRes int i4, @DrawableRes int i5, @DrawableRes int i6) {
        this.Ooooo00 = i;
        this.Ooooo0o = i2;
        this.OoooOoo = i3;
        this.OooooO0 = i4;
        this.OooooOO = 0;
        this.OooooOo = i5;
        this.Oooooo0 = i6;
        OooO0oo(getContext());
    }

    private void OooO0o0(int i, int i2, int i3) {
        int i4 = R.animator.scale_with_alpha;
        int i5 = R.drawable.white_radius;
        this.Ooooo00 = i;
        this.Ooooo0o = i2;
        this.OoooOoo = i3;
        this.OooooO0 = i4;
        this.OooooOO = 0;
        this.OooooOo = i5;
        this.Oooooo0 = i5;
        OooO0oo(getContext());
    }

    private void OooO0oO(int i, @DrawableRes int i2, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundResource(i2);
        addView(view, this.Ooooo00, this.Ooooo0o);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (i == 0) {
            int i3 = this.OoooOoo;
            layoutParams.leftMargin = i3;
            layoutParams.rightMargin = i3;
        } else {
            int i4 = this.OoooOoo;
            layoutParams.topMargin = i4;
            layoutParams.bottomMargin = i4;
        }
        view.setLayoutParams(layoutParams);
        animator.setTarget(view);
        animator.start();
    }

    private void OooO0oo(Context context) {
        int iOooO00o = this.Ooooo00;
        if (iOooO00o < 0) {
            iOooO00o = OooO00o(8.0f);
        }
        this.Ooooo00 = iOooO00o;
        int iOooO00o2 = this.Ooooo0o;
        if (iOooO00o2 < 0) {
            iOooO00o2 = OooO00o(8.0f);
        }
        this.Ooooo0o = iOooO00o2;
        int iOooO00o3 = this.OoooOoo;
        if (iOooO00o3 < 0) {
            iOooO00o3 = OooO00o(8.0f);
        }
        this.OoooOoo = iOooO00o3;
        int i = this.OooooO0;
        if (i == 0) {
            i = R.animator.scale_with_alpha;
        }
        this.OooooO0 = i;
        this.Oooooo = OooOO0(context);
        Animator animatorOooOO0 = OooOO0(context);
        this.Ooooooo = animatorOooOO0;
        animatorOooOO0.setDuration(0L);
        this.OoooooO = OooOOO0(context);
        Animator animatorOooOOO0 = OooOOO0(context);
        this.o0OoOo0 = animatorOooOOO0;
        animatorOooOOO0.setDuration(0L);
        int i2 = this.OooooOo;
        if (i2 == 0) {
            i2 = R.drawable.white_radius;
        }
        this.OooooOo = i2;
        int i3 = this.Oooooo0;
        if (i3 != 0) {
            i2 = i3;
        }
        this.Oooooo0 = i2;
    }

    private Animator OooOO0(Context context) {
        return AnimatorInflater.loadAnimator(context, this.OooooO0);
    }

    private void OooOO0o(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleIndicator);
        this.Ooooo00 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleIndicator_ci_width, -1);
        this.Ooooo0o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleIndicator_ci_height, -1);
        this.OoooOoo = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.CircleIndicator_ci_margin, -1);
        this.OooooO0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CircleIndicator_ci_animator, R.animator.scale_with_alpha);
        this.OooooOO = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CircleIndicator_ci_animator_reverse, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CircleIndicator_ci_drawable, R.drawable.white_radius);
        this.OooooOo = resourceId;
        this.Oooooo0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.CircleIndicator_ci_drawable_unselected, resourceId);
        setOrientation(typedArrayObtainStyledAttributes.getInt(R.styleable.CircleIndicator_ci_orientation, -1) == 1 ? 1 : 0);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.CircleIndicator_ci_gravity, -1);
        if (i < 0) {
            i = 17;
        }
        setGravity(i);
        typedArrayObtainStyledAttributes.recycle();
    }

    private Animator OooOOO0(Context context) {
        int i = this.OooooOO;
        if (i != 0) {
            return AnimatorInflater.loadAnimator(context, i);
        }
        Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, this.OooooO0);
        animatorLoadAnimator.setInterpolator(new OooO0OO(this, (byte) 0));
        return animatorLoadAnimator;
    }

    public final int OooO00o(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final DataSetObserver getDataSetObserver() {
        return this.o00Oo0;
    }

    @Deprecated
    public final void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ViewPager viewPager = this.OoooOoO;
        Objects.requireNonNull(viewPager, "can not find Viewpager , setViewPager first");
        viewPager.removeOnPageChangeListener(onPageChangeListener);
        this.OoooOoO.addOnPageChangeListener(onPageChangeListener);
    }

    public final void setViewPager(ViewPager viewPager) {
        this.OoooOoO = viewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        this.ooOO = -1;
        OooO0Oo();
        this.OoooOoO.removeOnPageChangeListener(this.o00O0O);
        this.OoooOoO.addOnPageChangeListener(this.o00O0O);
        this.o00O0O.onPageSelected(this.OoooOoO.getCurrentItem());
    }
}
