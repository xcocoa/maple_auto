package z2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class h<T extends Drawable> implements oO0Ooooo<T>, oO0000o0 {
    public final T OoooOoO;

    public h(T t) {
        this.OoooOoO = (T) r2.OooO0Oo(t);
    }

    @Override // z2.oO0000o0
    public void OooO00o() {
        Bitmap bitmapOooO0o0;
        T t = this.OoooOoO;
        if (t instanceof BitmapDrawable) {
            bitmapOooO0o0 = ((BitmapDrawable) t).getBitmap();
        } else if (!(t instanceof r)) {
            return;
        } else {
            bitmapOooO0o0 = ((r) t).OooO0o0();
        }
        bitmapOooO0o0.prepareToDraw();
    }

    @Override // z2.oO0Ooooo
    @NonNull
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public final T get() {
        Drawable.ConstantState constantState = this.OoooOoO.getConstantState();
        return constantState == null ? this.OoooOoO : (T) constantState.newDrawable();
    }
}
