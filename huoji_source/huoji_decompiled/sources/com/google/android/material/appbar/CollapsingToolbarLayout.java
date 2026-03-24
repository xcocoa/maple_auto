package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import z2.ej;
import z2.ok;
import z2.pk;
import z2.rj;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    private static final int o0ooOoO = 600;
    private boolean OoooOoO;
    private int OoooOoo;
    private Toolbar Ooooo00;
    private View Ooooo0o;
    private View OooooO0;
    private int OooooOO;
    private int OooooOo;
    private int Oooooo;
    private int Oooooo0;
    private final Rect OoooooO;
    public final ok Ooooooo;
    private Drawable o00O0O;
    public Drawable o00Oo0;
    private int o00Ooo;
    private boolean o00o0O;
    private AppBarLayout.OooO0o o00oO0O;
    private int o00oO0o;
    private ValueAnimator o00ooo;
    private boolean o0OoOo0;
    public int o0ooOO0;
    public WindowInsetsCompat o0ooOOo;
    private long oo000o;
    private boolean ooOO;

    public class OooO00o implements OnApplyWindowInsetsListener {
        public OooO00o() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CollapsingToolbarLayout.this.OooOO0O(windowInsetsCompat);
        }
    }

    public class OooO0O0 implements ValueAnimator.AnimatorUpdateListener {
        public OooO0O0() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public static class OooO0OO extends FrameLayout.LayoutParams {
        private static final float OooO0OO = 0.5f;
        public static final int OooO0Oo = 0;
        public static final int OooO0o = 2;
        public static final int OooO0o0 = 1;
        public int OooO00o;
        public float OooO0O0;

        public OooO0OO(int i, int i2) {
            super(i, i2);
            this.OooO00o = 0;
            this.OooO0O0 = 0.5f;
        }

        public OooO0OO(int i, int i2, int i3) {
            super(i, i2, i3);
            this.OooO00o = 0;
            this.OooO0O0 = 0.5f;
        }

        public OooO0OO(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.OooO00o = 0;
            this.OooO0O0 = 0.5f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
            this.OooO00o = typedArrayObtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            OooO0Oo(typedArrayObtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            typedArrayObtainStyledAttributes.recycle();
        }

        public OooO0OO(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.OooO00o = 0;
            this.OooO0O0 = 0.5f;
        }

        public OooO0OO(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.OooO00o = 0;
            this.OooO0O0 = 0.5f;
        }

        @RequiresApi(19)
        public OooO0OO(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.OooO00o = 0;
            this.OooO0O0 = 0.5f;
        }

        public int OooO00o() {
            return this.OooO00o;
        }

        public float OooO0O0() {
            return this.OooO0O0;
        }

        public void OooO0OO(int i) {
            this.OooO00o = i;
        }

        public void OooO0Oo(float f) {
            this.OooO0O0 = f;
        }
    }

    public class OooO0o implements AppBarLayout.OooO0o {
        public OooO0o() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OooO0o, com.google.android.material.appbar.AppBarLayout.OooO0O0
        public void OooO00o(AppBarLayout appBarLayout, int i) {
            int iClamp;
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.o0ooOO0 = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.o0ooOOo;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
                rj rjVarOooO0oo = CollapsingToolbarLayout.OooO0oo(childAt);
                int i3 = oooO0OO.OooO00o;
                if (i3 == 1) {
                    iClamp = MathUtils.clamp(-i, 0, CollapsingToolbarLayout.this.OooO0oO(childAt));
                } else if (i3 == 2) {
                    iClamp = Math.round((-i) * oooO0OO.OooO0O0);
                }
                rjVarOooO0oo.OooO0oO(iClamp);
            }
            CollapsingToolbarLayout.this.OooOOOo();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.o00Oo0 != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.Ooooooo.OoooO(Math.abs(i) / ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = true;
        this.OoooooO = new Rect();
        this.o00oO0o = -1;
        ok okVar = new ok(this);
        this.Ooooooo = okVar;
        okVar.OoooOo0(ej.OooO0o0);
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.CollapsingToolbarLayout, i, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        okVar.OoooO00(typedArrayOooOO0.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        okVar.Oooo0OO(typedArrayOooOO0.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = typedArrayOooOO0.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.Oooooo = dimensionPixelSize;
        this.Oooooo0 = dimensionPixelSize;
        this.OooooOo = dimensionPixelSize;
        this.OooooOO = dimensionPixelSize;
        int i2 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart;
        if (typedArrayOooOO0.hasValue(i2)) {
            this.OooooOO = typedArrayOooOO0.getDimensionPixelSize(i2, 0);
        }
        int i3 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd;
        if (typedArrayOooOO0.hasValue(i3)) {
            this.Oooooo0 = typedArrayOooOO0.getDimensionPixelSize(i3, 0);
        }
        int i4 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop;
        if (typedArrayOooOO0.hasValue(i4)) {
            this.OooooOo = typedArrayOooOO0.getDimensionPixelSize(i4, 0);
        }
        int i5 = R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom;
        if (typedArrayOooOO0.hasValue(i5)) {
            this.Oooooo = typedArrayOooOO0.getDimensionPixelSize(i5, 0);
        }
        this.o0OoOo0 = typedArrayOooOO0.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(typedArrayOooOO0.getText(R.styleable.CollapsingToolbarLayout_title));
        okVar.Oooo0oo(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        okVar.Oooo0(androidx.appcompat.R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        int i6 = R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance;
        if (typedArrayOooOO0.hasValue(i6)) {
            okVar.Oooo0oo(typedArrayOooOO0.getResourceId(i6, 0));
        }
        int i7 = R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance;
        if (typedArrayOooOO0.hasValue(i7)) {
            okVar.Oooo0(typedArrayOooOO0.getResourceId(i7, 0));
        }
        this.o00oO0o = typedArrayOooOO0.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.oo000o = typedArrayOooOO0.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, o0ooOoO);
        setContentScrim(typedArrayOooOO0.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(typedArrayOooOO0.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
        this.OoooOoo = typedArrayOooOO0.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        typedArrayOooOO0.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OooO00o());
    }

    private void OooO00o(int i) {
        OooO0O0();
        ValueAnimator valueAnimator = this.o00ooo;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.o00ooo = valueAnimator2;
            valueAnimator2.setDuration(this.oo000o);
            this.o00ooo.setInterpolator(i > this.o00Ooo ? ej.OooO0OO : ej.OooO0Oo);
            this.o00ooo.addUpdateListener(new OooO0O0());
        } else if (valueAnimator.isRunning()) {
            this.o00ooo.cancel();
        }
        this.o00ooo.setIntValues(this.o00Ooo, i);
        this.o00ooo.start();
    }

    private void OooO0O0() {
        if (this.OoooOoO) {
            Toolbar toolbar = null;
            this.Ooooo00 = null;
            this.Ooooo0o = null;
            int i = this.OoooOoo;
            if (i != -1) {
                Toolbar toolbar2 = (Toolbar) findViewById(i);
                this.Ooooo00 = toolbar2;
                if (toolbar2 != null) {
                    this.Ooooo0o = OooO0OO(toolbar2);
                }
            }
            if (this.Ooooo00 == null) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i2);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i2++;
                }
                this.Ooooo00 = toolbar;
            }
            OooOOOO();
            this.OoooOoO = false;
        }
    }

    private View OooO0OO(View view) {
        for (ViewParent parent = view.getParent(); parent != this && parent != null; parent = parent.getParent()) {
            if (parent instanceof View) {
                view = parent;
            }
        }
        return view;
    }

    private static int OooO0o(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public static rj OooO0oo(View view) {
        int i = R.id.view_offset_helper;
        rj rjVar = (rj) view.getTag(i);
        if (rjVar != null) {
            return rjVar;
        }
        rj rjVar2 = new rj(view);
        view.setTag(i, rjVar2);
        return rjVar2;
    }

    private boolean OooOO0(View view) {
        View view2 = this.Ooooo0o;
        if (view2 == null || view2 == this) {
            if (view == this.Ooooo00) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    private void OooOOO() {
        setContentDescription(getTitle());
    }

    private void OooOOOO() {
        View view;
        if (!this.o0OoOo0 && (view = this.OooooO0) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.OooooO0);
            }
        }
        if (!this.o0OoOo0 || this.Ooooo00 == null) {
            return;
        }
        if (this.OooooO0 == null) {
            this.OooooO0 = new View(getContext());
        }
        if (this.OooooO0.getParent() == null) {
            this.Ooooo00.addView(this.OooooO0, -1, -1);
        }
    }

    public boolean OooO() {
        return this.o0OoOo0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public OooO0OO generateDefaultLayoutParams() {
        return new OooO0OO(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new OooO0OO(layoutParams);
    }

    public final int OooO0oO(View view) {
        return ((getHeight() - OooO0oo(view).OooO0O0()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((OooO0OO) view.getLayoutParams())).bottomMargin;
    }

    public WindowInsetsCompat OooOO0O(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.o0ooOOo, windowInsetsCompat2)) {
            this.o0ooOOo = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    public void OooOO0o(int i, int i2, int i3, int i4) {
        this.OooooOO = i;
        this.OooooOo = i2;
        this.Oooooo0 = i3;
        this.Oooooo = i4;
        requestLayout();
    }

    public void OooOOO0(boolean z, boolean z3) {
        if (this.o00o0O != z) {
            if (z3) {
                OooO00o(z ? 255 : 0);
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.o00o0O = z;
        }
    }

    public final void OooOOOo() {
        if (this.o00O0O == null && this.o00Oo0 == null) {
            return;
        }
        setScrimsShown(getHeight() + this.o0ooOO0 < getScrimVisibleHeightTrigger());
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof OooO0OO;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        OooO0O0();
        if (this.Ooooo00 == null && (drawable = this.o00O0O) != null && this.o00Ooo > 0) {
            drawable.mutate().setAlpha(this.o00Ooo);
            this.o00O0O.draw(canvas);
        }
        if (this.o0OoOo0 && this.ooOO) {
            this.Ooooooo.OooO(canvas);
        }
        if (this.o00Oo0 == null || this.o00Ooo <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.o0ooOOo;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.o00Oo0.setBounds(0, -this.o0ooOO0, getWidth(), systemWindowInsetTop - this.o0ooOO0);
            this.o00Oo0.mutate().setAlpha(this.o00Ooo);
            this.o00Oo0.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        if (this.o00O0O == null || this.o00Ooo <= 0 || !OooOO0(view)) {
            z = false;
        } else {
            this.o00O0O.mutate().setAlpha(this.o00Ooo);
            this.o00O0O.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.o00Oo0;
        boolean zOoooOOO = false;
        if (drawable != null && drawable.isStateful()) {
            zOoooOOO = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.o00O0O;
        if (drawable2 != null && drawable2.isStateful()) {
            zOoooOOO |= drawable2.setState(drawableState);
        }
        ok okVar = this.Ooooooo;
        if (okVar != null) {
            zOoooOOO |= okVar.OoooOOO(drawableState);
        }
        if (zOoooOOO) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new OooO0OO(getContext(), attributeSet);
    }

    public int getCollapsedTitleGravity() {
        return this.Ooooooo.OooOOO0();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.Ooooooo.OooOOOo();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.o00O0O;
    }

    public int getExpandedTitleGravity() {
        return this.Ooooooo.OooOo00();
    }

    public int getExpandedTitleMarginBottom() {
        return this.Oooooo;
    }

    public int getExpandedTitleMarginEnd() {
        return this.Oooooo0;
    }

    public int getExpandedTitleMarginStart() {
        return this.OooooOO;
    }

    public int getExpandedTitleMarginTop() {
        return this.OooooOo;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.Ooooooo.OooOo0O();
    }

    public int getScrimAlpha() {
        return this.o00Ooo;
    }

    public long getScrimAnimationDuration() {
        return this.oo000o;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.o00oO0o;
        if (i >= 0) {
            return i;
        }
        WindowInsetsCompat windowInsetsCompat = this.o0ooOOo;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.o00Oo0;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.o0OoOo0) {
            return this.Ooooooo.OooOo();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View) parent));
            if (this.o00oO0O == null) {
                this.o00oO0O = new OooO0o();
            }
            ((AppBarLayout) parent).OooO0O0(this.o00oO0O);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OooO0o oooO0o = this.o00oO0O;
        if (oooO0o != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).OooOOO(oooO0o);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view;
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.o0ooOOo;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        if (this.o0OoOo0 && (view = this.OooooO0) != null) {
            boolean z3 = ViewCompat.isAttachedToWindow(view) && this.OooooO0.getVisibility() == 0;
            this.ooOO = z3;
            if (z3) {
                boolean z4 = ViewCompat.getLayoutDirection(this) == 1;
                View view2 = this.Ooooo0o;
                if (view2 == null) {
                    view2 = this.Ooooo00;
                }
                int iOooO0oO = OooO0oO(view2);
                pk.OooO00o(this, this.OooooO0, this.OoooooO);
                ok okVar = this.Ooooooo;
                int i6 = this.OoooooO.left;
                Toolbar toolbar = this.Ooooo00;
                int titleMarginEnd = i6 + (z4 ? toolbar.getTitleMarginEnd() : toolbar.getTitleMarginStart());
                int titleMarginTop = this.OoooooO.top + iOooO0oO + this.Ooooo00.getTitleMarginTop();
                int i7 = this.OoooooO.right;
                Toolbar toolbar2 = this.Ooooo00;
                okVar.Oooo00o(titleMarginEnd, titleMarginTop, i7 + (z4 ? toolbar2.getTitleMarginStart() : toolbar2.getTitleMarginEnd()), (this.OoooooO.bottom + iOooO0oO) - this.Ooooo00.getTitleMarginBottom());
                this.Ooooooo.Oooo0oO(z4 ? this.Oooooo0 : this.OooooOO, this.OoooooO.top + this.OooooOo, (i3 - i) - (z4 ? this.OooooOO : this.Oooooo0), (i4 - i2) - this.Oooooo);
                this.Ooooooo.Oooo000();
            }
        }
        int childCount2 = getChildCount();
        for (int i8 = 0; i8 < childCount2; i8++) {
            OooO0oo(getChildAt(i8)).OooO0o0();
        }
        if (this.Ooooo00 != null) {
            if (this.o0OoOo0 && TextUtils.isEmpty(this.Ooooooo.OooOo())) {
                setTitle(this.Ooooo00.getTitle());
            }
            View view3 = this.Ooooo0o;
            if (view3 == null || view3 == this) {
                view3 = this.Ooooo00;
            }
            setMinimumHeight(OooO0o(view3));
        }
        OooOOOo();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        OooO0O0();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.o0ooOOo;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (mode != 0 || systemWindowInsetTop <= 0) {
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.o00O0O;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.Ooooooo.Oooo0OO(i);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i) {
        this.Ooooooo.Oooo0(i);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.Ooooooo.Oooo0O0(colorStateList);
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.Ooooooo.Oooo0o(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.o00O0O;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.o00O0O = drawableMutate;
            if (drawableMutate != null) {
                drawableMutate.setBounds(0, 0, getWidth(), getHeight());
                this.o00O0O.setCallback(this);
                this.o00O0O.setAlpha(this.o00Ooo);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(@DrawableRes int i) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setExpandedTitleColor(@ColorInt int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.Ooooooo.OoooO00(i);
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.Oooooo = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.Oooooo0 = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.OooooOO = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.OooooOo = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i) {
        this.Ooooooo.Oooo0oo(i);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.Ooooooo.Oooo(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.Ooooooo.OoooO0O(typeface);
    }

    public void setScrimAlpha(int i) {
        Toolbar toolbar;
        if (i != this.o00Ooo) {
            if (this.o00O0O != null && (toolbar = this.Ooooo00) != null) {
                ViewCompat.postInvalidateOnAnimation(toolbar);
            }
            this.o00Ooo = i;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j) {
        this.oo000o = j;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i) {
        if (this.o00oO0o != i) {
            this.o00oO0o = i;
            OooOOOo();
        }
    }

    public void setScrimsShown(boolean z) {
        OooOOO0(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.o00Oo0;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.o00Oo0 = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.o00Oo0.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.o00Oo0, ViewCompat.getLayoutDirection(this));
                this.o00Oo0.setVisible(getVisibility() == 0, false);
                this.o00Oo0.setCallback(this);
                this.o00Oo0.setAlpha(this.o00Ooo);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(@DrawableRes int i) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.Ooooooo.OoooOOo(charSequence);
        OooOOO();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.o0OoOo0) {
            this.o0OoOo0 = z;
            OooOOO();
            OooOOOO();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.o00Oo0;
        if (drawable != null && drawable.isVisible() != z) {
            this.o00Oo0.setVisible(z, false);
        }
        Drawable drawable2 = this.o00O0O;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.o00O0O.setVisible(z, false);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.o00O0O || drawable == this.o00Oo0;
    }
}
