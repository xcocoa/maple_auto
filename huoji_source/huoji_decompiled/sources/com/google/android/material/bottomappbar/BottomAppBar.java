package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import z2.bl;
import z2.ej;
import z2.ll;
import z2.ol;
import z2.tj;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {
    private static final long Ooooooo = 300;
    public static final int o0OoOo0 = 0;
    public static final int ooOO = 1;
    private final int OoooOoO;
    private final ll OoooOoo;
    private final tj Ooooo00;

    @Nullable
    private Animator Ooooo0o;

    @Nullable
    private Animator OooooO0;

    @Nullable
    private Animator OooooOO;
    private int OooooOo;
    private boolean Oooooo;
    private boolean Oooooo0;
    public AnimatorListenerAdapter OoooooO;

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        private final Rect OooO0oo;

        public Behavior() {
            this.OooO0oo = new Rect();
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.OooO0oo = new Rect();
        }

        private boolean OooO(FloatingActionButton floatingActionButton, BottomAppBar bottomAppBar) {
            ((CoordinatorLayout.LayoutParams) floatingActionButton.getLayoutParams()).anchorGravity = 17;
            bottomAppBar.OooOOOo(floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            FloatingActionButton floatingActionButtonOooOo0o = bottomAppBar.OooOo0o();
            if (floatingActionButtonOooOo0o != null) {
                OooO(floatingActionButtonOooOo0o, bottomAppBar);
                floatingActionButtonOooOo0o.OooOO0O(this.OooO0oo);
                bottomAppBar.setFabDiameter(this.OooO0oo.height());
            }
            if (!bottomAppBar.OooOoO()) {
                bottomAppBar.Oooo00O();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        /* JADX INFO: renamed from: OooO0oO, reason: merged with bridge method [inline-methods] */
        public void OooO0OO(BottomAppBar bottomAppBar) {
            super.OooO0OO(bottomAppBar);
            FloatingActionButton floatingActionButtonOooOo0o = bottomAppBar.OooOo0o();
            if (floatingActionButtonOooOo0o != null) {
                floatingActionButtonOooOo0o.OooOO0(this.OooO0oo);
                float measuredHeight = floatingActionButtonOooOo0o.getMeasuredHeight() - this.OooO0oo.height();
                floatingActionButtonOooOo0o.clearAnimation();
                floatingActionButtonOooOo0o.animate().translationY((-floatingActionButtonOooOo0o.getPaddingBottom()) + measuredHeight).setInterpolator(ej.OooO0OO).setDuration(175L);
            }
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior
        /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
        public void OooO0Oo(BottomAppBar bottomAppBar) {
            super.OooO0Oo(bottomAppBar);
            FloatingActionButton floatingActionButtonOooOo0o = bottomAppBar.OooOo0o();
            if (floatingActionButtonOooOo0o != null) {
                floatingActionButtonOooOo0o.clearAnimation();
                floatingActionButtonOooOo0o.animate().translationY(bottomAppBar.getFabTranslationY()).setInterpolator(ej.OooO0Oo).setDuration(225L);
            }
        }
    }

    public class OooO extends AnimatorListenerAdapter {
        public OooO() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.Ooooo0o = null;
        }
    }

    public class OooO00o extends AnimatorListenerAdapter {
        public OooO00o() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.OooooO0 = null;
        }
    }

    public class OooO0O0 implements ValueAnimator.AnimatorUpdateListener {
        public OooO0O0() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BottomAppBar.this.Ooooo00.OooOO0O(((Float) valueAnimator.getAnimatedValue()).floatValue());
            BottomAppBar.this.OoooOoo.invalidateSelf();
        }
    }

    public class OooO0OO extends AnimatorListenerAdapter {
        public OooO0OO() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.OooooOO = null;
        }
    }

    public class OooO0o extends AnimatorListenerAdapter {
        public boolean OooO00o;
        public final /* synthetic */ ActionMenuView OooO0O0;
        public final /* synthetic */ int OooO0OO;
        public final /* synthetic */ boolean OooO0Oo;

        public OooO0o(ActionMenuView actionMenuView, int i, boolean z) {
            this.OooO0O0 = actionMenuView;
            this.OooO0OO = i;
            this.OooO0Oo = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.OooO00o = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.OooO00o) {
                return;
            }
            BottomAppBar.this.Oooo00o(this.OooO0O0, this.OooO0OO, this.OooO0Oo);
        }
    }

    public class OooOO0 implements ValueAnimator.AnimatorUpdateListener {
        public OooOO0() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BottomAppBar.this.OoooOoo.OooOo0o(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public class OooOO0O extends AnimatorListenerAdapter {
        public OooOO0O() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.OooOoo0(bottomAppBar.Oooooo);
            BottomAppBar bottomAppBar2 = BottomAppBar.this;
            bottomAppBar2.OooOoo(bottomAppBar2.OooooOo, BottomAppBar.this.Oooooo);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OooOOO0 {
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public int fabAlignmentMode;
        public boolean fabAttached;

        public static class OooO00o implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.fabAlignmentMode = parcel.readInt();
            this.fabAttached = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.fabAlignmentMode);
            parcel.writeInt(this.fabAttached ? 1 : 0);
        }
    }

    public BottomAppBar(Context context) {
        this(context, null, 0);
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    public BottomAppBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Oooooo = true;
        this.OoooooO = new OooOO0O();
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.BottomAppBar, i, R.style.Widget_MaterialComponents_BottomAppBar, new int[0]);
        ColorStateList colorStateListOooO00o = bl.OooO00o(context, typedArrayOooOO0, R.styleable.BottomAppBar_backgroundTint);
        float dimensionPixelOffset = typedArrayOooOO0.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayOooOO0.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayOooOO0.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.OooooOo = typedArrayOooOO0.getInt(R.styleable.BottomAppBar_fabAlignmentMode, 0);
        this.Oooooo0 = typedArrayOooOO0.getBoolean(R.styleable.BottomAppBar_hideOnScroll, false);
        typedArrayOooOO0.recycle();
        this.OoooOoO = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        tj tjVar = new tj(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.Ooooo00 = tjVar;
        ol olVar = new ol();
        olVar.OooOOo(tjVar);
        ll llVar = new ll(olVar);
        this.OoooOoo = llVar;
        llVar.OooOoo0(true);
        llVar.OooOo(Paint.Style.FILL);
        DrawableCompat.setTintList(llVar, colorStateListOooO00o);
        ViewCompat.setBackground(this, llVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOOOo(@NonNull FloatingActionButton floatingActionButton) {
        OooOooo(floatingActionButton);
        floatingActionButton.OooO0o(this.OoooooO);
        floatingActionButton.OooO0oO(this.OoooooO);
    }

    private void OooOOo(boolean z, List<Animator> list) {
        if (z) {
            this.Ooooo00.OooOO0O(getFabTranslationX());
        }
        float[] fArr = new float[2];
        fArr[0] = this.OoooOoo.OooO0oo();
        fArr[1] = z ? 1.0f : 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.addUpdateListener(new OooOO0());
        valueAnimatorOfFloat.setDuration(300L);
        list.add(valueAnimatorOfFloat);
    }

    private void OooOOo0() {
        Animator animator = this.Ooooo0o;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.OooooOO;
        if (animator2 != null) {
            animator2.cancel();
        }
        Animator animator3 = this.OooooO0;
        if (animator3 != null) {
            animator3.cancel();
        }
    }

    private void OooOOoo(int i, List<Animator> list) {
        if (this.Oooooo) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.Ooooo00.OooO0o(), OooOo(i));
            valueAnimatorOfFloat.addUpdateListener(new OooO0O0());
            valueAnimatorOfFloat.setDuration(300L);
            list.add(valueAnimatorOfFloat);
        }
    }

    private int OooOo(int i) {
        boolean z = ViewCompat.getLayoutDirection(this) == 1;
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - this.OoooOoO) * (z ? -1 : 1);
        }
        return 0;
    }

    private void OooOo0(boolean z, List<Animator> list) {
        FloatingActionButton floatingActionButtonOooOo0o = OooOo0o();
        if (floatingActionButtonOooOo0o == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(floatingActionButtonOooOo0o, "translationY", OooOoO0(z));
        objectAnimatorOfFloat.setDuration(300L);
        list.add(objectAnimatorOfFloat);
    }

    private void OooOo00(int i, List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(OooOo0o(), "translationX", OooOo(i));
        objectAnimatorOfFloat.setDuration(300L);
        list.add(objectAnimatorOfFloat);
    }

    private void OooOo0O(int i, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if ((!this.Oooooo && (!z || !OooOoOO())) || (this.OooooOo != 1 && i != 1)) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat.addListener(new OooO0o(actionMenuView, i, z));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton OooOo0o() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if (view instanceof FloatingActionButton) {
                return (FloatingActionButton) view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean OooOoO() {
        Animator animator;
        Animator animator2;
        Animator animator3 = this.Ooooo0o;
        return (animator3 != null && animator3.isRunning()) || ((animator = this.OooooOO) != null && animator.isRunning()) || ((animator2 = this.OooooO0) != null && animator2.isRunning());
    }

    private float OooOoO0(boolean z) {
        FloatingActionButton floatingActionButtonOooOo0o = OooOo0o();
        if (floatingActionButtonOooOo0o == null) {
            return 0.0f;
        }
        Rect rect = new Rect();
        floatingActionButtonOooOo0o.OooOO0(rect);
        float fHeight = rect.height();
        if (fHeight == 0.0f) {
            fHeight = floatingActionButtonOooOo0o.getMeasuredHeight();
        }
        float height = floatingActionButtonOooOo0o.getHeight() - rect.bottom;
        float height2 = floatingActionButtonOooOo0o.getHeight() - rect.height();
        float f = (-getCradleVerticalOffset()) + (fHeight / 2.0f) + height;
        float paddingBottom = height2 - floatingActionButtonOooOo0o.getPaddingBottom();
        float f2 = -getMeasuredHeight();
        if (!z) {
            f = paddingBottom;
        }
        return f2 + f;
    }

    private boolean OooOoOO() {
        FloatingActionButton floatingActionButtonOooOo0o = OooOo0o();
        return floatingActionButtonOooOo0o != null && floatingActionButtonOooOo0o.OooOOo0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOoo(int i, boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            Animator animator = this.OooooOO;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!OooOoOO()) {
                i = 0;
                z = false;
            }
            OooOo0O(i, z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.OooooOO = animatorSet;
            animatorSet.addListener(new OooO0OO());
            this.OooooOO.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void OooOoo0(boolean z) {
        if (ViewCompat.isLaidOut(this)) {
            Animator animator = this.Ooooo0o;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            OooOOo(z && OooOoOO(), arrayList);
            OooOo0(z, arrayList);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            this.Ooooo0o = animatorSet;
            animatorSet.addListener(new OooO());
            this.Ooooo0o.start();
        }
    }

    private void OooOooO(int i) {
        if (this.OooooOo == i || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.OooooO0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        OooOOoo(i, arrayList);
        OooOo00(i, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.OooooO0 = animatorSet;
        animatorSet.addListener(new OooO00o());
        this.OooooO0.start();
    }

    private void OooOooo(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.OooOo00(this.OoooooO);
        floatingActionButton.OooOo0(this.OoooooO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo00O() {
        this.Ooooo00.OooOO0O(getFabTranslationX());
        FloatingActionButton floatingActionButtonOooOo0o = OooOo0o();
        this.OoooOoo.OooOo0o((this.Oooooo && OooOoOO()) ? 1.0f : 0.0f);
        if (floatingActionButtonOooOo0o != null) {
            floatingActionButtonOooOo0o.setTranslationY(getFabTranslationY());
            floatingActionButtonOooOo0o.setTranslationX(getFabTranslationX());
        }
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView != null) {
            actionMenuView.setAlpha(1.0f);
            if (OooOoOO()) {
                Oooo00o(actionMenuView, this.OooooOo, this.Oooooo);
            } else {
                Oooo00o(actionMenuView, 0, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Oooo00o(ActionMenuView actionMenuView, int i, boolean z) {
        boolean z3 = ViewCompat.getLayoutDirection(this) == 1;
        int iMax = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                iMax = Math.max(iMax, z3 ? childAt.getLeft() : childAt.getRight());
            }
        }
        actionMenuView.setTranslationX((i == 1 && z) ? iMax - (z3 ? actionMenuView.getRight() : actionMenuView.getLeft()) : 0.0f);
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    private float getFabTranslationX() {
        return OooOo(this.OooooOo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationY() {
        return OooOoO0(this.Oooooo);
    }

    public void Oooo000(@MenuRes int i) {
        getMenu().clear();
        inflateMenu(i);
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.OoooOoo.OooOOo0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<BottomAppBar> getBehavior() {
        return new Behavior();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return this.Ooooo00.OooO0O0();
    }

    public int getFabAlignmentMode() {
        return this.OooooOo;
    }

    public float getFabCradleMargin() {
        return this.Ooooo00.OooO0OO();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return this.Ooooo00.OooO0Oo();
    }

    public boolean getHideOnScroll() {
        return this.Oooooo0;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        OooOOo0();
        Oooo00O();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.OooooOo = savedState.fabAlignmentMode;
        this.Oooooo = savedState.fabAttached;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.fabAlignmentMode = this.OooooOo;
        savedState.fabAttached = this.Oooooo;
        return savedState;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.OoooOoo, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f != getCradleVerticalOffset()) {
            this.Ooooo00.OooO0oO(f);
            this.OoooOoo.invalidateSelf();
        }
    }

    public void setFabAlignmentMode(int i) {
        OooOooO(i);
        OooOoo(i, this.Oooooo);
        this.OooooOo = i;
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f != getFabCradleMargin()) {
            this.Ooooo00.OooO0oo(f);
            this.OoooOoo.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            this.Ooooo00.OooO(f);
            this.OoooOoo.invalidateSelf();
        }
    }

    public void setFabDiameter(@Px int i) {
        float f = i;
        if (f != this.Ooooo00.OooO0o0()) {
            this.Ooooo00.OooOO0(f);
            this.OoooOoo.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.Oooooo0 = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }
}
