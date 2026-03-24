package z2;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import z2.fk;

/* JADX INFO: loaded from: classes2.dex */
public class ek {
    private static final boolean OooOO0O = false;
    public static final int OooOO0o = 0;
    public static final int OooOOO = 2;
    public static final int OooOOO0 = 1;
    public static final int OooOOOO;
    private boolean OooO;
    private final OooO00o OooO00o;
    private final View OooO0O0;
    private final Path OooO0OO;
    private final Paint OooO0Oo;

    @Nullable
    private fk.OooO OooO0o;
    private final Paint OooO0o0;

    @Nullable
    private Drawable OooO0oO;
    private Paint OooO0oo;
    private boolean OooOO0;

    public interface OooO00o {
        void OooO0OO(Canvas canvas);

        boolean OooO0Oo();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OooO0O0 {
    }

    static {
        int i = Build.VERSION.SDK_INT;
        OooOOOO = i >= 21 ? 2 : i >= 18 ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ek(OooO00o oooO00o) {
        this.OooO00o = oooO00o;
        View view = (View) oooO00o;
        this.OooO0O0 = view;
        view.setWillNotDraw(false);
        this.OooO0OO = new Path();
        this.OooO0Oo = new Paint(7);
        Paint paint = new Paint(1);
        this.OooO0o0 = paint;
        paint.setColor(0);
    }

    private float OooO(fk.OooO oooO) {
        return al.OooO0O0(oooO.OooO00o, oooO.OooO0O0, 0.0f, 0.0f, this.OooO0O0.getWidth(), this.OooO0O0.getHeight());
    }

    private void OooO0Oo(Canvas canvas, int i, float f) {
        this.OooO0oo.setColor(i);
        this.OooO0oo.setStrokeWidth(f);
        fk.OooO oooO = this.OooO0o;
        canvas.drawCircle(oooO.OooO00o, oooO.OooO0O0, oooO.OooO0OO - (f / 2.0f), this.OooO0oo);
    }

    private void OooO0o(Canvas canvas) {
        if (OooOOo0()) {
            Rect bounds = this.OooO0oO.getBounds();
            float fWidth = this.OooO0o.OooO00o - (bounds.width() / 2.0f);
            float fHeight = this.OooO0o.OooO0O0 - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.OooO0oO.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    private void OooO0o0(Canvas canvas) {
        this.OooO00o.OooO0OO(canvas);
        if (OooOOo()) {
            fk.OooO oooO = this.OooO0o;
            canvas.drawCircle(oooO.OooO00o, oooO.OooO0O0, oooO.OooO0OO, this.OooO0o0);
        }
        if (OooOOOo()) {
            OooO0Oo(canvas, -16777216, 10.0f);
            OooO0Oo(canvas, -65536, 5.0f);
        }
        OooO0o(canvas);
    }

    private void OooOO0O() {
        if (OooOOOO == 1) {
            this.OooO0OO.rewind();
            fk.OooO oooO = this.OooO0o;
            if (oooO != null) {
                this.OooO0OO.addCircle(oooO.OooO00o, oooO.OooO0O0, oooO.OooO0OO, Path.Direction.CW);
            }
        }
        this.OooO0O0.invalidate();
    }

    private boolean OooOOOo() {
        fk.OooO oooO = this.OooO0o;
        boolean z = oooO == null || oooO.OooO00o();
        return OooOOOO == 0 ? !z && this.OooOO0 : !z;
    }

    private boolean OooOOo() {
        return (this.OooO || Color.alpha(this.OooO0o0.getColor()) == 0) ? false : true;
    }

    private boolean OooOOo0() {
        return (this.OooO || this.OooO0oO == null || this.OooO0o == null) ? false : true;
    }

    public void OooO00o() {
        if (OooOOOO == 0) {
            this.OooO = true;
            this.OooOO0 = false;
            this.OooO0O0.buildDrawingCache();
            Bitmap drawingCache = this.OooO0O0.getDrawingCache();
            if (drawingCache == null && this.OooO0O0.getWidth() != 0 && this.OooO0O0.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.OooO0O0.getWidth(), this.OooO0O0.getHeight(), Bitmap.Config.ARGB_8888);
                this.OooO0O0.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.OooO0Oo;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.OooO = false;
            this.OooOO0 = true;
        }
    }

    public void OooO0O0() {
        if (OooOOOO == 0) {
            this.OooOO0 = false;
            this.OooO0O0.destroyDrawingCache();
            this.OooO0Oo.setShader(null);
            this.OooO0O0.invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void OooO0OO(Canvas canvas) {
        if (OooOOOo()) {
            int i = OooOOOO;
            if (i == 0) {
                fk.OooO oooO = this.OooO0o;
                canvas.drawCircle(oooO.OooO00o, oooO.OooO0O0, oooO.OooO0OO, this.OooO0Oo);
                if (OooOOo()) {
                    fk.OooO oooO2 = this.OooO0o;
                    canvas.drawCircle(oooO2.OooO00o, oooO2.OooO0O0, oooO2.OooO0OO, this.OooO0o0);
                }
            } else if (i == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.OooO0OO);
                this.OooO00o.OooO0OO(canvas);
                if (OooOOo()) {
                    canvas.drawRect(0.0f, 0.0f, this.OooO0O0.getWidth(), this.OooO0O0.getHeight(), this.OooO0o0);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i);
                }
                this.OooO00o.OooO0OO(canvas);
                if (OooOOo()) {
                    canvas.drawRect(0.0f, 0.0f, this.OooO0O0.getWidth(), this.OooO0O0.getHeight(), this.OooO0o0);
                }
            }
        } else {
            this.OooO00o.OooO0OO(canvas);
            if (OooOOo()) {
            }
        }
        OooO0o(canvas);
    }

    @Nullable
    public Drawable OooO0oO() {
        return this.OooO0oO;
    }

    @ColorInt
    public int OooO0oo() {
        return this.OooO0o0.getColor();
    }

    @Nullable
    public fk.OooO OooOO0() {
        fk.OooO oooO = this.OooO0o;
        if (oooO == null) {
            return null;
        }
        fk.OooO oooO2 = new fk.OooO(oooO);
        if (oooO2.OooO00o()) {
            oooO2.OooO0OO = OooO(oooO2);
        }
        return oooO2;
    }

    public boolean OooOO0o() {
        return this.OooO00o.OooO0Oo() && !OooOOOo();
    }

    public void OooOOO(@ColorInt int i) {
        this.OooO0o0.setColor(i);
        this.OooO0O0.invalidate();
    }

    public void OooOOO0(@Nullable Drawable drawable) {
        this.OooO0oO = drawable;
        this.OooO0O0.invalidate();
    }

    public void OooOOOO(@Nullable fk.OooO oooO) {
        if (oooO == null) {
            this.OooO0o = null;
        } else {
            fk.OooO oooO2 = this.OooO0o;
            if (oooO2 == null) {
                this.OooO0o = new fk.OooO(oooO);
            } else {
                oooO2.OooO0OO(oooO);
            }
            if (al.OooO0OO(oooO.OooO0OO, OooO(oooO), 1.0E-4f)) {
                this.OooO0o.OooO0OO = Float.MAX_VALUE;
            }
        }
        OooOO0O();
    }
}
