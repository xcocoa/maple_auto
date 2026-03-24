package z2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class sl extends GradientDrawable {
    private final Paint OooO00o = new Paint(1);
    private final RectF OooO0O0;
    private int OooO0OO;

    public sl() {
        OooO0oo();
        this.OooO0O0 = new RectF();
    }

    private boolean OooO(Drawable.Callback callback) {
        return callback instanceof View;
    }

    private void OooO0O0(@NonNull Canvas canvas) {
        if (OooO(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.OooO0OO);
    }

    private void OooO0OO(@NonNull Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (OooO(callback)) {
            ((View) callback).setLayerType(2, null);
        } else {
            OooO0o0(canvas);
        }
    }

    private void OooO0o0(@NonNull Canvas canvas) {
        this.OooO0OO = Build.VERSION.SDK_INT >= 21 ? canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null) : canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
    }

    private void OooO0oo() {
        this.OooO00o.setStyle(Paint.Style.FILL_AND_STROKE);
        this.OooO00o.setColor(-1);
        this.OooO00o.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public boolean OooO00o() {
        return !this.OooO0O0.isEmpty();
    }

    public void OooO0Oo() {
        OooO0o(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void OooO0o(float f, float f2, float f3, float f4) {
        RectF rectF = this.OooO0O0;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    public void OooO0oO(RectF rectF) {
        OooO0o(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        OooO0OO(canvas);
        super.draw(canvas);
        canvas.drawRect(this.OooO0O0, this.OooO00o);
        OooO0O0(canvas);
    }
}
