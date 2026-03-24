package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import z2.ek;
import z2.fk;

/* JADX INFO: loaded from: classes2.dex */
public class CircularRevealLinearLayout extends LinearLayout implements fk {
    private final ek OoooOoO;

    public CircularRevealLinearLayout(Context context) {
        this(context, null);
    }

    public CircularRevealLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.OoooOoO = new ek(this);
    }

    @Override // z2.fk
    public void OooO00o() {
        this.OoooOoO.OooO00o();
    }

    @Override // z2.fk
    public void OooO0O0() {
        this.OoooOoO.OooO0O0();
    }

    @Override // z2.ek.OooO00o
    public void OooO0OO(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // z2.ek.OooO00o
    public boolean OooO0Oo() {
        return super.isOpaque();
    }

    @Override // android.view.View, z2.fk
    public void draw(Canvas canvas) {
        ek ekVar = this.OoooOoO;
        if (ekVar != null) {
            ekVar.OooO0OO(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // z2.fk
    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.OoooOoO.OooO0oO();
    }

    @Override // z2.fk
    public int getCircularRevealScrimColor() {
        return this.OoooOoO.OooO0oo();
    }

    @Override // z2.fk
    @Nullable
    public fk.OooO getRevealInfo() {
        return this.OoooOoO.OooOO0();
    }

    @Override // android.view.View, z2.fk
    public boolean isOpaque() {
        ek ekVar = this.OoooOoO;
        return ekVar != null ? ekVar.OooOO0o() : super.isOpaque();
    }

    @Override // z2.fk
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.OoooOoO.OooOOO0(drawable);
    }

    @Override // z2.fk
    public void setCircularRevealScrimColor(@ColorInt int i) {
        this.OoooOoO.OooOOO(i);
    }

    @Override // z2.fk
    public void setRevealInfo(@Nullable fk.OooO oooO) {
        this.OoooOoO.OooOOOO(oooO);
    }
}
