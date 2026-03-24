package z2;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class oOOO000o implements o0O0o000<Bitmap> {
    @Override // z2.o0O0o000
    @NonNull
    public final oO0Ooooo<Bitmap> OooO0O0(@NonNull Context context, @NonNull oO0Ooooo<Bitmap> oo0ooooo, int i, int i2) {
        if (!t2.OooOo0O(i, i2)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        oO000o00 oo000o00OooO0oO = o00Oo00.OooO0Oo(context).OooO0oO();
        Bitmap bitmap = oo0ooooo.get();
        if (i == Integer.MIN_VALUE) {
            i = bitmap.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getHeight();
        }
        Bitmap bitmapOooO0OO = OooO0OO(oo000o00OooO0oO, bitmap, i, i2);
        return bitmap.equals(bitmapOooO0OO) ? oo0ooooo : oOO.OooO0Oo(bitmapOooO0OO, oo000o00OooO0oO);
    }

    public abstract Bitmap OooO0OO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2);
}
