package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class oOOo0000 implements o0O0o000<Drawable> {
    private final o0O0o000<Bitmap> OooO0OO;
    private final boolean OooO0Oo;

    public oOOo0000(o0O0o000<Bitmap> o0o0o000, boolean z) {
        this.OooO0OO = o0o0o000;
        this.OooO0Oo = z;
    }

    private oO0Ooooo<Drawable> OooO0Oo(Context context, oO0Ooooo<Bitmap> oo0ooooo) {
        return oo00.OooO0Oo(context.getResources(), oo0ooooo);
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        this.OooO0OO.OooO00o(messageDigest);
    }

    @Override // z2.o0O0o000
    @NonNull
    public oO0Ooooo<Drawable> OooO0O0(@NonNull Context context, @NonNull oO0Ooooo<Drawable> oo0ooooo, int i, int i2) {
        oO000o00 oo000o00OooO0oO = o00Oo00.OooO0Oo(context).OooO0oO();
        Drawable drawable = oo0ooooo.get();
        oO0Ooooo<Bitmap> oo0oooooOooO00o = oOOOOo0O.OooO00o(oo000o00OooO0oO, drawable, i, i2);
        if (oo0oooooOooO00o != null) {
            oO0Ooooo<Bitmap> oo0oooooOooO0O0 = this.OooO0OO.OooO0O0(context, oo0oooooOooO00o, i, i2);
            if (!oo0oooooOooO0O0.equals(oo0oooooOooO00o)) {
                return OooO0Oo(context, oo0oooooOooO0O0);
            }
            oo0oooooOooO0O0.recycle();
            return oo0ooooo;
        }
        if (!this.OooO0Oo) {
            return oo0ooooo;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    public o0O0o000<BitmapDrawable> OooO0OO() {
        return this;
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (obj instanceof oOOo0000) {
            return this.OooO0OO.equals(((oOOo0000) obj).OooO0OO);
        }
        return false;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return this.OooO0OO.hashCode();
    }
}
