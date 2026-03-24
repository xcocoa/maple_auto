package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.cardview.widget.CardView;
import com.google.android.material.R;
import z2.bk;
import z2.xk;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialCardView extends CardView {
    private final bk OoooOoO;

    public MaterialCardView(Context context) {
        this(context, null);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialCardViewStyle);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.MaterialCardView, i, R.style.Widget_MaterialComponents_CardView, new int[0]);
        bk bkVar = new bk(this);
        this.OoooOoO = bkVar;
        bkVar.OooO0o0(typedArrayOooOO0);
        typedArrayOooOO0.recycle();
    }

    @ColorInt
    public int getStrokeColor() {
        return this.OoooOoO.OooO0OO();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.OoooOoO.OooO0Oo();
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.OoooOoO.OooO0oo();
    }

    public void setStrokeColor(@ColorInt int i) {
        this.OoooOoO.OooO0o(i);
    }

    public void setStrokeWidth(@Dimension int i) {
        this.OoooOoO.OooO0oO(i);
    }
}
