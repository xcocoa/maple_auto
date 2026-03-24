package com.google.android.material.tabs;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import z2.bl;
import z2.ej;
import z2.el;
import z2.xk;
import z2.yk;

/* JADX INFO: loaded from: classes2.dex */
@ViewPager.DecorView
public class TabLayout extends HorizontalScrollView {

    @Dimension(unit = 0)
    private static final int o0000 = 48;

    @Dimension(unit = 0)
    private static final int o00000oO = 72;

    @Dimension(unit = 0)
    public static final int o00000oo = 8;
    public static final int o0000O = 0;
    private static final int o0000O0 = -1;

    @Dimension(unit = 0)
    private static final int o0000O00 = 56;
    private static final int o0000O0O = 300;
    public static final int o0000OO = 0;
    public static final int o0000OO0 = 1;
    public static final int o0000OOO = 1;
    public static final int o0000OOo = 0;
    public static final int o0000Oo = 2;
    public static final int o0000Oo0 = 1;
    public static final int o0000OoO = 3;

    @Dimension(unit = 0)
    public static final int o0000oO = 16;

    @Dimension(unit = 0)
    private static final int o0000oo = 24;
    private static final Pools.Pool<OooOOO0> o000OO = new Pools.SynchronizedPool(16);
    private final ArrayList<OooOOO0> OoooOoO;
    private OooOOO0 OoooOoo;
    private final RectF Ooooo00;
    private final OooOO0O Ooooo0o;
    public int OooooO0;
    public int OooooOO;
    public int OooooOo;
    public int Oooooo;
    public int Oooooo0;
    public ColorStateList OoooooO;
    public ColorStateList Ooooooo;
    public ViewPager o00000;
    private final ArrayList<OooO0OO> o000000;
    private OooO0OO o000000O;
    private ValueAnimator o000000o;
    private DataSetObserver o00000O;
    private PagerAdapter o00000O0;
    private OooOo00 o00000OO;
    private OooO0O0 o00000Oo;
    private boolean o00000o0;
    private final Pools.Pool<OooOo> o0000Ooo;
    private OooO0OO o000OOo;
    public PorterDuff.Mode o00O0O;
    public float o00Oo0;
    public float o00Ooo;
    public final int o00o0O;
    private final int o00oO0O;
    private final int o00oO0o;
    public int o00ooo;
    public boolean o0O0O00;
    public boolean o0OO00O;
    public int o0OOO0o;
    public int o0Oo0oo;
    public ColorStateList o0OoOo0;
    private int o0ooOO0;
    public int o0ooOOo;
    public int o0ooOoO;
    private final int oo000o;
    public boolean oo0o0Oo;

    @Nullable
    public Drawable ooOO;

    public interface OooO extends OooO0OO<OooOOO0> {
    }

    public class OooO00o implements ValueAnimator.AnimatorUpdateListener {
        public OooO00o() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TabLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    public class OooO0O0 implements ViewPager.OnAdapterChangeListener {
        private boolean OoooOoO;

        public OooO0O0() {
        }

        public void OooO00o(boolean z) {
            this.OoooOoO = z;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.o00000 == viewPager) {
                tabLayout.Oooo0o0(pagerAdapter2, this.OoooOoO);
            }
        }
    }

    public interface OooO0OO<T extends OooOOO0> {
        void OooO00o(T t);

        void OooO0O0(T t);

        void OooO0OO(T t);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OooO0o {
    }

    public class OooOO0 extends DataSetObserver {
        public OooOO0() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.OooOoo();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.OooOoo();
        }
    }

    public class OooOO0O extends LinearLayout {
        private int OoooOoO;
        private final Paint OoooOoo;
        private final GradientDrawable Ooooo00;
        public int Ooooo0o;
        public float OooooO0;
        private int OooooOO;
        private int OooooOo;
        private ValueAnimator Oooooo;
        private int Oooooo0;

        public class OooO00o implements ValueAnimator.AnimatorUpdateListener {
            public final /* synthetic */ int OooO00o;
            public final /* synthetic */ int OooO0O0;
            public final /* synthetic */ int OooO0OO;
            public final /* synthetic */ int OooO0Oo;

            public OooO00o(int i, int i2, int i3, int i4) {
                this.OooO00o = i;
                this.OooO0O0 = i2;
                this.OooO0OO = i3;
                this.OooO0Oo = i4;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                OooOO0O.this.OooO0o0(ej.OooO0O0(this.OooO00o, this.OooO0O0, animatedFraction), ej.OooO0O0(this.OooO0OO, this.OooO0Oo, animatedFraction));
            }
        }

        public class OooO0O0 extends AnimatorListenerAdapter {
            public final /* synthetic */ int OooO00o;

            public OooO0O0(int i) {
                this.OooO00o = i;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                OooOO0O oooOO0O = OooOO0O.this;
                oooOO0O.Ooooo0o = this.OooO00o;
                oooOO0O.OooooO0 = 0.0f;
            }
        }

        public OooOO0O(Context context) {
            super(context);
            this.Ooooo0o = -1;
            this.OooooOO = -1;
            this.OooooOo = -1;
            this.Oooooo0 = -1;
            setWillNotDraw(false);
            this.OoooOoo = new Paint();
            this.Ooooo00 = new GradientDrawable();
        }

        private void OooO() {
            int left;
            int right;
            View childAt = getChildAt(this.Ooooo0o);
            if (childAt == null || childAt.getWidth() <= 0) {
                left = -1;
                right = -1;
            } else {
                left = childAt.getLeft();
                right = childAt.getRight();
                TabLayout tabLayout = TabLayout.this;
                if (!tabLayout.oo0o0Oo && (childAt instanceof OooOo)) {
                    OooO0O0((OooOo) childAt, tabLayout.Ooooo00);
                    left = (int) TabLayout.this.Ooooo00.left;
                    right = (int) TabLayout.this.Ooooo00.right;
                }
                if (this.OooooO0 > 0.0f && this.Ooooo0o < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.Ooooo0o + 1);
                    int left2 = childAt2.getLeft();
                    int right2 = childAt2.getRight();
                    TabLayout tabLayout2 = TabLayout.this;
                    if (!tabLayout2.oo0o0Oo && (childAt2 instanceof OooOo)) {
                        OooO0O0((OooOo) childAt2, tabLayout2.Ooooo00);
                        left2 = (int) TabLayout.this.Ooooo00.left;
                        right2 = (int) TabLayout.this.Ooooo00.right;
                    }
                    float f = this.OooooO0;
                    left = (int) ((left2 * f) + ((1.0f - f) * left));
                    right = (int) ((right2 * f) + ((1.0f - f) * right));
                }
            }
            OooO0o0(left, right);
        }

        private void OooO0O0(OooOo oooOo, RectF rectF) {
            int iOooO0o = oooOo.OooO0o();
            if (iOooO0o < TabLayout.this.OooOo0O(24)) {
                iOooO0o = TabLayout.this.OooOo0O(24);
            }
            int left = (oooOo.getLeft() + oooOo.getRight()) / 2;
            int i = iOooO0o / 2;
            rectF.set(left - i, 0.0f, left + i, 0.0f);
        }

        public void OooO00o(int i, int i2) {
            ValueAnimator valueAnimator = this.Oooooo;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.Oooooo.cancel();
            }
            View childAt = getChildAt(i);
            if (childAt == null) {
                OooO();
                return;
            }
            int left = childAt.getLeft();
            int right = childAt.getRight();
            TabLayout tabLayout = TabLayout.this;
            if (!tabLayout.oo0o0Oo && (childAt instanceof OooOo)) {
                OooO0O0((OooOo) childAt, tabLayout.Ooooo00);
                left = (int) TabLayout.this.Ooooo00.left;
                right = (int) TabLayout.this.Ooooo00.right;
            }
            int i3 = left;
            int i4 = right;
            int i5 = this.OooooOo;
            int i6 = this.Oooooo0;
            if (i5 == i3 && i6 == i4) {
                return;
            }
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.Oooooo = valueAnimator2;
            valueAnimator2.setInterpolator(ej.OooO0O0);
            valueAnimator2.setDuration(i2);
            valueAnimator2.setFloatValues(0.0f, 1.0f);
            valueAnimator2.addUpdateListener(new OooO00o(i5, i3, i6, i4));
            valueAnimator2.addListener(new OooO0O0(i));
            valueAnimator2.start();
        }

        public boolean OooO0OO() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        public float OooO0Oo() {
            return this.Ooooo0o + this.OooooO0;
        }

        public void OooO0o(int i, float f) {
            ValueAnimator valueAnimator = this.Oooooo;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.Oooooo.cancel();
            }
            this.Ooooo0o = i;
            this.OooooO0 = f;
            OooO();
        }

        public void OooO0o0(int i, int i2) {
            if (i == this.OooooOo && i2 == this.Oooooo0) {
                return;
            }
            this.OooooOo = i;
            this.Oooooo0 = i2;
            ViewCompat.postInvalidateOnAnimation(this);
        }

        public void OooO0oO(int i) {
            if (this.OoooOoo.getColor() != i) {
                this.OoooOoo.setColor(i);
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        public void OooO0oo(int i) {
            if (this.OoooOoO != i) {
                this.OoooOoO = i;
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x005a  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void draw(Canvas canvas) {
            int i;
            Drawable drawable;
            Paint paint;
            Drawable drawable2 = TabLayout.this.ooOO;
            int height = 0;
            int intrinsicHeight = drawable2 != null ? drawable2.getIntrinsicHeight() : 0;
            int i2 = this.OoooOoO;
            if (i2 >= 0) {
                intrinsicHeight = i2;
            }
            int i3 = TabLayout.this.o0OOO0o;
            if (i3 != 0) {
                if (i3 == 1) {
                    height = (getHeight() - intrinsicHeight) / 2;
                    intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
                } else if (i3 != 2) {
                    if (i3 != 3) {
                        intrinsicHeight = 0;
                    }
                }
                i = this.OooooOo;
                if (i >= 0 && this.Oooooo0 > i) {
                    drawable = TabLayout.this.ooOO;
                    if (drawable == null) {
                        drawable = this.Ooooo00;
                    }
                    Drawable drawableWrap = DrawableCompat.wrap(drawable);
                    drawableWrap.setBounds(this.OooooOo, height, this.Oooooo0, intrinsicHeight);
                    paint = this.OoooOoo;
                    if (paint != null) {
                        int i4 = Build.VERSION.SDK_INT;
                        int color = paint.getColor();
                        if (i4 == 21) {
                            drawableWrap.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                        } else {
                            DrawableCompat.setTint(drawableWrap, color);
                        }
                    }
                    drawableWrap.draw(canvas);
                }
                super.draw(canvas);
            }
            height = getHeight() - intrinsicHeight;
            intrinsicHeight = getHeight();
            i = this.OooooOo;
            if (i >= 0) {
                drawable = TabLayout.this.ooOO;
                if (drawable == null) {
                }
                Drawable drawableWrap2 = DrawableCompat.wrap(drawable);
                drawableWrap2.setBounds(this.OooooOo, height, this.Oooooo0, intrinsicHeight);
                paint = this.OoooOoo;
                if (paint != null) {
                }
                drawableWrap2.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.Oooooo;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                OooO();
                return;
            }
            this.Oooooo.cancel();
            OooO00o(this.Ooooo0o, Math.round((1.0f - this.Oooooo.getAnimatedFraction()) * this.Oooooo.getDuration()));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.o0Oo0oo == 1 && tabLayout.o0ooOOo == 1) {
                int childCount = getChildCount();
                int iMax = 0;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (childAt.getVisibility() == 0) {
                        iMax = Math.max(iMax, childAt.getMeasuredWidth());
                    }
                }
                if (iMax <= 0) {
                    return;
                }
                if (iMax * childCount <= getMeasuredWidth() - (TabLayout.this.OooOo0O(16) * 2)) {
                    boolean z3 = false;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i4).getLayoutParams();
                        if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                            layoutParams.width = iMax;
                            layoutParams.weight = 0.0f;
                            z3 = true;
                        }
                    }
                    z = z3;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.o0ooOOo = 0;
                    tabLayout2.OoooO(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT >= 23 || this.OooooOO == i) {
                return;
            }
            requestLayout();
            this.OooooOO = i;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OooOOO {
    }

    public static class OooOOO0 {
        public static final int OooO = -1;
        private Object OooO00o;
        private Drawable OooO0O0;
        private CharSequence OooO0OO;
        private CharSequence OooO0Oo;
        private View OooO0o;
        private int OooO0o0 = -1;
        public TabLayout OooO0oO;
        public OooOo OooO0oo;

        public boolean OooO() {
            TabLayout tabLayout = this.OooO0oO;
            if (tabLayout != null) {
                return tabLayout.getSelectedTabPosition() == this.OooO0o0;
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @Nullable
        public CharSequence OooO0OO() {
            OooOo oooOo = this.OooO0oo;
            if (oooOo == null) {
                return null;
            }
            return oooOo.getContentDescription();
        }

        @Nullable
        public View OooO0Oo() {
            return this.OooO0o;
        }

        public int OooO0o() {
            return this.OooO0o0;
        }

        @Nullable
        public Drawable OooO0o0() {
            return this.OooO0O0;
        }

        @Nullable
        public Object OooO0oO() {
            return this.OooO00o;
        }

        @Nullable
        public CharSequence OooO0oo() {
            return this.OooO0OO;
        }

        public void OooOO0() {
            this.OooO0oO = null;
            this.OooO0oo = null;
            this.OooO00o = null;
            this.OooO0O0 = null;
            this.OooO0OO = null;
            this.OooO0Oo = null;
            this.OooO0o0 = -1;
            this.OooO0o = null;
        }

        public void OooOO0O() {
            TabLayout tabLayout = this.OooO0oO;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.Oooo0O0(this);
        }

        @NonNull
        public OooOOO0 OooOO0o(@StringRes int i) {
            TabLayout tabLayout = this.OooO0oO;
            if (tabLayout != null) {
                return OooOOO0(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        @NonNull
        public OooOOO0 OooOOO(@LayoutRes int i) {
            return OooOOOO(LayoutInflater.from(this.OooO0oo.getContext()).inflate(i, (ViewGroup) this.OooO0oo, false));
        }

        @NonNull
        public OooOOO0 OooOOO0(@Nullable CharSequence charSequence) {
            this.OooO0Oo = charSequence;
            OooOo0O();
            return this;
        }

        @NonNull
        public OooOOO0 OooOOOO(@Nullable View view) {
            this.OooO0o = view;
            OooOo0O();
            return this;
        }

        @NonNull
        public OooOOO0 OooOOOo(@DrawableRes int i) {
            TabLayout tabLayout = this.OooO0oO;
            if (tabLayout != null) {
                return OooOOo0(AppCompatResources.getDrawable(tabLayout.getContext(), i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void OooOOo(int i) {
            this.OooO0o0 = i;
        }

        @NonNull
        public OooOOO0 OooOOo0(@Nullable Drawable drawable) {
            this.OooO0O0 = drawable;
            OooOo0O();
            return this;
        }

        @NonNull
        public OooOOO0 OooOOoo(@Nullable Object obj) {
            this.OooO00o = obj;
            return this;
        }

        @NonNull
        public OooOOO0 OooOo0(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.OooO0Oo) && !TextUtils.isEmpty(charSequence)) {
                this.OooO0oo.setContentDescription(charSequence);
            }
            this.OooO0OO = charSequence;
            OooOo0O();
            return this;
        }

        @NonNull
        public OooOOO0 OooOo00(@StringRes int i) {
            TabLayout tabLayout = this.OooO0oO;
            if (tabLayout != null) {
                return OooOo0(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }

        public void OooOo0O() {
            OooOo oooOo = this.OooO0oo;
            if (oooOo != null) {
                oooOo.OooOO0();
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OooOOOO {
    }

    public class OooOo extends LinearLayout {
        private OooOOO0 OoooOoO;
        private TextView OoooOoo;
        private ImageView Ooooo00;
        private View Ooooo0o;
        private TextView OooooO0;
        private ImageView OooooOO;

        @Nullable
        private Drawable OooooOo;
        private int Oooooo0;

        public OooOo(Context context) {
            super(context);
            this.Oooooo0 = 2;
            OooOO0O(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.OooooO0, TabLayout.this.OooooOO, TabLayout.this.OooooOo, TabLayout.this.Oooooo0);
            setGravity(17);
            setOrientation(!TabLayout.this.o0OO00O ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), 1002));
        }

        private float OooO0Oo(Layout layout, int i, float f) {
            return layout.getLineWidth(i) * (f / layout.getPaint().getTextSize());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int OooO0o() {
            View[] viewArr = {this.OoooOoo, this.Ooooo00, this.Ooooo0o};
            int iMax = 0;
            int iMin = 0;
            boolean z = false;
            for (int i = 0; i < 3; i++) {
                View view = viewArr[i];
                if (view != null && view.getVisibility() == 0) {
                    iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                    iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return iMax - iMin;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OooO0o0(Canvas canvas) {
            Drawable drawable = this.OooooOo;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.OooooOo.draw(canvas);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OooOO0O(Context context) {
            int i = TabLayout.this.o00o0O;
            if (i != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i);
                this.OooooOo = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.OooooOo.setState(getDrawableState());
                }
            } else {
                this.OooooOo = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            Drawable layerDrawable = gradientDrawable;
            if (TabLayout.this.o0OoOo0 != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList colorStateListOooO00o = el.OooO00o(TabLayout.this.o0OoOo0);
                if (Build.VERSION.SDK_INT >= 21) {
                    boolean z = TabLayout.this.o0O0O00;
                    GradientDrawable gradientDrawable3 = gradientDrawable;
                    if (z) {
                        gradientDrawable3 = null;
                    }
                    layerDrawable = new RippleDrawable(colorStateListOooO00o, gradientDrawable3, z ? null : gradientDrawable2);
                } else {
                    Drawable drawableWrap = DrawableCompat.wrap(gradientDrawable2);
                    DrawableCompat.setTintList(drawableWrap, colorStateListOooO00o);
                    layerDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, drawableWrap});
                }
            }
            ViewCompat.setBackground(this, layerDrawable);
            TabLayout.this.invalidate();
        }

        private void OooOOO0(@Nullable TextView textView, @Nullable ImageView imageView) {
            OooOOO0 oooOOO0 = this.OoooOoO;
            Drawable drawableMutate = (oooOOO0 == null || oooOOO0.OooO0o0() == null) ? null : DrawableCompat.wrap(this.OoooOoO.OooO0o0()).mutate();
            OooOOO0 oooOOO02 = this.OoooOoO;
            CharSequence charSequenceOooO0oo = oooOOO02 != null ? oooOOO02.OooO0oo() : null;
            if (imageView != null) {
                if (drawableMutate != null) {
                    imageView.setImageDrawable(drawableMutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean z = !TextUtils.isEmpty(charSequenceOooO0oo);
            if (textView != null) {
                if (z) {
                    textView.setText(charSequenceOooO0oo);
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int iOooOo0O = (z && imageView.getVisibility() == 0) ? TabLayout.this.OooOo0O(8) : 0;
                if (TabLayout.this.o0OO00O) {
                    if (iOooOo0O != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, iOooOo0O);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (iOooOo0O != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = iOooOo0O;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            OooOOO0 oooOOO03 = this.OoooOoO;
            TooltipCompat.setTooltipText(this, z ? null : oooOOO03 != null ? oooOOO03.OooO0Oo : null);
        }

        public void OooO(@Nullable OooOOO0 oooOOO0) {
            if (oooOOO0 != this.OoooOoO) {
                this.OoooOoO = oooOOO0;
                OooOO0();
            }
        }

        public OooOOO0 OooO0oO() {
            return this.OoooOoO;
        }

        public void OooO0oo() {
            OooO(null);
            setSelected(false);
        }

        public final void OooOO0() {
            TextView textView;
            ImageView imageView;
            OooOOO0 oooOOO0 = this.OoooOoO;
            Drawable drawableMutate = null;
            View viewOooO0Oo = oooOOO0 != null ? oooOOO0.OooO0Oo() : null;
            if (viewOooO0Oo != null) {
                ViewParent parent = viewOooO0Oo.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(viewOooO0Oo);
                    }
                    addView(viewOooO0Oo);
                }
                this.Ooooo0o = viewOooO0Oo;
                TextView textView2 = this.OoooOoo;
                if (textView2 != null) {
                    textView2.setVisibility(8);
                }
                ImageView imageView2 = this.Ooooo00;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                    this.Ooooo00.setImageDrawable(null);
                }
                TextView textView3 = (TextView) viewOooO0Oo.findViewById(R.id.text1);
                this.OooooO0 = textView3;
                if (textView3 != null) {
                    this.Oooooo0 = TextViewCompat.getMaxLines(textView3);
                }
                this.OooooOO = (ImageView) viewOooO0Oo.findViewById(R.id.icon);
            } else {
                View view = this.Ooooo0o;
                if (view != null) {
                    removeView(view);
                    this.Ooooo0o = null;
                }
                this.OooooO0 = null;
                this.OooooOO = null;
            }
            boolean z = false;
            if (this.Ooooo0o != null) {
                textView = this.OooooO0;
                if (textView != null || this.OooooOO != null) {
                    imageView = this.OooooOO;
                }
                if (oooOOO0 != null && !TextUtils.isEmpty(oooOOO0.OooO0Oo)) {
                    setContentDescription(oooOOO0.OooO0Oo);
                }
                if (oooOOO0 != null && oooOOO0.OooO()) {
                    z = true;
                }
                setSelected(z);
            }
            if (this.Ooooo00 == null) {
                ImageView imageView3 = (ImageView) LayoutInflater.from(getContext()).inflate(com.google.android.material.R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                addView(imageView3, 0);
                this.Ooooo00 = imageView3;
            }
            if (oooOOO0 != null && oooOOO0.OooO0o0() != null) {
                drawableMutate = DrawableCompat.wrap(oooOOO0.OooO0o0()).mutate();
            }
            if (drawableMutate != null) {
                DrawableCompat.setTintList(drawableMutate, TabLayout.this.Ooooooo);
                PorterDuff.Mode mode = TabLayout.this.o00O0O;
                if (mode != null) {
                    DrawableCompat.setTintMode(drawableMutate, mode);
                }
            }
            if (this.OoooOoo == null) {
                TextView textView4 = (TextView) LayoutInflater.from(getContext()).inflate(com.google.android.material.R.layout.design_layout_tab_text, (ViewGroup) this, false);
                addView(textView4);
                this.OoooOoo = textView4;
                this.Oooooo0 = TextViewCompat.getMaxLines(textView4);
            }
            TextViewCompat.setTextAppearance(this.OoooOoo, TabLayout.this.Oooooo);
            ColorStateList colorStateList = TabLayout.this.OoooooO;
            if (colorStateList != null) {
                this.OoooOoo.setTextColor(colorStateList);
            }
            textView = this.OoooOoo;
            imageView = this.Ooooo00;
            OooOOO0(textView, imageView);
            if (oooOOO0 != null) {
                setContentDescription(oooOOO0.OooO0Oo);
            }
            if (oooOOO0 != null) {
                z = true;
            }
            setSelected(z);
        }

        public final void OooOO0o() {
            ImageView imageView;
            setOrientation(!TabLayout.this.o0OO00O ? 1 : 0);
            TextView textView = this.OooooO0;
            if (textView == null && this.OooooOO == null) {
                textView = this.OoooOoo;
                imageView = this.Ooooo00;
            } else {
                imageView = this.OooooOO;
            }
            OooOOO0(textView, imageView);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.OooooOo;
            boolean state = false;
            if (drawable != null && drawable.isStateful()) {
                state = false | this.OooooOo.setState(drawableState);
            }
            if (state) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.view.View
        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.o00ooo, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.OoooOoo != null) {
                float f = TabLayout.this.o00Oo0;
                int i3 = this.Oooooo0;
                ImageView imageView = this.Ooooo00;
                boolean z = true;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.OoooOoo;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = TabLayout.this.o00Ooo;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.OoooOoo.getTextSize();
                int lineCount = this.OoooOoo.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.OoooOoo);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (TabLayout.this.o0Oo0oo == 1 && f > textSize && lineCount == 1 && ((layout = this.OoooOoo.getLayout()) == null || OooO0Oo(layout, 0, f) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        z = false;
                    }
                    if (z) {
                        this.OoooOoo.setTextSize(0, f);
                        this.OoooOoo.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean zPerformClick = super.performClick();
            if (this.OoooOoO == null) {
                return zPerformClick;
            }
            if (!zPerformClick) {
                playSoundEffect(0);
            }
            this.OoooOoO.OooOO0O();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z3 = isSelected() != z;
            super.setSelected(z);
            if (z3 && z && Build.VERSION.SDK_INT < 16) {
                sendAccessibilityEvent(4);
            }
            TextView textView = this.OoooOoo;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.Ooooo00;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.Ooooo0o;
            if (view != null) {
                view.setSelected(z);
            }
        }
    }

    public static class OooOo00 implements ViewPager.OnPageChangeListener {
        private final WeakReference<TabLayout> OoooOoO;
        private int OoooOoo;
        private int Ooooo00;

        public OooOo00(TabLayout tabLayout) {
            this.OoooOoO = new WeakReference<>(tabLayout);
        }

        public void OooO0OO() {
            this.Ooooo00 = 0;
            this.OoooOoo = 0;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.OoooOoo = this.Ooooo00;
            this.Ooooo00 = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.OoooOoO.get();
            if (tabLayout != null) {
                int i3 = this.Ooooo00;
                tabLayout.Oooo0oO(i, f, i3 != 2 || this.OoooOoo == 1, (i3 == 2 && this.OoooOoo == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.OoooOoO.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.Ooooo00;
            tabLayout.Oooo0OO(tabLayout.OooOo(i), i2 == 0 || (i2 == 2 && this.OoooOoo == 0));
        }
    }

    public static class Oooo000 implements OooO {
        private final ViewPager OooO00o;

        public Oooo000(ViewPager viewPager) {
            this.OooO00o = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.OooO0OO
        public void OooO00o(OooOOO0 oooOOO0) {
        }

        @Override // com.google.android.material.tabs.TabLayout.OooO0OO
        public void OooO0O0(OooOOO0 oooOOO0) {
            this.OooO00o.setCurrentItem(oooOOO0.OooO0o());
        }

        @Override // com.google.android.material.tabs.TabLayout.OooO0OO
        public void OooO0OO(OooOOO0 oooOOO0) {
        }
    }

    public TabLayout(Context context) {
        this(context, null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.tabStyle);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = new ArrayList<>();
        this.Ooooo00 = new RectF();
        this.o00ooo = Integer.MAX_VALUE;
        this.o000000 = new ArrayList<>();
        this.o0000Ooo = new Pools.SimplePool(12);
        setHorizontalScrollBarEnabled(false);
        OooOO0O oooOO0O = new OooOO0O(context);
        this.Ooooo0o = oooOO0O;
        super.addView(oooOO0O, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = com.google.android.material.R.styleable.TabLayout;
        int i2 = com.google.android.material.R.style.Widget_Design_TabLayout;
        int i3 = com.google.android.material.R.styleable.TabLayout_tabTextAppearance;
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, iArr, i, i2, i3);
        oooOO0O.OooO0oo(typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabIndicatorHeight, -1));
        oooOO0O.OooO0oO(typedArrayOooOO0.getColor(com.google.android.material.R.styleable.TabLayout_tabIndicatorColor, 0));
        setSelectedTabIndicator(bl.OooO0O0(context, typedArrayOooOO0, com.google.android.material.R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorGravity(typedArrayOooOO0.getInt(com.google.android.material.R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorFullWidth(typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabPadding, 0);
        this.Oooooo0 = dimensionPixelSize;
        this.OooooOo = dimensionPixelSize;
        this.OooooOO = dimensionPixelSize;
        this.OooooO0 = dimensionPixelSize;
        this.OooooO0 = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.OooooOO = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabPaddingTop, this.OooooOO);
        this.OooooOo = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabPaddingEnd, this.OooooOo);
        this.Oooooo0 = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabPaddingBottom, this.Oooooo0);
        int resourceId = typedArrayOooOO0.getResourceId(i3, com.google.android.material.R.style.TextAppearance_Design_Tab);
        this.Oooooo = resourceId;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId, androidx.appcompat.R.styleable.TextAppearance);
        try {
            this.o00Oo0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.TextAppearance_android_textSize, 0);
            this.OoooooO = bl.OooO00o(context, typedArrayObtainStyledAttributes, androidx.appcompat.R.styleable.TextAppearance_android_textColor);
            typedArrayObtainStyledAttributes.recycle();
            int i4 = com.google.android.material.R.styleable.TabLayout_tabTextColor;
            if (typedArrayOooOO0.hasValue(i4)) {
                this.OoooooO = bl.OooO00o(context, typedArrayOooOO0, i4);
            }
            int i5 = com.google.android.material.R.styleable.TabLayout_tabSelectedTextColor;
            if (typedArrayOooOO0.hasValue(i5)) {
                this.OoooooO = OooOOOO(this.OoooooO.getDefaultColor(), typedArrayOooOO0.getColor(i5, 0));
            }
            this.Ooooooo = bl.OooO00o(context, typedArrayOooOO0, com.google.android.material.R.styleable.TabLayout_tabIconTint);
            this.o00O0O = yk.OooO0O0(typedArrayOooOO0.getInt(com.google.android.material.R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.o0OoOo0 = bl.OooO00o(context, typedArrayOooOO0, com.google.android.material.R.styleable.TabLayout_tabRippleColor);
            this.o0ooOoO = typedArrayOooOO0.getInt(com.google.android.material.R.styleable.TabLayout_tabIndicatorAnimationDuration, o0000O0O);
            this.oo000o = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabMinWidth, -1);
            this.o00oO0o = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabMaxWidth, -1);
            this.o00o0O = typedArrayOooOO0.getResourceId(com.google.android.material.R.styleable.TabLayout_tabBackground, 0);
            this.o0ooOO0 = typedArrayOooOO0.getDimensionPixelSize(com.google.android.material.R.styleable.TabLayout_tabContentStart, 0);
            this.o0Oo0oo = typedArrayOooOO0.getInt(com.google.android.material.R.styleable.TabLayout_tabMode, 1);
            this.o0ooOOo = typedArrayOooOO0.getInt(com.google.android.material.R.styleable.TabLayout_tabGravity, 0);
            this.o0OO00O = typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.TabLayout_tabInlineLabel, false);
            this.o0O0O00 = typedArrayOooOO0.getBoolean(com.google.android.material.R.styleable.TabLayout_tabUnboundedRipple, false);
            typedArrayOooOO0.recycle();
            Resources resources = getResources();
            this.o00Ooo = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_tab_text_size_2line);
            this.o00oO0O = resources.getDimensionPixelSize(com.google.android.material.R.dimen.design_tab_scrollable_min_width);
            OooOO0O();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void OooO(View view) {
        if (!(view instanceof TabItem)) {
            throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
        }
        OooO0oO((TabItem) view);
    }

    private void OooO0oO(@NonNull TabItem tabItem) {
        OooOOO0 OooOoo0 = OooOoo0();
        CharSequence charSequence = tabItem.OoooOoO;
        if (charSequence != null) {
            OooOoo0.OooOo0(charSequence);
        }
        Drawable drawable = tabItem.OoooOoo;
        if (drawable != null) {
            OooOoo0.OooOOo0(drawable);
        }
        int i = tabItem.Ooooo00;
        if (i != 0) {
            OooOoo0.OooOOO(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            OooOoo0.OooOOO0(tabItem.getContentDescription());
        }
        OooO0OO(OooOoo0);
    }

    private void OooO0oo(OooOOO0 oooOOO0) {
        this.Ooooo0o.addView(oooOOO0.OooO0oo, oooOOO0.OooO0o(), OooOOOo());
    }

    private void OooOO0(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() == null || !ViewCompat.isLaidOut(this) || this.Ooooo0o.OooO0OO()) {
            Oooo0o(i, 0.0f, true);
            return;
        }
        int scrollX = getScrollX();
        int iOooOO0o = OooOO0o(i, 0.0f);
        if (scrollX != iOooOO0o) {
            OooOo0o();
            this.o000000o.setIntValues(scrollX, iOooOO0o);
            this.o000000o.start();
        }
        this.Ooooo0o.OooO00o(i, this.o0ooOoO);
    }

    private void OooOO0O() {
        ViewCompat.setPaddingRelative(this.Ooooo0o, this.o0Oo0oo == 0 ? Math.max(0, this.o0ooOO0 - this.OooooO0) : 0, 0, 0, 0);
        int i = this.o0Oo0oo;
        if (i == 0) {
            this.Ooooo0o.setGravity(GravityCompat.START);
        } else if (i == 1) {
            this.Ooooo0o.setGravity(1);
        }
        OoooO(true);
    }

    private int OooOO0o(int i, float f) {
        if (this.o0Oo0oo != 0) {
            return 0;
        }
        View childAt = this.Ooooo0o.getChildAt(i);
        int i2 = i + 1;
        View childAt2 = i2 < this.Ooooo0o.getChildCount() ? this.Ooooo0o.getChildAt(i2) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = (childAt.getLeft() + (width / 2)) - (getWidth() / 2);
        int i3 = (int) ((width + width2) * 0.5f * f);
        return ViewCompat.getLayoutDirection(this) == 0 ? left + i3 : left - i3;
    }

    private void OooOOO(OooOOO0 oooOOO0, int i) {
        oooOOO0.OooOOo(i);
        this.OoooOoO.add(i, oooOOO0);
        int size = this.OoooOoO.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                this.OoooOoO.get(i).OooOOo(i);
            }
        }
    }

    private static ColorStateList OooOOOO(int i, int i2) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private LinearLayout.LayoutParams OooOOOo() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        OoooO0O(layoutParams);
        return layoutParams;
    }

    private OooOo OooOOo(@NonNull OooOOO0 oooOOO0) {
        Pools.Pool<OooOo> pool = this.o0000Ooo;
        OooOo oooOoAcquire = pool != null ? pool.acquire() : null;
        if (oooOoAcquire == null) {
            oooOoAcquire = new OooOo(getContext());
        }
        oooOoAcquire.OooO(oooOOO0);
        oooOoAcquire.setFocusable(true);
        oooOoAcquire.setMinimumWidth(getTabMinWidth());
        oooOoAcquire.setContentDescription(TextUtils.isEmpty(oooOOO0.OooO0Oo) ? oooOOO0.OooO0OO : oooOOO0.OooO0Oo);
        return oooOoAcquire;
    }

    private void OooOOoo(@NonNull OooOOO0 oooOOO0) {
        for (int size = this.o000000.size() - 1; size >= 0; size--) {
            this.o000000.get(size).OooO00o(oooOOO0);
        }
    }

    private void OooOo0(@NonNull OooOOO0 oooOOO0) {
        for (int size = this.o000000.size() - 1; size >= 0; size--) {
            this.o000000.get(size).OooO0OO(oooOOO0);
        }
    }

    private void OooOo00(@NonNull OooOOO0 oooOOO0) {
        for (int size = this.o000000.size() - 1; size >= 0; size--) {
            this.o000000.get(size).OooO0O0(oooOOO0);
        }
    }

    private void OooOo0o() {
        if (this.o000000o == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.o000000o = valueAnimator;
            valueAnimator.setInterpolator(ej.OooO0O0);
            this.o000000o.setDuration(this.o0ooOoO);
            this.o000000o.addUpdateListener(new OooO00o());
        }
    }

    private void Oooo0(int i) {
        OooOo oooOo = (OooOo) this.Ooooo0o.getChildAt(i);
        this.Ooooo0o.removeViewAt(i);
        if (oooOo != null) {
            oooOo.OooO0oo();
            this.o0000Ooo.release(oooOo);
        }
        requestLayout();
    }

    private void OoooO0() {
        int size = this.OoooOoO.size();
        for (int i = 0; i < size; i++) {
            this.OoooOoO.get(i).OooOo0O();
        }
    }

    private void OoooO00(@Nullable ViewPager viewPager, boolean z, boolean z3) {
        ViewPager viewPager2 = this.o00000;
        if (viewPager2 != null) {
            OooOo00 oooOo00 = this.o00000OO;
            if (oooOo00 != null) {
                viewPager2.removeOnPageChangeListener(oooOo00);
            }
            OooO0O0 oooO0O0 = this.o00000Oo;
            if (oooO0O0 != null) {
                this.o00000.removeOnAdapterChangeListener(oooO0O0);
            }
        }
        OooO0OO oooO0OO = this.o000000O;
        if (oooO0OO != null) {
            Oooo000(oooO0OO);
            this.o000000O = null;
        }
        if (viewPager != null) {
            this.o00000 = viewPager;
            if (this.o00000OO == null) {
                this.o00000OO = new OooOo00(this);
            }
            this.o00000OO.OooO0OO();
            viewPager.addOnPageChangeListener(this.o00000OO);
            Oooo000 oooo000 = new Oooo000(viewPager);
            this.o000000O = oooo000;
            OooO0O0(oooo000);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                Oooo0o0(adapter, z);
            }
            if (this.o00000Oo == null) {
                this.o00000Oo = new OooO0O0();
            }
            this.o00000Oo.OooO00o(z);
            viewPager.addOnAdapterChangeListener(this.o00000Oo);
            Oooo0o(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.o00000 = null;
            Oooo0o0(null, false);
        }
        this.o00000o0 = z3;
    }

    private void OoooO0O(LinearLayout.LayoutParams layoutParams) {
        float f;
        if (this.o0Oo0oo == 1 && this.o0ooOOo == 0) {
            layoutParams.width = 0;
            f = 1.0f;
        } else {
            layoutParams.width = -2;
            f = 0.0f;
        }
        layoutParams.weight = f;
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.OoooOoO.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < size) {
                OooOOO0 oooOOO0 = this.OoooOoO.get(i);
                if (oooOOO0 != null && oooOOO0.OooO0o0() != null && !TextUtils.isEmpty(oooOOO0.OooO0oo())) {
                    z = true;
                    break;
                }
                i++;
            } else {
                break;
            }
        }
        return (!z || this.o0OO00O) ? 48 : 72;
    }

    private int getTabMinWidth() {
        int i = this.oo000o;
        if (i != -1) {
            return i;
        }
        if (this.o0Oo0oo == 0) {
            return this.o00oO0O;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.Ooooo0o.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i) {
        int childCount = this.Ooooo0o.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = this.Ooooo0o.getChildAt(i2);
                boolean z = true;
                childAt.setSelected(i2 == i);
                if (i2 != i) {
                    z = false;
                }
                childAt.setActivated(z);
                i2++;
            }
        }
    }

    public void OooO0O0(@NonNull OooO0OO oooO0OO) {
        if (this.o000000.contains(oooO0OO)) {
            return;
        }
        this.o000000.add(oooO0OO);
    }

    public void OooO0OO(@NonNull OooOOO0 oooOOO0) {
        OooO0o(oooOOO0, this.OoooOoO.isEmpty());
    }

    public void OooO0Oo(@NonNull OooOOO0 oooOOO0, int i) {
        OooO0o0(oooOOO0, i, this.OoooOoO.isEmpty());
    }

    public void OooO0o(@NonNull OooOOO0 oooOOO0, boolean z) {
        OooO0o0(oooOOO0, this.OoooOoO.size(), z);
    }

    public void OooO0o0(@NonNull OooOOO0 oooOOO0, int i, boolean z) {
        if (oooOOO0.OooO0oO != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        OooOOO(oooOOO0, i);
        OooO0oo(oooOOO0);
        if (z) {
            oooOOO0.OooOO0O();
        }
    }

    public void OooOOO0() {
        this.o000000.clear();
    }

    public OooOOO0 OooOOo0() {
        OooOOO0 oooOOO0Acquire = o000OO.acquire();
        return oooOOO0Acquire == null ? new OooOOO0() : oooOOO0Acquire;
    }

    @Nullable
    public OooOOO0 OooOo(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return this.OoooOoO.get(i);
    }

    @Dimension(unit = 1)
    public int OooOo0O(@Dimension(unit = 0) int i) {
        return Math.round(getResources().getDisplayMetrics().density * i);
    }

    public boolean OooOoO() {
        return this.o0OO00O;
    }

    public boolean OooOoO0() {
        return this.o0O0O00;
    }

    public boolean OooOoOO() {
        return this.oo0o0Oo;
    }

    public void OooOoo() {
        int currentItem;
        OooOooo();
        PagerAdapter pagerAdapter = this.o00000O0;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                OooO0o(OooOoo0().OooOo0(this.o00000O0.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.o00000;
            if (viewPager == null || count <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            Oooo0O0(OooOo(currentItem));
        }
    }

    @NonNull
    public OooOOO0 OooOoo0() {
        OooOOO0 OooOOo0 = OooOOo0();
        OooOOo0.OooO0oO = this;
        OooOOo0.OooO0oo = OooOOo(OooOOo0);
        return OooOOo0;
    }

    public boolean OooOooO(OooOOO0 oooOOO0) {
        return o000OO.release(oooOOO0);
    }

    public void OooOooo() {
        for (int childCount = this.Ooooo0o.getChildCount() - 1; childCount >= 0; childCount--) {
            Oooo0(childCount);
        }
        Iterator<OooOOO0> it = this.OoooOoO.iterator();
        while (it.hasNext()) {
            OooOOO0 next = it.next();
            it.remove();
            next.OooOO0();
            OooOooO(next);
        }
        this.OoooOoo = null;
    }

    public void Oooo(@Nullable ViewPager viewPager, boolean z) {
        OoooO00(viewPager, z, false);
    }

    public void Oooo000(@NonNull OooO0OO oooO0OO) {
        this.o000000.remove(oooO0OO);
    }

    public void Oooo00O(OooOOO0 oooOOO0) {
        if (oooOOO0.OooO0oO != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        Oooo00o(oooOOO0.OooO0o());
    }

    public void Oooo00o(int i) {
        OooOOO0 oooOOO0 = this.OoooOoo;
        int iOooO0o = oooOOO0 != null ? oooOOO0.OooO0o() : 0;
        Oooo0(i);
        OooOOO0 oooOOO0Remove = this.OoooOoO.remove(i);
        if (oooOOO0Remove != null) {
            oooOOO0Remove.OooOO0();
            OooOooO(oooOOO0Remove);
        }
        int size = this.OoooOoO.size();
        for (int i2 = i; i2 < size; i2++) {
            this.OoooOoO.get(i2).OooOOo(i2);
        }
        if (iOooO0o == i) {
            Oooo0O0(this.OoooOoO.isEmpty() ? null : this.OoooOoO.get(Math.max(0, i - 1)));
        }
    }

    public void Oooo0O0(OooOOO0 oooOOO0) {
        Oooo0OO(oooOOO0, true);
    }

    public void Oooo0OO(OooOOO0 oooOOO0, boolean z) {
        OooOOO0 oooOOO02 = this.OoooOoo;
        if (oooOOO02 == oooOOO0) {
            if (oooOOO02 != null) {
                OooOOoo(oooOOO0);
                OooOO0(oooOOO0.OooO0o());
                return;
            }
            return;
        }
        int iOooO0o = oooOOO0 != null ? oooOOO0.OooO0o() : -1;
        if (z) {
            if ((oooOOO02 == null || oooOOO02.OooO0o() == -1) && iOooO0o != -1) {
                Oooo0o(iOooO0o, 0.0f, true);
            } else {
                OooOO0(iOooO0o);
            }
            if (iOooO0o != -1) {
                setSelectedTabView(iOooO0o);
            }
        }
        this.OoooOoo = oooOOO0;
        if (oooOOO02 != null) {
            OooOo0(oooOOO02);
        }
        if (oooOOO0 != null) {
            OooOo00(oooOOO0);
        }
    }

    public void Oooo0o(int i, float f, boolean z) {
        Oooo0oO(i, f, z, true);
    }

    public void Oooo0o0(@Nullable PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.o00000O0;
        if (pagerAdapter2 != null && (dataSetObserver = this.o00000O) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.o00000O0 = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.o00000O == null) {
                this.o00000O = new OooOO0();
            }
            pagerAdapter.registerDataSetObserver(this.o00000O);
        }
        OooOoo();
    }

    public void Oooo0oO(int i, float f, boolean z, boolean z3) {
        int iRound = Math.round(i + f);
        if (iRound < 0 || iRound >= this.Ooooo0o.getChildCount()) {
            return;
        }
        if (z3) {
            this.Ooooo0o.OooO0o(i, f);
        }
        ValueAnimator valueAnimator = this.o000000o;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.o000000o.cancel();
        }
        scrollTo(OooOO0o(i, f), 0);
        if (z) {
            setSelectedTabView(iRound);
        }
    }

    public void Oooo0oo(int i, int i2) {
        setTabTextColors(OooOOOO(i, i2));
    }

    public void OoooO(boolean z) {
        for (int i = 0; i < this.Ooooo0o.getChildCount(); i++) {
            View childAt = this.Ooooo0o.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            OoooO0O((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        OooO(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        OooO(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        OooO(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        OooO(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        OooOOO0 oooOOO0 = this.OoooOoo;
        if (oooOOO0 != null) {
            return oooOOO0.OooO0o();
        }
        return -1;
    }

    public int getTabCount() {
        return this.OoooOoO.size();
    }

    public int getTabGravity() {
        return this.o0ooOOo;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.Ooooooo;
    }

    public int getTabIndicatorGravity() {
        return this.o0OOO0o;
    }

    public int getTabMaxWidth() {
        return this.o00ooo;
    }

    public int getTabMode() {
        return this.o0Oo0oo;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.o0OoOo0;
    }

    @Nullable
    public Drawable getTabSelectedIndicator() {
        return this.ooOO;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.OoooooO;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.o00000 == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                OoooO00((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.o00000o0) {
            setupWithViewPager(null);
            this.o00000o0 = false;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        for (int i = 0; i < this.Ooooo0o.getChildCount(); i++) {
            View childAt = this.Ooooo0o.getChildAt(i);
            if (childAt instanceof OooOo) {
                ((OooOo) childAt).OooO0o0(canvas);
            }
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0075  */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int iOooOo0O = OooOo0O(getDefaultHeight()) + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(iOooOo0O, View.MeasureSpec.getSize(i2)), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(iOooOo0O, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int iOooOo0O2 = this.o00oO0o;
            if (iOooOo0O2 <= 0) {
                iOooOo0O2 = size - OooOo0O(56);
            }
            this.o00ooo = iOooOo0O2;
        }
        super.onMeasure(i, i2);
        boolean z = true;
        if (getChildCount() == 1) {
            boolean z3 = false;
            View childAt = getChildAt(0);
            int i3 = this.o0Oo0oo;
            if (i3 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                }
                z3 = z;
            } else if (i3 == 1) {
                if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                    z = false;
                }
                z3 = z;
            }
            if (z3) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), HorizontalScrollView.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
    }

    public void setInlineLabel(boolean z) {
        if (this.o0OO00O != z) {
            this.o0OO00O = z;
            for (int i = 0; i < this.Ooooo0o.getChildCount(); i++) {
                View childAt = this.Ooooo0o.getChildAt(i);
                if (childAt instanceof OooOo) {
                    ((OooOo) childAt).OooOO0o();
                }
            }
            OooOO0O();
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OooO0OO oooO0OO) {
        OooO0OO oooO0OO2 = this.o000OOo;
        if (oooO0OO2 != null) {
            Oooo000(oooO0OO2);
        }
        this.o000OOo = oooO0OO;
        if (oooO0OO != null) {
            OooO0O0(oooO0OO);
        }
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        OooOo0o();
        this.o000000o.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        setSelectedTabIndicator(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (this.ooOO != drawable) {
            this.ooOO = drawable;
            ViewCompat.postInvalidateOnAnimation(this.Ooooo0o);
        }
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.Ooooo0o.OooO0oO(i);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.o0OOO0o != i) {
            this.o0OOO0o = i;
            ViewCompat.postInvalidateOnAnimation(this.Ooooo0o);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.Ooooo0o.OooO0oo(i);
    }

    public void setTabGravity(int i) {
        if (this.o0ooOOo != i) {
            this.o0ooOOo = i;
            OooOO0O();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.Ooooooo != colorStateList) {
            this.Ooooooo = colorStateList;
            OoooO0();
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.oo0o0Oo = z;
        ViewCompat.postInvalidateOnAnimation(this.Ooooo0o);
    }

    public void setTabMode(int i) {
        if (i != this.o0Oo0oo) {
            this.o0Oo0oo = i;
            OooOO0O();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.o0OoOo0 != colorStateList) {
            this.o0OoOo0 = colorStateList;
            for (int i = 0; i < this.Ooooo0o.getChildCount(); i++) {
                View childAt = this.Ooooo0o.getChildAt(i);
                if (childAt instanceof OooOo) {
                    ((OooOo) childAt).OooOO0O(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.OoooooO != colorStateList) {
            this.OoooooO = colorStateList;
            OoooO0();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        Oooo0o0(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.o0O0O00 != z) {
            this.o0O0O00 = z;
            for (int i = 0; i < this.Ooooo0o.getChildCount(); i++) {
                View childAt = this.Ooooo0o.getChildAt(i);
                if (childAt instanceof OooOo) {
                    ((OooOo) childAt).OooOO0O(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        Oooo(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }
}
