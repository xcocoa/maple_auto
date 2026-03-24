package com.google.android.material.chip;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import z2.ck;
import z2.cl;
import z2.el;
import z2.lj;
import z2.yk;

/* JADX INFO: loaded from: classes2.dex */
public class Chip extends AppCompatCheckBox implements ck.OooO0O0 {
    private static final String o00O0O = "Chip";
    private static final int o00Oo0 = 0;
    private static final Rect o00Ooo = new Rect();
    private static final int[] o00o0O = {R.attr.state_selected};
    private static final String o00ooo = "http://schemas.android.com/apk/res/android";

    @Nullable
    private ck OoooOoO;

    @Nullable
    private RippleDrawable OoooOoo;

    @Nullable
    private View.OnClickListener Ooooo00;

    @Nullable
    private CompoundButton.OnCheckedChangeListener Ooooo0o;
    private boolean OooooO0;
    private int OooooOO;
    private boolean OooooOo;
    private boolean Oooooo;
    private boolean Oooooo0;
    private final OooO0OO OoooooO;
    private final Rect Ooooooo;
    private final RectF o0OoOo0;
    private final ResourcesCompat.FontCallback ooOO;

    public class OooO00o extends ResourcesCompat.FontCallback {
        public OooO00o() {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            Chip chip = Chip.this;
            chip.setText(chip.getText());
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    public class OooO0O0 extends ViewOutlineProvider {
        public OooO0O0() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            if (Chip.this.OoooOoO != null) {
                Chip.this.OoooOoO.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    public class OooO0OO extends ExploreByTouchHelper {
        public OooO0OO(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            return (Chip.this.OooOO0o() && Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? 0 : -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            if (Chip.this.OooOO0o()) {
                list.add(0);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16 && i == 0) {
                return Chip.this.OooOo0O();
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.OoooOoO != null && Chip.this.OoooOoO.Oooooo0());
            accessibilityNodeInfoCompat.setClassName(Chip.class.getName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (!Chip.this.OooOO0o()) {
                accessibilityNodeInfoCompat.setContentDescription("");
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.o00Ooo);
                return;
            }
            CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
            if (closeIconContentDescription == null) {
                CharSequence text = Chip.this.getText();
                Context context = Chip.this.getContext();
                int i2 = com.google.android.material.R.string.mtrl_chip_close_icon_content_description;
                Object[] objArr = new Object[1];
                objArr[0] = TextUtils.isEmpty(text) ? "" : text;
                closeIconContentDescription = context.getString(i2, objArr).trim();
            }
            accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OooooOO = Integer.MIN_VALUE;
        this.Ooooooo = new Rect();
        this.o0OoOo0 = new RectF();
        this.ooOO = new OooO00o();
        OooOoO(attributeSet);
        ck ckVarOooOOO = ck.OooOOO(context, attributeSet, i, com.google.android.material.R.style.Widget_MaterialComponents_Chip_Action);
        setChipDrawable(ckVarOooOOO);
        OooO0OO oooO0OO = new OooO0OO(this);
        this.OoooooO = oooO0OO;
        ViewCompat.setAccessibilityDelegate(this, oooO0OO);
        OooOOO0();
        setChecked(this.OooooO0);
        ckVarOooOOO.o000O0oO(false);
        setText(ckVarOooOOO.OoooOo0());
        setEllipsize(ckVarOooOOO.OoooO0());
        setIncludeFontPadding(false);
        if (getTextAppearance() != null) {
            OooOoO0(getTextAppearance());
        }
        setSingleLine();
        setGravity(8388627);
        OooOo();
    }

    private int[] OooO() {
        int i = 0;
        int i2 = isEnabled() ? 1 : 0;
        if (this.Oooooo) {
            i2++;
        }
        if (this.Oooooo0) {
            i2++;
        }
        if (this.OooooOo) {
            i2++;
        }
        if (isChecked()) {
            i2++;
        }
        int[] iArr = new int[i2];
        if (isEnabled()) {
            iArr[0] = 16842910;
            i = 1;
        }
        if (this.Oooooo) {
            iArr[i] = 16842908;
            i++;
        }
        if (this.Oooooo0) {
            iArr[i] = 16843623;
            i++;
        }
        if (this.OooooOo) {
            iArr[i] = 16842919;
            i++;
        }
        if (isChecked()) {
            iArr[i] = 16842913;
        }
        return iArr;
    }

    private void OooO0oO(@NonNull ck ckVar) {
        ckVar.o000O0o(this);
    }

    private float OooO0oo(@NonNull ck ckVar) {
        float chipStartPadding = getChipStartPadding() + ckVar.OooO0Oo() + getTextStartPadding();
        return ViewCompat.getLayoutDirection(this) == 0 ? chipStartPadding : -chipStartPadding;
    }

    private void OooOO0() {
        if (this.OooooOO == Integer.MIN_VALUE) {
            setFocusedVirtualView(-1);
        }
    }

    @SuppressLint({"PrivateApi"})
    private boolean OooOO0O(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.OoooooO)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.OoooooO, Integer.MIN_VALUE);
                    return true;
                }
            } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException e) {
                Log.e(o00O0O, "Unable to send Accessibility Exit event", e);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean OooOO0o() {
        ck ckVar = this.OoooOoO;
        return (ckVar == null || ckVar.Oooo0O0() == null) ? false : true;
    }

    private void OooOOO0() {
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new OooO0O0());
        }
    }

    private void OooOo() {
        ck ckVar;
        if (TextUtils.isEmpty(getText()) || (ckVar = this.OoooOoO) == null) {
            return;
        }
        float fOooo000 = ckVar.Oooo000() + this.OoooOoO.OooOoOO() + this.OoooOoO.Ooooo00() + this.OoooOoO.OoooOoo();
        if ((this.OoooOoO.o0OoOo0() && this.OoooOoO.OooOoo0() != null) || (this.OoooOoO.OooOo() != null && this.OoooOoO.OoooooO() && isChecked())) {
            fOooo000 += this.OoooOoO.OoooOO0() + this.OoooOoO.OoooO() + this.OoooOoO.OooOoo();
        }
        if (this.OoooOoO.o00Oo0() && this.OoooOoO.Oooo0O0() != null) {
            fOooo000 += this.OoooOoO.Oooo0oO() + this.OoooOoO.Oooo0o0() + this.OoooOoO.Oooo0o();
        }
        if (ViewCompat.getPaddingEnd(this) != fOooo000) {
            ViewCompat.setPaddingRelative(this, ViewCompat.getPaddingStart(this), getPaddingTop(), (int) fOooo000, getPaddingBottom());
        }
    }

    private boolean OooOo0(boolean z) {
        OooOO0();
        if (z) {
            if (this.OooooOO == -1) {
                setFocusedVirtualView(0);
                return true;
            }
        } else if (this.OooooOO == 0) {
            setFocusedVirtualView(-1);
            return true;
        }
        return false;
    }

    private void OooOo0o(@Nullable ck ckVar) {
        if (ckVar != null) {
            ckVar.o000O0o(null);
        }
    }

    private void OooOoO(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
            throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
            Log.w(o00O0O, "Chip text must be vertically center and start aligned");
        }
    }

    private void OooOoO0(cl clVar) {
        TextPaint paint = getPaint();
        paint.drawableState = this.OoooOoO.getState();
        clVar.OooO0oO(getContext(), paint, this.ooOO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.o0OoOo0.setEmpty();
        if (OooOO0o()) {
            this.OoooOoO.OoooO00(this.o0OoOo0);
        }
        return this.o0OoOo0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.Ooooooo.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.Ooooooo;
    }

    @Nullable
    private cl getTextAppearance() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooOoO();
        }
        return null;
    }

    private void setCloseIconFocused(boolean z) {
        if (this.Oooooo != z) {
            this.Oooooo = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.Oooooo0 != z) {
            this.Oooooo0 = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.OooooOo != z) {
            this.OooooOo = z;
            refreshDrawableState();
        }
    }

    private void setFocusedVirtualView(int i) {
        int i2 = this.OooooOO;
        if (i2 != i) {
            if (i2 == 0) {
                setCloseIconFocused(false);
            }
            this.OooooOO = i;
            if (i == 0) {
                setCloseIconFocused(true);
            }
        }
    }

    @Override // z2.ck.OooO0O0
    public void OooO00o() {
        OooOo();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public boolean OooOOO() {
        ck ckVar = this.OoooOoO;
        return ckVar != null && ckVar.Oooooo0();
    }

    @Deprecated
    public boolean OooOOOO() {
        return OooOOOo();
    }

    public boolean OooOOOo() {
        ck ckVar = this.OoooOoO;
        return ckVar != null && ckVar.OoooooO();
    }

    public boolean OooOOo() {
        ck ckVar = this.OoooOoO;
        return ckVar != null && ckVar.o0OoOo0();
    }

    @Deprecated
    public boolean OooOOo0() {
        return OooOOo();
    }

    @Deprecated
    public boolean OooOOoo() {
        return OooOo00();
    }

    public boolean OooOo00() {
        ck ckVar = this.OoooOoO;
        return ckVar != null && ckVar.o00Oo0();
    }

    @CallSuper
    public boolean OooOo0O() {
        boolean z;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.Ooooo00;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.OoooooO.sendEventForVirtualView(0, 1);
        return z;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return OooOO0O(motionEvent) || this.OoooooO.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.OoooooO.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        ck ckVar = this.OoooOoO;
        if ((ckVar == null || !ckVar.o00O0O()) ? false : this.OoooOoO.o0000oo0(OooO())) {
            invalidate();
        }
    }

    @Nullable
    public Drawable getCheckedIcon() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOo();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOoO0();
        }
        return null;
    }

    public float getChipCornerRadius() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOoO();
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.OoooOoO;
    }

    public float getChipEndPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOoOO();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOoo0();
        }
        return null;
    }

    public float getChipIconSize() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOoo();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOooO();
        }
        return null;
    }

    public float getChipMinHeight() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OooOooo();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo000();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo00O();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo00o();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo0O0();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo0OO();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo0o0();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo0o();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo0oO();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Oooo();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooO0();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(Rect rect) {
        if (this.OooooOO == 0) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public lj getHideMotionSpec() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooO0O();
        }
        return null;
    }

    public float getIconEndPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooO();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooOO0();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooOOO();
        }
        return null;
    }

    @Nullable
    public lj getShowMotionSpec() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooOOo();
        }
        return null;
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        ck ckVar = this.OoooOoO;
        return ckVar != null ? ckVar.OoooOo0() : "";
    }

    public float getTextEndPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.OoooOoo();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            return ckVar.Ooooo00();
        }
        return 0.0f;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            CheckBox.mergeDrawableStates(iArrOnCreateDrawableState, o00o0O);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        ck ckVar;
        if (TextUtils.isEmpty(getText()) || (ckVar = this.OoooOoO) == null || ckVar.o000Oo()) {
            super.onDraw(canvas);
            return;
        }
        int iSave = canvas.save();
        canvas.translate(OooO0oo(this.OoooOoO), 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        setFocusedVirtualView(z ? -1 : Integer.MIN_VALUE);
        invalidate();
        super.onFocusChanged(z, i, rect);
        this.OoooooO.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        boolean zContains;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                zContains = false;
            }
            return super.onHoverEvent(motionEvent);
        }
        zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        setCloseIconHovered(zContains);
        return super.onHoverEvent(motionEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean zOooO00o;
        int keyCode = keyEvent.getKeyCode();
        boolean zOooOo0 = false;
        if (keyCode == 61) {
            int i2 = keyEvent.hasNoModifiers() ? 2 : keyEvent.hasModifiers(1) ? 1 : 0;
            if (i2 != 0) {
                ViewParent parent = getParent();
                View viewFocusSearch = this;
                do {
                    viewFocusSearch = viewFocusSearch.focusSearch(i2);
                    if (viewFocusSearch == null || viewFocusSearch == this) {
                        break;
                    }
                } while (viewFocusSearch.getParent() == parent);
                if (viewFocusSearch != null) {
                    viewFocusSearch.requestFocus();
                    return true;
                }
            }
        } else if (keyCode != 66) {
            switch (keyCode) {
                case 21:
                    if (keyEvent.hasNoModifiers()) {
                        zOooO00o = yk.OooO00o(this);
                        zOooOo0 = OooOo0(zOooO00o);
                    }
                    break;
                case 22:
                    if (keyEvent.hasNoModifiers()) {
                        zOooO00o = !yk.OooO00o(this);
                        zOooOo0 = OooOo0(zOooO00o);
                    }
                    break;
                case 23:
                    int i3 = this.OooooOO;
                    if (i3 == -1) {
                        performClick();
                    } else if (i3 == 0) {
                        OooOo0O();
                    }
                    break;
            }
            return true;
        }
        if (!zOooOo0) {
            return super.onKeyDown(i, keyEvent);
        }
        invalidate();
        return true;
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L22;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.OooooOo) {
                        if (!zContains) {
                            setCloseIconPressed(false);
                        }
                        z = true;
                    }
                }
                z = false;
            } else {
                if (this.OooooOo) {
                    OooOo0O();
                    z = true;
                }
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else {
            if (zContains) {
                setCloseIconPressed(true);
                z = true;
            }
            z = false;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != this.OoooOoO && drawable != this.OoooOoo) {
            throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
        }
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != this.OoooOoO && drawable != this.OoooOoo) {
            throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0ooOO0(z);
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0ooOOo(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        ck ckVar = this.OoooOoO;
        if (ckVar == null) {
            this.OooooO0 = z;
            return;
        }
        if (ckVar.Oooooo0()) {
            boolean zIsChecked = isChecked();
            super.setChecked(z);
            if (zIsChecked == z || (onCheckedChangeListener = this.Ooooo0o) == null) {
                return;
            }
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0ooOoO(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0OO00O(i);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.oo0o0Oo(i);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0O0O00(z);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OOo(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000000(i);
        }
    }

    public void setChipCornerRadius(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000000O(f);
        }
    }

    public void setChipCornerRadiusResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000000o(i);
        }
    }

    public void setChipDrawable(@NonNull ck ckVar) {
        Drawable drawable;
        ck ckVar2 = this.OoooOoO;
        if (ckVar2 != ckVar) {
            OooOo0o(ckVar2);
            this.OoooOoO = ckVar;
            OooO0oO(ckVar);
            if (el.OooO00o) {
                this.OoooOoo = new RippleDrawable(el.OooO00o(this.OoooOoO.OoooOOO()), this.OoooOoO, null);
                this.OoooOoO.o000Oo0o(false);
                drawable = this.OoooOoo;
            } else {
                this.OoooOoO.o000Oo0o(true);
                drawable = this.OoooOoO;
            }
            ViewCompat.setBackground(this, drawable);
        }
    }

    public void setChipEndPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o00000(f);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o00000O0(i);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o00000O(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o00000o0(i);
        }
    }

    public void setChipIconSize(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000Ooo(f);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o00000oO(i);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o00000oo(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000(i);
        }
    }

    public void setChipIconVisible(@BoolRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000O00(i);
        }
    }

    public void setChipIconVisible(boolean z) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000oo(z);
        }
    }

    public void setChipMinHeight(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000oO(f);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000O0(i);
        }
    }

    public void setChipStartPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000O0O(f);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OO(i);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000O(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000OO0(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000OO(f);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000OOO(i);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000OOo(drawable);
        }
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000Oo0(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000o0(f);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000o0O(i);
        }
    }

    public void setCloseIconResource(@DrawableRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000o0o(i);
        }
    }

    public void setCloseIconSize(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000o(f);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000oO0(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000oOO(f);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000oOo(i);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0000ooO(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000(i);
        }
    }

    public void setCloseIconVisible(@BoolRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O000(i);
        }
    }

    public void setCloseIconVisible(boolean z) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OoO(z);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.OoooOoO == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000Ooo(truncateAt);
        }
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w(o00O0O, "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(@Nullable lj ljVar) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O0O(ljVar);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000Oo0(i);
        }
    }

    public void setIconEndPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O00(f);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O00O(i);
        }
    }

    public void setIconStartPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O0(f);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O0Oo(i);
        }
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i) {
        super.setMaxWidth(i);
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OO0O(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i);
    }

    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.Ooooo0o = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.Ooooo00 = onClickListener;
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O0O0(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O0o0(i);
        }
    }

    public void setShowMotionSpec(@Nullable lj ljVar) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O0oo(ljVar);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000O(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.OoooOoO == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        CharSequence charSequenceUnicodeWrap = BidiFormatter.getInstance().unicodeWrap(charSequence);
        if (this.OoooOoO.o000Oo()) {
            charSequenceUnicodeWrap = null;
        }
        super.setText(charSequenceUnicodeWrap, bufferType);
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OO00(charSequence);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OO0o(i);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().OooO0oo(getContext(), getPaint(), this.ooOO);
            OooOoO0(getTextAppearance());
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OO0o(i);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().OooO0oo(context, getPaint(), this.ooOO);
            OooOoO0(getTextAppearance());
        }
    }

    public void setTextAppearance(@Nullable cl clVar) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o0OoO0o(clVar);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().OooO0oo(getContext(), getPaint(), this.ooOO);
            OooOoO0(clVar);
        }
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OO0o(i);
        }
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OOO(f);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000OOo0(i);
        }
    }

    public void setTextStartPadding(float f) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000Oo00(f);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        ck ckVar = this.OoooOoO;
        if (ckVar != null) {
            ckVar.o000Oo0O(i);
        }
    }
}
