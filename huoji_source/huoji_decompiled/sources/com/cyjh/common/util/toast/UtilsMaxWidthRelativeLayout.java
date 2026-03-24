package com.cyjh.common.util.toast;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import z2.w5;

/* JADX INFO: loaded from: classes.dex */
public class UtilsMaxWidthRelativeLayout extends RelativeLayout {
    private static final int OoooOoO = w5.OooO0Oo(80.0f);

    public UtilsMaxWidthRelativeLayout(Context context) {
        super(context);
    }

    public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(w5.OooOO0() - OoooOoO, Integer.MIN_VALUE), i2);
    }
}
