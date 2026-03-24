package com.google.android.material.transformation;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.CallSuper;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import z2.lj;
import z2.nj;

/* JADX INFO: loaded from: classes2.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {
    private Map<View, Integer> OooOO0;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void OooOoOO(View view, boolean z) {
        int iIntValue;
        int i = Build.VERSION.SDK_INT;
        ViewParent parent = view.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (i >= 16 && z) {
                this.OooOO0 = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof FabTransformationScrimBehavior);
                if (childAt != view && !z3) {
                    if (z) {
                        if (i >= 16) {
                            this.OooOO0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        iIntValue = 4;
                    } else {
                        Map<View, Integer> map = this.OooOO0;
                        if (map != null && map.containsKey(childAt)) {
                            iIntValue = this.OooOO0.get(childAt).intValue();
                        }
                    }
                    ViewCompat.setImportantForAccessibility(childAt, iIntValue);
                }
            }
            if (z) {
                return;
            }
            this.OooOO0 = null;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    public boolean OooO0o0(View view, View view2, boolean z, boolean z3) {
        OooOoOO(view2, z);
        return super.OooO0o0(view, view2, z, z3);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    public FabTransformationBehavior.OooO OooOoO0(Context context, boolean z) {
        int i = z ? R.animator.mtrl_fab_transformation_sheet_expand_spec : R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.OooO oooO = new FabTransformationBehavior.OooO();
        oooO.OooO00o = lj.OooO0OO(context, i);
        oooO.OooO0O0 = new nj(17, 0.0f, 0.0f);
        return oooO;
    }
}
