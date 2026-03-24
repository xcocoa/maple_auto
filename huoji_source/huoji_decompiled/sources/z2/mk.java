package z2;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class mk extends Drawable {
    private static final float OooOOO = 1.3333f;

    @ColorInt
    private int OooO;
    public final Paint OooO00o;

    @ColorInt
    private int OooO0o;

    @Dimension
    public float OooO0o0;

    @ColorInt
    private int OooO0oO;

    @ColorInt
    private int OooO0oo;
    private ColorStateList OooOO0;

    @ColorInt
    private int OooOO0O;

    @FloatRange(from = 0.0d, to = 360.0d)
    private float OooOOO0;
    public final Rect OooO0O0 = new Rect();
    public final RectF OooO0OO = new RectF();
    public final OooO0O0 OooO0Oo = new OooO0O0();
    private boolean OooOO0o = true;

    public class OooO0O0 extends Drawable.ConstantState {
        private OooO0O0() {
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return mk.this;
        }
    }

    public mk() {
        Paint paint = new Paint(1);
        this.OooO00o = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    private Shader OooO00o() {
        copyBounds(this.OooO0O0);
        float fHeight = this.OooO0o0 / r0.height();
        return new LinearGradient(0.0f, r0.top, 0.0f, r0.bottom, new int[]{ColorUtils.compositeColors(this.OooO0o, this.OooOO0O), ColorUtils.compositeColors(this.OooO0oO, this.OooOO0O), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.OooO0oO, 0), this.OooOO0O), ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.OooO, 0), this.OooOO0O), ColorUtils.compositeColors(this.OooO, this.OooOO0O), ColorUtils.compositeColors(this.OooO0oo, this.OooOO0O)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    public void OooO0O0(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.OooOO0O = colorStateList.getColorForState(getState(), this.OooOO0O);
        }
        this.OooOO0 = colorStateList;
        this.OooOO0o = true;
        invalidateSelf();
    }

    public void OooO0OO(@Dimension float f) {
        if (this.OooO0o0 != f) {
            this.OooO0o0 = f;
            this.OooO00o.setStrokeWidth(f * OooOOO);
            this.OooOO0o = true;
            invalidateSelf();
        }
    }

    public void OooO0Oo(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        this.OooO0o = i;
        this.OooO0oO = i2;
        this.OooO0oo = i3;
        this.OooO = i4;
    }

    public final void OooO0o0(float f) {
        if (f != this.OooOOO0) {
            this.OooOOO0 = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.OooOO0o) {
            this.OooO00o.setShader(OooO00o());
            this.OooOO0o = false;
        }
        float strokeWidth = this.OooO00o.getStrokeWidth() / 2.0f;
        RectF rectF = this.OooO0OO;
        copyBounds(this.OooO0O0);
        rectF.set(this.OooO0O0);
        rectF.left += strokeWidth;
        rectF.top += strokeWidth;
        rectF.right -= strokeWidth;
        rectF.bottom -= strokeWidth;
        canvas.save();
        canvas.rotate(this.OooOOO0, rectF.centerX(), rectF.centerY());
        canvas.drawOval(rectF, this.OooO00o);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.OooO0Oo;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.OooO0o0 > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iRound = Math.round(this.OooO0o0);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.OooOO0;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.OooOO0o = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.OooOO0;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.OooOO0O)) != this.OooOO0O) {
            this.OooOO0o = true;
            this.OooOO0O = colorForState;
        }
        if (this.OooOO0o) {
            invalidateSelf();
        }
        return this.OooOO0o;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.OooO00o.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.OooO00o.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
