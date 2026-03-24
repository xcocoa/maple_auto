package z2;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes2.dex */
public class fl extends DrawableWrapper {
    public static final double o00o0O = Math.cos(Math.toRadians(45.0d));
    public static final float o00oO0O = 1.0f;
    public static final float o00oO0o = 0.5f;
    public static final float o00ooo = 1.5f;
    public static final float oo000o = 0.25f;
    public final Paint OoooOoO;
    public final Paint OoooOoo;
    public final RectF Ooooo00;
    public float Ooooo0o;
    public Path OooooO0;
    public float OooooOO;
    public float OooooOo;
    public float Oooooo;
    public float Oooooo0;
    private boolean OoooooO;
    private final int Ooooooo;
    private boolean o00O0O;
    private float o00Oo0;
    private boolean o00Ooo;
    private final int o0OoOo0;
    private final int ooOO;

    public fl(Context context, Drawable drawable, float f, float f2, float f3) {
        super(drawable);
        this.OoooooO = true;
        this.o00O0O = true;
        this.o00Ooo = false;
        this.Ooooooo = ContextCompat.getColor(context, R.color.design_fab_shadow_start_color);
        this.o0OoOo0 = ContextCompat.getColor(context, R.color.design_fab_shadow_mid_color);
        this.ooOO = ContextCompat.getColor(context, R.color.design_fab_shadow_end_color);
        Paint paint = new Paint(5);
        this.OoooOoO = paint;
        paint.setStyle(Paint.Style.FILL);
        this.Ooooo0o = Math.round(f);
        this.Ooooo00 = new RectF();
        Paint paint2 = new Paint(paint);
        this.OoooOoo = paint2;
        paint2.setAntiAlias(false);
        OooOOOo(f2, f3);
    }

    private void OooO00o(Rect rect) {
        float f = this.OooooOo;
        float f2 = 1.5f * f;
        this.Ooooo00.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        Drawable wrappedDrawable = getWrappedDrawable();
        RectF rectF = this.Ooooo00;
        wrappedDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        OooO0O0();
    }

    private void OooO0O0() {
        float f = this.Ooooo0o;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.Oooooo0;
        rectF2.inset(-f2, -f2);
        Path path = this.OooooO0;
        if (path == null) {
            this.OooooO0 = new Path();
        } else {
            path.reset();
        }
        this.OooooO0.setFillType(Path.FillType.EVEN_ODD);
        this.OooooO0.moveTo(-this.Ooooo0o, 0.0f);
        this.OooooO0.rLineTo(-this.Oooooo0, 0.0f);
        this.OooooO0.arcTo(rectF2, 180.0f, 90.0f, false);
        this.OooooO0.arcTo(rectF, 270.0f, -90.0f, false);
        this.OooooO0.close();
        float f3 = -rectF2.top;
        if (f3 > 0.0f) {
            float f4 = this.Ooooo0o / f3;
            this.OoooOoO.setShader(new RadialGradient(0.0f, 0.0f, f3, new int[]{0, this.Ooooooo, this.o0OoOo0, this.ooOO}, new float[]{0.0f, f4, ((1.0f - f4) / 2.0f) + f4, 1.0f}, Shader.TileMode.CLAMP));
        }
        this.OoooOoo.setShader(new LinearGradient(0.0f, rectF.top, 0.0f, rectF2.top, new int[]{this.Ooooooo, this.o0OoOo0, this.ooOO}, new float[]{0.0f, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.OoooOoo.setAntiAlias(false);
    }

    public static float OooO0OO(float f, float f2, boolean z) {
        return z ? (float) (((double) f) + ((1.0d - o00o0O) * ((double) f2))) : f;
    }

    public static float OooO0Oo(float f, float f2, boolean z) {
        float f3 = f * 1.5f;
        return z ? (float) (((double) f3) + ((1.0d - o00o0O) * ((double) f2))) : f3;
    }

    private void OooO0o0(Canvas canvas) {
        int i;
        float f;
        int i2;
        float f2;
        float f3;
        float f4;
        int iSave = canvas.save();
        canvas.rotate(this.o00Oo0, this.Ooooo00.centerX(), this.Ooooo00.centerY());
        float f5 = this.Ooooo0o;
        float f6 = (-f5) - this.Oooooo0;
        float f7 = f5 * 2.0f;
        boolean z = this.Ooooo00.width() - f7 > 0.0f;
        boolean z3 = this.Ooooo00.height() - f7 > 0.0f;
        float f8 = this.Oooooo;
        float f9 = f5 / ((f8 - (0.5f * f8)) + f5);
        float f10 = f5 / ((f8 - (0.25f * f8)) + f5);
        float f11 = f5 / ((f8 - (f8 * 1.0f)) + f5);
        int iSave2 = canvas.save();
        RectF rectF = this.Ooooo00;
        canvas.translate(rectF.left + f5, rectF.top + f5);
        canvas.scale(f9, f10);
        canvas.drawPath(this.OooooO0, this.OoooOoO);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            i = iSave2;
            f = f11;
            i2 = iSave;
            f2 = f10;
            canvas.drawRect(0.0f, f6, this.Ooooo00.width() - f7, -this.Ooooo0o, this.OoooOoo);
        } else {
            i = iSave2;
            f = f11;
            i2 = iSave;
            f2 = f10;
        }
        canvas.restoreToCount(i);
        int iSave3 = canvas.save();
        RectF rectF2 = this.Ooooo00;
        canvas.translate(rectF2.right - f5, rectF2.bottom - f5);
        float f12 = f;
        canvas.scale(f9, f12);
        canvas.rotate(180.0f);
        canvas.drawPath(this.OooooO0, this.OoooOoO);
        if (z) {
            canvas.scale(1.0f / f9, 1.0f);
            f3 = f2;
            f4 = f12;
            canvas.drawRect(0.0f, f6, this.Ooooo00.width() - f7, (-this.Ooooo0o) + this.Oooooo0, this.OoooOoo);
        } else {
            f3 = f2;
            f4 = f12;
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF3 = this.Ooooo00;
        canvas.translate(rectF3.left + f5, rectF3.bottom - f5);
        canvas.scale(f9, f4);
        canvas.rotate(270.0f);
        canvas.drawPath(this.OooooO0, this.OoooOoO);
        if (z3) {
            canvas.scale(1.0f / f4, 1.0f);
            canvas.drawRect(0.0f, f6, this.Ooooo00.height() - f7, -this.Ooooo0o, this.OoooOoo);
        }
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        RectF rectF4 = this.Ooooo00;
        canvas.translate(rectF4.right - f5, rectF4.top + f5);
        float f13 = f3;
        canvas.scale(f9, f13);
        canvas.rotate(90.0f);
        canvas.drawPath(this.OooooO0, this.OoooOoO);
        if (z3) {
            canvas.scale(1.0f / f13, 1.0f);
            canvas.drawRect(0.0f, f6, this.Ooooo00.height() - f7, -this.Ooooo0o, this.OoooOoo);
        }
        canvas.restoreToCount(iSave5);
        canvas.restoreToCount(i2);
    }

    private static int OooOOo0(float f) {
        int iRound = Math.round(f);
        return iRound % 2 == 1 ? iRound - 1 : iRound;
    }

    public float OooO() {
        float f = this.OooooOo;
        return (Math.max(f, this.Ooooo0o + (f / 2.0f)) * 2.0f) + (this.OooooOo * 2.0f);
    }

    public float OooO0o() {
        return this.Ooooo0o;
    }

    public float OooO0oO() {
        return this.OooooOo;
    }

    public float OooO0oo() {
        float f = this.OooooOo;
        return (Math.max(f, this.Ooooo0o + ((f * 1.5f) / 2.0f)) * 2.0f) + (this.OooooOo * 1.5f * 2.0f);
    }

    public float OooOO0() {
        return this.Oooooo;
    }

    public void OooOO0O(boolean z) {
        this.o00O0O = z;
        invalidateSelf();
    }

    public void OooOO0o(float f) {
        float fRound = Math.round(f);
        if (this.Ooooo0o == fRound) {
            return;
        }
        this.Ooooo0o = fRound;
        this.OoooooO = true;
        invalidateSelf();
    }

    public final void OooOOO(float f) {
        if (this.o00Oo0 != f) {
            this.o00Oo0 = f;
            invalidateSelf();
        }
    }

    public void OooOOO0(float f) {
        OooOOOo(this.Oooooo, f);
    }

    public void OooOOOO(float f) {
        OooOOOo(f, this.OooooOo);
    }

    public void OooOOOo(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new IllegalArgumentException("invalid shadow size");
        }
        float fOooOOo0 = OooOOo0(f);
        float fOooOOo02 = OooOOo0(f2);
        if (fOooOOo0 > fOooOOo02) {
            if (!this.o00Ooo) {
                this.o00Ooo = true;
            }
            fOooOOo0 = fOooOOo02;
        }
        if (this.Oooooo == fOooOOo0 && this.OooooOo == fOooOOo02) {
            return;
        }
        this.Oooooo = fOooOOo0;
        this.OooooOo = fOooOOo02;
        this.Oooooo0 = Math.round(fOooOOo0 * 1.5f);
        this.OooooOO = fOooOOo02;
        this.OoooooO = true;
        invalidateSelf();
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.OoooooO) {
            OooO00o(getBounds());
            this.OoooooO = false;
        }
        OooO0o0(canvas);
        super.draw(canvas);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(OooO0Oo(this.OooooOo, this.Ooooo0o, this.o00O0O));
        int iCeil2 = (int) Math.ceil(OooO0OO(this.OooooOo, this.Ooooo0o, this.o00O0O));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.OoooooO = true;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        super.setAlpha(i);
        this.OoooOoO.setAlpha(i);
        this.OoooOoo.setAlpha(i);
    }
}
