package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public class oO0O0OoO implements oO000o00 {
    @Override // z2.oO000o00
    public void OooO00o(int i) {
    }

    @Override // z2.oO000o00
    public void OooO0O0() {
    }

    @Override // z2.oO000o00
    public void OooO0OO(float f) {
    }

    @Override // z2.oO000o00
    public void OooO0Oo(Bitmap bitmap) {
        bitmap.recycle();
    }

    @Override // z2.oO000o00
    @NonNull
    public Bitmap OooO0o(int i, int i2, Bitmap.Config config) {
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // z2.oO000o00
    public long OooO0o0() {
        return 0L;
    }

    @Override // z2.oO000o00
    @NonNull
    public Bitmap OooO0oO(int i, int i2, Bitmap.Config config) {
        return OooO0o(i, i2, config);
    }
}
