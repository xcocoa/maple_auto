package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class oOO implements oO0Ooooo<Bitmap>, oO0000o0 {
    private final Bitmap OoooOoO;
    private final oO000o00 OoooOoo;

    public oOO(@NonNull Bitmap bitmap, @NonNull oO000o00 oo000o00) {
        this.OoooOoO = (Bitmap) r2.OooO0o0(bitmap, "Bitmap must not be null");
        this.OoooOoo = (oO000o00) r2.OooO0o0(oo000o00, "BitmapPool must not be null");
    }

    @Nullable
    public static oOO OooO0Oo(@Nullable Bitmap bitmap, @NonNull oO000o00 oo000o00) {
        if (bitmap == null) {
            return null;
        }
        return new oOO(bitmap, oo000o00);
    }

    @Override // z2.oO0000o0
    public void OooO00o() {
        this.OoooOoO.prepareToDraw();
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<Bitmap> OooO0O0() {
        return Bitmap.class;
    }

    @Override // z2.oO0Ooooo
    @NonNull
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public Bitmap get() {
        return this.OoooOoO;
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return t2.OooO0oo(this.OoooOoO);
    }

    @Override // z2.oO0Ooooo
    public void recycle() {
        this.OoooOoo.OooO0Oo(this.OoooOoO);
    }
}
