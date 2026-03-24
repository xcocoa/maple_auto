package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int OooOoOO = 1;
    public static final int OooOoo = 3;
    public static final int OooOoo0 = 2;
    public static final int OooOooO = 4;
    public static final int OooOooo = 5;
    private static final float Oooo0 = 0.1f;
    public static final int Oooo000 = 6;
    public static final int Oooo00O = -1;
    private static final float Oooo00o = 0.5f;
    public int OooO;
    private boolean OooO00o;
    private float OooO0O0;
    private int OooO0OO;
    private boolean OooO0Oo;
    private int OooO0o;
    private int OooO0o0;
    public int OooO0oO;
    public int OooO0oo;
    public boolean OooOO0;
    private boolean OooOO0O;
    public int OooOO0o;
    private boolean OooOOO;
    public ViewDragHelper OooOOO0;
    private int OooOOOO;
    private boolean OooOOOo;
    public WeakReference<V> OooOOo;
    public int OooOOo0;
    public WeakReference<View> OooOOoo;
    public boolean OooOo;
    private VelocityTracker OooOo0;
    private OooO0OO OooOo00;
    public int OooOo0O;
    private int OooOo0o;
    private final ViewDragHelper.Callback OooOoO;
    private Map<View, Integer> OooOoO0;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface OooO {
    }

    public class OooO00o implements Runnable {
        public final /* synthetic */ View OoooOoO;
        public final /* synthetic */ int OoooOoo;

        public OooO00o(View view, int i) {
            this.OoooOoO = view;
            this.OoooOoo = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.OooOo(this.OoooOoO, this.OoooOoo);
        }
    }

    public class OooO0O0 extends ViewDragHelper.Callback {
        public OooO0O0() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            int iOooO0oO = BottomSheetBehavior.this.OooO0oO();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i, iOooO0oO, bottomSheetBehavior.OooOO0 ? bottomSheetBehavior.OooOOo0 : bottomSheetBehavior.OooO);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.OooOO0 ? bottomSheetBehavior.OooOOo0 : bottomSheetBehavior.OooO;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.OooOo0O(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.OooO0Oo(i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x00a0, code lost:
        
            if (r9 < java.lang.Math.abs(r9 - r10.OooO)) goto L11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00b2, code lost:
        
            if (java.lang.Math.abs(r9 - r1) < java.lang.Math.abs(r9 - r7.OooO00o.OooO)) goto L41;
         */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00d9  */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onViewReleased(@NonNull View view, float f, float f2) {
            int i;
            int i2 = 0;
            int i3 = 4;
            if (f2 >= 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.OooOO0 && bottomSheetBehavior.OooOo0o(view, f2) && (view.getTop() > BottomSheetBehavior.this.OooO || Math.abs(f) < Math.abs(f2))) {
                    i = BottomSheetBehavior.this.OooOOo0;
                    i3 = 5;
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (BottomSheetBehavior.this.OooO00o) {
                        if (Math.abs(top - BottomSheetBehavior.this.OooO0oO) < Math.abs(top - BottomSheetBehavior.this.OooO)) {
                            i2 = BottomSheetBehavior.this.OooO0oO;
                            i3 = 3;
                        }
                        i2 = BottomSheetBehavior.this.OooO;
                    } else {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i4 = bottomSheetBehavior2.OooO0oo;
                        if (top < i4) {
                        }
                        i2 = BottomSheetBehavior.this.OooO0oo;
                        i3 = 6;
                    }
                } else {
                    i = BottomSheetBehavior.this.OooO;
                }
                if (!BottomSheetBehavior.this.OooOOO0.settleCapturedViewAt(view.getLeft(), i)) {
                }
            } else {
                if (BottomSheetBehavior.this.OooO00o) {
                    i = BottomSheetBehavior.this.OooO0oO;
                    i3 = 3;
                    if (!BottomSheetBehavior.this.OooOOO0.settleCapturedViewAt(view.getLeft(), i)) {
                        BottomSheetBehavior.this.OooOo0O(i3);
                        return;
                    } else {
                        BottomSheetBehavior.this.OooOo0O(2);
                        ViewCompat.postOnAnimation(view, new OooO0o(view, i3));
                        return;
                    }
                }
                int top2 = view.getTop();
                int i5 = BottomSheetBehavior.this.OooO0oo;
                if (top2 > i5) {
                    i2 = i5;
                    i3 = 6;
                }
                i3 = 3;
            }
            i = i2;
            if (!BottomSheetBehavior.this.OooOOO0.settleCapturedViewAt(view.getLeft(), i)) {
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            WeakReference<V> weakReference;
            View view2;
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.OooOO0o;
            if (i2 == 1 || bottomSheetBehavior.OooOo) {
                return false;
            }
            return ((i2 == 3 && bottomSheetBehavior.OooOo0O == i && (view2 = bottomSheetBehavior.OooOOoo.get()) != null && view2.canScrollVertically(-1)) || (weakReference = BottomSheetBehavior.this.OooOOo) == null || weakReference.get() != view) ? false : true;
        }
    }

    public static abstract class OooO0OO {
        public abstract void OooO00o(@NonNull View view, float f);

        public abstract void OooO0O0(@NonNull View view, int i);
    }

    public class OooO0o implements Runnable {
        private final View OoooOoO;
        private final int OoooOoo;

        public OooO0o(View view, int i) {
            this.OoooOoO = view;
            this.OoooOoo = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper viewDragHelper = BottomSheetBehavior.this.OooOOO0;
            if (viewDragHelper == null || !viewDragHelper.continueSettling(true)) {
                BottomSheetBehavior.this.OooOo0O(this.OoooOoo);
            } else {
                ViewCompat.postOnAnimation(this.OoooOoO, this);
            }
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public final int state;

        public static class OooO00o implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
        }

        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
        }
    }

    public BottomSheetBehavior() {
        this.OooO00o = true;
        this.OooOO0o = 4;
        this.OooOoO = new OooO0O0();
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.OooO00o = true;
        this.OooOO0o = 4;
        this.OooOoO = new OooO0O0();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        int i2 = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i2);
        if (typedValuePeekValue == null || (i = typedValuePeekValue.data) != -1) {
            OooOOoo(typedArrayObtainStyledAttributes.getDimensionPixelSize(i2, -1));
        } else {
            OooOOoo(i);
        }
        OooOOo(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        OooOOo0(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        OooOo00(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        typedArrayObtainStyledAttributes.recycle();
        this.OooO0O0 = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    private void OooO0OO() {
        this.OooO = this.OooO00o ? Math.max(this.OooOOo0 - this.OooO0o, this.OooO0oO) : this.OooOOo0 - this.OooO0o;
    }

    public static <V extends View> BottomSheetBehavior<V> OooO0o(V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int OooO0oO() {
        if (this.OooO00o) {
            return this.OooO0oO;
        }
        return 0;
    }

    private float OooOO0o() {
        VelocityTracker velocityTracker = this.OooOo0;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.OooO0O0);
        return this.OooOo0.getYVelocity(this.OooOo0O);
    }

    private void OooOOOO() {
        this.OooOo0O = -1;
        VelocityTracker velocityTracker = this.OooOo0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.OooOo0 = null;
        }
    }

    private void OooOoO0(boolean z) {
        int iIntValue;
        int i = Build.VERSION.SDK_INT;
        WeakReference<V> weakReference = this.OooOOo;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (i >= 16 && z) {
                if (this.OooOoO0 != null) {
                    return;
                } else {
                    this.OooOoO0 = new HashMap(childCount);
                }
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (childAt != this.OooOOo.get()) {
                    if (z) {
                        if (i >= 16) {
                            this.OooOoO0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        iIntValue = 4;
                    } else {
                        Map<View, Integer> map = this.OooOoO0;
                        if (map != null && map.containsKey(childAt)) {
                            iIntValue = this.OooOoO0.get(childAt).intValue();
                        }
                    }
                    ViewCompat.setImportantForAccessibility(childAt, iIntValue);
                }
            }
            if (z) {
                return;
            }
            this.OooOoO0 = null;
        }
    }

    @VisibleForTesting
    public int OooO() {
        return this.OooO0o0;
    }

    public void OooO0Oo(int i) {
        OooO0OO oooO0OO;
        float f;
        float fOooO0oO;
        V v = this.OooOOo.get();
        if (v == null || (oooO0OO = this.OooOo00) == null) {
            return;
        }
        int i2 = this.OooO;
        if (i > i2) {
            f = i2 - i;
            fOooO0oO = this.OooOOo0 - i2;
        } else {
            f = i2 - i;
            fOooO0oO = i2 - OooO0oO();
        }
        oooO0OO.OooO00o(v, f / fOooO0oO);
    }

    @VisibleForTesting
    public View OooO0o0(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewOooO0o0 = OooO0o0(viewGroup.getChildAt(i));
            if (viewOooO0o0 != null) {
                return viewOooO0o0;
            }
        }
        return null;
    }

    public final int OooO0oo() {
        if (this.OooO0Oo) {
            return -1;
        }
        return this.OooO0OO;
    }

    public boolean OooOO0() {
        return this.OooOO0O;
    }

    public final int OooOO0O() {
        return this.OooOO0o;
    }

    public boolean OooOOO() {
        return this.OooOO0;
    }

    public boolean OooOOO0() {
        return this.OooO00o;
    }

    public void OooOOOo(OooO0OO oooO0OO) {
        this.OooOo00 = oooO0OO;
    }

    public void OooOOo(boolean z) {
        this.OooOO0 = z;
    }

    public void OooOOo0(boolean z) {
        if (this.OooO00o == z) {
            return;
        }
        this.OooO00o = z;
        if (this.OooOOo != null) {
            OooO0OO();
        }
        OooOo0O((this.OooO00o && this.OooOO0o == 6) ? 3 : this.OooOO0o);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void OooOOoo(int i) {
        WeakReference<V> weakReference;
        V v;
        boolean z = true;
        if (i == -1) {
            if (this.OooO0Oo) {
                z = false;
            } else {
                this.OooO0Oo = true;
            }
        } else if (this.OooO0Oo || this.OooO0OO != i) {
            this.OooO0Oo = false;
            this.OooO0OO = Math.max(0, i);
            this.OooO = this.OooOOo0 - i;
        }
        if (!z || this.OooOO0o != 4 || (weakReference = this.OooOOo) == null || (v = weakReference.get()) == null) {
            return;
        }
        v.requestLayout();
    }

    public void OooOo(View view, int i) {
        int iOooO0oO;
        int i2;
        if (i == 4) {
            iOooO0oO = this.OooO;
        } else if (i == 6) {
            int i3 = this.OooO0oo;
            if (!this.OooO00o || i3 > (i2 = this.OooO0oO)) {
                iOooO0oO = i3;
            } else {
                iOooO0oO = i2;
                i = 3;
            }
        } else if (i == 3) {
            iOooO0oO = OooO0oO();
        } else {
            if (!this.OooOO0 || i != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i);
            }
            iOooO0oO = this.OooOOo0;
        }
        if (!this.OooOOO0.smoothSlideViewTo(view, view.getLeft(), iOooO0oO)) {
            OooOo0O(i);
        } else {
            OooOo0O(2);
            ViewCompat.postOnAnimation(view, new OooO0o(view, i));
        }
    }

    public final void OooOo0(int i) {
        if (i == this.OooOO0o) {
            return;
        }
        WeakReference<V> weakReference = this.OooOOo;
        if (weakReference == null) {
            if (i == 4 || i == 3 || i == 6 || (this.OooOO0 && i == 5)) {
                this.OooOO0o = i;
                return;
            }
            return;
        }
        V v = weakReference.get();
        if (v == null) {
            return;
        }
        ViewParent parent = v.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v)) {
            v.post(new OooO00o(v, i));
        } else {
            OooOo(v, i);
        }
    }

    public void OooOo00(boolean z) {
        this.OooOO0O = z;
    }

    public void OooOo0O(int i) {
        boolean z;
        V v;
        OooO0OO oooO0OO;
        if (this.OooOO0o == i) {
            return;
        }
        this.OooOO0o = i;
        if (i != 6 && i != 3) {
            z = (i == 5 || i == 4) ? false : true;
            v = this.OooOOo.get();
            if (v != null || (oooO0OO = this.OooOo00) == null) {
            }
            oooO0OO.OooO0O0(v, i);
            return;
        }
        OooOoO0(z);
        v = this.OooOOo.get();
        if (v != null) {
        }
    }

    public boolean OooOo0o(View view, float f) {
        if (this.OooOO0O) {
            return true;
        }
        return view.getTop() >= this.OooO && Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.OooO)) / ((float) this.OooO0OO) > 0.5f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v.isShown()) {
            this.OooOOO = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            OooOOOO();
        }
        if (this.OooOo0 == null) {
            this.OooOo0 = VelocityTracker.obtain();
        }
        this.OooOo0.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.OooOo0o = (int) motionEvent.getY();
            WeakReference<View> weakReference = this.OooOOoo;
            View view = weakReference != null ? weakReference.get() : null;
            if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.OooOo0o)) {
                this.OooOo0O = motionEvent.getPointerId(motionEvent.getActionIndex());
                this.OooOo = true;
            }
            this.OooOOO = this.OooOo0O == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.OooOo0o);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.OooOo = false;
            this.OooOo0O = -1;
            if (this.OooOOO) {
                this.OooOOO = false;
                return false;
            }
        }
        if (!this.OooOOO && (viewDragHelper = this.OooOOO0) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.OooOOoo;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.OooOOO || this.OooOO0o == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.OooOOO0 == null || Math.abs(((float) this.OooOo0o) - motionEvent.getY()) <= ((float) this.OooOOO0.getTouchSlop())) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        int iMax;
        int iOooO0oO;
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.OooOOo0 = coordinatorLayout.getHeight();
        if (this.OooO0Oo) {
            if (this.OooO0o0 == 0) {
                this.OooO0o0 = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            }
            iMax = Math.max(this.OooO0o0, this.OooOOo0 - ((coordinatorLayout.getWidth() * 9) / 16));
        } else {
            iMax = this.OooO0OO;
        }
        this.OooO0o = iMax;
        this.OooO0oO = Math.max(0, this.OooOOo0 - v.getHeight());
        this.OooO0oo = this.OooOOo0 / 2;
        OooO0OO();
        int i2 = this.OooOO0o;
        if (i2 == 3) {
            iOooO0oO = OooO0oO();
        } else if (i2 == 6) {
            iOooO0oO = this.OooO0oo;
        } else if (this.OooOO0 && i2 == 5) {
            iOooO0oO = this.OooOOo0;
        } else {
            if (i2 != 4) {
                if (i2 == 1 || i2 == 2) {
                    ViewCompat.offsetTopAndBottom(v, top - v.getTop());
                }
                if (this.OooOOO0 == null) {
                    this.OooOOO0 = ViewDragHelper.create(coordinatorLayout, this.OooOoO);
                }
                this.OooOOo = new WeakReference<>(v);
                this.OooOOoo = new WeakReference<>(OooO0o0(v));
                return true;
            }
            iOooO0oO = this.OooO;
        }
        ViewCompat.offsetTopAndBottom(v, iOooO0oO);
        if (this.OooOOO0 == null) {
        }
        this.OooOOo = new WeakReference<>(v);
        this.OooOOoo = new WeakReference<>(OooO0o0(v));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
        return view == this.OooOOoo.get() && (this.OooOO0o != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2));
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        int i4;
        if (i3 != 1 && view == this.OooOOoo.get()) {
            int top = v.getTop();
            int i5 = top - i2;
            if (i2 > 0) {
                if (i5 < OooO0oO()) {
                    iArr[1] = top - OooO0oO();
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    i4 = 3;
                    OooOo0O(i4);
                } else {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    OooOo0O(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                int i6 = this.OooO;
                if (i5 <= i6 || this.OooOO0) {
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    OooOo0O(1);
                } else {
                    iArr[1] = top - i6;
                    ViewCompat.offsetTopAndBottom(v, -iArr[1]);
                    i4 = 4;
                    OooOo0O(i4);
                }
            }
            OooO0Oo(v.getTop());
            this.OooOOOO = i2;
            this.OooOOOo = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        int i = savedState.state;
        if (i == 1 || i == 2) {
            i = 4;
        }
        this.OooOO0o = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), this.OooOO0o);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        this.OooOOOO = 0;
        this.OooOOOo = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x007e  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
        int iOooO0oO;
        int i2 = 3;
        if (v.getTop() == OooO0oO()) {
            OooOo0O(3);
            return;
        }
        if (view == this.OooOOoo.get() && this.OooOOOo) {
            if (this.OooOOOO > 0) {
                iOooO0oO = OooO0oO();
            } else if (this.OooOO0 && OooOo0o(v, OooOO0o())) {
                iOooO0oO = this.OooOOo0;
                i2 = 5;
            } else if (this.OooOOOO == 0) {
                int top = v.getTop();
                if (!this.OooO00o) {
                    int i3 = this.OooO0oo;
                    if (top < i3) {
                        if (top < Math.abs(top - this.OooO)) {
                            iOooO0oO = 0;
                        }
                    } else if (Math.abs(top - i3) < Math.abs(top - this.OooO)) {
                    }
                    iOooO0oO = this.OooO0oo;
                    i2 = 6;
                } else if (Math.abs(top - this.OooO0oO) < Math.abs(top - this.OooO)) {
                    iOooO0oO = this.OooO0oO;
                } else {
                    iOooO0oO = this.OooO;
                    i2 = 4;
                }
            }
            if (this.OooOOO0.smoothSlideViewTo(v, v.getLeft(), iOooO0oO)) {
                OooOo0O(2);
                ViewCompat.postOnAnimation(v, new OooO0o(v, i2));
            } else {
                OooOo0O(i2);
            }
            this.OooOOOo = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.OooOO0o == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.OooOOO0;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            OooOOOO();
        }
        if (this.OooOo0 == null) {
            this.OooOo0 = VelocityTracker.obtain();
        }
        this.OooOo0.addMovement(motionEvent);
        if (actionMasked == 2 && !this.OooOOO && Math.abs(this.OooOo0o - motionEvent.getY()) > this.OooOOO0.getTouchSlop()) {
            this.OooOOO0.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.OooOOO;
    }
}
