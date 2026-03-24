package z2;

import android.R;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class ok {
    private static final boolean OoooO;
    private static final boolean OoooOO0 = false;
    private static final Paint o000oOoO;
    private final View OooO00o;
    private boolean OooO0O0;
    private float OooO0OO;
    private final Rect OooO0Oo;
    private final RectF OooO0o;
    private final Rect OooO0o0;
    private ColorStateList OooOO0O;
    private ColorStateList OooOO0o;
    private float OooOOO;
    private float OooOOO0;
    private float OooOOOO;
    private float OooOOOo;
    private float OooOOo;
    private float OooOOo0;
    private Typeface OooOOoo;
    private boolean OooOo;
    private Typeface OooOo0;
    private Typeface OooOo00;
    private CharSequence OooOo0O;
    private CharSequence OooOo0o;
    private Bitmap OooOoO;
    private boolean OooOoO0;
    private Paint OooOoOO;
    private float OooOoo;
    private float OooOoo0;
    private float OooOooO;
    private float OooOooo;
    private float Oooo;
    private final TextPaint Oooo0;
    private int[] Oooo000;
    private boolean Oooo00O;
    private final TextPaint Oooo00o;
    private TimeInterpolator Oooo0O0;
    private TimeInterpolator Oooo0OO;
    private float Oooo0o;
    private float Oooo0o0;
    private float Oooo0oO;
    private int Oooo0oo;
    private float OoooO0;
    private float OoooO00;
    private int OoooO0O;
    private int OooO0oO = 16;
    private int OooO0oo = 16;
    private float OooO = 15.0f;
    private float OooOO0 = 15.0f;

    static {
        OoooO = Build.VERSION.SDK_INT < 18;
        Paint paint = null;
        o000oOoO = null;
        if (0 != 0) {
            paint.setAntiAlias(true);
            paint.setColor(-65281);
        }
    }

    public ok(View view) {
        this.OooO00o = view;
        TextPaint textPaint = new TextPaint(129);
        this.Oooo00o = textPaint;
        this.Oooo0 = new TextPaint(textPaint);
        this.OooO0o0 = new Rect();
        this.OooO0Oo = new Rect();
        this.OooO0o = new RectF();
    }

    private static int OooO00o(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void OooO0O0() {
        float fAscent;
        int i;
        float fCenterX;
        int i2;
        float fAscent2;
        int i3;
        float fCenterX2;
        float f;
        float f2 = this.OooOooo;
        OooO0oO(this.OooOO0);
        CharSequence charSequence = this.OooOo0o;
        float fMeasureText = charSequence != null ? this.Oooo00o.measureText(charSequence, 0, charSequence.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.OooO0oo, this.OooOo ? 1 : 0);
        int i4 = absoluteGravity & 112;
        if (i4 == 48) {
            fAscent = this.OooO0o0.top - this.Oooo00o.ascent();
        } else {
            if (i4 != 80) {
                this.OooOOO = this.OooO0o0.centerY() + (((this.Oooo00o.descent() - this.Oooo00o.ascent()) / 2.0f) - this.Oooo00o.descent());
                i = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
                if (i != 1) {
                    fCenterX = this.OooO0o0.centerX();
                    fMeasureText /= 2.0f;
                } else {
                    if (i != 5) {
                        this.OooOOOo = this.OooO0o0.left;
                        OooO0oO(this.OooO);
                        CharSequence charSequence2 = this.OooOo0o;
                        float fMeasureText2 = charSequence2 != null ? this.Oooo00o.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
                        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.OooO0oO, this.OooOo ? 1 : 0);
                        i2 = absoluteGravity2 & 112;
                        if (i2 == 48) {
                            fAscent2 = this.OooO0Oo.top - this.Oooo00o.ascent();
                        } else {
                            if (i2 != 80) {
                                this.OooOOO0 = this.OooO0Oo.centerY() + (((this.Oooo00o.descent() - this.Oooo00o.ascent()) / 2.0f) - this.Oooo00o.descent());
                                i3 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
                                if (i3 != 1) {
                                    fCenterX2 = this.OooO0Oo.centerX();
                                    fMeasureText2 /= 2.0f;
                                } else {
                                    if (i3 != 5) {
                                        f = this.OooO0Oo.left;
                                        this.OooOOOO = f;
                                        OooO0oo();
                                        OoooOO0(f2);
                                    }
                                    fCenterX2 = this.OooO0Oo.right;
                                }
                                f = fCenterX2 - fMeasureText2;
                                this.OooOOOO = f;
                                OooO0oo();
                                OoooOO0(f2);
                            }
                            fAscent2 = this.OooO0Oo.bottom;
                        }
                        this.OooOOO0 = fAscent2;
                        i3 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
                        if (i3 != 1) {
                        }
                        f = fCenterX2 - fMeasureText2;
                        this.OooOOOO = f;
                        OooO0oo();
                        OoooOO0(f2);
                    }
                    fCenterX = this.OooO0o0.right;
                }
                this.OooOOOo = fCenterX - fMeasureText;
                OooO0oO(this.OooO);
                CharSequence charSequence22 = this.OooOo0o;
                if (charSequence22 != null) {
                }
                int absoluteGravity22 = GravityCompat.getAbsoluteGravity(this.OooO0oO, this.OooOo ? 1 : 0);
                i2 = absoluteGravity22 & 112;
                if (i2 == 48) {
                }
                this.OooOOO0 = fAscent2;
                i3 = absoluteGravity22 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
                if (i3 != 1) {
                }
                f = fCenterX2 - fMeasureText2;
                this.OooOOOO = f;
                OooO0oo();
                OoooOO0(f2);
            }
            fAscent = this.OooO0o0.bottom;
        }
        this.OooOOO = fAscent;
        i = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i != 1) {
        }
        this.OooOOOo = fCenterX - fMeasureText;
        OooO0oO(this.OooO);
        CharSequence charSequence222 = this.OooOo0o;
        if (charSequence222 != null) {
        }
        int absoluteGravity222 = GravityCompat.getAbsoluteGravity(this.OooO0oO, this.OooOo ? 1 : 0);
        i2 = absoluteGravity222 & 112;
        if (i2 == 48) {
        }
        this.OooOOO0 = fAscent2;
        i3 = absoluteGravity222 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i3 != 1) {
        }
        f = fCenterX2 - fMeasureText2;
        this.OooOOOO = f;
        OooO0oo();
        OoooOO0(f2);
    }

    private void OooO0Oo() {
        OooO0o(this.OooO0OO);
    }

    private void OooO0o(float f) {
        TextPaint textPaint;
        int iOooOOo0;
        OooOoO(f);
        this.OooOOo0 = OooOoo(this.OooOOOO, this.OooOOOo, f, this.Oooo0O0);
        this.OooOOo = OooOoo(this.OooOOO0, this.OooOOO, f, this.Oooo0O0);
        OoooOO0(OooOoo(this.OooO, this.OooOO0, f, this.Oooo0OO));
        if (this.OooOO0o != this.OooOO0O) {
            textPaint = this.Oooo00o;
            iOooOOo0 = OooO00o(OooOOo(), OooOOo0(), f);
        } else {
            textPaint = this.Oooo00o;
            iOooOOo0 = OooOOo0();
        }
        textPaint.setColor(iOooOOo0);
        this.Oooo00o.setShadowLayer(OooOoo(this.Oooo, this.Oooo0o0, f, null), OooOoo(this.OoooO00, this.Oooo0o, f, null), OooOoo(this.OoooO0, this.Oooo0oO, f, null), OooO00o(this.OoooO0O, this.Oooo0oo, f));
        ViewCompat.postInvalidateOnAnimation(this.OooO00o);
    }

    private boolean OooO0o0(CharSequence charSequence) {
        return (ViewCompat.getLayoutDirection(this.OooO00o) == 1 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    private void OooO0oO(float f) {
        boolean z;
        float f2;
        boolean z3;
        if (this.OooOo0O == null) {
            return;
        }
        float fWidth = this.OooO0o0.width();
        float fWidth2 = this.OooO0Oo.width();
        if (OooOoOO(f, this.OooOO0)) {
            f2 = this.OooOO0;
            this.OooOooO = 1.0f;
            Typeface typeface = this.OooOo0;
            Typeface typeface2 = this.OooOOoo;
            if (typeface != typeface2) {
                this.OooOo0 = typeface2;
                z3 = true;
            } else {
                z3 = false;
            }
        } else {
            float f3 = this.OooO;
            Typeface typeface3 = this.OooOo0;
            Typeface typeface4 = this.OooOo00;
            if (typeface3 != typeface4) {
                this.OooOo0 = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (OooOoOO(f, f3)) {
                this.OooOooO = 1.0f;
            } else {
                this.OooOooO = f / this.OooO;
            }
            float f4 = this.OooOO0 / this.OooO;
            fWidth = fWidth2 * f4 > fWidth ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            f2 = f3;
            z3 = z;
        }
        if (fWidth > 0.0f) {
            z3 = this.OooOooo != f2 || this.Oooo00O || z3;
            this.OooOooo = f2;
            this.Oooo00O = false;
        }
        if (this.OooOo0o == null || z3) {
            this.Oooo00o.setTextSize(this.OooOooo);
            this.Oooo00o.setTypeface(this.OooOo0);
            this.Oooo00o.setLinearText(this.OooOooO != 1.0f);
            CharSequence charSequenceEllipsize = TextUtils.ellipsize(this.OooOo0O, this.Oooo00o, fWidth, TextUtils.TruncateAt.END);
            if (TextUtils.equals(charSequenceEllipsize, this.OooOo0o)) {
                return;
            }
            this.OooOo0o = charSequenceEllipsize;
            this.OooOo = OooO0o0(charSequenceEllipsize);
        }
    }

    private void OooO0oo() {
        Bitmap bitmap = this.OooOoO;
        if (bitmap != null) {
            bitmap.recycle();
            this.OooOoO = null;
        }
    }

    private void OooOO0() {
        if (this.OooOoO != null || this.OooO0Oo.isEmpty() || TextUtils.isEmpty(this.OooOo0o)) {
            return;
        }
        OooO0o(0.0f);
        this.OooOoo0 = this.Oooo00o.ascent();
        this.OooOoo = this.Oooo00o.descent();
        TextPaint textPaint = this.Oooo00o;
        CharSequence charSequence = this.OooOo0o;
        int iRound = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
        int iRound2 = Math.round(this.OooOoo - this.OooOoo0);
        if (iRound <= 0 || iRound2 <= 0) {
            return;
        }
        this.OooOoO = Bitmap.createBitmap(iRound, iRound2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.OooOoO);
        CharSequence charSequence2 = this.OooOo0o;
        canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, iRound2 - this.Oooo00o.descent(), this.Oooo00o);
        if (this.OooOoOO == null) {
            this.OooOoOO = new Paint(3);
        }
    }

    @ColorInt
    private int OooOOo() {
        int[] iArr = this.Oooo000;
        return iArr != null ? this.OooOO0O.getColorForState(iArr, 0) : this.OooOO0O.getDefaultColor();
    }

    private void OooOoO(float f) {
        this.OooO0o.left = OooOoo(this.OooO0Oo.left, this.OooO0o0.left, f, this.Oooo0O0);
        this.OooO0o.top = OooOoo(this.OooOOO0, this.OooOOO, f, this.Oooo0O0);
        this.OooO0o.right = OooOoo(this.OooO0Oo.right, this.OooO0o0.right, f, this.Oooo0O0);
        this.OooO0o.bottom = OooOoo(this.OooO0Oo.bottom, this.OooO0o0.bottom, f, this.Oooo0O0);
    }

    private void OooOoO0(TextPaint textPaint) {
        textPaint.setTextSize(this.OooOO0);
        textPaint.setTypeface(this.OooOOoo);
    }

    private static boolean OooOoOO(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    private static float OooOoo(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return ej.OooO00o(f, f2, f3);
    }

    private Typeface OooOooo(int i) {
        TypedArray typedArrayObtainStyledAttributes = this.OooO00o.getContext().obtainStyledAttributes(i, new int[]{R.attr.fontFamily});
        try {
            String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            typedArrayObtainStyledAttributes.recycle();
            return null;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static boolean Oooo00O(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    private void OoooOO0(float f) {
        OooO0oO(f);
        boolean z = OoooO && this.OooOooO != 1.0f;
        this.OooOoO0 = z;
        if (z) {
            OooOO0();
        }
        ViewCompat.postInvalidateOnAnimation(this.OooO00o);
    }

    public void OooO(Canvas canvas) {
        float fAscent;
        int iSave = canvas.save();
        if (this.OooOo0o != null && this.OooO0O0) {
            float f = this.OooOOo0;
            float f2 = this.OooOOo;
            boolean z = this.OooOoO0 && this.OooOoO != null;
            if (z) {
                fAscent = this.OooOoo0 * this.OooOooO;
            } else {
                fAscent = this.Oooo00o.ascent() * this.OooOooO;
                this.Oooo00o.descent();
            }
            if (z) {
                f2 += fAscent;
            }
            float f3 = f2;
            float f4 = this.OooOooO;
            if (f4 != 1.0f) {
                canvas.scale(f4, f4, f, f3);
            }
            if (z) {
                canvas.drawBitmap(this.OooOoO, f, f3, this.OooOoOO);
            } else {
                CharSequence charSequence = this.OooOo0o;
                canvas.drawText(charSequence, 0, charSequence.length(), f, f3, this.Oooo00o);
            }
        }
        canvas.restoreToCount(iSave);
    }

    public float OooO0OO() {
        if (this.OooOo0O == null) {
            return 0.0f;
        }
        OooOoO0(this.Oooo0);
        TextPaint textPaint = this.Oooo0;
        CharSequence charSequence = this.OooOo0O;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void OooOO0O(RectF rectF) {
        boolean zOooO0o0 = OooO0o0(this.OooOo0O);
        Rect rect = this.OooO0o0;
        float fOooO0OO = !zOooO0o0 ? rect.left : rect.right - OooO0OO();
        rectF.left = fOooO0OO;
        Rect rect2 = this.OooO0o0;
        rectF.top = rect2.top;
        rectF.right = !zOooO0o0 ? fOooO0OO + OooO0OO() : rect2.right;
        rectF.bottom = this.OooO0o0.top + OooOOO();
    }

    public ColorStateList OooOO0o() {
        return this.OooOO0o;
    }

    public float OooOOO() {
        OooOoO0(this.Oooo0);
        return -this.Oooo0.ascent();
    }

    public int OooOOO0() {
        return this.OooO0oo;
    }

    public float OooOOOO() {
        return this.OooOO0;
    }

    public Typeface OooOOOo() {
        Typeface typeface = this.OooOOoo;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    @ColorInt
    @VisibleForTesting
    public int OooOOo0() {
        int[] iArr = this.Oooo000;
        return iArr != null ? this.OooOO0o.getColorForState(iArr, 0) : this.OooOO0o.getDefaultColor();
    }

    public ColorStateList OooOOoo() {
        return this.OooOO0O;
    }

    public CharSequence OooOo() {
        return this.OooOo0O;
    }

    public float OooOo0() {
        return this.OooO;
    }

    public int OooOo00() {
        return this.OooO0oO;
    }

    public Typeface OooOo0O() {
        Typeface typeface = this.OooOo00;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public float OooOo0o() {
        return this.OooO0OO;
    }

    public final boolean OooOoo0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.OooOO0o;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.OooOO0O) != null && colorStateList.isStateful());
    }

    public void OooOooO() {
        this.OooO0O0 = this.OooO0o0.width() > 0 && this.OooO0o0.height() > 0 && this.OooO0Oo.width() > 0 && this.OooO0Oo.height() > 0;
    }

    public void Oooo(ColorStateList colorStateList) {
        if (this.OooOO0O != colorStateList) {
            this.OooOO0O = colorStateList;
            Oooo000();
        }
    }

    public void Oooo0(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.OooO00o.getContext(), i, androidx.appcompat.R.styleable.TextAppearance);
        int i2 = androidx.appcompat.R.styleable.TextAppearance_android_textColor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
            this.OooOO0o = tintTypedArrayObtainStyledAttributes.getColorStateList(i2);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.TextAppearance_android_textSize)) {
            this.OooOO0 = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(r1, (int) this.OooOO0);
        }
        this.Oooo0oo = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.TextAppearance_android_shadowColor, 0);
        this.Oooo0o = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.Oooo0oO = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.Oooo0o0 = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.OooOOoo = OooOooo(i);
        }
        Oooo000();
    }

    public void Oooo000() {
        if (this.OooO00o.getHeight() <= 0 || this.OooO00o.getWidth() <= 0) {
            return;
        }
        OooO0O0();
        OooO0Oo();
    }

    public void Oooo00o(int i, int i2, int i3, int i4) {
        if (Oooo00O(this.OooO0o0, i, i2, i3, i4)) {
            return;
        }
        this.OooO0o0.set(i, i2, i3, i4);
        this.Oooo00O = true;
        OooOooO();
    }

    public void Oooo0O0(ColorStateList colorStateList) {
        if (this.OooOO0o != colorStateList) {
            this.OooOO0o = colorStateList;
            Oooo000();
        }
    }

    public void Oooo0OO(int i) {
        if (this.OooO0oo != i) {
            this.OooO0oo = i;
            Oooo000();
        }
    }

    public void Oooo0o(Typeface typeface) {
        if (this.OooOOoo != typeface) {
            this.OooOOoo = typeface;
            Oooo000();
        }
    }

    public void Oooo0o0(float f) {
        if (this.OooOO0 != f) {
            this.OooOO0 = f;
            Oooo000();
        }
    }

    public void Oooo0oO(int i, int i2, int i3, int i4) {
        if (Oooo00O(this.OooO0Oo, i, i2, i3, i4)) {
            return;
        }
        this.OooO0Oo.set(i, i2, i3, i4);
        this.Oooo00O = true;
        OooOooO();
    }

    public void Oooo0oo(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.OooO00o.getContext(), i, androidx.appcompat.R.styleable.TextAppearance);
        int i2 = androidx.appcompat.R.styleable.TextAppearance_android_textColor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
            this.OooOO0O = tintTypedArrayObtainStyledAttributes.getColorStateList(i2);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.TextAppearance_android_textSize)) {
            this.OooO = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(r1, (int) this.OooO);
        }
        this.OoooO0O = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.TextAppearance_android_shadowColor, 0);
        this.OoooO00 = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.OoooO0 = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.Oooo = tintTypedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.OooOo00 = OooOooo(i);
        }
        Oooo000();
    }

    public void OoooO(float f) {
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (fClamp != this.OooO0OO) {
            this.OooO0OO = fClamp;
            OooO0Oo();
        }
    }

    public void OoooO0(float f) {
        if (this.OooO != f) {
            this.OooO = f;
            Oooo000();
        }
    }

    public void OoooO00(int i) {
        if (this.OooO0oO != i) {
            this.OooO0oO = i;
            Oooo000();
        }
    }

    public void OoooO0O(Typeface typeface) {
        if (this.OooOo00 != typeface) {
            this.OooOo00 = typeface;
            Oooo000();
        }
    }

    public final boolean OoooOOO(int[] iArr) {
        this.Oooo000 = iArr;
        if (!OooOoo0()) {
            return false;
        }
        Oooo000();
        return true;
    }

    public void OoooOOo(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.OooOo0O)) {
            this.OooOo0O = charSequence;
            this.OooOo0o = null;
            OooO0oo();
            Oooo000();
        }
    }

    public void OoooOo0(TimeInterpolator timeInterpolator) {
        this.Oooo0OO = timeInterpolator;
        Oooo000();
    }

    public void OoooOoO(Typeface typeface) {
        this.OooOo00 = typeface;
        this.OooOOoo = typeface;
        Oooo000();
    }

    public void o000oOoO(TimeInterpolator timeInterpolator) {
        this.Oooo0O0 = timeInterpolator;
        Oooo000();
    }
}
