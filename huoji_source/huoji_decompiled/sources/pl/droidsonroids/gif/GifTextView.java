package pl.droidsonroids.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import z2.ed0;
import z2.kd0;

/* JADX INFO: loaded from: classes2.dex */
public class GifTextView extends TextView {
    private kd0.OooO0O0 OoooOoO;

    public GifTextView(Context context) {
        super(context);
    }

    public GifTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO0OO(attributeSet, 0, 0);
    }

    public GifTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO0OO(attributeSet, i, 0);
    }

    @RequiresApi(21)
    public GifTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        OooO0OO(attributeSet, i, i2);
    }

    private void OooO00o() {
        if (this.OoooOoO.OooO0O0 < 0) {
            return;
        }
        for (Drawable drawable : getCompoundDrawables()) {
            kd0.OooO00o(this.OoooOoO.OooO0O0, drawable);
        }
        for (Drawable drawable2 : getCompoundDrawablesRelative()) {
            kd0.OooO00o(this.OoooOoO.OooO0O0, drawable2);
        }
        kd0.OooO00o(this.OoooOoO.OooO0O0, getBackground());
    }

    private Drawable OooO0O0(int i) {
        if (i == 0) {
            return null;
        }
        Resources resources = getResources();
        String resourceTypeName = resources.getResourceTypeName(i);
        if (!isInEditMode() && kd0.OooO0O0.contains(resourceTypeName)) {
            try {
                return new ed0(resources, i);
            } catch (Resources.NotFoundException | IOException unused) {
            }
        }
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, getContext().getTheme()) : resources.getDrawable(i);
    }

    private void OooO0OO(AttributeSet attributeSet, int i, int i2) {
        if (attributeSet != null) {
            Drawable drawableOooO0O0 = OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "drawableLeft", 0));
            Drawable drawableOooO0O02 = OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "drawableTop", 0));
            Drawable drawableOooO0O03 = OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "drawableRight", 0));
            Drawable drawableOooO0O04 = OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "drawableBottom", 0));
            Drawable drawableOooO0O05 = OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "drawableStart", 0));
            Drawable drawableOooO0O06 = OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "drawableEnd", 0));
            if (getLayoutDirection() == 0) {
                if (drawableOooO0O05 != null) {
                    drawableOooO0O0 = drawableOooO0O05;
                }
                if (drawableOooO0O06 == null) {
                    drawableOooO0O06 = drawableOooO0O03;
                }
            } else {
                if (drawableOooO0O05 != null) {
                    drawableOooO0O03 = drawableOooO0O05;
                }
                if (drawableOooO0O06 == null) {
                    drawableOooO0O06 = drawableOooO0O0;
                }
                drawableOooO0O0 = drawableOooO0O03;
            }
            setCompoundDrawablesRelativeWithIntrinsicBounds(drawableOooO0O0, drawableOooO0O02, drawableOooO0O06, drawableOooO0O04);
            setBackground(OooO0O0(attributeSet.getAttributeResourceValue(kd0.OooO00o, "background", 0)));
            this.OoooOoO = new kd0.OooO0O0(this, attributeSet, i, i2);
            OooO00o();
        }
        this.OoooOoO = new kd0.OooO0O0();
    }

    private static void OooO0Oo(Drawable[] drawableArr, boolean z) {
        for (Drawable drawable : drawableArr) {
            if (drawable != null) {
                drawable.setVisible(z, false);
            }
        }
    }

    private void setCompoundDrawablesVisible(boolean z) {
        OooO0Oo(getCompoundDrawables(), z);
        OooO0Oo(getCompoundDrawablesRelative(), z);
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setCompoundDrawablesVisible(true);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setCompoundDrawablesVisible(false);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof GifViewSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        GifViewSavedState gifViewSavedState = (GifViewSavedState) parcelable;
        super.onRestoreInstanceState(gifViewSavedState.getSuperState());
        Drawable[] compoundDrawables = getCompoundDrawables();
        gifViewSavedState.restoreState(compoundDrawables[0], 0);
        gifViewSavedState.restoreState(compoundDrawables[1], 1);
        gifViewSavedState.restoreState(compoundDrawables[2], 2);
        gifViewSavedState.restoreState(compoundDrawables[3], 3);
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        gifViewSavedState.restoreState(compoundDrawablesRelative[0], 4);
        gifViewSavedState.restoreState(compoundDrawablesRelative[2], 5);
        gifViewSavedState.restoreState(getBackground(), 6);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Drawable[] drawableArr = new Drawable[7];
        if (this.OoooOoO.OooO00o) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            System.arraycopy(compoundDrawables, 0, drawableArr, 0, compoundDrawables.length);
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            drawableArr[4] = compoundDrawablesRelative[0];
            drawableArr[5] = compoundDrawablesRelative[2];
            drawableArr[6] = getBackground();
        }
        return new GifViewSavedState(super.onSaveInstanceState(), drawableArr);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        setBackground(OooO0O0(i));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesRelativeWithIntrinsicBounds(OooO0O0(i), OooO0O0(i2), OooO0O0(i3), OooO0O0(i4));
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        setCompoundDrawablesWithIntrinsicBounds(OooO0O0(i), OooO0O0(i2), OooO0O0(i3), OooO0O0(i4));
    }

    public void setFreezesAnimation(boolean z) {
        this.OoooOoO.OooO00o = z;
    }
}
