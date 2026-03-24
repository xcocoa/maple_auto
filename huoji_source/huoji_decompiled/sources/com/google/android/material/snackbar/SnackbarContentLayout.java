package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import z2.ql;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout implements ql {
    private TextView OoooOoO;
    private Button OoooOoo;
    private int Ooooo00;
    private int Ooooo0o;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        this.Ooooo00 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.Ooooo0o = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static void OooO0OO(View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    private boolean OooO0Oo(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.OoooOoO.getPaddingTop() == i2 && this.OoooOoO.getPaddingBottom() == i3) {
            return z;
        }
        OooO0OO(this.OoooOoO, i2, i3);
        return true;
    }

    @Override // z2.ql
    public void OooO00o(int i, int i2) {
        this.OoooOoO.setAlpha(0.0f);
        long j = i2;
        long j2 = i;
        this.OoooOoO.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        if (this.OoooOoo.getVisibility() == 0) {
            this.OoooOoo.setAlpha(0.0f);
            this.OoooOoo.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // z2.ql
    public void OooO0O0(int i, int i2) {
        this.OoooOoO.setAlpha(1.0f);
        long j = i2;
        long j2 = i;
        this.OoooOoO.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        if (this.OoooOoo.getVisibility() == 0) {
            this.OoooOoo.setAlpha(1.0f);
            this.OoooOoo.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    public Button getActionView() {
        return this.OoooOoo;
    }

    public TextView getMessageView() {
        return this.OoooOoO;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.OoooOoO = (TextView) findViewById(R.id.snackbar_text);
        this.OoooOoo = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.Ooooo00 > 0) {
            int measuredWidth = getMeasuredWidth();
            int i3 = this.Ooooo00;
            if (measuredWidth > i3) {
                i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                super.onMeasure(i, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z = false;
        boolean z3 = this.OoooOoO.getLayout().getLineCount() > 1;
        if (!z3 || this.Ooooo0o <= 0 || this.OoooOoo.getMeasuredWidth() <= this.Ooooo0o) {
            if (!z3) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (OooO0Oo(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
        } else if (OooO0Oo(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }
}
