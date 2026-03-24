package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import z2.bl;
import z2.xk;
import z2.yk;
import z2.zj;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialButton extends AppCompatButton {
    public static final int Oooooo = 1;
    public static final int OoooooO = 2;
    private static final String Ooooooo = "MaterialButton";

    @Nullable
    private final zj OoooOoO;

    @Px
    private int OoooOoo;
    private PorterDuff.Mode Ooooo00;
    private ColorStateList Ooooo0o;
    private Drawable OooooO0;

    @Px
    private int OooooOO;

    @Px
    private int OooooOo;
    private int Oooooo0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface OooO00o {
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonStyle);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayOooOO0 = xk.OooOO0(context, attributeSet, R.styleable.MaterialButton, i, R.style.Widget_MaterialComponents_Button, new int[0]);
        this.OoooOoo = typedArrayOooOO0.getDimensionPixelSize(R.styleable.MaterialButton_iconPadding, 0);
        this.Ooooo00 = yk.OooO0O0(typedArrayOooOO0.getInt(R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.Ooooo0o = bl.OooO00o(getContext(), typedArrayOooOO0, R.styleable.MaterialButton_iconTint);
        this.OooooO0 = bl.OooO0O0(getContext(), typedArrayOooOO0, R.styleable.MaterialButton_icon);
        this.Oooooo0 = typedArrayOooOO0.getInteger(R.styleable.MaterialButton_iconGravity, 1);
        this.OooooOO = typedArrayOooOO0.getDimensionPixelSize(R.styleable.MaterialButton_iconSize, 0);
        zj zjVar = new zj(this);
        this.OoooOoO = zjVar;
        zjVar.OooOO0O(typedArrayOooOO0);
        typedArrayOooOO0.recycle();
        setCompoundDrawablePadding(this.OoooOoo);
        OooO0OO();
    }

    private boolean OooO00o() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    private boolean OooO0O0() {
        zj zjVar = this.OoooOoO;
        return (zjVar == null || zjVar.OooOO0()) ? false : true;
    }

    private void OooO0OO() {
        Drawable drawable = this.OooooO0;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.OooooO0 = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.Ooooo0o);
            PorterDuff.Mode mode = this.Ooooo00;
            if (mode != null) {
                DrawableCompat.setTintMode(this.OooooO0, mode);
            }
            int intrinsicWidth = this.OooooOO;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.OooooO0.getIntrinsicWidth();
            }
            int intrinsicHeight = this.OooooOO;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.OooooO0.getIntrinsicHeight();
            }
            Drawable drawable2 = this.OooooO0;
            int i = this.OooooOo;
            drawable2.setBounds(i, 0, intrinsicWidth + i, intrinsicHeight);
        }
        TextViewCompat.setCompoundDrawablesRelative(this, this.OooooO0, null, null, null);
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (OooO0O0()) {
            return this.OoooOoO.OooO0Oo();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.OooooO0;
    }

    public int getIconGravity() {
        return this.Oooooo0;
    }

    @Px
    public int getIconPadding() {
        return this.OoooOoo;
    }

    @Px
    public int getIconSize() {
        return this.OooooOO;
    }

    public ColorStateList getIconTint() {
        return this.Ooooo0o;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.Ooooo00;
    }

    public ColorStateList getRippleColor() {
        if (OooO0O0()) {
            return this.OoooOoO.OooO0o0();
        }
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (OooO0O0()) {
            return this.OoooOoO.OooO0o();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (OooO0O0()) {
            return this.OoooOoO.OooO0oO();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return OooO0O0() ? this.OoooOoO.OooO0oo() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return OooO0O0() ? this.OoooOoO.OooO() : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT >= 21 || !OooO0O0()) {
            return;
        }
        this.OoooOoO.OooO0OO(canvas);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        zj zjVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (zjVar = this.OoooOoO) == null) {
            return;
        }
        zjVar.OooOo0O(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.OooooO0 == null || this.Oooooo0 != 2) {
            return;
        }
        int iMeasureText = (int) getPaint().measureText(getText().toString());
        int intrinsicWidth = this.OooooOO;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.OooooO0.getIntrinsicWidth();
        }
        int measuredWidth = (((((getMeasuredWidth() - iMeasureText) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.OoooOoo) - ViewCompat.getPaddingStart(this)) / 2;
        if (OooO00o()) {
            measuredWidth = -measuredWidth;
        }
        if (this.OooooOo != measuredWidth) {
            this.OooooOo = measuredWidth;
            OooO0OO();
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (OooO0O0()) {
            this.OoooOoO.OooOO0o(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (OooO0O0()) {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            } else {
                Log.i(Ooooooo, "Setting a custom background is not supported.");
                this.OoooOoO.OooOOO0();
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCornerRadius(@Px int i) {
        if (OooO0O0()) {
            this.OoooOoO.OooOOO(i);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (OooO0O0()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.OooooO0 != drawable) {
            this.OooooO0 = drawable;
            OooO0OO();
        }
    }

    public void setIconGravity(int i) {
        this.Oooooo0 = i;
    }

    public void setIconPadding(@Px int i) {
        if (this.OoooOoo != i) {
            this.OoooOoo = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(@DrawableRes int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setIconSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.OooooOO != i) {
            this.OooooOO = i;
            OooO0OO();
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.Ooooo0o != colorStateList) {
            this.Ooooo0o = colorStateList;
            OooO0OO();
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.Ooooo00 != mode) {
            this.Ooooo00 = mode;
            OooO0OO();
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (OooO0O0()) {
            this.OoooOoO.OooOOOO(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (OooO0O0()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (OooO0O0()) {
            this.OoooOoO.OooOOOo(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (OooO0O0()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setStrokeWidth(@Px int i) {
        if (OooO0O0()) {
            this.OoooOoO.OooOOo0(i);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (OooO0O0()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (OooO0O0()) {
            this.OoooOoO.OooOOo(colorStateList);
        } else if (this.OoooOoO != null) {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (OooO0O0()) {
            this.OoooOoO.OooOOoo(mode);
        } else if (this.OoooOoO != null) {
            super.setSupportBackgroundTintMode(mode);
        }
    }
}
