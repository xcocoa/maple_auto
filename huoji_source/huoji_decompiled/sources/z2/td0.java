package z2;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class td0 implements ud0 {
    private float OooO00o;
    private Shader OooO0O0;
    private final RectF OooO0OO = new RectF();

    public td0(@FloatRange(from = 0.0d) float f) {
        OooO0o(f);
    }

    private void OooO0o(@FloatRange(from = 0.0d) float f) {
        float fMax = Math.max(0.0f, f);
        if (fMax != this.OooO00o) {
            this.OooO00o = fMax;
            this.OooO0O0 = null;
        }
    }

    @Override // z2.ud0
    public void OooO00o(Canvas canvas, Paint paint, Bitmap bitmap) {
        if (this.OooO00o == 0.0f) {
            canvas.drawBitmap(bitmap, (Rect) null, this.OooO0OO, paint);
            return;
        }
        if (this.OooO0O0 == null) {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.OooO0O0 = new BitmapShader(bitmap, tileMode, tileMode);
            Matrix matrix = new Matrix();
            RectF rectF = this.OooO0OO;
            matrix.setTranslate(rectF.left, rectF.top);
            matrix.preScale(this.OooO0OO.width() / bitmap.getWidth(), this.OooO0OO.height() / bitmap.getHeight());
            this.OooO0O0.setLocalMatrix(matrix);
        }
        paint.setShader(this.OooO0O0);
        RectF rectF2 = this.OooO0OO;
        float f = this.OooO00o;
        canvas.drawRoundRect(rectF2, f, f, paint);
    }

    @Override // z2.ud0
    public void OooO0O0(Rect rect) {
        this.OooO0OO.set(rect);
        this.OooO0O0 = null;
    }

    @NonNull
    public RectF OooO0OO() {
        return this.OooO0OO;
    }

    @FloatRange(from = 0.0d)
    public float OooO0Oo() {
        return this.OooO00o;
    }

    public void OooO0o0(@FloatRange(from = 0.0d) float f) {
        OooO0o(f);
    }
}
