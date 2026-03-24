package z2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class b0 implements d0<Drawable, byte[]> {
    private final oO000o00 OooO00o;
    private final d0<Bitmap, byte[]> OooO0O0;
    private final d0<r, byte[]> OooO0OO;

    public b0(@NonNull oO000o00 oo000o00, @NonNull d0<Bitmap, byte[]> d0Var, @NonNull d0<r, byte[]> d0Var2) {
        this.OooO00o = oo000o00;
        this.OooO0O0 = d0Var;
        this.OooO0OO = d0Var2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    private static oO0Ooooo<r> OooO0O0(@NonNull oO0Ooooo<Drawable> oo0ooooo) {
        return oo0ooooo;
    }

    @Override // z2.d0
    @Nullable
    public oO0Ooooo<byte[]> OooO00o(@NonNull oO0Ooooo<Drawable> oo0ooooo, @NonNull o0O0OOO0 o0o0ooo0) {
        Drawable drawable = oo0ooooo.get();
        if (drawable instanceof BitmapDrawable) {
            return this.OooO0O0.OooO00o(oOO.OooO0Oo(((BitmapDrawable) drawable).getBitmap(), this.OooO00o), o0o0ooo0);
        }
        if (drawable instanceof r) {
            return this.OooO0OO.OooO00o(OooO0O0(oo0ooooo), o0o0ooo0);
        }
        return null;
    }
}
