package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import z2.ej;
import z2.oj;
import z2.pj;
import z2.sj;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class AppBarLayout extends LinearLayout {
    public static final int o00O0O = 1;
    public static final int o00Oo0 = 2;
    public static final int o00Ooo = 4;
    public static final int o00o0O = 8;
    private static final int o00ooo = -1;
    public static final int ooOO = 0;
    private int OoooOoO;
    private int OoooOoo;
    private int Ooooo00;
    private boolean Ooooo0o;
    private int OooooO0;
    private WindowInsetsCompat OooooOO;
    private List<OooO0O0> OooooOo;
    private boolean Oooooo;
    private boolean Oooooo0;
    private boolean OoooooO;
    private boolean Ooooooo;
    private int[] o0OoOo0;

    public static class BaseBehavior<T extends AppBarLayout> extends oj<T> {
        private static final int OooOo0 = -1;
        private static final int OooOo00 = 600;
        private int OooOO0o;
        private ValueAnimator OooOOO;
        private int OooOOO0;
        private int OooOOOO;
        private boolean OooOOOo;
        private WeakReference<View> OooOOo;
        private float OooOOo0;
        private OooO0O0 OooOOoo;

        public class OooO00o implements ValueAnimator.AnimatorUpdateListener {
            public final /* synthetic */ CoordinatorLayout OooO00o;
            public final /* synthetic */ AppBarLayout OooO0O0;

            public OooO00o(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.OooO00o = coordinatorLayout;
                this.OooO0O0 = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.OooOOO(this.OooO00o, this.OooO0O0, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        public static abstract class OooO0O0<T extends AppBarLayout> {
            public abstract boolean OooO00o(@NonNull T t);
        }

        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
            public boolean firstVisibleChildAtMinimumHeight;
            public int firstVisibleChildIndex;
            public float firstVisibleChildPercentageShown;

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
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
            this.OooOOOO = -1;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.OooOOOO = -1;
        }

        private void OooOOo(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int iOooOO0O = OooOO0O();
            if (iOooOO0O == i) {
                ValueAnimator valueAnimator = this.OooOOO;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.OooOOO.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.OooOOO;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.OooOOO = valueAnimator3;
                valueAnimator3.setInterpolator(ej.OooO0o0);
                this.OooOOO.addUpdateListener(new OooO00o(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.OooOOO.setDuration(Math.min(i2, OooOo00));
            this.OooOOO.setIntValues(iOooOO0O, i);
            this.OooOOO.start();
        }

        private void OooOOo0(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int iAbs = Math.abs(OooOO0O() - i);
            float fAbs = Math.abs(f);
            OooOOo(coordinatorLayout, t, i, fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f));
        }

        private int OooOo(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
                if (OooOo0(oooO0OO.OooO00o(), 32)) {
                    top -= ((LinearLayout.LayoutParams) oooO0OO).topMargin;
                    bottom += ((LinearLayout.LayoutParams) oooO0OO).bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        private static boolean OooOo0(int i, int i2) {
            return (i & i2) == i2;
        }

        private boolean OooOo00(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.OooO() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        @Nullable
        private View OooOo0O(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt instanceof NestedScrollingChild) {
                    return childAt;
                }
            }
            return null;
        }

        private static View OooOo0o(AppBarLayout appBarLayout, int i) {
            int iAbs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int OooOoOO(T t, int i) {
            int iAbs = Math.abs(i);
            int childCount = t.getChildCount();
            int topInset = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i2);
                OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
                Interpolator interpolatorOooO0O0 = oooO0OO.OooO0O0();
                if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                    i2++;
                } else if (interpolatorOooO0O0 != null) {
                    int iOooO00o = oooO0OO.OooO00o();
                    if ((iOooO00o & 1) != 0) {
                        topInset = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) oooO0OO).topMargin + ((LinearLayout.LayoutParams) oooO0OO).bottomMargin;
                        if ((iOooO00o & 2) != 0) {
                            topInset -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        topInset -= t.getTopInset();
                    }
                    if (topInset > 0) {
                        float f = topInset;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * interpolatorOooO0O0.getInterpolation((iAbs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        private void Oooo(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int iOooOO0O = OooOO0O();
                if ((i >= 0 || iOooOO0O != 0) && (i <= 0 || iOooOO0O != (-t.getDownNestedScrollRange()))) {
                    return;
                }
                ViewCompat.stopNestedScroll(view, 1);
            }
        }

        private boolean Oooo0oO(CoordinatorLayout coordinatorLayout, T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) behavior).OooO() != 0;
                }
            }
            return false;
        }

        private void Oooo0oo(CoordinatorLayout coordinatorLayout, T t) {
            int iOooOO0O = OooOO0O();
            int iOooOo = OooOo(t, iOooOO0O);
            if (iOooOo >= 0) {
                View childAt = t.getChildAt(iOooOo);
                OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
                int iOooO00o = oooO0OO.OooO00o();
                if ((iOooO00o & 17) == 17) {
                    int i = -childAt.getTop();
                    int minimumHeight = -childAt.getBottom();
                    if (iOooOo == t.getChildCount() - 1) {
                        minimumHeight += t.getTopInset();
                    }
                    if (OooOo0(iOooO00o, 2)) {
                        minimumHeight += ViewCompat.getMinimumHeight(childAt);
                    } else if (OooOo0(iOooO00o, 5)) {
                        int minimumHeight2 = ViewCompat.getMinimumHeight(childAt) + minimumHeight;
                        if (iOooOO0O < minimumHeight2) {
                            i = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if (OooOo0(iOooO00o, 32)) {
                        i += ((LinearLayout.LayoutParams) oooO0OO).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) oooO0OO).bottomMargin;
                    }
                    if (iOooOO0O < (minimumHeight + i) / 2) {
                        i = minimumHeight;
                    }
                    OooOOo0(coordinatorLayout, t, MathUtils.clamp(i, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void OoooO00(CoordinatorLayout coordinatorLayout, T t, int i, int i2, boolean z) {
            boolean z3;
            View viewOooOo0O;
            View viewOooOo0o = OooOo0o(t, i);
            if (viewOooOo0o != null) {
                int iOooO00o = ((OooO0OO) viewOooOo0o.getLayoutParams()).OooO00o();
                if ((iOooO00o & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(viewOooOo0o);
                    z3 = i2 <= 0 || (iOooO00o & 12) == 0 ? !((iOooO00o & 2) == 0 || (-i) < (viewOooOo0o.getBottom() - minimumHeight) - t.getTopInset()) : (-i) >= (viewOooOo0o.getBottom() - minimumHeight) - t.getTopInset();
                }
                if (t.OooOO0O() && (viewOooOo0O = OooOo0O(coordinatorLayout)) != null) {
                    z3 = viewOooOo0O.getScrollY() > 0;
                }
                boolean zOooOo0 = t.OooOo0(z3);
                if (Build.VERSION.SDK_INT >= 11) {
                    if (z || (zOooOo0 && Oooo0oO(coordinatorLayout, t))) {
                        t.jumpDrawablesToCurrentState();
                    }
                }
            }
        }

        @Override // z2.oj
        public int OooOO0O() {
            return OooO0O0() + this.OooOO0o;
        }

        @Override // z2.oj
        /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
        public boolean OooO0o(T t) {
            OooO0O0 oooO0O0 = this.OooOOoo;
            if (oooO0O0 != null) {
                return oooO0O0.OooO00o(t);
            }
            WeakReference<View> weakReference = this.OooOOo;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override // z2.oj
        /* JADX INFO: renamed from: OooOoO, reason: merged with bridge method [inline-methods] */
        public int OooOO0(T t) {
            return t.getTotalScrollRange();
        }

        @Override // z2.oj
        /* JADX INFO: renamed from: OooOoO0, reason: merged with bridge method [inline-methods] */
        public int OooO(T t) {
            return -t.getDownNestedScrollRange();
        }

        @Override // z2.oj
        /* JADX INFO: renamed from: OooOoo, reason: merged with bridge method [inline-methods] */
        public void OooOO0o(CoordinatorLayout coordinatorLayout, T t) {
            Oooo0oo(coordinatorLayout, t);
        }

        @VisibleForTesting
        public boolean OooOoo0() {
            ValueAnimator valueAnimator = this.OooOOO;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        @Override // z2.qj, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooOooO, reason: merged with bridge method [inline-methods] */
        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.OooOOOO;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                OooOOO(coordinatorLayout, t, (-childAt.getBottom()) + (this.OooOOOo ? ViewCompat.getMinimumHeight(childAt) + t.getTopInset() : Math.round(childAt.getHeight() * this.OooOOo0)));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        OooOOo0(coordinatorLayout, t, i3, 0.0f);
                    } else {
                        OooOOO(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        OooOOo0(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        OooOOO(coordinatorLayout, t, 0);
                    }
                }
            }
            t.OooOOOO();
            this.OooOOOO = -1;
            OooO0o0(MathUtils.clamp(OooO0O0(), -t.getTotalScrollRange(), 0));
            OoooO00(coordinatorLayout, t, OooO0O0(), 0, true);
            t.OooO0OO(OooO0O0());
            return zOnLayoutChild;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: OooOooo, reason: merged with bridge method [inline-methods] */
        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t.getLayoutParams())).height != -2) {
                return super.onMeasureChild(coordinatorLayout, t, i, i2, i3, i4);
            }
            coordinatorLayout.onMeasureChild(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: Oooo0, reason: merged with bridge method [inline-methods] */
        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, t);
            int iOooO0O0 = OooO0O0();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + iOooO0O0;
                if (childAt.getTop() + iOooO0O0 <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
                    savedState.firstVisibleChildIndex = i;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.getMinimumHeight(childAt) + t.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return parcelableOnSaveInstanceState;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: Oooo000, reason: merged with bridge method [inline-methods] */
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int downNestedPreScrollRange;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i5 = -t.getTotalScrollRange();
                    i4 = i5;
                    downNestedPreScrollRange = t.getDownNestedPreScrollRange() + i5;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i4 != downNestedPreScrollRange) {
                    iArr[1] = OooOOO0(coordinatorLayout, t, i2, i4, downNestedPreScrollRange);
                    Oooo(i2, t, view, i3);
                }
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: Oooo00O, reason: merged with bridge method [inline-methods] */
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                OooOOO0(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
                Oooo(i4, t, view, i5);
            }
            if (t.OooOO0O()) {
                t.OooOo0(view.getScrollY() > 0);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: Oooo00o, reason: merged with bridge method [inline-methods] */
        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                super.onRestoreInstanceState(coordinatorLayout, t, parcelable);
                this.OooOOOO = -1;
                return;
            }
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(coordinatorLayout, t, savedState.getSuperState());
            this.OooOOOO = savedState.firstVisibleChildIndex;
            this.OooOOo0 = savedState.firstVisibleChildPercentageShown;
            this.OooOOOo = savedState.firstVisibleChildAtMinimumHeight;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: Oooo0O0, reason: merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.OooOO0O() || OooOo00(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.OooOOO) != null) {
                valueAnimator.cancel();
            }
            this.OooOOo = null;
            this.OooOOO0 = i2;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* JADX INFO: renamed from: Oooo0OO, reason: merged with bridge method [inline-methods] */
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.OooOOO0 == 0 || i == 1) {
                Oooo0oo(coordinatorLayout, t);
            }
            this.OooOOo = new WeakReference<>(view);
        }

        @Override // z2.oj
        /* JADX INFO: renamed from: Oooo0o, reason: merged with bridge method [inline-methods] */
        public int OooOOOO(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int iOooOO0O = OooOO0O();
            int i4 = 0;
            if (i2 == 0 || iOooOO0O < i2 || iOooOO0O > i3) {
                this.OooOO0o = 0;
            } else {
                int iClamp = MathUtils.clamp(i, i2, i3);
                if (iOooOO0O != iClamp) {
                    int iOooOoOO = t.OooO0oO() ? OooOoOO(t, iClamp) : iClamp;
                    boolean zOooO0o0 = OooO0o0(iOooOoOO);
                    i4 = iOooOO0O - iClamp;
                    this.OooOO0o = iClamp - iOooOoOO;
                    if (!zOooO0o0 && t.OooO0oO()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t);
                    }
                    t.OooO0OO(OooO0O0());
                    OoooO00(coordinatorLayout, t, iClamp, iClamp < iOooOO0O ? -1 : 1, false);
                }
            }
            return i4;
        }

        public void Oooo0o0(@Nullable OooO0O0 oooO0O0) {
            this.OooOOoo = oooO0O0;
        }
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {

        public static abstract class OooO00o extends BaseBehavior.OooO0O0<AppBarLayout> {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ int OooO00o() {
            return super.OooO00o();
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ int OooO0O0() {
            return super.OooO0O0();
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ boolean OooO0Oo(int i) {
            return super.OooO0Oo(i);
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ boolean OooO0o0(int i) {
            return super.OooO0o0(i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: OooOooO */
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.onLayoutChild(coordinatorLayout, appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: OooOooo */
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: Oooo0 */
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: Oooo000 */
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: Oooo00O */
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            super.onNestedScroll(coordinatorLayout, appBarLayout, view, i, i2, i3, i4, i5);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: Oooo00o */
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: Oooo0O0 */
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: Oooo0OO */
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void Oooo0o0(@Nullable BaseBehavior.OooO0O0 oooO0O0) {
            super.Oooo0o0(oooO0O0);
        }
    }

    public class OooO00o implements OnApplyWindowInsetsListener {
        public OooO00o() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.OooOO0o(windowInsetsCompat);
        }
    }

    public interface OooO0O0<T extends AppBarLayout> {
        void OooO00o(T t, int i);
    }

    public static class OooO0OO extends LinearLayout.LayoutParams {
        public static final int OooO = 5;
        public static final int OooO0OO = 1;
        public static final int OooO0Oo = 2;
        public static final int OooO0o = 8;
        public static final int OooO0o0 = 4;
        public static final int OooO0oO = 16;
        public static final int OooO0oo = 32;
        public static final int OooOO0 = 17;
        public static final int OooOO0O = 10;
        public int OooO00o;
        public Interpolator OooO0O0;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public @interface OooO00o {
        }

        public OooO0OO(int i, int i2) {
            super(i, i2);
            this.OooO00o = 1;
        }

        public OooO0OO(int i, int i2, float f) {
            super(i, i2, f);
            this.OooO00o = 1;
        }

        public OooO0OO(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.OooO00o = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.OooO00o = typedArrayObtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            int i = R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i)) {
                this.OooO0O0 = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public OooO0OO(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.OooO00o = 1;
        }

        public OooO0OO(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.OooO00o = 1;
        }

        @RequiresApi(19)
        public OooO0OO(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.OooO00o = 1;
        }

        @RequiresApi(19)
        public OooO0OO(OooO0OO oooO0OO) {
            super((LinearLayout.LayoutParams) oooO0OO);
            this.OooO00o = 1;
            this.OooO00o = oooO0OO.OooO00o;
            this.OooO0O0 = oooO0OO.OooO0O0;
        }

        public int OooO00o() {
            return this.OooO00o;
        }

        public Interpolator OooO0O0() {
            return this.OooO0O0;
        }

        public boolean OooO0OO() {
            int i = this.OooO00o;
            return (i & 1) == 1 && (i & 10) != 0;
        }

        public void OooO0Oo(int i) {
            this.OooO00o = i;
        }

        public void OooO0o0(Interpolator interpolator) {
            this.OooO0O0 = interpolator;
        }
    }

    public interface OooO0o extends OooO0O0<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.OooO0O0
        void OooO00o(AppBarLayout appBarLayout, int i);
    }

    public static class ScrollingViewBehavior extends pj {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            OooOOO0(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }

        private static int OooOOOO(AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).OooOO0O();
            }
            return 0;
        }

        private void OooOOOo(View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).OooOO0o) + OooOO0O()) - OooO0oO(view2));
            }
        }

        private void OooOOo0(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.OooOO0O()) {
                    appBarLayout.OooOo0(view.getScrollY() > 0);
                }
            }
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ int OooO00o() {
            return super.OooO00o();
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ int OooO0O0() {
            return super.OooO0O0();
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ boolean OooO0Oo(int i) {
            return super.OooO0Oo(i);
        }

        @Override // z2.qj
        public /* bridge */ /* synthetic */ boolean OooO0o0(int i) {
            return super.OooO0o0(i);
        }

        @Override // z2.pj
        public float OooO0oo(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iOooOOOO = OooOOOO(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iOooOOOO > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iOooOOOO / i) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // z2.pj
        public int OooOO0(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.OooOO0(view);
        }

        @Override // z2.pj
        /* JADX INFO: renamed from: OooOOO, reason: merged with bridge method [inline-methods] */
        public AppBarLayout OooO0o(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            OooOOOo(view, view2);
            OooOOo0(view, view2);
            return false;
        }

        @Override // z2.qj, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        @Override // z2.pj, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutOooO0o = OooO0o(coordinatorLayout.getDependencies(view));
            if (appBarLayoutOooO0o != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.OooO0Oo;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutOooO0o.OooOOOo(false, !z);
                    return true;
                }
            }
            return false;
        }
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoO = -1;
        this.OoooOoo = -1;
        this.Ooooo00 = -1;
        this.OooooO0 = 0;
        setOrientation(1);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            sj.OooO00o(this);
            sj.OooO0OO(this, attributeSet, 0, R.style.Widget_Design_AppBarLayout);
        }
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout, new int[0]);
        ViewCompat.setBackground(this, typedArrayOooOO0.getDrawable(R.styleable.AppBarLayout_android_background));
        int i2 = R.styleable.AppBarLayout_expanded;
        if (typedArrayOooOO0.hasValue(i2)) {
            OooOOo0(typedArrayOooOO0.getBoolean(i2, false), false, false);
        }
        if (i >= 21) {
            if (typedArrayOooOO0.hasValue(R.styleable.AppBarLayout_elevation)) {
                sj.OooO0O0(this, typedArrayOooOO0.getDimensionPixelSize(r12, 0));
            }
        }
        if (i >= 26) {
            int i3 = R.styleable.AppBarLayout_android_keyboardNavigationCluster;
            if (typedArrayOooOO0.hasValue(i3)) {
                setKeyboardNavigationCluster(typedArrayOooOO0.getBoolean(i3, false));
            }
            int i4 = R.styleable.AppBarLayout_android_touchscreenBlocksFocus;
            if (typedArrayOooOO0.hasValue(i4)) {
                setTouchscreenBlocksFocus(typedArrayOooOO0.getBoolean(i4, false));
            }
        }
        this.Ooooooo = typedArrayOooOO0.getBoolean(R.styleable.AppBarLayout_liftOnScroll, false);
        typedArrayOooOO0.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new OooO00o());
    }

    private boolean OooO0oo() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((OooO0OO) getChildAt(i).getLayoutParams()).OooO0OO()) {
                return true;
            }
        }
        return false;
    }

    private void OooOO0() {
        this.OoooOoO = -1;
        this.OoooOoo = -1;
        this.Ooooo00 = -1;
    }

    private void OooOOo0(boolean z, boolean z3, boolean z4) {
        this.OooooO0 = (z ? 1 : 2) | (z3 ? 4 : 0) | (z4 ? 8 : 0);
        requestLayout();
    }

    private boolean OooOOoo(boolean z) {
        if (this.Oooooo == z) {
            return false;
        }
        this.Oooooo = z;
        refreshDrawableState();
        return true;
    }

    public boolean OooO() {
        return getTotalScrollRange() != 0;
    }

    public void OooO00o(OooO0O0 oooO0O0) {
        if (this.OooooOo == null) {
            this.OooooOo = new ArrayList();
        }
        if (oooO0O0 == null || this.OooooOo.contains(oooO0O0)) {
            return;
        }
        this.OooooOo.add(oooO0O0);
    }

    public void OooO0O0(OooO0o oooO0o) {
        OooO00o(oooO0o);
    }

    public void OooO0OO(int i) {
        List<OooO0O0> list = this.OooooOo;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                OooO0O0 oooO0O0 = this.OooooOo.get(i2);
                if (oooO0O0 != null) {
                    oooO0O0.OooO00o(this, i);
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public OooO0OO generateDefaultLayoutParams() {
        return new OooO0OO(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public OooO0OO generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new OooO0OO((ViewGroup.MarginLayoutParams) layoutParams) : new OooO0OO(layoutParams) : new OooO0OO((LinearLayout.LayoutParams) layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: OooO0o0, reason: merged with bridge method [inline-methods] */
    public OooO0OO generateLayoutParams(AttributeSet attributeSet) {
        return new OooO0OO(getContext(), attributeSet);
    }

    public boolean OooO0oO() {
        return this.Ooooo0o;
    }

    public boolean OooOO0O() {
        return this.Ooooooo;
    }

    public WindowInsetsCompat OooOO0o(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.OooooOO, windowInsetsCompat2)) {
            this.OooooOO = windowInsetsCompat2;
            OooOO0();
        }
        return windowInsetsCompat;
    }

    public void OooOOO(OooO0o oooO0o) {
        OooOOO0(oooO0o);
    }

    public void OooOOO0(OooO0O0 oooO0O0) {
        List<OooO0O0> list = this.OooooOo;
        if (list == null || oooO0O0 == null) {
            return;
        }
        list.remove(oooO0O0);
    }

    public void OooOOOO() {
        this.OooooO0 = 0;
    }

    public void OooOOOo(boolean z, boolean z3) {
        OooOOo0(z, z3, true);
    }

    public boolean OooOOo(boolean z) {
        this.Oooooo0 = true;
        return OooOOoo(z);
    }

    public boolean OooOo0(boolean z) {
        if (this.OoooooO == z) {
            return false;
        }
        this.OoooooO = z;
        refreshDrawableState();
        return true;
    }

    public boolean OooOo00(boolean z) {
        return OooOo0(z);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof OooO0OO;
    }

    public int getDownNestedPreScrollRange() {
        int i = this.OoooOoo;
        if (i != -1) {
            return i;
        }
        int minimumHeight = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i2 = oooO0OO.OooO00o;
            if ((i2 & 5) != 5) {
                if (minimumHeight > 0) {
                    break;
                }
            } else {
                int i3 = minimumHeight + ((LinearLayout.LayoutParams) oooO0OO).topMargin + ((LinearLayout.LayoutParams) oooO0OO).bottomMargin;
                minimumHeight = (i2 & 8) != 0 ? i3 + ViewCompat.getMinimumHeight(childAt) : i3 + (measuredHeight - ((i2 & 2) != 0 ? ViewCompat.getMinimumHeight(childAt) : getTopInset()));
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.OoooOoo = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i = this.Ooooo00;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) oooO0OO).topMargin + ((LinearLayout.LayoutParams) oooO0OO).bottomMargin;
            int i3 = oooO0OO.OooO00o;
            if ((i3 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight;
            if ((i3 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt) + getTopInset();
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.Ooooo00 = iMax;
        return iMax;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.OooooO0;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.OooooOO;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.OoooOoO;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            OooO0OO oooO0OO = (OooO0OO) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = oooO0OO.OooO00o;
            if ((i3 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight + ((LinearLayout.LayoutParams) oooO0OO).topMargin + ((LinearLayout.LayoutParams) oooO0OO).bottomMargin;
            if ((i3 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight - getTopInset());
        this.OoooOoO = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.o0OoOo0 == null) {
            this.o0OoOo0 = new int[4];
        }
        int[] iArr = this.o0OoOo0;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.Oooooo;
        int i2 = R.attr.state_liftable;
        if (!z) {
            i2 = -i2;
        }
        iArr[0] = i2;
        iArr[1] = (z && this.OoooooO) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i3 = R.attr.state_collapsible;
        if (!z) {
            i3 = -i3;
        }
        iArr[2] = i3;
        iArr[3] = (z && this.OoooooO) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        OooOO0();
        this.Ooooo0o = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            }
            if (((OooO0OO) getChildAt(i5).getLayoutParams()).OooO0O0() != null) {
                this.Ooooo0o = true;
                break;
            }
            i5++;
        }
        if (this.Oooooo0) {
            return;
        }
        OooOOoo(this.Ooooooo || OooO0oo());
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        OooOO0();
    }

    public void setExpanded(boolean z) {
        OooOOOo(z, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.Ooooooo = z;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            sj.OooO0O0(this, f);
        }
    }
}
