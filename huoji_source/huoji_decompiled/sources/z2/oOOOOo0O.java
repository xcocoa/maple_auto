package z2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
public final class oOOOOo0O {
    private static final String OooO00o = "DrawableToBitmap";
    private static final oO000o00 OooO0O0 = new OooO00o();

    public class OooO00o extends oO0O0OoO {
        @Override // z2.oO0O0OoO, z2.oO000o00
        public void OooO0Oo(Bitmap bitmap) {
        }
    }

    private oOOOOo0O() {
    }

    @Nullable
    public static oO0Ooooo<Bitmap> OooO00o(oO000o00 oo000o00, Drawable drawable, int i, int i2) {
        Bitmap bitmapOooO0O0;
        Drawable current = drawable.getCurrent();
        boolean z = false;
        if (current instanceof BitmapDrawable) {
            bitmapOooO0O0 = ((BitmapDrawable) current).getBitmap();
        } else if (current instanceof Animatable) {
            bitmapOooO0O0 = null;
        } else {
            bitmapOooO0O0 = OooO0O0(oo000o00, current, i, i2);
            z = true;
        }
        if (!z) {
            oo000o00 = OooO0O0;
        }
        return oOO.OooO0Oo(bitmapOooO0O0, oo000o00);
    }

    @Nullable
    private static Bitmap OooO0O0(oO000o00 oo000o00, Drawable drawable, int i, int i2) {
        if (i == Integer.MIN_VALUE && drawable.getIntrinsicWidth() <= 0) {
            if (Log.isLoggable(OooO00o, 5)) {
                Log.w(OooO00o, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            }
            return null;
        }
        if (i2 == Integer.MIN_VALUE && drawable.getIntrinsicHeight() <= 0) {
            if (Log.isLoggable(OooO00o, 5)) {
                Log.w(OooO00o, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
            }
            return null;
        }
        if (drawable.getIntrinsicWidth() > 0) {
            i = drawable.getIntrinsicWidth();
        }
        if (drawable.getIntrinsicHeight() > 0) {
            i2 = drawable.getIntrinsicHeight();
        }
        Lock lockOooO = a.OooO();
        lockOooO.lock();
        Bitmap bitmapOooO0o = oo000o00.OooO0o(i, i2, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(bitmapOooO0o);
            drawable.setBounds(0, 0, i, i2);
            drawable.draw(canvas);
            canvas.setBitmap(null);
            return bitmapOooO0o;
        } finally {
            lockOooO.unlock();
        }
    }
}
