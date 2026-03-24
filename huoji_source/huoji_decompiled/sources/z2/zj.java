package z2;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class zj {
    private static final int OooOo = -1;
    private static final float OooOo0o = 1.0E-5f;
    private static final boolean OooOoO0;

    @Nullable
    private ColorStateList OooO;
    private final MaterialButton OooO00o;
    private int OooO0O0;
    private int OooO0OO;
    private int OooO0Oo;
    private int OooO0o;
    private int OooO0o0;
    private int OooO0oO;

    @Nullable
    private PorterDuff.Mode OooO0oo;

    @Nullable
    private ColorStateList OooOO0;

    @Nullable
    private ColorStateList OooOO0O;

    @Nullable
    private GradientDrawable OooOOOO;

    @Nullable
    private Drawable OooOOOo;

    @Nullable
    private Drawable OooOOo;

    @Nullable
    private GradientDrawable OooOOo0;

    @Nullable
    private GradientDrawable OooOOoo;

    @Nullable
    private GradientDrawable OooOo0;

    @Nullable
    private GradientDrawable OooOo00;
    private final Paint OooOO0o = new Paint(1);
    private final Rect OooOOO0 = new Rect();
    private final RectF OooOOO = new RectF();
    private boolean OooOo0O = false;

    static {
        OooOoO0 = Build.VERSION.SDK_INT >= 21;
    }

    public zj(MaterialButton materialButton) {
        this.OooO00o = materialButton;
    }

    private Drawable OooO00o() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.OooOOOO = gradientDrawable;
        gradientDrawable.setCornerRadius(this.OooO0o + OooOo0o);
        this.OooOOOO.setColor(-1);
        Drawable drawableWrap = DrawableCompat.wrap(this.OooOOOO);
        this.OooOOOo = drawableWrap;
        DrawableCompat.setTintList(drawableWrap, this.OooO);
        PorterDuff.Mode mode = this.OooO0oo;
        if (mode != null) {
            DrawableCompat.setTintMode(this.OooOOOo, mode);
        }
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.OooOOo0 = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.OooO0o + OooOo0o);
        this.OooOOo0.setColor(-1);
        Drawable drawableWrap2 = DrawableCompat.wrap(this.OooOOo0);
        this.OooOOo = drawableWrap2;
        DrawableCompat.setTintList(drawableWrap2, this.OooOO0O);
        return OooOoO0(new LayerDrawable(new Drawable[]{this.OooOOOo, this.OooOOo}));
    }

    @TargetApi(21)
    private Drawable OooO0O0() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.OooOOoo = gradientDrawable;
        gradientDrawable.setCornerRadius(this.OooO0o + OooOo0o);
        this.OooOOoo.setColor(-1);
        OooOo();
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.OooOo00 = gradientDrawable2;
        gradientDrawable2.setCornerRadius(this.OooO0o + OooOo0o);
        this.OooOo00.setColor(0);
        this.OooOo00.setStroke(this.OooO0oO, this.OooOO0);
        InsetDrawable insetDrawableOooOoO0 = OooOoO0(new LayerDrawable(new Drawable[]{this.OooOOoo, this.OooOo00}));
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        this.OooOo0 = gradientDrawable3;
        gradientDrawable3.setCornerRadius(this.OooO0o + OooOo0o);
        this.OooOo0.setColor(-1);
        return new yj(el.OooO00o(this.OooOO0O), insetDrawableOooOoO0, this.OooOo0);
    }

    private void OooOo() {
        GradientDrawable gradientDrawable = this.OooOOoo;
        if (gradientDrawable != null) {
            DrawableCompat.setTintList(gradientDrawable, this.OooO);
            PorterDuff.Mode mode = this.OooO0oo;
            if (mode != null) {
                DrawableCompat.setTintMode(this.OooOOoo, mode);
            }
        }
    }

    @Nullable
    private GradientDrawable OooOo0() {
        if (!OooOoO0 || this.OooO00o.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.OooO00o.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
    }

    @Nullable
    private GradientDrawable OooOo00() {
        if (!OooOoO0 || this.OooO00o.getBackground() == null) {
            return null;
        }
        return (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) this.OooO00o.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0);
    }

    private void OooOo0o() {
        boolean z = OooOoO0;
        if (z && this.OooOo00 != null) {
            this.OooO00o.setInternalBackground(OooO0O0());
        } else {
            if (z) {
                return;
            }
            this.OooO00o.invalidate();
        }
    }

    private InsetDrawable OooOoO0(Drawable drawable) {
        return new InsetDrawable(drawable, this.OooO0O0, this.OooO0Oo, this.OooO0OO, this.OooO0o0);
    }

    public PorterDuff.Mode OooO() {
        return this.OooO0oo;
    }

    public void OooO0OO(@Nullable Canvas canvas) {
        if (canvas == null || this.OooOO0 == null || this.OooO0oO <= 0) {
            return;
        }
        this.OooOOO0.set(this.OooO00o.getBackground().getBounds());
        RectF rectF = this.OooOOO;
        float f = this.OooOOO0.left;
        int i = this.OooO0oO;
        rectF.set(f + (i / 2.0f) + this.OooO0O0, r1.top + (i / 2.0f) + this.OooO0Oo, (r1.right - (i / 2.0f)) - this.OooO0OO, (r1.bottom - (i / 2.0f)) - this.OooO0o0);
        float f2 = this.OooO0o - (this.OooO0oO / 2.0f);
        canvas.drawRoundRect(this.OooOOO, f2, f2, this.OooOO0o);
    }

    public int OooO0Oo() {
        return this.OooO0o;
    }

    @Nullable
    public ColorStateList OooO0o() {
        return this.OooOO0;
    }

    @Nullable
    public ColorStateList OooO0o0() {
        return this.OooOO0O;
    }

    public int OooO0oO() {
        return this.OooO0oO;
    }

    public ColorStateList OooO0oo() {
        return this.OooO;
    }

    public boolean OooOO0() {
        return this.OooOo0O;
    }

    public void OooOO0O(TypedArray typedArray) {
        this.OooO0O0 = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetLeft, 0);
        this.OooO0OO = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetRight, 0);
        this.OooO0Oo = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetTop, 0);
        this.OooO0o0 = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetBottom, 0);
        this.OooO0o = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_cornerRadius, 0);
        this.OooO0oO = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_strokeWidth, 0);
        this.OooO0oo = yk.OooO0O0(typedArray.getInt(R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.OooO = bl.OooO00o(this.OooO00o.getContext(), typedArray, R.styleable.MaterialButton_backgroundTint);
        this.OooOO0 = bl.OooO00o(this.OooO00o.getContext(), typedArray, R.styleable.MaterialButton_strokeColor);
        this.OooOO0O = bl.OooO00o(this.OooO00o.getContext(), typedArray, R.styleable.MaterialButton_rippleColor);
        this.OooOO0o.setStyle(Paint.Style.STROKE);
        this.OooOO0o.setStrokeWidth(this.OooO0oO);
        Paint paint = this.OooOO0o;
        ColorStateList colorStateList = this.OooOO0;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(this.OooO00o.getDrawableState(), 0) : 0);
        int paddingStart = ViewCompat.getPaddingStart(this.OooO00o);
        int paddingTop = this.OooO00o.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.OooO00o);
        int paddingBottom = this.OooO00o.getPaddingBottom();
        this.OooO00o.setInternalBackground(OooOoO0 ? OooO0O0() : OooO00o());
        ViewCompat.setPaddingRelative(this.OooO00o, paddingStart + this.OooO0O0, paddingTop + this.OooO0Oo, paddingEnd + this.OooO0OO, paddingBottom + this.OooO0o0);
    }

    public void OooOO0o(int i) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        boolean z = OooOoO0;
        if (z && (gradientDrawable2 = this.OooOOoo) != null) {
            gradientDrawable2.setColor(i);
        } else {
            if (z || (gradientDrawable = this.OooOOOO) == null) {
                return;
            }
            gradientDrawable.setColor(i);
        }
    }

    public void OooOOO(int i) {
        GradientDrawable gradientDrawable;
        if (this.OooO0o != i) {
            this.OooO0o = i;
            boolean z = OooOoO0;
            if (!z || this.OooOOoo == null || this.OooOo00 == null || this.OooOo0 == null) {
                if (z || (gradientDrawable = this.OooOOOO) == null || this.OooOOo0 == null) {
                    return;
                }
                float f = i + OooOo0o;
                gradientDrawable.setCornerRadius(f);
                this.OooOOo0.setCornerRadius(f);
                this.OooO00o.invalidate();
                return;
            }
            if (Build.VERSION.SDK_INT == 21) {
                GradientDrawable gradientDrawableOooOo00 = OooOo00();
                float f2 = i + OooOo0o;
                gradientDrawableOooOo00.setCornerRadius(f2);
                OooOo0().setCornerRadius(f2);
            }
            GradientDrawable gradientDrawable2 = this.OooOOoo;
            float f3 = i + OooOo0o;
            gradientDrawable2.setCornerRadius(f3);
            this.OooOo00.setCornerRadius(f3);
            this.OooOo0.setCornerRadius(f3);
        }
    }

    public void OooOOO0() {
        this.OooOo0O = true;
        this.OooO00o.setSupportBackgroundTintList(this.OooO);
        this.OooO00o.setSupportBackgroundTintMode(this.OooO0oo);
    }

    public void OooOOOO(@Nullable ColorStateList colorStateList) {
        Drawable drawable;
        if (this.OooOO0O != colorStateList) {
            this.OooOO0O = colorStateList;
            boolean z = OooOoO0;
            if (z && (this.OooO00o.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.OooO00o.getBackground()).setColor(colorStateList);
            } else {
                if (z || (drawable = this.OooOOo) == null) {
                    return;
                }
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
    }

    public void OooOOOo(@Nullable ColorStateList colorStateList) {
        if (this.OooOO0 != colorStateList) {
            this.OooOO0 = colorStateList;
            this.OooOO0o.setColor(colorStateList != null ? colorStateList.getColorForState(this.OooO00o.getDrawableState(), 0) : 0);
            OooOo0o();
        }
    }

    public void OooOOo(@Nullable ColorStateList colorStateList) {
        if (this.OooO != colorStateList) {
            this.OooO = colorStateList;
            if (OooOoO0) {
                OooOo();
                return;
            }
            Drawable drawable = this.OooOOOo;
            if (drawable != null) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
        }
    }

    public void OooOOo0(int i) {
        if (this.OooO0oO != i) {
            this.OooO0oO = i;
            this.OooOO0o.setStrokeWidth(i);
            OooOo0o();
        }
    }

    public void OooOOoo(@Nullable PorterDuff.Mode mode) {
        if (this.OooO0oo != mode) {
            this.OooO0oo = mode;
            if (OooOoO0) {
                OooOo();
                return;
            }
            Drawable drawable = this.OooOOOo;
            if (drawable == null || mode == null) {
                return;
            }
            DrawableCompat.setTintMode(drawable, mode);
        }
    }

    public void OooOo0O(int i, int i2) {
        GradientDrawable gradientDrawable = this.OooOo0;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(this.OooO0O0, this.OooO0Oo, i2 - this.OooO0OO, i - this.OooO0o0);
        }
    }
}
