package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import z2.ej;
import z2.ok;
import z2.pk;
import z2.qk;
import z2.sl;
import z2.tl;
import z2.xk;
import z2.yk;

/* JADX INFO: loaded from: classes2.dex */
public class TextInputLayout extends LinearLayout {
    private static final int o0000Oo = 167;
    private static final int o0000OoO = -1;
    public static final int o0000o = 2;
    private static final String o0000o0 = "TextInputLayout";
    public static final int o0000o0O = 0;
    public static final int o0000o0o = 1;
    private final FrameLayout OoooOoO;
    public EditText OoooOoo;
    private CharSequence Ooooo00;
    private final tl Ooooo0o;
    public boolean OooooO0;
    private int OooooOO;
    private boolean OooooOo;
    private final int Oooooo;
    private TextView Oooooo0;
    private final int OoooooO;
    private boolean Ooooooo;
    private ColorStateList o0000;
    private CharSequence o00000;
    private Typeface o000000;
    private boolean o000000O;
    private Drawable o000000o;
    private boolean o00000O;
    private CheckableImageButton o00000O0;
    private Drawable o00000OO;
    private Drawable o00000Oo;
    private ColorStateList o00000o0;
    private PorterDuff.Mode o00000oO;
    private boolean o00000oo;
    public final ok o0000O;

    @ColorInt
    private int o0000O0;
    private ColorStateList o0000O00;

    @ColorInt
    private final int o0000O0O;
    private ValueAnimator o0000OO;
    private boolean o0000OO0;
    private boolean o0000OOO;
    private boolean o0000OOo;
    private boolean o0000Oo0;
    private boolean o0000Ooo;

    @ColorInt
    private final int o0000oO;

    @ColorInt
    private final int o0000oo;
    private boolean o000OO;
    private final RectF o000OOo;
    private GradientDrawable o00O0O;
    private final int o00Oo0;
    private final int o00Ooo;
    private int o00o0O;
    private float o00oO0O;
    private float o00oO0o;
    private final int o00ooo;
    private final Rect o0O0O00;

    @ColorInt
    private int o0OO00O;
    private final int o0OOO0o;

    @ColorInt
    private int o0Oo0oo;
    private CharSequence o0OoOo0;
    private float o0ooOO0;
    private int o0ooOOo;
    private final int o0ooOoO;
    private float oo000o;
    private Drawable oo0o0Oo;
    private boolean ooOO;

    @Retention(RetentionPolicy.SOURCE)
    public @interface OooO {
    }

    public class OooO00o implements TextWatcher {
        public OooO00o() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.Oooo0o(!r0.o0000Oo0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.OooooO0) {
                textInputLayout.Oooo0(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public class OooO0O0 implements View.OnClickListener {
        public OooO0O0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TextInputLayout.this.OooOoo0(false);
        }
    }

    public class OooO0OO implements ValueAnimator.AnimatorUpdateListener {
        public OooO0OO() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.o0000O.OoooO(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class OooO0o extends AccessibilityDelegateCompat {
        private final TextInputLayout OooO00o;

        public OooO0o(TextInputLayout textInputLayout) {
            this.OooO00o = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.OooO00o.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.OooO00o.getHint();
            CharSequence error = this.OooO00o.getError();
            CharSequence counterOverflowDescription = this.OooO00o.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z3 = !TextUtils.isEmpty(hint);
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = false;
            boolean z6 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            if (z) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (z3) {
                accessibilityNodeInfoCompat.setText(hint);
            }
            if (z3) {
                accessibilityNodeInfoCompat.setHintText(hint);
                if (!z && z3) {
                    z5 = true;
                }
                accessibilityNodeInfoCompat.setShowingHintText(z5);
            }
            if (z6) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
                accessibilityNodeInfoCompat.setContentInvalid(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            EditText editText = this.OooO00o.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            if (TextUtils.isEmpty(text)) {
                text = this.OooO00o.getHint();
            }
            if (TextUtils.isEmpty(text)) {
                return;
            }
            accessibilityEvent.getText().add(text);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public CharSequence error;
        public boolean isPasswordToggledVisible;

        public static class OooO00o implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: OooO0O0, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isPasswordToggledVisible = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isPasswordToggledVisible ? 1 : 0);
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Ooooo0o = new tl(this);
        this.o0O0O00 = new Rect();
        this.o000OOo = new RectF();
        ok okVar = new ok(this);
        this.o0000O = okVar;
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context);
        this.OoooOoO = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(frameLayout);
        TimeInterpolator timeInterpolator = ej.OooO00o;
        okVar.OoooOo0(timeInterpolator);
        okVar.o000oOoO(timeInterpolator);
        okVar.Oooo0OO(8388659);
        TintTypedArray tintTypedArrayOooOO0O = xk.OooOO0O(context, attributeSet, R.styleable.TextInputLayout, i, R.style.Widget_Design_TextInputLayout, new int[0]);
        this.Ooooooo = tintTypedArrayOooOO0O.getBoolean(R.styleable.TextInputLayout_hintEnabled, true);
        setHint(tintTypedArrayOooOO0O.getText(R.styleable.TextInputLayout_android_hint));
        this.o0000OO0 = tintTypedArrayOooOO0O.getBoolean(R.styleable.TextInputLayout_hintAnimationEnabled, true);
        this.o00Oo0 = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_bottom_offset);
        this.o00Ooo = context.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.o00ooo = tintTypedArrayOooOO0O.getDimensionPixelOffset(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.oo000o = tintTypedArrayOooOO0O.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopStart, 0.0f);
        this.o00oO0o = tintTypedArrayOooOO0O.getDimension(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, 0.0f);
        this.o00oO0O = tintTypedArrayOooOO0O.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, 0.0f);
        this.o0ooOO0 = tintTypedArrayOooOO0O.getDimension(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, 0.0f);
        this.o0OO00O = tintTypedArrayOooOO0O.getColor(R.styleable.TextInputLayout_boxBackgroundColor, 0);
        this.o0000O0 = tintTypedArrayOooOO0O.getColor(R.styleable.TextInputLayout_boxStrokeColor, 0);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default);
        this.o0ooOoO = dimensionPixelSize;
        this.o0OOO0o = context.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused);
        this.o0ooOOo = dimensionPixelSize;
        setBoxBackgroundMode(tintTypedArrayOooOO0O.getInt(R.styleable.TextInputLayout_boxBackgroundMode, 0));
        int i2 = R.styleable.TextInputLayout_android_textColorHint;
        if (tintTypedArrayOooOO0O.hasValue(i2)) {
            ColorStateList colorStateList = tintTypedArrayOooOO0O.getColorStateList(i2);
            this.o0000O00 = colorStateList;
            this.o0000 = colorStateList;
        }
        this.o0000oo = ContextCompat.getColor(context, R.color.mtrl_textinput_default_box_stroke_color);
        this.o0000O0O = ContextCompat.getColor(context, R.color.mtrl_textinput_disabled_color);
        this.o0000oO = ContextCompat.getColor(context, R.color.mtrl_textinput_hovered_box_stroke_color);
        int i3 = R.styleable.TextInputLayout_hintTextAppearance;
        if (tintTypedArrayOooOO0O.getResourceId(i3, -1) != -1) {
            setHintTextAppearance(tintTypedArrayOooOO0O.getResourceId(i3, 0));
        }
        int resourceId = tintTypedArrayOooOO0O.getResourceId(R.styleable.TextInputLayout_errorTextAppearance, 0);
        boolean z = tintTypedArrayOooOO0O.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
        int resourceId2 = tintTypedArrayOooOO0O.getResourceId(R.styleable.TextInputLayout_helperTextTextAppearance, 0);
        boolean z3 = tintTypedArrayOooOO0O.getBoolean(R.styleable.TextInputLayout_helperTextEnabled, false);
        CharSequence text = tintTypedArrayOooOO0O.getText(R.styleable.TextInputLayout_helperText);
        boolean z4 = tintTypedArrayOooOO0O.getBoolean(R.styleable.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(tintTypedArrayOooOO0O.getInt(R.styleable.TextInputLayout_counterMaxLength, -1));
        this.OoooooO = tintTypedArrayOooOO0O.getResourceId(R.styleable.TextInputLayout_counterTextAppearance, 0);
        this.Oooooo = tintTypedArrayOooOO0O.getResourceId(R.styleable.TextInputLayout_counterOverflowTextAppearance, 0);
        this.o000000O = tintTypedArrayOooOO0O.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false);
        this.o000000o = tintTypedArrayOooOO0O.getDrawable(R.styleable.TextInputLayout_passwordToggleDrawable);
        this.o00000 = tintTypedArrayOooOO0O.getText(R.styleable.TextInputLayout_passwordToggleContentDescription);
        int i4 = R.styleable.TextInputLayout_passwordToggleTint;
        if (tintTypedArrayOooOO0O.hasValue(i4)) {
            this.o0000Ooo = true;
            this.o00000o0 = tintTypedArrayOooOO0O.getColorStateList(i4);
        }
        int i5 = R.styleable.TextInputLayout_passwordToggleTintMode;
        if (tintTypedArrayOooOO0O.hasValue(i5)) {
            this.o00000oo = true;
            this.o00000oO = yk.OooO0O0(tintTypedArrayOooOO0O.getInt(i5, -1), null);
        }
        tintTypedArrayOooOO0O.recycle();
        setHelperTextEnabled(z3);
        setHelperText(text);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z);
        setErrorTextAppearance(resourceId);
        setCounterEnabled(z4);
        OooO0o0();
        ViewCompat.setImportantForAccessibility(this, 2);
    }

    private int OooO() {
        float fOooOOO;
        if (!this.Ooooooo) {
            return 0;
        }
        int i = this.o00o0O;
        if (i == 0 || i == 1) {
            fOooOOO = this.o0000O.OooOOO();
        } else {
            if (i != 2) {
                return 0;
            }
            fOooOOO = this.o0000O.OooOOO() / 2.0f;
        }
        return (int) fOooOOO;
    }

    private void OooO0OO() {
        int i;
        Drawable drawable;
        if (this.o00O0O == null) {
            return;
        }
        OooOooO();
        EditText editText = this.OoooOoo;
        if (editText != null && this.o00o0O == 2) {
            if (editText.getBackground() != null) {
                this.oo0o0Oo = this.OoooOoo.getBackground();
            }
            ViewCompat.setBackground(this.OoooOoo, null);
        }
        EditText editText2 = this.OoooOoo;
        if (editText2 != null && this.o00o0O == 1 && (drawable = this.oo0o0Oo) != null) {
            ViewCompat.setBackground(editText2, drawable);
        }
        int i2 = this.o0ooOOo;
        if (i2 > -1 && (i = this.o0Oo0oo) != 0) {
            this.o00O0O.setStroke(i2, i);
        }
        this.o00O0O.setCornerRadii(getCornerRadiiAsArray());
        this.o00O0O.setColor(this.o0OO00O);
        invalidate();
    }

    private void OooO0Oo(RectF rectF) {
        float f = rectF.left;
        int i = this.o00Ooo;
        rectF.left = f - i;
        rectF.top -= i;
        rectF.right += i;
        rectF.bottom += i;
    }

    private void OooO0o() {
        GradientDrawable gradientDrawable;
        int i = this.o00o0O;
        if (i == 0) {
            gradientDrawable = null;
        } else if (i == 2 && this.Ooooooo && !(this.o00O0O instanceof sl)) {
            gradientDrawable = new sl();
        } else if (this.o00O0O instanceof GradientDrawable) {
            return;
        } else {
            gradientDrawable = new GradientDrawable();
        }
        this.o00O0O = gradientDrawable;
    }

    private void OooO0o0() {
        Drawable drawable = this.o000000o;
        if (drawable != null) {
            if (this.o0000Ooo || this.o00000oo) {
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                this.o000000o = drawableMutate;
                if (this.o0000Ooo) {
                    DrawableCompat.setTintList(drawableMutate, this.o00000o0);
                }
                if (this.o00000oo) {
                    DrawableCompat.setTintMode(this.o000000o, this.o00000oO);
                }
                CheckableImageButton checkableImageButton = this.o00000O0;
                if (checkableImageButton != null) {
                    Drawable drawable2 = checkableImageButton.getDrawable();
                    Drawable drawable3 = this.o000000o;
                    if (drawable2 != drawable3) {
                        this.o00000O0.setImageDrawable(drawable3);
                    }
                }
            }
        }
    }

    private int OooO0oO() {
        EditText editText = this.OoooOoo;
        if (editText == null) {
            return 0;
        }
        int i = this.o00o0O;
        if (i == 1) {
            return editText.getTop();
        }
        if (i != 2) {
            return 0;
        }
        return editText.getTop() + OooO();
    }

    private int OooO0oo() {
        int i = this.o00o0O;
        return i != 1 ? i != 2 ? getPaddingTop() : getBoxBackground().getBounds().top - OooO() : getBoxBackground().getBounds().top + this.o00ooo;
    }

    private void OooOO0() {
        if (OooOO0o()) {
            ((sl) this.o00O0O).OooO0Oo();
        }
    }

    private void OooOO0O(boolean z) {
        ValueAnimator valueAnimator = this.o0000OO;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.o0000OO.cancel();
        }
        if (z && this.o0000OO0) {
            OooO0O0(1.0f);
        } else {
            this.o0000O.OoooO(1.0f);
        }
        this.o000OO = false;
        if (OooOO0o()) {
            OooOoOO();
        }
    }

    private boolean OooOO0o() {
        return this.Ooooooo && !TextUtils.isEmpty(this.o0OoOo0) && (this.o00O0O instanceof sl);
    }

    private void OooOOO() {
        Drawable background;
        int i = Build.VERSION.SDK_INT;
        if ((i != 21 && i != 22) || (background = this.OoooOoo.getBackground()) == null || this.o0000OOO) {
            return;
        }
        Drawable drawableNewDrawable = background.getConstantState().newDrawable();
        if (background instanceof DrawableContainer) {
            this.o0000OOO = qk.OooO00o((DrawableContainer) background, drawableNewDrawable.getConstantState());
        }
        if (this.o0000OOO) {
            return;
        }
        ViewCompat.setBackground(this.OoooOoo, drawableNewDrawable);
        this.o0000OOO = true;
        OooOoO();
    }

    private void OooOOOO(boolean z) {
        ValueAnimator valueAnimator = this.o0000OO;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.o0000OO.cancel();
        }
        if (z && this.o0000OO0) {
            OooO0O0(0.0f);
        } else {
            this.o0000O.OoooO(0.0f);
        }
        if (OooOO0o() && ((sl) this.o00O0O).OooO00o()) {
            OooOO0();
        }
        this.o000OO = true;
    }

    private boolean OooOOOo() {
        EditText editText = this.OoooOoo;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private void OooOoO() {
        OooO0o();
        if (this.o00o0O != 0) {
            Oooo0o0();
        }
        Oooo();
    }

    private void OooOoOO() {
        if (OooOO0o()) {
            RectF rectF = this.o000OOo;
            this.o0000O.OooOO0O(rectF);
            OooO0Oo(rectF);
            ((sl) this.o00O0O).OooO0oO(rectF);
        }
    }

    private static void OooOoo(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                OooOoo((ViewGroup) childAt, z);
            }
        }
    }

    private void OooOooO() {
        int i = this.o00o0O;
        if (i == 1) {
            this.o0ooOOo = 0;
        } else if (i == 2 && this.o0000O0 == 0) {
            this.o0000O0 = this.o0000O00.getColorForState(getDrawableState(), this.o0000O00.getDefaultColor());
        }
    }

    private void Oooo() {
        if (this.o00o0O == 0 || this.o00O0O == null || this.OoooOoo == null || getRight() == 0) {
            return;
        }
        int left = this.OoooOoo.getLeft();
        int iOooO0oO = OooO0oO();
        int right = this.OoooOoo.getRight();
        int bottom = this.OoooOoo.getBottom() + this.o00Oo0;
        if (this.o00o0O == 2) {
            int i = this.o0OOO0o;
            left += i / 2;
            iOooO0oO -= i / 2;
            right -= i / 2;
            bottom += i / 2;
        }
        this.o00O0O.setBounds(left, iOooO0oO, right, bottom);
        OooO0OO();
        Oooo0OO();
    }

    private boolean Oooo00o() {
        return this.o000000O && (OooOOOo() || this.o00000O);
    }

    private void Oooo0OO() {
        Drawable background;
        EditText editText = this.OoooOoo;
        if (editText == null || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        pk.OooO00o(this, this.OoooOoo, new Rect());
        Rect bounds = background.getBounds();
        if (bounds.left != bounds.right) {
            Rect rect = new Rect();
            background.getPadding(rect);
            background.setBounds(bounds.left - rect.left, bounds.top, bounds.right + (rect.right * 2), this.OoooOoo.getBottom());
        }
    }

    private void Oooo0o0() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.OoooOoO.getLayoutParams();
        int iOooO = OooO();
        if (iOooO != layoutParams.topMargin) {
            layoutParams.topMargin = iOooO;
            this.OoooOoO.requestLayout();
        }
    }

    private void Oooo0oO(boolean z, boolean z3) {
        ColorStateList textColors;
        ok okVar;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.OoooOoo;
        boolean z4 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.OoooOoo;
        boolean z5 = editText2 != null && editText2.hasFocus();
        boolean zOooOO0o = this.Ooooo0o.OooOO0o();
        ColorStateList colorStateList = this.o0000;
        if (colorStateList != null) {
            this.o0000O.Oooo0O0(colorStateList);
            this.o0000O.Oooo(this.o0000);
        }
        if (!zIsEnabled) {
            this.o0000O.Oooo0O0(ColorStateList.valueOf(this.o0000O0O));
            this.o0000O.Oooo(ColorStateList.valueOf(this.o0000O0O));
        } else if (zOooOO0o) {
            this.o0000O.Oooo0O0(this.Ooooo0o.OooOOOo());
        } else {
            if (this.OooooOo && (textView = this.Oooooo0) != null) {
                okVar = this.o0000O;
                textColors = textView.getTextColors();
            } else if (z5 && (textColors = this.o0000O00) != null) {
                okVar = this.o0000O;
            }
            okVar.Oooo0O0(textColors);
        }
        if (z4 || (isEnabled() && (z5 || zOooOO0o))) {
            if (z3 || this.o000OO) {
                OooOO0O(z);
                return;
            }
            return;
        }
        if (z3 || !this.o000OO) {
            OooOOOO(z);
        }
    }

    private void Oooo0oo() {
        if (this.OoooOoo == null) {
            return;
        }
        if (!Oooo00o()) {
            CheckableImageButton checkableImageButton = this.o00000O0;
            if (checkableImageButton != null && checkableImageButton.getVisibility() == 0) {
                this.o00000O0.setVisibility(8);
            }
            if (this.o00000OO != null) {
                Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.OoooOoo);
                if (compoundDrawablesRelative[2] == this.o00000OO) {
                    TextViewCompat.setCompoundDrawablesRelative(this.OoooOoo, compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.o00000Oo, compoundDrawablesRelative[3]);
                    this.o00000OO = null;
                    return;
                }
                return;
            }
            return;
        }
        if (this.o00000O0 == null) {
            CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_password_icon, (ViewGroup) this.OoooOoO, false);
            this.o00000O0 = checkableImageButton2;
            checkableImageButton2.setImageDrawable(this.o000000o);
            this.o00000O0.setContentDescription(this.o00000);
            this.OoooOoO.addView(this.o00000O0);
            this.o00000O0.setOnClickListener(new OooO0O0());
        }
        EditText editText = this.OoooOoo;
        if (editText != null && ViewCompat.getMinimumHeight(editText) <= 0) {
            this.OoooOoo.setMinimumHeight(ViewCompat.getMinimumHeight(this.o00000O0));
        }
        this.o00000O0.setVisibility(0);
        this.o00000O0.setChecked(this.o00000O);
        if (this.o00000OO == null) {
            this.o00000OO = new ColorDrawable();
        }
        this.o00000OO.setBounds(0, 0, this.o00000O0.getMeasuredWidth(), 1);
        Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.OoooOoo);
        Drawable drawable = compoundDrawablesRelative2[2];
        Drawable drawable2 = this.o00000OO;
        if (drawable != drawable2) {
            this.o00000Oo = compoundDrawablesRelative2[2];
        }
        TextViewCompat.setCompoundDrawablesRelative(this.OoooOoo, compoundDrawablesRelative2[0], compoundDrawablesRelative2[1], drawable2, compoundDrawablesRelative2[3]);
        this.o00000O0.setPadding(this.OoooOoo.getPaddingLeft(), this.OoooOoo.getPaddingTop(), this.OoooOoo.getPaddingRight(), this.OoooOoo.getPaddingBottom());
    }

    @NonNull
    private Drawable getBoxBackground() {
        int i = this.o00o0O;
        if (i == 1 || i == 2) {
            return this.o00O0O;
        }
        throw new IllegalStateException();
    }

    private float[] getCornerRadiiAsArray() {
        if (yk.OooO00o(this)) {
            float f = this.o00oO0o;
            float f2 = this.oo000o;
            float f3 = this.o0ooOO0;
            float f4 = this.o00oO0O;
            return new float[]{f, f, f2, f2, f3, f3, f4, f4};
        }
        float f5 = this.oo000o;
        float f6 = this.o00oO0o;
        float f7 = this.o00oO0O;
        float f8 = this.o0ooOO0;
        return new float[]{f5, f5, f6, f6, f7, f7, f8, f8};
    }

    private void setEditText(EditText editText) {
        if (this.OoooOoo != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (!(editText instanceof TextInputEditText)) {
            Log.i(o0000o0, "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.OoooOoo = editText;
        OooOoO();
        setTextInputAccessibilityDelegate(new OooO0o(this));
        if (!OooOOOo()) {
            this.o0000O.OoooOoO(this.OoooOoo.getTypeface());
        }
        this.o0000O.OoooO0(this.OoooOoo.getTextSize());
        int gravity = this.OoooOoo.getGravity();
        this.o0000O.Oooo0OO((gravity & (-113)) | 48);
        this.o0000O.OoooO00(gravity);
        this.OoooOoo.addTextChangedListener(new OooO00o());
        if (this.o0000 == null) {
            this.o0000 = this.OoooOoo.getHintTextColors();
        }
        if (this.Ooooooo) {
            if (TextUtils.isEmpty(this.o0OoOo0)) {
                CharSequence hint = this.OoooOoo.getHint();
                this.Ooooo00 = hint;
                setHint(hint);
                this.OoooOoo.setHint((CharSequence) null);
            }
            this.ooOO = true;
        }
        if (this.Oooooo0 != null) {
            Oooo0(this.OoooOoo.getText().length());
        }
        this.Ooooo0o.OooO0o0();
        Oooo0oo();
        Oooo0oO(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.o0OoOo0)) {
            return;
        }
        this.o0OoOo0 = charSequence;
        this.o0000O.OoooOOo(charSequence);
        if (this.o000OO) {
            return;
        }
        OooOoOO();
    }

    @VisibleForTesting
    public void OooO0O0(float f) {
        if (this.o0000O.OooOo0o() == f) {
            return;
        }
        if (this.o0000OO == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.o0000OO = valueAnimator;
            valueAnimator.setInterpolator(ej.OooO0O0);
            this.o0000OO.setDuration(167L);
            this.o0000OO.addUpdateListener(new OooO0OO());
        }
        this.o0000OO.setFloatValues(this.o0000O.OooOo0o(), f);
        this.o0000OO.start();
    }

    @VisibleForTesting
    public boolean OooOOO0() {
        return OooOO0o() && ((sl) this.o00O0O).OooO00o();
    }

    public boolean OooOOo() {
        return this.Ooooo0o.OooOoOO();
    }

    public boolean OooOOo0() {
        return this.OooooO0;
    }

    @VisibleForTesting
    public final boolean OooOOoo() {
        return this.Ooooo0o.OooOo00();
    }

    public boolean OooOo() {
        return this.o000000O;
    }

    public boolean OooOo0() {
        return this.o0000OO0;
    }

    public boolean OooOo00() {
        return this.Ooooo0o.OooOoo0();
    }

    public boolean OooOo0O() {
        return this.Ooooooo;
    }

    @VisibleForTesting
    public final boolean OooOo0o() {
        return this.o000OO;
    }

    public boolean OooOoO0() {
        return this.ooOO;
    }

    public void OooOoo0(boolean z) {
        boolean z3;
        if (this.o000000O) {
            int selectionEnd = this.OoooOoo.getSelectionEnd();
            if (OooOOOo()) {
                this.OoooOoo.setTransformationMethod(null);
                z3 = true;
            } else {
                this.OoooOoo.setTransformationMethod(PasswordTransformationMethod.getInstance());
                z3 = false;
            }
            this.o00000O = z3;
            this.o00000O0.setChecked(this.o00000O);
            if (z) {
                this.o00000O0.jumpDrawablesToCurrentState();
            }
            this.OoooOoo.setSelection(selectionEnd);
        }
    }

    public void OooOooo(float f, float f2, float f3, float f4) {
        if (this.oo000o == f && this.o00oO0o == f2 && this.o00oO0O == f4 && this.o0ooOO0 == f3) {
            return;
        }
        this.oo000o = f;
        this.o00oO0o = f2;
        this.o00oO0O = f4;
        this.o0ooOO0 = f3;
        OooO0OO();
    }

    public void Oooo0(int i) {
        boolean z = this.OooooOo;
        if (this.OooooOO == -1) {
            this.Oooooo0.setText(String.valueOf(i));
            this.Oooooo0.setContentDescription(null);
            this.OooooOo = false;
        } else {
            if (ViewCompat.getAccessibilityLiveRegion(this.Oooooo0) == 1) {
                ViewCompat.setAccessibilityLiveRegion(this.Oooooo0, 0);
            }
            boolean z3 = i > this.OooooOO;
            this.OooooOo = z3;
            if (z != z3) {
                Oooo00O(this.Oooooo0, z3 ? this.Oooooo : this.OoooooO);
                if (this.OooooOo) {
                    ViewCompat.setAccessibilityLiveRegion(this.Oooooo0, 1);
                }
            }
            this.Oooooo0.setText(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.OooooOO)));
            this.Oooooo0.setContentDescription(getContext().getString(R.string.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(this.OooooOO)));
        }
        if (this.OoooOoo == null || z == this.OooooOo) {
            return;
        }
        Oooo0o(false);
        OoooO00();
        Oooo0O0();
    }

    public void Oooo000(@DimenRes int i, @DimenRes int i2, @DimenRes int i3, @DimenRes int i4) {
        OooOooo(getContext().getResources().getDimension(i), getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i3), getContext().getResources().getDimension(i4));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void Oooo00O(TextView textView, @StyleRes int i) {
        boolean z = true;
        try {
            TextViewCompat.setTextAppearance(textView, i);
            if (Build.VERSION.SDK_INT >= 23) {
                if (textView.getTextColors().getDefaultColor() != -65281) {
                    z = false;
                }
            }
        } catch (Exception unused) {
        }
        if (z) {
            TextViewCompat.setTextAppearance(textView, R.style.TextAppearance_AppCompat_Caption);
            textView.setTextColor(ContextCompat.getColor(getContext(), R.color.design_error));
        }
    }

    public void Oooo0O0() {
        Drawable background;
        TextView textView;
        int currentTextColor;
        EditText editText = this.OoooOoo;
        if (editText == null || (background = editText.getBackground()) == null) {
            return;
        }
        OooOOO();
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (this.Ooooo0o.OooOO0o()) {
            currentTextColor = this.Ooooo0o.OooOOOO();
        } else {
            if (!this.OooooOo || (textView = this.Oooooo0) == null) {
                DrawableCompat.clearColorFilter(background);
                this.OoooOoo.refreshDrawableState();
                return;
            }
            currentTextColor = textView.getCurrentTextColor();
        }
        background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(currentTextColor, PorterDuff.Mode.SRC_IN));
    }

    public void Oooo0o(boolean z) {
        Oooo0oO(z, false);
    }

    public void OoooO00() {
        TextView textView;
        if (this.o00O0O == null || this.o00o0O == 0) {
            return;
        }
        EditText editText = this.OoooOoo;
        boolean z = editText != null && editText.hasFocus();
        EditText editText2 = this.OoooOoo;
        boolean z3 = editText2 != null && editText2.isHovered();
        if (this.o00o0O == 2) {
            this.o0Oo0oo = !isEnabled() ? this.o0000O0O : this.Ooooo0o.OooOO0o() ? this.Ooooo0o.OooOOOO() : (!this.OooooOo || (textView = this.Oooooo0) == null) ? z ? this.o0000O0 : z3 ? this.o0000oO : this.o0000oo : textView.getCurrentTextColor();
            this.o0ooOOo = ((z3 || z) && isEnabled()) ? this.o0OOO0o : this.o0ooOoO;
            OooO0OO();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.OoooOoO.addView(view, layoutParams2);
        this.OoooOoO.setLayoutParams(layoutParams);
        Oooo0o0();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText;
        if (this.Ooooo00 == null || (editText = this.OoooOoo) == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        boolean z = this.ooOO;
        this.ooOO = false;
        CharSequence hint = editText.getHint();
        this.OoooOoo.setHint(this.Ooooo00);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i);
        } finally {
            this.OoooOoo.setHint(hint);
            this.ooOO = z;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.o0000Oo0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.o0000Oo0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.o00O0O;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.Ooooooo) {
            this.o0000O.OooO(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.o0000OOo) {
            return;
        }
        this.o0000OOo = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Oooo0o(ViewCompat.isLaidOut(this) && isEnabled());
        Oooo0O0();
        Oooo();
        OoooO00();
        ok okVar = this.o0000O;
        if (okVar != null ? okVar.OoooOOO(drawableState) | false : false) {
            invalidate();
        }
        this.o0000OOo = false;
    }

    public int getBoxBackgroundColor() {
        return this.o0OO00O;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.o00oO0O;
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.o0ooOO0;
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.o00oO0o;
    }

    public float getBoxCornerRadiusTopStart() {
        return this.oo000o;
    }

    public int getBoxStrokeColor() {
        return this.o0000O0;
    }

    public int getCounterMaxLength() {
        return this.OooooOO;
    }

    @Nullable
    public CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.OooooO0 && this.OooooOo && (textView = this.Oooooo0) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.o0000;
    }

    @Nullable
    public EditText getEditText() {
        return this.OoooOoo;
    }

    @Nullable
    public CharSequence getError() {
        if (this.Ooooo0o.OooOoOO()) {
            return this.Ooooo0o.OooOOO();
        }
        return null;
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.Ooooo0o.OooOOOO();
    }

    @VisibleForTesting
    public final int getErrorTextCurrentColor() {
        return this.Ooooo0o.OooOOOO();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.Ooooo0o.OooOoo0()) {
            return this.Ooooo0o.OooOOo0();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.Ooooo0o.OooOOoo();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.Ooooooo) {
            return this.o0OoOo0;
        }
        return null;
    }

    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.o0000O.OooOOO();
    }

    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        return this.o0000O.OooOOo0();
    }

    @Nullable
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.o00000;
    }

    @Nullable
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.o000000o;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.o000000;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        EditText editText;
        super.onLayout(z, i, i2, i3, i4);
        if (this.o00O0O != null) {
            Oooo();
        }
        if (!this.Ooooooo || (editText = this.OoooOoo) == null) {
            return;
        }
        Rect rect = this.o0O0O00;
        pk.OooO00o(this, editText, rect);
        int compoundPaddingLeft = rect.left + this.OoooOoo.getCompoundPaddingLeft();
        int compoundPaddingRight = rect.right - this.OoooOoo.getCompoundPaddingRight();
        int iOooO0oo = OooO0oo();
        this.o0000O.Oooo0oO(compoundPaddingLeft, rect.top + this.OoooOoo.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.OoooOoo.getCompoundPaddingBottom());
        this.o0000O.Oooo00o(compoundPaddingLeft, iOooO0oo, compoundPaddingRight, (i4 - i2) - getPaddingBottom());
        this.o0000O.Oooo000();
        if (!OooOO0o() || this.o000OO) {
            return;
        }
        OooOoOO();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        Oooo0oo();
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.error);
        if (savedState.isPasswordToggledVisible) {
            OooOoo0(true);
        }
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.Ooooo0o.OooOO0o()) {
            savedState.error = getError();
        }
        savedState.isPasswordToggledVisible = this.o00000O;
        return savedState;
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.o0OO00O != i) {
            this.o0OO00O = i;
            OooO0OO();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i));
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.o00o0O) {
            return;
        }
        this.o00o0O = i;
        OooOoO();
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.o0000O0 != i) {
            this.o0000O0 = i;
            OoooO00();
        }
    }

    public void setCounterEnabled(boolean z) {
        if (this.OooooO0 != z) {
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.Oooooo0 = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.o000000;
                if (typeface != null) {
                    this.Oooooo0.setTypeface(typeface);
                }
                this.Oooooo0.setMaxLines(1);
                Oooo00O(this.Oooooo0, this.OoooooO);
                this.Ooooo0o.OooO0Oo(this.Oooooo0, 2);
                EditText editText = this.OoooOoo;
                Oooo0(editText == null ? 0 : editText.getText().length());
            } else {
                this.Ooooo0o.OooOoo(this.Oooooo0, 2);
                this.Oooooo0 = null;
            }
            this.OooooO0 = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.OooooOO != i) {
            if (i <= 0) {
                i = -1;
            }
            this.OooooOO = i;
            if (this.OooooO0) {
                EditText editText = this.OoooOoo;
                Oooo0(editText == null ? 0 : editText.getText().length());
            }
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.o0000 = colorStateList;
        this.o0000O00 = colorStateList;
        if (this.OoooOoo != null) {
            Oooo0o(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        OooOoo(this, z);
        super.setEnabled(z);
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.Ooooo0o.OooOoOO()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.Ooooo0o.OooOo0O();
        } else {
            this.Ooooo0o.Oooo0oo(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        this.Ooooo0o.OooOooo(z);
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        this.Ooooo0o.Oooo000(i);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.Ooooo0o.Oooo00O(colorStateList);
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (OooOo00()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!OooOo00()) {
                setHelperTextEnabled(true);
            }
            this.Ooooo0o.Oooo(charSequence);
        }
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.Ooooo0o.Oooo0O0(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.Ooooo0o.Oooo0(z);
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        this.Ooooo0o.Oooo00o(i);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.Ooooooo) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.o0000OO0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.Ooooooo) {
            this.Ooooooo = z;
            if (z) {
                CharSequence hint = this.OoooOoo.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.o0OoOo0)) {
                        setHint(hint);
                    }
                    this.OoooOoo.setHint((CharSequence) null);
                }
                this.ooOO = true;
            } else {
                this.ooOO = false;
                if (!TextUtils.isEmpty(this.o0OoOo0) && TextUtils.isEmpty(this.OoooOoo.getHint())) {
                    this.OoooOoo.setHint(this.o0OoOo0);
                }
                setHintInternal(null);
            }
            if (this.OoooOoo != null) {
                Oooo0o0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i) {
        this.o0000O.Oooo0(i);
        this.o0000O00 = this.o0000O.OooOO0o();
        if (this.OoooOoo != null) {
            Oooo0o(false);
            Oooo0o0();
        }
    }

    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.o00000 = charSequence;
        CheckableImageButton checkableImageButton = this.o00000O0;
        if (checkableImageButton != null) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.o000000o = drawable;
        CheckableImageButton checkableImageButton = this.o00000O0;
        if (checkableImageButton != null) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleEnabled(boolean z) {
        EditText editText;
        if (this.o000000O != z) {
            this.o000000O = z;
            if (!z && this.o00000O && (editText = this.OoooOoo) != null) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.o00000O = false;
            Oooo0oo();
        }
    }

    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.o00000o0 = colorStateList;
        this.o0000Ooo = true;
        OooO0o0();
    }

    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.o00000oO = mode;
        this.o00000oo = true;
        OooO0o0();
    }

    public void setTextInputAccessibilityDelegate(OooO0o oooO0o) {
        EditText editText = this.OoooOoo;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, oooO0o);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.o000000) {
            this.o000000 = typeface;
            this.o0000O.OoooOoO(typeface);
            this.Ooooo0o.Oooo0o0(typeface);
            TextView textView = this.Oooooo0;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }
}
