package z2;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.TintAwareDrawable;

/* JADX INFO: loaded from: classes2.dex */
@rk("The shapes API is currently experimental and subject to change")
public class ll extends Drawable implements TintAwareDrawable {
    private final Paint OoooOoO;
    private final Matrix[] OoooOoo;
    private final Matrix[] Ooooo00;
    private final nl[] Ooooo0o;
    private final Matrix OooooO0;
    private final Path OooooOO;
    private final PointF OooooOo;
    private final Region Oooooo;
    private final nl Oooooo0;
    private final Region OoooooO;
    private final float[] Ooooooo;
    private boolean o00O0O;
    private boolean o00Oo0;
    private float o00Ooo;
    private int o00o0O;
    private float o00oO0O;
    private int o00oO0o;
    private int o00ooo;
    private PorterDuff.Mode o0OOO0o;
    private ColorStateList o0Oo0oo;
    private final float[] o0OoOo0;
    private float o0ooOO0;
    private Paint.Style o0ooOOo;

    @Nullable
    private PorterDuffColorFilter o0ooOoO;
    private int oo000o;

    @Nullable
    private ol ooOO;

    public ll() {
        this(null);
    }

    public ll(@Nullable ol olVar) {
        this.OoooOoO = new Paint();
        this.OoooOoo = new Matrix[4];
        this.Ooooo00 = new Matrix[4];
        this.Ooooo0o = new nl[4];
        this.OooooO0 = new Matrix();
        this.OooooOO = new Path();
        this.OooooOo = new PointF();
        this.Oooooo0 = new nl();
        this.Oooooo = new Region();
        this.OoooooO = new Region();
        this.Ooooooo = new float[2];
        this.o0OoOo0 = new float[2];
        this.ooOO = null;
        this.o00O0O = false;
        this.o00Oo0 = false;
        this.o00Ooo = 1.0f;
        this.o00o0O = -16777216;
        this.o00ooo = 5;
        this.oo000o = 10;
        this.o00oO0o = 255;
        this.o00oO0O = 1.0f;
        this.o0ooOO0 = 0.0f;
        this.o0ooOOo = Paint.Style.FILL_AND_STROKE;
        this.o0OOO0o = PorterDuff.Mode.SRC_IN;
        this.o0Oo0oo = null;
        this.ooOO = olVar;
        for (int i = 0; i < 4; i++) {
            this.OoooOoo[i] = new Matrix();
            this.Ooooo00[i] = new Matrix();
            this.Ooooo0o[i] = new nl();
        }
    }

    private float OooO00o(int i, int i2, int i3) {
        OooO0o0(((i - 1) + 4) % 4, i2, i3, this.OooooOo);
        PointF pointF = this.OooooOo;
        float f = pointF.x;
        float f2 = pointF.y;
        OooO0o0((i + 1) % 4, i2, i3, pointF);
        PointF pointF2 = this.OooooOo;
        float f3 = pointF2.x;
        float f4 = pointF2.y;
        OooO0o0(i, i2, i3, pointF2);
        PointF pointF3 = this.OooooOo;
        float f5 = pointF3.x;
        float f6 = pointF3.y;
        float fAtan2 = ((float) Math.atan2(f2 - f6, f - f5)) - ((float) Math.atan2(f4 - f6, f3 - f5));
        return fAtan2 < 0.0f ? (float) (((double) fAtan2) + 6.283185307179586d) : fAtan2;
    }

    private float OooO0O0(int i, int i2, int i3) {
        int i4 = (i + 1) % 4;
        OooO0o0(i, i2, i3, this.OooooOo);
        PointF pointF = this.OooooOo;
        float f = pointF.x;
        float f2 = pointF.y;
        OooO0o0(i4, i2, i3, pointF);
        PointF pointF2 = this.OooooOo;
        return (float) Math.atan2(pointF2.y - f2, pointF2.x - f);
    }

    private void OooO0OO(int i, Path path) {
        float[] fArr = this.Ooooooo;
        nl[] nlVarArr = this.Ooooo0o;
        fArr[0] = nlVarArr[i].OooO00o;
        fArr[1] = nlVarArr[i].OooO0O0;
        this.OoooOoo[i].mapPoints(fArr);
        float[] fArr2 = this.Ooooooo;
        if (i == 0) {
            path.moveTo(fArr2[0], fArr2[1]);
        } else {
            path.lineTo(fArr2[0], fArr2[1]);
        }
        this.Ooooo0o[i].OooO0O0(this.OoooOoo[i], path);
    }

    private void OooO0Oo(int i, Path path) {
        int i2 = (i + 1) % 4;
        float[] fArr = this.Ooooooo;
        nl[] nlVarArr = this.Ooooo0o;
        fArr[0] = nlVarArr[i].OooO0OO;
        fArr[1] = nlVarArr[i].OooO0Oo;
        this.OoooOoo[i].mapPoints(fArr);
        float[] fArr2 = this.o0OoOo0;
        nl[] nlVarArr2 = this.Ooooo0o;
        fArr2[0] = nlVarArr2[i2].OooO00o;
        fArr2[1] = nlVarArr2[i2].OooO0O0;
        this.OoooOoo[i2].mapPoints(fArr2);
        float f = this.Ooooooo[0];
        float[] fArr3 = this.o0OoOo0;
        float fHypot = (float) Math.hypot(f - fArr3[0], r0[1] - fArr3[1]);
        this.Oooooo0.OooO0o0(0.0f, 0.0f);
        OooO0oO(i).OooO00o(fHypot, this.o00Ooo, this.Oooooo0);
        this.Oooooo0.OooO0O0(this.Ooooo00[i], path);
    }

    private hl OooO0o(int i) {
        return i != 1 ? i != 2 ? i != 3 ? this.ooOO.OooO0oO() : this.ooOO.OooO0O0() : this.ooOO.OooO0OO() : this.ooOO.OooO0oo();
    }

    private void OooO0o0(int i, int i2, int i3, PointF pointF) {
        if (i == 1) {
            pointF.set(i2, 0.0f);
            return;
        }
        if (i == 2) {
            pointF.set(i2, i3);
        } else if (i != 3) {
            pointF.set(0.0f, 0.0f);
        } else {
            pointF.set(0.0f, i3);
        }
    }

    private jl OooO0oO(int i) {
        return i != 1 ? i != 2 ? i != 3 ? this.ooOO.OooO0o() : this.ooOO.OooO0Oo() : this.ooOO.OooO00o() : this.ooOO.OooO0o0();
    }

    private void OooOO0(int i, int i2, Path path) {
        OooOO0O(i, i2, path);
        if (this.o00oO0O == 1.0f) {
            return;
        }
        this.OooooO0.reset();
        Matrix matrix = this.OooooO0;
        float f = this.o00oO0O;
        matrix.setScale(f, f, i / 2, i2 / 2);
        path.transform(this.OooooO0);
    }

    private void OooOo0(int i, int i2, int i3) {
        OooO0o0(i, i2, i3, this.OooooOo);
        OooO0o(i).OooO00o(OooO00o(i, i2, i3), this.o00Ooo, this.Ooooo0o[i]);
        float fOooO0O0 = OooO0O0(((i - 1) + 4) % 4, i2, i3) + 1.5707964f;
        this.OoooOoo[i].reset();
        Matrix matrix = this.OoooOoo[i];
        PointF pointF = this.OooooOo;
        matrix.setTranslate(pointF.x, pointF.y);
        this.OoooOoo[i].preRotate((float) Math.toDegrees(fOooO0O0));
    }

    private static int OooOo00(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    private void OooOo0O(int i, int i2, int i3) {
        float[] fArr = this.Ooooooo;
        nl[] nlVarArr = this.Ooooo0o;
        fArr[0] = nlVarArr[i].OooO0OO;
        fArr[1] = nlVarArr[i].OooO0Oo;
        this.OoooOoo[i].mapPoints(fArr);
        float fOooO0O0 = OooO0O0(i, i2, i3);
        this.Ooooo00[i].reset();
        Matrix matrix = this.Ooooo00[i];
        float[] fArr2 = this.Ooooooo;
        matrix.setTranslate(fArr2[0], fArr2[1]);
        this.Ooooo00[i].preRotate((float) Math.toDegrees(fOooO0O0));
    }

    private void Oooo00O() {
        ColorStateList colorStateList = this.o0Oo0oo;
        if (colorStateList == null || this.o0OOO0o == null) {
            this.o0ooOoO = null;
            return;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        this.o0ooOoO = new PorterDuffColorFilter(colorForState, this.o0OOO0o);
        if (this.o00Oo0) {
            this.o00o0O = colorForState;
        }
    }

    public Paint.Style OooO() {
        return this.o0ooOOo;
    }

    public float OooO0oo() {
        return this.o00Ooo;
    }

    public void OooOO0O(int i, int i2, Path path) {
        path.rewind();
        if (this.ooOO == null) {
            return;
        }
        for (int i3 = 0; i3 < 4; i3++) {
            OooOo0(i3, i, i2);
            OooOo0O(i3, i, i2);
        }
        for (int i4 = 0; i4 < 4; i4++) {
            OooO0OO(i4, path);
            OooO0Oo(i4, path);
        }
        path.close();
    }

    public float OooOO0o() {
        return this.o00oO0O;
    }

    public int OooOOO() {
        return this.oo000o;
    }

    public int OooOOO0() {
        return this.o00ooo;
    }

    @Nullable
    public ol OooOOOO() {
        return this.ooOO;
    }

    public float OooOOOo() {
        return this.o0ooOO0;
    }

    public boolean OooOOo(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    public ColorStateList OooOOo0() {
        return this.o0Oo0oo;
    }

    public boolean OooOOoo() {
        return this.o00O0O;
    }

    public void OooOo(Paint.Style style) {
        this.o0ooOOo = style;
        invalidateSelf();
    }

    public void OooOo0o(float f) {
        this.o00Ooo = f;
        invalidateSelf();
    }

    public void OooOoO(int i) {
        this.o00o0O = i;
        this.o00Oo0 = false;
        invalidateSelf();
    }

    public void OooOoO0(float f) {
        this.o00oO0O = f;
        invalidateSelf();
    }

    public void OooOoOO(int i) {
        this.o00ooo = i;
        invalidateSelf();
    }

    public void OooOoo(int i) {
        this.oo000o = i;
        invalidateSelf();
    }

    public void OooOoo0(boolean z) {
        this.o00O0O = z;
        invalidateSelf();
    }

    public void OooOooO(ol olVar) {
        this.ooOO = olVar;
        invalidateSelf();
    }

    public void OooOooo(float f) {
        this.o0ooOO0 = f;
        invalidateSelf();
    }

    public void Oooo000(boolean z) {
        this.o00Oo0 = z;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.OoooOoO.setColorFilter(this.o0ooOoO);
        int alpha = this.OoooOoO.getAlpha();
        this.OoooOoO.setAlpha(OooOo00(alpha, this.o00oO0o));
        this.OoooOoO.setStrokeWidth(this.o0ooOO0);
        this.OoooOoO.setStyle(this.o0ooOOo);
        int i = this.o00ooo;
        if (i > 0 && this.o00O0O) {
            this.OoooOoO.setShadowLayer(this.oo000o, 0.0f, i, this.o00o0O);
        }
        if (this.ooOO != null) {
            OooOO0(canvas.getWidth(), canvas.getHeight(), this.OooooOO);
            canvas.drawPath(this.OooooOO, this.OoooOoO);
        } else {
            canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.OoooOoO);
        }
        this.OoooOoO.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.Oooooo.set(bounds);
        OooOO0(bounds.width(), bounds.height(), this.OooooOO);
        this.OoooooO.setPath(this.OooooOO, this.Oooooo);
        this.Oooooo.op(this.OoooooO, Region.Op.DIFFERENCE);
        return this.Oooooo;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.o00oO0o = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.OoooOoO.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.o0Oo0oo = colorStateList;
        Oooo00O();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.o0OOO0o = mode;
        Oooo00O();
        invalidateSelf();
    }
}
