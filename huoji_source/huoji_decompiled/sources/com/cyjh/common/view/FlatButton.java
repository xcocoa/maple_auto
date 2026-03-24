package com.cyjh.common.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.Button;
import com.cyjh.common.R;

/* JADX INFO: loaded from: classes.dex */
public class FlatButton extends Button {
    private StateListDrawable OoooOoO;
    private CharSequence OoooOoo;
    private float Ooooo00;

    public FlatButton(Context context) {
        super(context);
        OooO0oO(context, null);
    }

    public FlatButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO0oO(context, attributeSet);
    }

    public FlatButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO0oO(context, attributeSet);
    }

    private LayerDrawable OooO00o(TypedArray typedArray) {
        LayerDrawable layerDrawable = (LayerDrawable) OooO0o0(R.drawable.rect_normal).mutate();
        GradientDrawable gradientDrawable = (GradientDrawable) layerDrawable.getDrawable(0).mutate();
        gradientDrawable.setCornerRadius(getCornerRadius());
        gradientDrawable.setColor(typedArray.getColor(R.styleable.FlatButton_pb_colorPressed, OooO0OO(R.color.blue_pressed)));
        GradientDrawable gradientDrawable2 = (GradientDrawable) layerDrawable.getDrawable(1).mutate();
        gradientDrawable2.setCornerRadius(getCornerRadius());
        gradientDrawable2.setColor(typedArray.getColor(R.styleable.FlatButton_pb_colorNormal, OooO0OO(R.color.blue_normal)));
        return layerDrawable;
    }

    private Drawable OooO0O0(TypedArray typedArray) {
        GradientDrawable gradientDrawable = (GradientDrawable) OooO0o0(R.drawable.rect_pressed).mutate();
        gradientDrawable.setCornerRadius(getCornerRadius());
        gradientDrawable.setColor(typedArray.getColor(R.styleable.FlatButton_pb_colorPressed, OooO0OO(R.color.blue_pressed)));
        return gradientDrawable;
    }

    private void OooO0oO(Context context, AttributeSet attributeSet) {
        this.OoooOoO = new StateListDrawable();
        if (attributeSet != null) {
            OooO0oo(context, attributeSet);
        }
        this.OoooOoo = getText().toString();
        setBackgroundCompat(this.OoooOoO);
    }

    private void OooO0oo(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayOooO0o = OooO0o(context, attributeSet, R.styleable.FlatButton);
        if (typedArrayOooO0o == null) {
            return;
        }
        try {
            this.Ooooo00 = typedArrayOooO0o.getDimension(R.styleable.FlatButton_pb_cornerRadius, OooO0Oo(R.dimen.corner_radius));
            this.OoooOoO.addState(new int[]{android.R.attr.state_pressed}, OooO0O0(typedArrayOooO0o));
            this.OoooOoO.addState(new int[]{android.R.attr.state_focused}, OooO0O0(typedArrayOooO0o));
            this.OoooOoO.addState(new int[]{android.R.attr.state_selected}, OooO0O0(typedArrayOooO0o));
            this.OoooOoO.addState(new int[0], OooO00o(typedArrayOooO0o));
        } finally {
            typedArrayOooO0o.recycle();
        }
    }

    public int OooO0OO(int i) {
        return getResources().getColor(i);
    }

    public float OooO0Oo(int i) {
        return getResources().getDimension(i);
    }

    public TypedArray OooO0o(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public Drawable OooO0o0(int i) {
        return getResources().getDrawable(i);
    }

    public float getCornerRadius() {
        return this.Ooooo00;
    }

    public StateListDrawable getNormalDrawable() {
        return this.OoooOoO;
    }

    public CharSequence getNormalText() {
        return this.OoooOoo;
    }

    @SuppressLint({"NewApi"})
    public void setBackgroundCompat(Drawable drawable) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
        setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
    }
}
