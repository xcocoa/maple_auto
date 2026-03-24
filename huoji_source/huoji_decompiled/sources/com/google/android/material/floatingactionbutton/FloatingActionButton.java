package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatImageHelper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TintableImageSourceView;
import com.google.android.material.R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.stateful.ExtendableSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import z2.bl;
import z2.gl;
import z2.hk;
import z2.jk;
import z2.kk;
import z2.lj;
import z2.lk;
import z2.pk;
import z2.xk;
import z2.yk;

/* JADX INFO: loaded from: classes2.dex */
@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class FloatingActionButton extends VisibilityAwareImageButton implements TintableBackgroundView, TintableImageSourceView, hk {
    public static final int o00oO0O = 0;
    public static final int o00oO0o = 1;
    private static final String o00ooo = "FloatingActionButton";
    public static final int o0ooOO0 = -1;
    public static final int o0ooOOo = 0;
    private static final int o0ooOoO = 470;
    private static final String oo000o = "expandableWidgetHelper";
    private ColorStateList OoooOoo;
    private PorterDuff.Mode Ooooo00;

    @Nullable
    private ColorStateList Ooooo0o;

    @Nullable
    private PorterDuff.Mode OooooO0;
    private int OooooOO;
    private ColorStateList OooooOo;
    private int Oooooo;
    private int Oooooo0;
    private int OoooooO;
    private int Ooooooo;
    private final Rect o00O0O;
    private final AppCompatImageHelper o00Oo0;
    private final jk o00Ooo;
    private kk o00o0O;
    public boolean o0OoOo0;
    public final Rect ooOO;

    public static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {
        private static final boolean OooO0Oo = true;
        private Rect OooO00o;
        private OooO0O0 OooO0O0;
        private boolean OooO0OO;

        public BaseBehavior() {
            this.OooO0OO = true;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
            this.OooO0OO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        private boolean OooO(View view, FloatingActionButton floatingActionButton) {
            return this.OooO0OO && ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).getAnchorId() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        private static boolean OooO0OO(@NonNull View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                return ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private void OooO0Oo(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.ooOO;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams();
            int i = 0;
            int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) {
                i = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) {
                i = -rect.top;
            }
            if (i != 0) {
                ViewCompat.offsetTopAndBottom(floatingActionButton, i);
            }
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(floatingActionButton, i2);
            }
        }

        private boolean OooOO0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!OooO(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.OooO00o == null) {
                this.OooO00o = new Rect();
            }
            Rect rect = this.OooO00o;
            pk.OooO00o(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.OooOOOO(this.OooO0O0, false);
                return true;
            }
            floatingActionButton.OooOoO0(this.OooO0O0, false);
            return true;
        }

        private boolean OooOO0O(View view, FloatingActionButton floatingActionButton) {
            if (!OooO(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.OooOOOO(this.OooO0O0, false);
                return true;
            }
            floatingActionButton.OooOoO0(this.OooO0O0, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            Rect rect2 = floatingActionButton.ooOO;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        public boolean OooO0O0() {
            return this.OooO0OO;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> dependencies = coordinatorLayout.getDependencies(floatingActionButton);
            int size = dependencies.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = dependencies.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (OooO0OO(view) && OooOO0O(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (OooOO0(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.onLayoutChild(floatingActionButton, i);
            OooO0Oo(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                OooOO0(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!OooO0OO(view)) {
                return false;
            }
            OooOO0O(view, floatingActionButton);
            return false;
        }

        public void OooO0oO(boolean z) {
            this.OooO0OO = z;
        }

        @VisibleForTesting
        public void OooO0oo(OooO0O0 oooO0O0) {
            this.OooO0O0 = oooO0O0;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            if (layoutParams.dodgeInsetEdges == 0) {
                layoutParams.dodgeInsetEdges = 80;
            }
        }
    }

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: OooO00o */
        public /* bridge */ /* synthetic */ boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull Rect rect) {
            return super.getInsetDodgeRect(coordinatorLayout, floatingActionButton, rect);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ boolean OooO0O0() {
            return super.OooO0O0();
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: OooO0o */
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            return super.onLayoutChild(coordinatorLayout, floatingActionButton, i);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        /* JADX INFO: renamed from: OooO0o0 */
        public /* bridge */ /* synthetic */ boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            return super.onDependentViewChanged(coordinatorLayout, floatingActionButton, view);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        public /* bridge */ /* synthetic */ void OooO0oO(boolean z) {
            super.OooO0oO(z);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior
        @VisibleForTesting
        public /* bridge */ /* synthetic */ void OooO0oo(OooO0O0 oooO0O0) {
            super.OooO0oo(oooO0O0);
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
            super.onAttachedToLayoutParams(layoutParams);
        }
    }

    public class OooO00o implements kk.OooOO0O {
        public final /* synthetic */ OooO0O0 OooO00o;

        public OooO00o(OooO0O0 oooO0O0) {
            this.OooO00o = oooO0O0;
        }

        @Override // z2.kk.OooOO0O
        public void OooO00o() {
            this.OooO00o.OooO0O0(FloatingActionButton.this);
        }

        @Override // z2.kk.OooOO0O
        public void OooO0O0() {
            this.OooO00o.OooO00o(FloatingActionButton.this);
        }
    }

    public static abstract class OooO0O0 {
        public void OooO00o(FloatingActionButton floatingActionButton) {
        }

        public void OooO0O0(FloatingActionButton floatingActionButton) {
        }
    }

    public class OooO0OO implements gl {
        public OooO0OO() {
        }

        @Override // z2.gl
        public boolean OooO00o() {
            return FloatingActionButton.this.o0OoOo0;
        }

        @Override // z2.gl
        public float OooO0O0() {
            return FloatingActionButton.this.getSizeDimension() / 2.0f;
        }

        @Override // z2.gl
        public void setBackgroundDrawable(Drawable drawable) {
            FloatingActionButton.super.setBackgroundDrawable(drawable);
        }

        @Override // z2.gl
        public void setShadowPadding(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.ooOO.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.OoooooO, i2 + FloatingActionButton.this.OoooooO, i3 + FloatingActionButton.this.OoooooO, i4 + FloatingActionButton.this.OoooooO);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OooO0o {
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ooOO = new Rect();
        this.o00O0O = new Rect();
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.FloatingActionButton, i, R.style.Widget_Design_FloatingActionButton, new int[0]);
        this.OoooOoo = bl.OooO00o(context, typedArrayOooOO0, R.styleable.FloatingActionButton_backgroundTint);
        this.Ooooo00 = yk.OooO0O0(typedArrayOooOO0.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
        this.OooooOo = bl.OooO00o(context, typedArrayOooOO0, R.styleable.FloatingActionButton_rippleColor);
        this.Oooooo0 = typedArrayOooOO0.getInt(R.styleable.FloatingActionButton_fabSize, -1);
        this.Oooooo = typedArrayOooOO0.getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
        this.OooooOO = typedArrayOooOO0.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
        float dimension = typedArrayOooOO0.getDimension(R.styleable.FloatingActionButton_elevation, 0.0f);
        float dimension2 = typedArrayOooOO0.getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0f);
        float dimension3 = typedArrayOooOO0.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0f);
        this.o0OoOo0 = typedArrayOooOO0.getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
        this.Ooooooo = typedArrayOooOO0.getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0);
        lj ljVarOooO0O0 = lj.OooO0O0(context, typedArrayOooOO0, R.styleable.FloatingActionButton_showMotionSpec);
        lj ljVarOooO0O02 = lj.OooO0O0(context, typedArrayOooOO0, R.styleable.FloatingActionButton_hideMotionSpec);
        typedArrayOooOO0.recycle();
        AppCompatImageHelper appCompatImageHelper = new AppCompatImageHelper(this);
        this.o00Oo0 = appCompatImageHelper;
        appCompatImageHelper.loadFromAttributes(attributeSet, i);
        this.o00Ooo = new jk(this);
        getImpl().Oooo00o(this.OoooOoo, this.Ooooo00, this.OooooOo, this.OooooOO);
        getImpl().Oooo0OO(dimension);
        getImpl().Oooo0o(dimension2);
        getImpl().Oooo(dimension3);
        getImpl().Oooo0oo(this.Ooooooo);
        getImpl().OoooO0(ljVarOooO0O0);
        getImpl().Oooo0o0(ljVarOooO0O02);
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private kk OooO() {
        return Build.VERSION.SDK_INT >= 21 ? new lk(this, new OooO0OO()) : new kk(this, new OooO0OO());
    }

    private int OooOO0o(int i) {
        int i2 = this.Oooooo;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return resources.getDimensionPixelSize(i != 1 ? R.dimen.design_fab_size_normal : R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < o0ooOoO ? OooOO0o(1) : OooOO0o(0);
    }

    private void OooOOo(@NonNull Rect rect) {
        int i = rect.left;
        Rect rect2 = this.ooOO;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    private void OooOOoo() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.Ooooo0o;
        if (colorStateList == null) {
            DrawableCompat.clearColorFilter(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.OooooO0;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(colorForState, mode));
    }

    private static int OooOo0O(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i, size);
        }
        if (mode == 0) {
            return i;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    @Nullable
    private kk.OooOO0O OooOoO(@Nullable OooO0O0 oooO0O0) {
        if (oooO0O0 == null) {
            return null;
        }
        return new OooO00o(oooO0O0);
    }

    private kk getImpl() {
        if (this.o00o0O == null) {
            this.o00o0O = OooO();
        }
        return this.o00o0O;
    }

    @Override // z2.ik
    public boolean OooO00o(boolean z) {
        return this.o00Ooo.OooO0o(z);
    }

    @Override // z2.ik
    public boolean OooO0O0() {
        return this.o00Ooo.OooO0OO();
    }

    public void OooO0o(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().OooO00o(animatorListener);
    }

    public void OooO0oO(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().OooO0O0(animatorListener);
    }

    public void OooO0oo() {
        setCustomSize(0);
    }

    @Deprecated
    public boolean OooOO0(@NonNull Rect rect) {
        if (!ViewCompat.isLaidOut(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        OooOOo(rect);
        return true;
    }

    public void OooOO0O(@NonNull Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        OooOOo(rect);
    }

    public void OooOOO(@Nullable OooO0O0 oooO0O0) {
        OooOOOO(oooO0O0, true);
    }

    public void OooOOO0() {
        OooOOO(null);
    }

    public void OooOOOO(@Nullable OooO0O0 oooO0O0, boolean z) {
        getImpl().OooOOo(OooOoO(oooO0O0), z);
    }

    public boolean OooOOOo() {
        return getImpl().OooOOoo();
    }

    public boolean OooOOo0() {
        return getImpl().OooOo00();
    }

    public void OooOo(@Nullable OooO0O0 oooO0O0) {
        OooOoO0(oooO0O0, true);
    }

    public void OooOo0(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().Oooo000(animatorListener);
    }

    public void OooOo00(@NonNull Animator.AnimatorListener animatorListener) {
        getImpl().OooOooo(animatorListener);
    }

    public void OooOo0o() {
        OooOo(null);
    }

    public void OooOoO0(OooO0O0 oooO0O0, boolean z) {
        getImpl().OoooO(OooOoO(oooO0O0), z);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().OooOoOO(getDrawableState());
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return this.OoooOoo;
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.Ooooo00;
    }

    public float getCompatElevation() {
        return getImpl().OooOO0o();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().OooOOO();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().OooOOOo();
    }

    @NonNull
    public Drawable getContentBackground() {
        return getImpl().OooO();
    }

    @Px
    public int getCustomSize() {
        return this.Oooooo;
    }

    @Override // z2.hk
    public int getExpandedComponentIdHint() {
        return this.o00Ooo.OooO0O0();
    }

    public lj getHideMotionSpec() {
        return getImpl().OooOOO0();
    }

    @ColorInt
    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.OooooOo;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    @Nullable
    public ColorStateList getRippleColorStateList() {
        return this.OooooOo;
    }

    public lj getShowMotionSpec() {
        return getImpl().OooOOo0();
    }

    public int getSize() {
        return this.Oooooo0;
    }

    public int getSizeDimension() {
        return OooOO0o(this.Oooooo0);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public ColorStateList getSupportImageTintList() {
        return this.Ooooo0o;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    @Nullable
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.OooooO0;
    }

    public boolean getUseCompatPadding() {
        return this.o0OoOo0;
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().OooOo0();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().OooOo();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().OooOoO();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.OoooooO = (sizeDimension - this.Ooooooo) / 2;
        getImpl().OoooOOO();
        int iMin = Math.min(OooOo0O(sizeDimension, i), OooOo0O(sizeDimension, i2));
        Rect rect = this.ooOO;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.getSuperState());
        this.o00Ooo.OooO0Oo(extendableSavedState.extendableStates.get(oo000o));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(super.onSaveInstanceState());
        extendableSavedState.extendableStates.put(oo000o, this.o00Ooo.OooO0o0());
        return extendableSavedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && OooOO0(this.o00O0O) && !this.o00O0O.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i(o00ooo, "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i(o00ooo, "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i(o00ooo, "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (this.OoooOoo != colorStateList) {
            this.OoooOoo = colorStateList;
            getImpl().Oooo0(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.Ooooo00 != mode) {
            this.Ooooo00 = mode;
            getImpl().Oooo0O0(mode);
        }
    }

    public void setCompatElevation(float f) {
        getImpl().Oooo0OO(f);
    }

    public void setCompatElevationResource(@DimenRes int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().Oooo0o(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(@DimenRes int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().Oooo(f);
    }

    public void setCompatPressedTranslationZResource(@DimenRes int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        this.Oooooo = i;
    }

    @Override // z2.hk
    public void setExpandedComponentIdHint(@IdRes int i) {
        this.o00Ooo.OooO0oO(i);
    }

    public void setHideMotionSpec(lj ljVar) {
        getImpl().Oooo0o0(ljVar);
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        setHideMotionSpec(lj.OooO0OO(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        getImpl().o000oOoO();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        this.o00Oo0.setImageResource(i);
    }

    public void setRippleColor(@ColorInt int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.OooooOo != colorStateList) {
            this.OooooOo = colorStateList;
            getImpl().OoooO00(this.OooooOo);
        }
    }

    public void setShowMotionSpec(lj ljVar) {
        getImpl().OoooO0(ljVar);
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        setShowMotionSpec(lj.OooO0OO(getContext(), i));
    }

    public void setSize(int i) {
        this.Oooooo = 0;
        if (i != this.Oooooo0) {
            this.Oooooo0 = i;
            requestLayout();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(@Nullable ColorStateList colorStateList) {
        if (this.Ooooo0o != colorStateList) {
            this.Ooooo0o = colorStateList;
            OooOOoo();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.OooooO0 != mode) {
            this.OooooO0 = mode;
            OooOOoo();
        }
    }

    public void setUseCompatPadding(boolean z) {
        if (this.o0OoOo0 != z) {
            this.o0OoOo0 = z;
            getImpl().OooOoO0();
        }
    }
}
