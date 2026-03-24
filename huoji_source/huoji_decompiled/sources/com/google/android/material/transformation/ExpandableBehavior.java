package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import java.util.List;
import z2.ik;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {
    private static final int OooO0O0 = 0;
    private static final int OooO0OO = 1;
    private static final int OooO0Oo = 2;
    private int OooO00o;

    public class OooO00o implements ViewTreeObserver.OnPreDrawListener {
        public final /* synthetic */ View OoooOoO;
        public final /* synthetic */ int OoooOoo;
        public final /* synthetic */ ik Ooooo00;

        public OooO00o(View view, int i, ik ikVar) {
            this.OoooOoO = view;
            this.OoooOoo = i;
            this.Ooooo00 = ikVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.OoooOoO.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.OooO00o == this.OoooOoo) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                ik ikVar = this.Ooooo00;
                expandableBehavior.OooO0o0((View) ikVar, this.OoooOoO, ikVar.OooO0O0(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.OooO00o = 0;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OooO00o = 0;
    }

    private boolean OooO0O0(boolean z) {
        if (!z) {
            return this.OooO00o == 1;
        }
        int i = this.OooO00o;
        return i == 0 || i == 2;
    }

    public static <T extends ExpandableBehavior> T OooO0Oo(View view, Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof ExpandableBehavior) {
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public ik OooO0OO(CoordinatorLayout coordinatorLayout, View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (ik) view2;
            }
        }
        return null;
    }

    public abstract boolean OooO0o0(View view, View view2, boolean z, boolean z3);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ik ikVar = (ik) view2;
        if (!OooO0O0(ikVar.OooO0O0())) {
            return false;
        }
        this.OooO00o = ikVar.OooO0O0() ? 1 : 2;
        return OooO0o0((View) ikVar, view, ikVar.OooO0O0(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        ik ikVarOooO0OO;
        if (ViewCompat.isLaidOut(view) || (ikVarOooO0OO = OooO0OO(coordinatorLayout, view)) == null || !OooO0O0(ikVarOooO0OO.OooO0O0())) {
            return false;
        }
        int i2 = ikVarOooO0OO.OooO0O0() ? 1 : 2;
        this.OooO00o = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new OooO00o(view, i2, ikVarOooO0OO));
        return false;
    }
}
